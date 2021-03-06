<?php 
/**
	工作流的插件
*/

class flowChajian extends Chajian{

	public $flownum;
	public $flowname;
	public $table;
	public $id;
	public $setid;
	public $idtype;
	public $rs;
	public $mdb;
	public $urs;
	public $drs;
	public $brs;
	public $uid;
	public $sericnum;
	
	public $flowrs;
	public $errormsg;
	public $where;
	public $flowarr;
	public $fieldsarr;
	public $checksm;
	public $todotplarr = array();
	
	public function __construct($num)
	{
		parent::__construct();
		$this->flownum 		= $num;
		$this->errormsg 	= '';
		$this->where	 	= '';
		$this->initflows();
		$this->initflow();
	}
	
	protected function initflow(){}
	protected function initdachange(){}
	protected function flowcheckname($num){return '';}
	protected function flowsubmit($lx){}
	protected function flowcheckjudge(){}
	protected function flowcheckbefore($zt,$nrs){}
	protected function flownothrough(){}
	protected function flowthrough($sm){}
	protected function contentother(){}
	protected function flowfields($arr){}
	
	
	
	private function initflows()
	{
		$this->dbcourse = m('flow_course');
		$this->dblog 	= m('flow_log');
		$this->dbrule 	= m('flow_rule');
		$this->dbadmin 	= m('admin');
		$this->dbwhere 	= m('where');
		$this->dbtodo 	= m('todo');
		$this->flowrs	= m('flow_set')->getone("`num`='$this->flownum'");
		if(!$this->flowrs){
			exit('流程不存在;');
			return;
		}	
		$this->table			= $this->flowrs['table'];
		$this->flowname			= $this->flowrs['name'];
		$this->setid			= $this->flowrs['id'];
		$this->uidfields		= $this->rock->repempt($this->flowrs['uidfields'], 'uid');
		$this->statusfields		= $this->rock->repempt($this->flowrs['statusfields'], 'status');
		$this->nstatusfields	= 'nstatus';
		$this->statusmanfields	= 'statusman';
		$this->fieldsarr		= array(
			'base_name' 		=> '姓名',
			'base_deptname' 	=> '部门',
			'base_flowname' 	=> '模块',
			'base_sericnum' 	=> '单号'
		);
		$this->mdb				= m($this->table);
	}
	
	public function addmsg($msg='')
	{
		$this->errormsg .= $msg;
	}
	
	public function initrecord($id, $islx=0)
	{
		$this->id		= $id;
		$this->idtype	= $islx; //0pc,1移动
		$this->rs		= $this->mdb->getone("`id`='$id'");
		$this->where	= "`table`='$this->table' and `mid`='$this->id'";
		if(!$this->rs){
			$this->addmsg('['.$id.']记录不存在;');
			return;
		}else{
			if(!isset($this->rs[$this->uidfields]))$this->rs[$this->uidfields]=0;
			if(!isset($this->rs['applydt']))$this->rs['applydt']='';
		}
		$this->rs['base_name'] = '';
		$this->rs['base_deptname'] = '';
		$this->uid	= $this->rs[$this->uidfields];
		if($this->uid==0 && isset($this->rs['optid']))$this->uid = $this->rs['optid'];
		if($this->isempt($this->rs['applydt'])&&isset($this->rs['optdt']))$this->rs['applydt']=substr($this->rs['optdt'],0,10);
		if($this->isempt($this->rs['applydt']))$this->rs['applydt']=$this->rock->date;
		$this->urs	= $this->dbadmin->getone("`id`='$this->uid'",'`id`,`deptname`,`name`,`ranking`,`deptid`,`deptpath`,`superid`,`superman`,`finge`');
		if($this->urs){
			$this->drs	= $this->db->getone('[Q]dept', "`id`='".$this->urs['deptid']."'");
			$this->rs['base_name']		= $this->urs['name'];
			if($this->drs){
				$this->rs['base_deptname']	= $this->drs['name'];
			}	
		}
		$this->sericnum	= '';
		$this->brs		= m('flow_bill')->getone($this->where);
		if(!$this->brs&&$this->urs)$this->brs=$this->savebill();
		$this->sericnum	= $this->brs['sericnum'];
		$this->rs['base_flowname']	= $this->flowname;
		$this->rs['base_sericnum']	= $this->sericnum;
		$this->initdachange();
		$this->rs['base_summary']	= $this->rock->reparr($this->flowrs['summary'], $this->rs);
	}
	
	public function getflow()
	{
		$this->flowarr		= array();
		$this->a_tempid		= '0';
		$rsone	= $this->prmatchflow($this->setid);
		if(!$rsone){
			$this->addmsg('匹配不到流程;');
			return;
		}
		$this->getflows($rsone, $this->setid);
		foreach($this->flowarr as $k=>$crs){
			$uarr 	= $this->getcheckname($crs);
			$zssh	= $crs['zscheck'];
			$courid	= $crs['id'];
			$checkid	= $uarr[0];
			$checkname	= $uarr[1];
			$showtype	= 1;//1当前部，2已审核完成
			
			$nesid	= $this->gettzzt($courid);
			$geusr 	= $this->dblog->getarr("$this->where and `courseid`='$courid' and `status` in($nesid) group by `checkid`",'checkid');
			$_uars 	= array();
			foreach($geusr as $k1=>$rs1){
				$_uars[]=$rs1['checkid'];
			}
			$looi	= count($_uars);
			if(!$this->isempt($checkid)){
				$_suid = '';
				$_suna = '';
				$csarid  = explode(',', $checkid);
				$csarna  = explode(',', $checkname);
				
				if($zssh<=0){
					foreach($csarid as $k2=>$u2){
						if(!in_array($u2, $_uars)){
							$_suid .= ','.$u2.'';
							$_suna .= ','.$csarna[$k2].'';
						}
					}
					if($_suid=='' && $looi>0)$showtype=2;
				}else{
					if($looi>=$zssh){
						$showtype = 2;
					}
				}
				if($_suid!=''){
					$checkid 	= substr($_suid,1);
					$checkname 	= substr($_suna,1);
				}
			}
			$this->flowarr[$k]['showtype'] 	= $showtype;
			$this->flowarr[$k]['checkid'] 	= $checkid;
			$this->flowarr[$k]['checkname'] = $checkname;
			$this->flowarr[$k]['checkidal'] 	= $uarr[0];
			$this->flowarr[$k]['checknameal'] 	= $uarr[1];
		}
	}
	
	private function getcheckname($crs)
	{
		$type	= $crs['checktype'];
		$cuid 	= $name = '';
		
		$_ches	= $this->db->getone('[Q]flow_checks',"$this->where and `courseid`='".$crs['id']."'",'checkid,checkname');
		if($_ches){
			$cuid = $_ches['checkid'];
			$name = $_ches['checkname'];
			if(!$this->isempt($cuid))return array($cuid, $name);
		}
		
		$uarr	= $this->flowcheckname($crs['num']);
		if(is_array($uarr)){
			if(!$this->isempt($uarr[0]))return $uarr;
		}

		if($type=='super'){
			$cuid = $this->urs['superid'];
			$name = $this->urs['superman'];
		}
		if($type=='dept' || $type=='super'){
			if($this->isempt($cuid)){
				$cuid = $this->drs['headid'];
				$name = $this->drs['headman'];
			}
		}
		if($type=='apply'){
			$cuid = $this->urs['id'];
			$name = $this->urs['name'];
		}
		if($type=='user'){
			$cuid = $crs['checktypeid'];
			$name = $crs['checktypename'];
		}
		if($type=='rank'){
			$rank = $crs['checktypename'];
			if(!$this->isempt($rank)){
				$rnurs	= $this->dbadmin->getall("`status`=1 and `ranking`='$rank' order by `sort`");
				foreach($rnurs as $k=>$rns){
					$cuid.=','.$rns['id'].'';
					$name.=','.$rns['name'].'';
				}
				if($cuid != ''){
					$cuid = substr($cuid, 1);
					$name = substr($name, 1);
				}
			}
		}
		if($type=='depta'){
			$duid = $crs['checktypeid'];
			if(!$this->isempt($duid)){
				$usar = $this->dbadmin->getall("`deptid` in($duid) and `status`=1 and `state`<>5",'`id`,`name`');
				foreach($usar as $k=>$rs){
					$cuid.=','.$rs['id'].'';
					$name.=','.$rs['name'].'';
				}
				if($cuid!=''){
					$cuid = substr($cuid, 1);
					$name = substr($name, 1);
				}
			}
		}
		$cuid	= $this->rock->repempt($cuid);
		$name	= $this->rock->repempt($name);
		return array($cuid, $name);
	}
	
	private function getflows($rsa, $sid)
	{
		if(!$rsa)return;
		$id		= (int)$rsa['id'];
		$this->a_tempid .= ','.$id.'';
		$type	= $rsa['checktype'];
		if( !($type == 'start' || $type =='end'))$this->flowarr[] = $rsa;	
		$allrs	= $this->dbcourse->getall("`pid`='$id' and `setid`='$sid' and `id` not in($this->a_tempid) order by `sort`");
		$nrs	= false;
		$k1		= 0;
		foreach($allrs as $k=>$srs){
			if($k==0)$nrs = $srs;
			$k1++;
		}
		if($k1>1){//多分支要判断条件成立的
			foreach($allrs as $k=>$srs){
				if($this->pandanwhere($srs['id'])){
					$nrs = $srs;
					break;
				}
			}
		}
		if($nrs){
			$this->getflows($nrs, $sid);
		}else{
			$nid = (int)$rsa['nid'];
			if($nid >0 ){
				$tenrs = $this->dbcourse->getone("`id`='$nid' and `setid`='$sid' and `id` not in($this->a_tempid) ");
				if($tenrs)$this->getflows($tenrs, $sid);
			}
		}		
	}
	
	private function pandanwhere($sid)
	{
		$bo 	= false;
		$where  = $this->dbwhere->getstring('flowcourse_'.$sid, 'a.', 'b.');
		if($where != ''){
			$total	= $this->db->rows("`[Q]$this->table` a left join `[Q]admin` b on a.`$this->uidfields`=b.`id`", "a.`id`='$this->id' $where");
			if($this->db->nowerror){
				$this->addmsg('判断条件有错('.$sid.'):'.$this->db->error().';');
			}
			if($total > 0)$bo=true;
		}
		return $bo;
	}

	private function prmatchflow($fsid)
	{
		$rsone	= false;
		$rsone1	= false;
		$rsall	= $this->dbcourse->getall("`setid`='$fsid' and `pid`=0 order by `sort`");
		$utid  	= array();
		$dtid  	= array();
		foreach($rsall as $k=>$rsa){
			$atype	= $rsa['atype'];
			if($this->rock->isempt($atype) || $atype == 'all'){
				$rsone1	= $rsa;
				continue;
			}
			$artid = explode(',', $rsa['atypeid']);
			foreach($artid as $ssid){
				if($ssid=='')continue;
				$fs  = substr($ssid, 0, 1);
				$sid = str_replace('u','', $ssid);
				$sid = str_replace('d','', $sid);
				if($fs=='d'){
					$dtid[$sid]= $rsa;
				}else{
					$utid[$sid]= $rsa;
				}					
			}
		}
		if(isset($utid[$this->uid]))$rsone = $utid[$this->uid];
		if(!$rsone){
			$depath = $this->urs['deptpath'];
			if(!$this->rock->isempt($depath)){
				$depa = explode(',', str_replace(array('[',']'), array('',''), $depath));
				foreach($depa as $depas){
					if(isset($dtid[$depas]))$rsone = $dtid[$depas];
				}
			}
		}
		if(!$rsone)$rsone=$rsone1;
		return $rsone;
	}
	
	public function addlog($arr=array(),$fileid='')
	{
		$addarr	= array(
			'table'		=> $this->table,
			'mid'		=> $this->id,
			'checkname'	=> $this->adminname, 
			'checkid'	=> $this->adminid, 
			'optdt'		=> $this->rock->now,
			'courseid'	=> '0',
			'status'	=> '1',
			'ip'		=> $this->rock->ip,
			'web'		=> $this->rock->web,
			'modeid'	=> $this->setid
		);
		foreach($arr as $k=>$v)$addarr[$k]=$v;
		$this->dblog->insert($addarr);
		$ssid = $this->db->insert_id();
		if($fileid!='')m('file')->addfile($fileid, $this->table, $this->id);
		return $ssid;
	}
	
	public function addlogs($zt, $na='', $sm='',$fileid='')
	{
		$arrs['statusname'] = $zt;
		$arrs['explain'] 	= $sm;
		$arrs['name'] 		= $na;
		return $this->addlog($arrs, $fileid);
	}
	
	//读取跳过状态动作
	private function gettzzt($courid)
	{
		$nesid	= '';
		$nsrs	= $this->db->getarr('[Q]flow_courseact',"`cid`='$courid' and `nid`=0",'`actv`');
		if(is_array($nsrs)){
			foreach($nsrs as $ns1=>$csrs)$nesid.=','.$csrs['actv'].'';
			if($nesid!='')$nesid = substr($nesid, 1);
		}
		if($nesid=='')$nesid='1';
		return $nesid;
	}
	
	private function getrule($upd=false)
	{
		$this->getflow();
		$allcourseid	= $alluserid = $alluser	= $allcheckid = $nowuser = $nowuserid= '';
		$step			= $nowcourseid	= $nextcourseid	= 0;
		$this->nowcoursers	= array();
		$this->nextcoursers	= array();
		$allstep		= count($this->flowarr);
		foreach($this->flowarr as $k=>$ars){
			$courid			= $ars['id'];
			$allcourseid   .= '|'.$courid.'';
			$alluserid     .= '|'.$ars['checkidal'].'';
			$alluser       .= '|'.$ars['checknameal'].'';
			if($ars['showtype'] == 1 && $step == 0 ){
				$step 			= $k+1;
				$nowcourseid	= $courid;
				$nowuserid		= $ars['checkid'];
				$nowuser		= $ars['checkname'];
				$this->nowcoursers	= $ars;
				if($step < $allstep){
					$this->nextcoursers	= $this->flowarr[$k+1];
					$nextcourseid		= $this->nextcoursers['id'];
				}	
			}	
		}
		if($allcourseid != ''){
			$allcourseid	= substr($allcourseid, 1);
			$alluserid		= substr($alluserid, 1);
			$alluser		= substr($alluser, 1);
			$allcheckid		= str_replace('|', ',', $alluserid);
		}
		$nstatus	= (int)$this->dblog->getmou('status', $this->where.' and `courseid`>0 order by id desc'); 	
		$uarr		= array(
			'flowname'		=> $this->flowname,
			'flowid'		=> $this->setid,
			'rulename'		=> $this->urs['name'],
			'allcourseid'	=> $allcourseid,
			'alluserid'		=> $alluserid,
			'alluser'		=> $alluser,
			'allstep'		=> $allstep,
			'step'			=> $step,
			'table'			=> $this->table,
			'mid'			=> $this->id,
			'adddt'			=> $this->rock->now,
			'nowcourseid'	=> $nowcourseid,
			'nextcourseid'	=> $nextcourseid,
			'nowuser'		=> $nowuser,
			'nowuserid'		=> $nowuserid,
			'allcheckid'	=> $allcheckid,
			'nstatus'		=> $nstatus
		);
		if($upd)$this->ruleupdate($uarr);
		return $uarr;
	}
	
	private function ruleupdate($uarr)
	{
		$where	= $this->where;
		$allcid	= $uarr['allcheckid'];
		if($allcid=='')$allcid='0';
		$allcids= '['.str_replace(',', '],[', $allcid).']';
		$lora	= $this->dblog->getall("$where and `courseid`>0 group by `checkid`", '`checkid`');
		foreach($lora as $k=>$lors){
			if(!$this->rock->contain($allcids, '['.$lors['checkid'].']')){
				$allcid.=','.$lors['checkid'].'';
			}
		}
		$uarr['allcheckid']	= $allcid;
		$ruid	= $this->dbrule->rows($where);
		if($ruid == 0){
			$where	= '';
		}
		$this->dbrule->record($uarr, $where);
		$urarr	= array(
			'allcheckid'	=> $uarr['allcheckid'],
			'nowcheckid'	=> $uarr['nowuserid'],
			'nowcheckname'	=> $uarr['nowuser']
		);
		$this->mdb->record($urarr, "`id`='$this->id'");
		m('flow_bill')->record(array(
			'allcheckid' => $uarr['allcheckid'],
			'nstatus' 	 => $uarr['nstatus']
		),  $this->where);
	}
	
	/**
		第一步提交时
		@param 	int 	$lx 	类型：0保存/1提交
		@param 	string 	$sm 	提交说明
	*/
	public function submit($lx=0, $sm='')
	{
		$name	= '保存';
		$this->savebill();
		$arr['nowuserid'] 	= '';
		$uarr['isturn'] 	= $lx;
		if($lx==1){
			if($this->errormsg != '')return $this->errormsg;
			$name	= '提交';
			if($this->flowrs['isflow']==1){
				$arr	= $this->getrule(true);
				$uarr['status'] = 0;
			}else{
				$uarr['status'] = 1;
				$this->rs['status'] = 1;
			}
		}
		$this->mdb->update($uarr, "`id`='$this->id'");
		$this->addlog(array(
			'name'		=> $name,
			'explain'	=> $sm
		));
		if($lx==1){
			$this->nexttodocl($arr['nowuserid'], 'next', $sm);
		}
		$this->flowsubmit($lx);
		return $name.'成功';
	}
	
	public function addtodo($uid,$tits='', $msg='', $url='')
	{
		if($tits=='')$tits = $this->flowname;
		$this->dbtodo->add($uid, $tits, $msg, array(
			'table' => $this->table,
			'mid'	=> $this->id,
			'url'	=> $url
		));
	}
	
	/**
		创建单号
	*/
	public function createnum()
	{
		$num = $this->flowrs['sericnum'];
		if($num=='无'||$this->isempt($num))$num='TM-Ymd-';
		$apdt 	= str_replace('-','',$this->rs['applydt']);
		$num	= str_replace('Ymd',$apdt,$num);
		return $this->db->sericnum($num,'[Q]flow_bill');
	}
	public function savebill()
	{
		if($this->flowrs['isflow']==0)return;
		$dbs = m('flow_bill');
		$whes= $this->where;
		$biid= (int)$dbs->getmou('id', $whes);
		$arr = array(
			'table' => $this->table,
			'mid' 	=> $this->id,
			'optdt' => $this->rock->now,
			'optname' 	=> $this->adminname,
			'optid' 	=> $this->adminid,
			'modeid'  	=> $this->setid,
			'isdel'		=> '0',
			'nstatus'	=> $this->rs['status'],
			'applydt'	=> $this->rs['applydt'],
			'modename'  => $this->flowname
		);
		if($biid==0){
			$arr['uid'] 	= $this->uid;
			$arr['sericnum']= $this->createnum();
			$whes	= '';
		}
		$dbs->record($arr, $whes);
		return $arr;
	}
	
	private $_fieldssel = array();
	public function getfields()
	{
		$arr	= array();
		$farr 	= m('flow_element')->getall("`mid`='$this->setid' and `iszb`=0 and `iszs`=1",'fields,name','`sort`');
		if($farr){
			foreach($farr as $k=>$rs){
				$arr[$rs['fields']]=$rs['name'];
			}
		}else{
			$farr	= c('edit')->getfield($this->table, 1);
			foreach($farr as $k=>$rs){
				$arr[$k] = $rs['name'];
				$this->_fieldssel[$k] = $rs['selarr'];
			}
		}
		$arrs = $this->flowfields($arr);
		if(is_array($arrs))$arr = $arrs;
		return $arr;
	}
	
	public function contentview($lx='')
	{
		$fields = $this->fieldsarr;
		$fields = array_merge($fields, $this->getfields());
		$fstr	= m('file')->getstr($this->table, $this->id);
		if($fstr != ''){
			$fields['file_content'] 	= '相关文件';
			$this->rs['file_content'] 	= $fstr;
		}
		$rows 	= $this->rs;
		foreach($rows as $k=>$v){
			if(isset($this->_fieldssel[$k])){
				$selarr = $this->_fieldssel[$k];
				if(isset($selarr[$v]))$rows[$k]=$selarr[$v];
			}
		}
		$ohtrn	= $this->contentother($fields);
		if(is_array($ohtrn)){
			foreach($ohtrn as $k=>$ors){
				$fid 			= $ors['fields'];
				$fields[$fid] 	= $ors['name'];
				$rows[$fid]   	= $ors['data'];
				if(isset($ors['fields_style']))$rows[$fid.'_style'] = $ors['fields_style'];
			}
		}
		$path 	= ''.ROOT_PATH.'/'.PROJECT.'/flow/applyview/page/page_'.$this->flownum.'';
		if($this->idtype==1)$path .='_mobile';
		$path  .= '.html';
		$cont	= $s = '';
		if(file_exists($path)){
			$cont = file_get_contents($path);
		}
		if(!$this->isempt($cont)){
			$s 	 = $this->rock->reparr($cont, $rows);
		}else{
			if($this->idtype==0)$s = c('html')->createtable($fields, $rows, $this->flowname, $lx);
		}
		return $s;
	}
	

	public function sendtodo($nuid,$tmarr=array(),$sm='')
	{
		foreach($tmarr as $k=>$v)$this->todotplarr[$k]=$v;
		$this->nexttodocl($nuid,'next',$sm);
	}
	
	//发送通知
	private function gettxsscont($lx, $lxs='')
	{
		$msg = '';
		if(isset($this->todotplarr[$lx])){
			$msg= $this->todotplarr[$lx];
			$msg= $this->rock->reparr($msg, $this->rs);
		}
		if($lxs!='' && $msg=='')$msg=$this->gettxsscont($lxs);
		return $msg;
	}
	private function nexttodocl($nuid, $type='next',$sm='', $oarr=array())
	{
		if($this->isempt($nuid))return;
		if($nuid!='all')$this->dbtodo->delete($this->where." and uid in($nuid)");
		$msg	= $cont	= $emal = $appcont = $agentname = $wxurl = '';
		$wxarr	= false;
		$url	= $this->createcheckurl($nuid);
		$zntx	= $this->flowrs['zntx'];
		$imtx	= $this->flowrs['imtx'];
		$emtx	= $this->flowrs['emtx'];
		$wxtx	= $this->flowrs['wxtx'];
		$apptx	= $this->flowrs['apptx'];
		$this->rs['check_explain'] = $sm;
		if($wxtx==1)$wxurl	= m('option')->getval('weixin_url');
		if($this->isempt($wxurl))$wxtx=0;
		$zntitle 	= $this->flowname;
		$apptitle 	= $this->flowname;
		$agentname 	= ''.$this->flowname.',单据待办';
		$imsendnae 	= $agentname;
		$wxopenurl	= ''.$wxurl.'xiang.html?num='.$this->flownum.'&mid='.$this->id.'';
		if($type == 'next'){
			if($zntx==1){
				$msg 	= $this->gettxsscont('zntx');
				if(is_array($msg)){
					if(isset($msg['cont']))$msg=$msg['cont'];
					if(isset($msg['title']))$zntitle=$msg['title'];
				}
				if($msg=='')$msg = '您有['.$this->urs['name'].']的['.$this->flowname.',单号:'.$this->sericnum.']需要处理';
				if($sm!='')$msg .= ',说明:'.$sm.'';
			}
			if($imtx == 1){
				$cont 	= $this->gettxsscont('imtx', 'zntx');
				if(is_array($cont)){
					if(isset($cont['cont']))$cont=$cont['cont'];
					if(isset($cont['title']))$imsendnae=$cont['title'].','.$imsendnae.'';
				}
				if($cont=='')$cont= '单据处理<br>模块:'.$this->flowname.'<br>单号:'.$this->sericnum.'<br>申请人:'.$this->urs['name'].'<br>部门:'.$this->drs['name'].'';
				if($sm!='')$cont .= '<br>说明:'.$sm.'';
			}
			if($emtx == 1){
				$yjcont	= $this->contentview();
				$emal 	= $this->gettxsscont('emtx');
				if($emal=='')$emal	= '您好:<br>您有['.$this->rs['base_deptname'].'.'.$this->rs['base_name'].']的['.$this->flowname.',单号:'.$this->sericnum.']需要处理';
				if($sm!='')$emal .= ',说明:'.$sm.'';
				$emal	.= '。请尽快去处理，谢谢！(邮件由系统自动发送)<br><a href="'.SYSURL.''.$url.'" target="_blank" style="color:blue"><u>打开地址&gt;&gt;</u></a><br><br>';
				$emal	.= $yjcont;
			}
			if($wxtx == 1){
				$owxarr = array();
				if(isset($this->todotplarr['wxtx'])){
					$owxarr = $this->todotplarr['wxtx'];
				}
				$wxarr = array(
					'title' 		=> '单据处理['.$this->flowname.']',
					'description' 	=> "模块：".$this->flowname."\n单号：".$this->sericnum."\n申请人：".$this->rs['base_name']."\n部门：".$this->rs['base_deptname']."\n操作时间：".$this->rs['optdt']."\n摘要：".$this->rs['base_summary']."",
					'url'			=> $wxopenurl
				);
				foreach($owxarr as $k=>$v)$wxarr[$k]=$v;
				if(isset($wxarr['agentname']))$agentname=$wxarr['agentname'].','.$agentname.'';
				$wxarr['description'] 	= $this->rock->reparr($wxarr['description'], $this->rs);
				$wxarr['title'] 		= $this->rock->reparr($wxarr['title'], $this->rs);
				m('weixin:index')->sendnews($nuid, $agentname, $wxarr);
			}
			if($apptx==1){
				$appcont 	= $this->gettxsscont('apptx','zntx');
				if(is_array($appcont)){
					if(isset($appcont['cont']))$appcont=$appcont['cont'];
					if(isset($appcont['title']))$apptitle=$appcont['title'];
				}
				if($appcont=='')$appcont = '您有['.$this->urs['name'].']的['.$this->flowname.',单号:'.$this->sericnum.']需要处理';
				if($sm!='')$appcont .= ',说明:'.$sm.'';
			}
		}
		$agentname 	= ''.$this->flowname.',单据申请';
		//退回
		if($type == 'nothrough'){
			$msg	= '您提交['.$this->flowname.',单号:'.$this->sericnum.']'.$oarr['checkname'].'处理['.$oarr['ztname'].']，原因:['.$oarr['sm'].']';	
			if($imtx == 1){
				$cont	= $msg;	
			}
			if($wxtx == 1){
				m('weixin:index')->sendnews($nuid,$agentname, array(
					'title' 		=> '您提交['.$this->flowname.']处理:'.$oarr['ztname'].'',
					'description' 	=> "处理人：".$this->adminname."\n单号：".$this->sericnum."\n处理动作：".$oarr['ztname']."\n原因：".$oarr['sm']."",
					'url'			=> $wxopenurl
				));
			}
			if($apptx==1){
				$appcont= $msg;
			}
		}
		//完成
		if($type == 'finish'){
			$msg	= '您提交的['.$this->flowname.',单号:'.$this->sericnum.']已全部处理完成';
			if($imtx == 1){
				$cont	= $msg;
			}
			if($wxtx == 1){
				m('weixin:index')->sendnews($nuid,$agentname, array(
					'title' 		=> '您提交['.$this->flowname.']已全部处理完成',
					'description' 	=> "单号：".$this->sericnum."\n最后处理人：".$this->adminname."\n说明：".$sm."\n摘要：".$this->rs['base_summary']."",
					'url'			=> $wxopenurl
				));
			}
			if($apptx==1){
				$appcont= $msg;
			}
		}
		
		if($msg != ''){
			if($nuid!='all')$this->addtodo($nuid,$zntitle, $msg);
		}
		if($cont != ''){
			m('reim')->sendsystem($this->adminid, $nuid, $imsendnae, $cont, $this->table, $this->id);
		}
		if($emal != ''){
			$rows 	= $this->rs;
			$rows['send_content'] = $emal;
			if($nuid!='all')m('email')->sendmail('flowchecktodo', $nuid, $rows);
		}
		if($appcont!=''){
			c('xgpush')->sendandroid($nuid, $apptitle, $appcont);
		}
	}
	
	public function createcheckurl($nuid)
	{
		$token	= $this->rock->jm->strrocktoken(array(
			'm' => 'flow',
			'd' => 'taskrun',
			'a' => 'view',
			'uid' => $nuid,
			'modenum' => $this->flownum,
			'mid' => $this->id
		));
		$url 	= '?rocktoken='.$token.'';
		return $url;
	}

	//添加指定记录审核
	private function addchecks($senid, $courseid, $checkid, $checkname)
	{
		$_carr = array(
			'table'	=> $this->table,
			'mid'	=> $this->id,
			'courseid'	=> $courseid,
			'checkid'	=> $senid,
			'checkname'	=> $this->db->getjoinval('[Q]admin','name',"`id` in($senid)"),
			'optid'		=> $checkid,
			'optname'	=> $checkname,
			'optdt'		=> $this->rock->now
		);
		$dbsae 		= m('flow_checks');
		$_seahwherr = "$this->where and `courseid`='$courseid'";
		if($dbsae->rows($_seahwherr)==0)$_seahwherr='';
		$dbsae->record($_carr, $_seahwherr);
	}
	
	public function check($zt, $sm='', $shuid=0, $senid='', $zyna='', $zyid='')
	{
		if($this->errormsg != '')return $this->errormsg;
		$this->checksm = $sm;
		$msg		= '';
		$ztfields	= $this->statusfields;
		$this->dbtodo->delete($this->where." and uid='$this->uid'");
		if($this->rs[$ztfields] == 1){
			$msg = '记录已审核完成了';
			return $msg;
		}
		
		$checkid			= $this->adminid;
		$checkname			= $this->adminname;
		if($shuid > 0){
			$tens_rs		= $this->dbadmin->getone("`id`='$shuid'", '`id`,`name`'); 
			$checkid		= $tens_rs['id']; 
			$checkname		= $tens_rs['name']; 
		}
		$checkid			= (int)$checkid;
		if($checkid <= 0){
			$msg = '审核人不存在';
			return $msg;
		}
		if($this->errormsg != ''){
			$msg = $this->errormsg;
			return $msg;
		}	
		
		$arr				= $this->dbrule->getone($this->where);
		$nowuserid			= $arr['nowuserid'];
		if(!$this->rock->contain(','.$nowuserid.',', ','.$checkid.',')){
			$msg='当前审核人是:['.$arr['nowuser'].','.$nowuserid.']';
			return $msg;
		}
		$msg	= '处理成功';
		$nextcourseid		= (int)$arr['nextcourseid'];
		$nowcourseid		= $arr['nowcourseid'];
		$this->nowcoursers	= $this->dbcourse->getone("`id`='$nowcourseid'");
		$nowcoursers		= $this->nowcoursers;
		$isback				= 0;
		$ztname				= '';
		$isend				= 0;
		$ztnamearr			= array('','通过','不通过');
		$this->flowcheckbefore($zt, $nowcoursers);
		$_shcnarr			= m('flow_courseact')->getone("`cid`='$nowcourseid' and `actv`='$zt'");
		$color 				= '';
		if(!$_shcnarr){
			if($zt==2)$isback = 1;
			$ztname	= $ztnamearr[$zt];
		}else{
			if($_shcnarr['nid']==-1)$isback = 1;
			$ztname	= $_shcnarr['name'];
			$color	= $_shcnarr['color'];
			if(!$this->isempt($_shcnarr['names']))$ztname = $_shcnarr['names'];
		}
		
		if(!$this->isempt($senid) && $nextcourseid!=0 && $zt==1){
			$this->addchecks($senid, $nextcourseid, $checkid, $checkname);
		}
		$this->dbtodo->delete($this->where." and `uid`='$checkid'");
		$alogar = array(
			'name'		=> $nowcoursers['name'],
			'status'	=> $zt,
			'statusname'=> $ztname,
			'explain'	=> $sm,
			'checkname'	=> $checkname,
			'checkid'	=> $checkid,
			'color'		=> $color,
			'courseid'	=> $nowcourseid
		);
		
		//转给谁办
		if(!$this->isempt($zyna) && !$this->isempt($zyid) && $zt==1){
			$this->addchecks($zyid, $nowcourseid, $checkid, $checkname);
			$isback = 0;
			$alogar['courseid'] 	= 0;
			$alogar['statusname'] 	= '转办';
			$alogar['color'] 		= '#ff6600';
			if($sm==''){$sm='转给：'.$zyna.'';}else{$sm .='，转给：'.$zyna.'';}
			$alogar['explain']		= $sm;
		}
		
		$loid 			= $this->addlog($alogar);
		$fileid			= $this->rock->post('fileid');
		m('file')->addfile($fileid, 'flow_log', $loid);
		$nextcheckid	= '';
		$narr			= $this->getrule(true);
		if($isback == 0){
			$nextcheckid	= $narr['nowuserid'];
		}
		
		$uparr	= array(
			$this->nstatusfields	=> $zt, 
			$this->statusmanfields	=> $checkname, 
			$ztfields				=> '0'
		);
		if($isback == 1)$uparr[$ztfields] = $zt;
		if($narr['step'] == 0){
			$uparr[$ztfields] 	= $zt;
			$isend			 	= 1;
		}
		$this->mdb->record($uparr, "`id`='$this->id'");
			
			
		$this->flowcheckjudge($nowcoursers, $this->nowcoursers, $zt, $sm);
		
		//前置审核判断(弃用)
		if(!$this->rock->isempt($nextcheckid) && !$_shcnarr && 1==2){
			$tempshrid	= (int)$this->dblog->getmou('checkid', "$this->where and `courseid`>0 and `status`=1 and `checkid` in($nextcheckid)");
			if($tempshrid > 0){
				$msg	= $this->check(1, '前置自动审核', $tempshrid);
				return $msg;
			}
		}
		
		if($isback == 1){
			$this->nexttodocl($this->uid, 'nothrough', $sm, array('ztname'=>$ztname,'sm'=>$sm,'checkname'=>$checkname,'checkid'=>$checkid));
			$this->flownothrough($sm);
		}
		
		if($isend == 1){
			$this->endflow($zt,$sm);	
		}else{
			if(!$this->rock->isempt($nextcheckid)){
				$this->nexttodocl($nextcheckid, 'next', $sm);
			}
		}
		return $msg;
	}
	
	private function endflow($zt,$sm)
	{
		if($zt==1){
			$this->dbrule->delete($this->where);
			$this->nexttodocl($this->uid, 'finish', $sm);
			$this->flowthrough($sm);
		}
	}

	public function flowdelete($sm='')
	{
		$msg = '';
		if($this->rs[$this->statusfields]==1)$msg = '已完成不允许删除';
		if($msg == '' && $this->uid != $this->adminid && $this->rs['optid'] != $this->adminid)$msg='不是您的单据';
		if($msg == ''){
			$this->mdb->update("`$this->statusfields`=5", $this->id);
			$this->dbrule->delete($this->where);
			$this->db->update('[Q]flow_bill', "`isdel`=1", $this->where);
			$this->addlog(array(
				'name'		=> '删除',
				'explain'	=> $sm
			));
			$this->dbtodo->delete($this->where);
			m('im_mess')->delete($this->where);
		}
		return $msg;
	}
	
	public function addzhuijia($sm='',$fileid='')
	{
		$msg = '';
		if($this->rs[$this->statusfields]==1)$msg = '已完成不用追加';
		if($msg == '' && $this->uid != $this->adminid && $this->rs['optid'] != $this->adminid)$msg='不是您的单据';
		if($msg == ''){
			$this->mdb->update("`$this->statusfields`=0", $this->id);
			$this->addlog(array(
				'name'		=> '追加说明',
				'explain'	=> $sm
			));
			if($fileid!='')m('file')->addfile($fileid, $this->table, $this->id);
			if($this->rs[$this->statusfields]==2)$this->nexttodocl($this->rs['nowcheckid'], 'next', $sm);
		}
		return $msg;
	}
	
	
	
	
	
	
	
	

	public function reloadpipei()
	{
		return $this->reloadpipeisss();
	}
	private function reloadpipeisss()
	{
		$whre	= $this->dbwhere->getstring('flowset_'.$this->flownum);
		$where	= "`isturn`=1  and ifnull(`uid`, 0)>0 and `status`<>1 and `status`<>5 and `uid` in(select `id` from `[Q]admin` where `status`=1) $whre";
		$rows	= $this->mdb->getall($where, '`id`');
		$total	= $this->db->count;
		$str	= '';
		$piep	= $wclt	= $ycli	= 0;
		$pieid	= $wclid = $yclid	= '0';
		$oic	= 0;
		$oistr	= '';
		foreach($rows as $k=>$rs){
			$bid	= $rs['id'];
			$this->initrecord($bid);
			$ztar	= $this->repipeirule();
			$zt		= $ztar[0];
			if($zt == 1){
				$piep++;
				$pieid.=','.$bid.'';
			}
			if($zt == 2){
				$yclid.=','.$bid.'';
				$ycli++;
			}
			if($zt == 3){
				$wclid.=','.$bid.'';
				$wclt++;
			}
			if($ztar[1] != ''){
				$oic++;
				$oistr.=''.$oic.'、【ID:'.$bid.','.$this->urs['name'].'】: '.$ztar[1].'<br>';
			}
		}
		$msg = '['.$this->flowname.']共记录'.$total.'条,重新匹配<font color="blue">('.$piep.')</font>条,异常<font color="red">('.$ycli.')</font>条,完成<font color="#ff6600">('.$wclt.')</font>条。<br>';
		$mess= ''.$msg.'重新匹配ID['.$pieid.'],异常ID['.$yclid.'],完成ID['.$wclid.']<br>'.$oistr.'<br>';
		return array($msg, $mess, $piep, $wclt);
	}
	private function repipeirule()
	{
		$olda	= $this->dbrule->getone($this->where);
		$lea	= 0;
		$leas	= '';
		if(!$olda){
			$tea_ra	= $this->getrule(true);
			$lea	= 1;
			$leas	= '新建流程为【'.$tea_ra['alluser'].':'.$tea_ra['alluserid'].'】;';
			return array($lea, $leas);
		}
		$newa	= $this->getrule(false);
		$bofda	= $this->rock->isempt($newa['nowuserid']);
		if($newa['step'] == 0 || $bofda){
			if($newa['step'] == 0 && $bofda){
				$ztss 	= $newa['nstatus'];
				$uparr	= array($this->statusfields	=> $ztss);
				$this->mdb->record($uparr, "`id`='$this->id'");
				$this->endflow($ztss);
				$lea	= 3;
				$leas	= '标识为'.$ztss.';';
			}else{
				$this->ruleupdate($newa);
				$leas	= '异常,当前没有审核人;';
				$lea	= 2;
			}
		}else{
			$ostep = (int)$olda['step'];
			$oldcid	= explode('|', $olda['allcourseid']);
			$olduid	= explode('|', $olda['alluserid']);
			$oldcstr= ''; $oldustr='';
			if($ostep>0){
				for($i=$olda['step']-1; $i<$olda['allstep']; $i++){
					$oldcstr.='|'.$oldcid[$i].'';
					$oldustr.='|'.$olduid[$i].'';
				}
			}
			$newcid	= explode('|', $newa['allcourseid']);
			$newuid	= explode('|', $newa['alluserid']);
			$newcstr= ''; $newustr='';
			for($i=$newa['step']-1; $i<$newa['allstep']; $i++){
				$newcstr.='|'.$newcid[$i].'';
				$newustr.='|'.$newuid[$i].'';
			}
			if($oldcstr != $newcstr || $oldustr != $newustr || $olda['alluser'] != $newa['alluser']){
				$this->ruleupdate($newa);
				$leas	= '【'.$olda['alluser'].'：'.$olda['alluserid'].'】→【'.$newa['alluser'].'：'.$newa['alluserid'].'】;';
				$lea	= 1;
			}
		}
		return array($lea, $leas);
	}
}