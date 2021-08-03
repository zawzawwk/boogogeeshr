<?php
class tableClassAction extends Action
{
	public function getfieldsAjax()
	{
		$table 	= $this->post('table');
		
		$rows 	= $this->db->gettablefields('[Q]'.$table.'');
		foreach($rows as $k=>$rs){
			$rows[$k]['id'] = $k+1;
		}
		echo json_encode(array(
			'rows' 		 => $rows,
			'totalCount' => count($rows)
		));
	}
	
	public function savefieldsAjax()
	{
		$table 	= $this->get('table');
		$id 	= (int)$this->post('idPost');
		$fields = $this->post('namePost');
		if($fields=='id' || $id==1)$this->backmsg('id字段不可修改');
		
		$sm 	= $this->post('explainPost');
		$type 	= $this->post('typePost');
		$length = (int)$this->post('lengthPost');
		$dev 	= $this->post('devPost');
		if(in_array($type, array('text','datetime','date')))$length=0;
		
		$str 	= "`$fields` ".$type;
		if($length>0)$str.='('.$length.')';
		if($this->isempt($dev)){
			$str.=' DEFAULT NULL';
		}else{
			$str.=" DEFAULT '$dev'";
		}
		if(!$this->isempt($sm))$str.=" COMMENT '$sm'";
		
		
		$farr 	= $this->db->getallfields('[Q]'.$table);
		if(in_array($fields, $farr)){
			$sql = "alter table `[Q]$table` MODIFY $str;";
		}else{
			$sql = "alter table `[Q]$table` add COLUMN $str;";
		}
		$bo = $this->db->execsql($sql);
		$msg = '';
		if(!$bo)$msg=$this->db->error();
		$this->backmsg($msg);
	}
	
	public function getelementAjax()
	{
		$table 	= $this->post('table');
		$mid 	= $this->post('mid');
		$rows 	= m('flow_element')->getrows("`mid`='$mid'",'*','`iszb`,`sort`');
		$farrs 	= array();
		$tabarr = explode('|', $table);
		$tabarr[]= 'items';
		foreach($tabarr as $k1=>$tass){
			$farr	= $this->db->gettablefields('[Q]'.$tass.'');
			$farrs[]= array('','————↓以下表('.$tass.')的字段————');
			foreach($farr as $k=>$rs){
				$farrs[]= array($rs['name'],''.$rs['explain'].'('.$rs['name'].')', $tass);
			}
		}
		echo json_encode(array(
			'rows' 		 => $rows,
			'fieldsarr'  => $farrs,
			'totalCount' => count($rows)
		));
	}
	
	
	public function inputAction()
	{
		$setid	= $this->get('setid');
		$atype	= $this->get('atype');
		$rs 	= m('flow_set')->getone("`id`='$setid'");
		if(!$rs)exit('sorry!');
		$this->smartydata['rs'] = $rs;
		$this->title  = $rs['name'].'_录入页面设置';
		$fleftarr 	= m('flow_element')->getrows("`mid`='$setid' and `islu`=1",'*','`iszb`,`sort`');
		$modenum	= $rs['num'];
		$fleft[]= array('base_name', '申请人',0);
		$fleft[]= array('base_deptname', '申请部门',0);
		$fleft[]= array('base_sericnum', '单号',0);
		$fleft[] = array('file_content', '相关文件',0);
		$iszb 	= 0;
		foreach($fleftarr as $k=>$brs){
			$bt='';
			if($brs['isbt']==1)$bt='*';
			$iszbs = $brs['iszb'];
			if($iszbs>0&&$iszb==0){
				$fleft[]= array('', '<font color=#ff6600>—第'.$iszbs.'个多列子表—</font>', $iszbs);
				$fleft[]= array('xuhao', '序号', $iszbs);
			}
			$iszb	= $iszbs;
			$fleft[]= array($brs['fields'], $bt.$brs['name'], $iszb);
		}

		
		$this->smartydata['fleft'] = $fleft;
		
		$path 		= ''.ROOT_PATH.'/webrock/flow/applyview/page/input_'.$modenum.'.html';
		$content 	= '';
		if(file_exists($path)){
			$content = file_get_contents($path);
		}
		$this->smartydata['content'] = $content;
		
		$apaths		= 'webrock/flow/input/mode_'.$modenum.'Action.php';
		$apath		= ''.ROOT_PATH.'/'.$apaths.'';
		if(!file_exists($apath)){
			$stra = '<?php
/**
*	此文件是流程模块【'.$modenum.'.'.$rs['name'].'】对应接口文件。
*	可在页面上创建更多方法如：public funciton testactAjax()，用js.getajaxurl(\'testact\',\'mode_'.$modenum.'|interfacei\',\'flow\')调用到对应方法
*/ 
class mode_'.$modenum.'ClassAction extends inputAction{
	
	/**
	*	重写函数：保存前处理，主要用于判断是否可以保存
	*	$table String 对应表名
	*	$arr Array 表单参数
	*	$id Int 对应表上记录Id 0添加时，大于0修改时
	*	$addbo Boolean 是否添加时
	*	return array(\'msg\'=>\'错误提示内容\',\'rows\'=> array()) 可返回空字符串，或者数组 rows 是可同时保存到数据库上数组
	*/
	protected function savebefore($table, $arr, $id, $addbo){
		
	}
	
	/**
	*	重写函数：保存后处理，主要保存其他表数据
	*	$table String 对应表名
	*	$arr Array 表单参数
	*	$id Int 对应表上记录Id
	*	$addbo Boolean 是否添加时
	*/	
	protected function saveafter($table, $arr, $id, $addbo){
		
	}
}	
			';
			$this->rock->createtxt($apaths, $stra);
		}
	}
	
	public function pagesaveAjax()
	{
		$content = $this->post('content');
		$num 	 = $this->post('num');
		$path 	 = 'webrock/flow/applyview/page/input_'.$num.'.html';
		$this->rock->createtxt($path, $content);
		echo 'success';
	}
	
	
	
	public function getsubtableAjax()
	{
		$iszb 	= (int)$this->post('iszb');
		$hang 	= (int)$this->post('hang');
		$modeid = (int)$this->post('modeid');
		if($iszb<=0)$iszb=1;
		if($hang<=0)$hang=1;
		
		$rows 	= m('flow_element')->getall("`mid`='$modeid' and `iszb`=$iszb and `islu`=1",'`isbt`,`fields`,`name`','`sort`');
		if(!$rows)$this->backmsg('没有设置第'.$iszb.'个多行子表');
		$xu	 = $iszb-1;
		$str = '<table class="tablesub" id="tablesub'.$xu.'" style="width:100%;" border="0" cellspacing="0" cellpadding="0">';
		$str.='<tr>';
		$str.='<td width="10%">序号</td>';
		foreach($rows as $k=>$rs){
			$xh = '';
			if($rs['isbt']==1)$xh='*';
			$str.='<td>'.$xh.''.$rs['name'].'</td>';
		}
		$str.='<td width="5%">操作</td>';
		$str.='</tr>';
		for($j=0;$j<$hang;$j++){
			$str.='<tr>';
			$str.='<td >[xuhao'.$xu.','.$j.']</td>';
			foreach($rows as $k=>$rs){
				$str.='<td>['.$rs['fields'].''.$xu.','.$j.']</td>';
			}
			$str.='<td >{删,'.$xu.'}</td>';
			$str.='</tr>';
		}
		$str.='</table>';
		$str.='<div style="background-color:#F1F1F1;">{新增,'.$xu.'}</div>';
		$this->backmsg('','ok', $str);
	}
}