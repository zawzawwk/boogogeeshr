<?php
class inputAction extends Action
{
	private $fieldarr = array();
	
	protected $moders = array();
	
	
	//保存前处理，主要用于判断是否可以保存
	protected function savebefore($table,$arr, $id, $addbo){}
	
	//保存后处理，主要用于判断是否可以保存
	protected function saveafter($table,$arr, $id, $addbo){}
	
	

	public function saveAjax()
	{
		$modeid			= (int)$this->request('modeid');
		$id				= (int)$this->request('id');
		$uid			= $this->adminid;
		$this->moders 	= m('flow_set')->getone("`id`='$modeid'",'`num`,`name`,`id`,`table`,`tables`,`isflow`');
		if(!$this->moders)$this->backmsg('流程模块不存在');
		$isflow			= $this->moders['isflow'];
		$flownum		= $this->moders['num'];
		$table			= $this->moders['table'];
		if($this->isempt($table))$this->backmsg('模块未设置表名');
		$fieldsarr		= m('flow_element')->getrows("`mid`='$modeid' and `islu`=1 and `iszb`=0",'`name`,`fields`,`isbt`','`sort`');
		if(!$fieldsarr)$this->backmsg('没有录入元素');
		$db	   = m($table);
		$addbo = false;
		$where = "`id`='$id'";
		$oldrs = false;
		if($id==0){
			$where = '';
			$addbo = true;
		}else{
			$oldrs = $db->getone($id);
			if(!$oldrs)$this->backmsg('记录不存在');
			if($isflow==1){
				$bos = false;
				if($oldrs['uid']==$uid||$oldrs['optid']==$uid)$bos=true;
				if($oldrs['status']==1)$bos=false;
				if(!$bos)$this->backmsg('不允许编辑,可能已审核通过/不是你的单据');
			}
		}
		$uaarr = array();
		$farrs = array();
		foreach($fieldsarr as $k=>$rs){
			$fid = $rs['fields'];
			$val = $this->post($fid);
			if($rs['isbt']==1&&$this->isempt($val))$this->backmsg(''.$rs['name'].'不能为空');
			$uaarr[$fid] = $val;
			$farrs[$fid] = array(
				'name' => $rs['name']
			);	
		}
		
		$allfields = $this->db->getallfields('[Q]'.$table.'');
		if(in_array('optdt', $allfields))$uaarr['optdt'] = $this->now;
		if(in_array('optid', $allfields))$uaarr['optid'] = $this->adminid;
		if(in_array('optname', $allfields))$uaarr['optname'] = $this->adminname;
		if(in_array('uid', $allfields))$uaarr['uid'] = $this->post('uid', $this->adminid);
		if(in_array('applydt', $allfields) && $id==0)$uaarr['applydt'] = $this->post('applydt', $this->date);
		if($isflow==1){
			$uaarr['status']= '0';
		}
		$ss 	= '';
		$befa 	= $this->savebefore($table, $uaarr, $id, $addbo);
		if(isset($befa['msg']))$ss=$befa['msg'];
		if(isset($befa['rows'])){
			foreach($befa['rows'] as $bk=>$bv)$uaarr[$bk]=$bv;
		}
		if(is_string($befa))$ss = $befa;
		if(!$this->isempt($ss))$this->backmsg($ss);
		
		$bo = $db->record($uaarr, $where);;
		if(!$bo)$this->backmsg($this->db->error());
		
		if($id==0)$id = $this->db->insert_id();
		m('file')->addfile($this->post('fileid'), $table, $id);
		
		$this->savesubtable($id,'0');//保存子表
		$this->savesubtable($id,'1');
		
		$this->saveafter($table,$uaarr, $id, $addbo);
		
		$isturn = (int)$this->post('isturn','1');
		$flow 	= f($flownum);
		$flow->initrecord($id);
		$msg 	= $flow->submit($isturn);
		
		m('todo')->setyidu($table, $id);
		if($oldrs){
			$newrs = $db->getone($id);
			c('edit')->records($farrs,$table, $id, $oldrs, $newrs);
		}
		$this->backmsg('', $msg, $id);
	}
	
	private function savesubtable($mid, $xu)
	{
		$oi = (int)$this->post('sub_totals'.$xu.'');
		if($oi<=0)return;
		$modeid		= $this->moders['id'];
		$table		= $this->moders['table'];
		$tables		= 'items';
		$iszb		= $xu+1;
		$farr		= m('flow_element')->getrows("`mid`='$modeid' and `islu`=1 and `iszb`=$iszb",'`name`,`fields`,`isbt`,`dev`','`sort`');
		$idss		= '0';
		$dbs 		= m($tables);
		$uaarr		= array();
		$uaarr['optdt'] = $this->now;
		$uaarr['optid'] = $this->adminid;
		$atype 		= '';
		$sort 		= 0;
		for($i=0; $i<$oi; $i++){
			$sid  = (int)$this->post('sid'.$xu.'_'.$i.'');
			$where= "`id`='$sid'";
			$bos  = true;
			$uaarr['table'] = $table;
			$uaarr['mid'] 	= $mid;
			$uaarr['valid'] = 1;

			foreach($farr as $k=>$rs){
				$fid= $rs['fields'];
				$na = ''.$fid.''.$xu.'_'.$i.'';
				$val= $this->post($na);
				if($rs['isbt']==1&&$this->isempt($val))$bos=false;
				$uaarr[$fid] = $val;
				if($fid=='atype')$atype=$rs['dev'];
			}
			$uaarr['atype'] = $atype;
			if(!$bos)continue;
			if($sid==0)$where = '';
			$uaarr['sort'] 	= $sort;
			$sort++;
			$dbs->record($uaarr, $where);
			if($sid==0)$sid = $this->db->insert_id();
			$idss.=','.$sid.'';
		}
		$delwhere = "`table`='$table' and `mid`='$mid' and `id` not in($idss)";
		if(!$this->isempt($atype))$delwhere.=" and `atype`='$atype'";
		$dbs->delete($delwhere);
	}
	
	//获取数据
	public function getdataAjax()
	{
		$flownum = $this->request('flownum');
		$id		 = (int)$this->request('mid');
		$arr 	 = m('flowlog')->getdatalog($flownum,'', $id, $this->adminid, 1);
		$table	 = $arr['table'];
		$modeid	 = $arr['modeid'];
		//读取子表数据
		$subarr	 = m('items')->getitemsdata($modeid, $table, $id);
		$arr['subdata'] = $subarr;
		$this->backmsg('', '', $arr);
	}
	
	public function luAction()
	{
		$this->tpltype = 'html';
		$uid		= $this->jm->gettoken('uid');
		$num		= $this->jm->gettoken('num');
		$gridid		= $this->get('gridid');
		$mid		= (int)$this->jm->gettoken('mid');
		$moders 	= m('flow_set')->getone("`num`='$num'",'`id`,`num`,`name`,`table`');
		if(!$moders)exit('流程不存在!');
		$this->smartydata['moders']	= $moders;
		$this->smartydata['gridid']	= $gridid;
		$modeid 	= $moders['id'];
		$path 		= ''.ROOT_PATH.'/webrock/flow/applyview/page/input_'.$num.'.html';
		$content 	= '';
		$this->urs  = m('admin')->getone($this->adminid, '`name`,`deptname`,`ranking`,`workdate`,`deptid`');
		$fieldarr 	= m('flow_element')->getrows("`mid`='$modeid' and `iszb`=0",'fields,fieldstype,name,dev,data,isbt,islu,attr','`sort`');
		foreach($fieldarr as $k=>$rs){
			$this->fieldarr[$rs['fields']] = $rs;
		}
		$this->smartydata['fieldsjson']	= json_encode($fieldarr);
		$this->moders= $moders;
		if(file_exists($path)){
			$content = file_get_contents($path);
		}
		if($content=='')exit('未设置录入页面');
		$this->actclss	= $this;
		$pathss 		= ''.ROOT_PATH.'/webrock/flow/input/mode_'.$num.'Action.php';
		if(file_exists($pathss)){
			include_once($pathss);
			$clsnam 	= 'mode_'.$num.'ClassAction';
			$this->actclss 	= new $clsnam();
		}
		
		preg_match_all('/\{(.*?)\}/', $content, $list);
		foreach($list[1] as $k=>$nrs){
			$str		= $this->getfieldcont($nrs, $this->actclss);
			$content	= str_replace('{'.$nrs.'}', $str, $content);
		}
			
		$content 	 = $this->pisubduolie($content, $modeid, 1);//多列子表匹配的是[]

		$this->title  = $moders['name'];
		$content						= str_replace('*','<font color=red>*</font>', $content);
		$this->smartydata['content']	= $content;
		$this->smartydata['mid']		= $mid;
		
	}
	
	private function pisubduolie($content, $modeid, $xu)
	{
		$oi 		= $xu-1;
		$fieldarr 	= m('flow_element')->getrows("`mid`='$modeid' and `iszb`='$xu'",'fields,fieldstype,name,dev,data,isbt,islu,attr','`sort`');
		$this->fieldarr = array();
		$this->fieldarr['xuhao'.$oi.''] = array(
			'fields' 	=> 'xuhao'.$oi.'',
			'fieldstype'=> 'xuhao',
			'data' 		=> '',
			'attr' 		=> 'style="text-align:center" readonly temp="xuhao"',
			'dev'	 	=> '1',
			'isbt'		=> '0',
			'fieldss'	=> 'sid'.$oi.''
		);
		foreach($fieldarr as $k=>$rs){
			$this->fieldarr[$rs['fields'].''.$oi.''] = $rs;
		}
		preg_match_all('/\[(.*?)\]/', $content, $list);
		foreach($list[1] as $k=>$nrs){
			$fida= explode(',', $nrs);$xu0='0';
			if(isset($fida[1]))$xu0=$fida[1];
			
			$str		= $this->getfieldcont($fida[0], $this->actclss,'_'.$xu0.'');
			$content	= str_replace('['.$nrs.']', $str, $content);
		}
		return $content;
	}
	
	private function getfieldcont($fid, $objs, $leox='')
	{
		$fida= explode(',', $fid);$xu0='0';
		$fid = $fida[0];
		$str = $val ='';
		if(isset($fida[1]))$xu0=$fida[1];
		if($fid=='base_name'){
			$str = '<input class="inputs" style="border:none" name="base_name" value="'.$this->adminname.'" readonly>';
		}
		if($fid=='base_deptname'){
			$str = '<input class="inputs" style="border:none" name="base_deptname" value="'.$this->urs['deptname'].'" readonly>';
		}
		if($fid=='file_content'){
			$str = '<input name="fileid" type="hidden" id="fileidview-inputEl"><div id="view_fileidview" style="width:97%;height:100px;border:1px #cccccc solid; background:white;overflow:auto"></div><div id="fileupaddbtn"><a href="javascript:;" class="blue" onclick="c.upload()"><u>＋添加文件</u></a></div>';
		}
		if($fid=='删'){
			$str='<a href="javascript:;" onclick="c.delrow(this,'.$xu0.')">删</a>';
		}
		if($fid=='新增'){
			$str='<a href="javascript:;" onclick="c.addrow(this,'.$xu0.')">＋新增</a>';
		}
		if($str!='')return $str;
		if(isset($this->fieldarr[$fid])){
			$a 		= $this->fieldarr[$fid];
			$fname 	= $fid.$leox;
			$type 	= $a['fieldstype'];
			$data 	= $a['data'];
			$val 	= $a['dev'];
			$attr 	= $a['attr'];
			if($this->isempt($val))$val='';
			if($this->isempt($attr))$attr='';
			if($val!='')$val = str_replace(array('{now}','{date}','{admin}','{adminid}','{deptname}','{ranking}','{workdate}'),array($this->now,$this->date,$this->adminname,$this->adminid, $this->urs['deptname'], $this->urs['ranking'], $this->urs['workdate']),$val);
			
			$str 	= '<input class="inputs" value="'.$val.'" '.$attr.' name="'.$fname.'">';
			if($type=='fixed'||$type=='hidden'){
				$str = '<input value="'.$val.'" '.$attr.' type="hidden" name="'.$fname.'">';
			}
			if($type=='textarea'){
				$str = '<textarea class="textarea" '.$attr.' name="'.$fname.'">'.$val.'</textarea>';
			}
			if($type=='rockcombo' || $type=='select'){
				$str ='<select style="width:99%" '.$attr.' name="'.$fname.'" class="inputs">';
				$str.='<option value="">-请选择-</option>';
				$datanum = $data;
				if(!$this->isempt($datanum)){
					$fopt	= array();
					if(method_exists($objs, $datanum)){
						$fopt	= $objs->$datanum($fid);
						foreach($fopt as $k=>$rs){
							$sel = ($rs['value']==$val)?'selected':'';
							$str.='<option value="'.$rs['value'].'" '.$sel.'>'.$rs['name'].'</option>';
						}
					}
					if($type=='rockcombo' && !$fopt){
						$_ars= explode(',', $datanum);
						$fopt= $this->option->getmnum($_ars[0]);
						$fvad= 'name';
						if(isset($_ars[1])&&($_ars[1]=='value'||$_ars[1]=='id'||$_ars[1]=='num'))$fvad=$_ars[1];
						foreach($fopt as $k=>$rs){
							$cb  = $rs[$fvad];
							$sel = ($cb==$val)?'selected':'';
							$str.='<option value="'.$cb.'" '.$sel.'>'.$rs['name'].'</option>';
						}
					}
					if($type=='select' && !$fopt){
						$fopt= c('array')->strtoarray($datanum);
						foreach($fopt as $k=>$rs){
							$sel = ($rs[0]==$val)?'selected':'';
							$str.='<option value="'.$rs[0].'" '.$sel.'>'.$rs[1].'</option>';
						}
					}
				}
				$str.='</select>';
			}
			if($type=='checkboxall'){
				if(!$this->isempt($data)){
					$str = '';
					$_ars= explode(',', $data);
					$fopt= $this->option->getmnum($_ars[0]);
					$fvad= 'name';
					if(isset($_ars[1])&&($_ars[1]=='value'||$_ars[1]=='id'||$_ars[1]=='num'))$fvad=$_ars[1];
					foreach($fopt as $k=>$rs){
						$cb  = $rs[$fvad];
						$str.='<label><input name="'.$fname.'[]" value="'.$cb.'" type="checkbox"> '.$rs['name'].'</label>&nbsp; &nbsp; ';
					}
				}
			}
			
			if($type=='datetime'||$type=='date'||$type=='time'){
				$str = '<input value="'.$val.'" '.$attr.' class="inputs datesss" onclick="c.date(this,\''.$type.'\')" readonly name="'.$fname.'">';
			}
			if($type=='number'||$type=='xuhao'){
				$str = '<input class="inputs" '.$attr.' value="'.$val.'" type="number" onfocus="js.focusval=this.value" onblur="js.number(this)" name="'.$fname.'">';
				if($type=='xuhao')$str.='<input value="0" type="hidden" name="'.$a['fieldss'].$leox.'">';
			}
			if($type=='changeusercheck'||$type=='changeuser'||$type=='changedept'||$type=='changedeptusercheck'){
				$str = '<table width="98%"><tr><td width="100%"><input '.$attr.' class="inputs" style="width:98%" id="change'.$fname.'" readonly type="text" name="'.$fname.'"><input name="'.$data.'" id="change'.$fname.'_id" type="hidden"></td>';
				$str .= '<td nowrap><a href="javascript:;" onclick="c.changeclear(\'change'.$fname.'\')" class="webbtn">×</a><a href="javascript:;" onclick="c.changeuser(\''.$fname.'\',\''.$type.'\')" class="webbtn">请选择...</a></td></tr></table>';
			}
			if($type=='htmlediter'){
				$str = '<textarea class="textarea" '.$attr.' style="height:250px" name="'.$fname.'">'.$val.'</textarea>';
			}
			if($type=='checkbox'){
				$chk = '';
				if($val=='1'||$val=='true')$chk='checked';
				$str = '<input name="'.$fname.'" '.$chk.' '.$attr.' type="checkbox" value="1"> ';
			}
			
		}
		return $str;
	}
}

class inputClassAction extends inputAction{}