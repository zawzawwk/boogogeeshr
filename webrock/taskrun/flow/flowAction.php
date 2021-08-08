<?php 
if(!defined('HOST'))exit('not access');

class flowClassAction extends ActionNot{
	
	public function initAction()
	{
		if($this->adminid==0){
			if(isajax()){
				$this->backmsg('not sign');
			}else{
				echo '<script>location.href="?m=login&ltype=1"</script>';
			}
			exit();
		}
	}
	
	public function checkAjax()
	{
		$flownum	= $this->post('flownum');
		$id			= (int)$this->post('id');
		$cid		= $this->adminid;
		$zt			= (int)$this->post('zt');
		$courseid	= (int)$this->post('courseid');
		$checkid	= $this->post('nextcheckid');
		$zyname		= $this->post('zyname');
		$zynameid	= $this->post('zynameid');
		$sm			= $this->post('sm');
		if($flownum==''||$id==0||$cid==0)exit('sorry;');
		$flow = f($flownum);
		$flow->adminid 		= $cid;
		$flow->adminname 	= m('admin')->getmou('name',"`id`='$cid'");
		$flow->initrecord($id);
		$msg = $flow->check($zt, $sm, $cid, $checkid, $zyname, $zynameid);
		echo $msg;
	}
	
	public function addlogAjax()
	{
		$flownum	= $this->post('flownum');
		$id			= (int)$this->post('id');
		//$cid		= (int)$this->post('cid');
		$cid		= $this->adminid;
		$name		= $this->post('name');
		$zt			= $this->post('zt');
		if($zt=='')$zt=$name;
		$sm			= $this->post('sm');
		if($flownum==''||$id==0||$cid==0||$sm=='')exit('sorry;');
		$flow = f($flownum);
		$flow->adminid 		= $cid;
		$flow->adminname 	= m('admin')->getmou('name',"`id`='$cid'");
		$flow->initrecord($id);
		$flow->addlogs($zt,$name,$sm);
		echo 'success';
	}
	
	/**
		流程单据查看
	*/
	public function viewAction()
	{
		$this->tpltype = 'html';
		
		$uid		= $this->adminid;
		$modenum	= $this->jm->gettoken('modenum');
		$table		= $this->jm->gettoken('table');
		$notitle	= $this->jm->gettoken('notitle');
		$mid		= (int)$this->jm->gettoken('mid');
		$dbs 		= m('flowlog');
		$modenum	= $dbs->getmodenum($table, $mid, $modenum);
		if($modenum == '' || $mid==0)exit('not found data');
		
		$flow		= f($modenum);
		$flow->initrecord($mid);
		if(!$flow->rs)exit('记录不存在');
		
		$this->title					= $flow->flowname;
		$this->smartydata['content']	= $flow->contentview();
		
		$table 		= $flow->table;
		$arr		= $dbs->getdatalog($modenum, $table, $mid, $uid);
		$this->smartydata['arr']		= $arr;
		$this->smartydata['urs']		= m('admin')->getall("`id` in($uid) order by `sort`",'`id`,`name`,`ranking`');
		$this->smartydata['inputrs']	= $arr['inputrs'];
		$this->smartydata['notitle']	= $notitle;
		$this->smartydata['uid']		= $uid;
		$torsk	= $this->get('rocktoken','',1);
		if($torsk!=''){
			$torsk=$this->jm->encrypt(str_replace('a=view','a=print', $torsk));
			foreach($_GET as $k=>$v)if($k!='rocktoken')$torsk.='&'.$k.'='.$v.'';
		}
		$this->smartydata['printurl']	= $torsk;
		
		$spagepath 	= ROOT_PATH.'/webrock/flow/applyview/page/page_'.$modenum.'_spage.html';
		if(!file_exists($spagepath)){
			$spagepath = '';
		}
		$this->smartydata['spagepath']		= $spagepath;
	}
	
	public function printAction()
	{
		$this->tpltype = 'html';
		$uid		= $this->jm->gettoken('uid');
		$uid		= $this->adminid;
		$modenum	= $this->jm->gettoken('modenum');
		$table		= $this->jm->gettoken('table');
		$mid		= (int)$this->jm->gettoken('mid');
		$notitle	= $this->jm->gettoken('notitle');
		$dbs 		= m('flowlog');
		$modenum	= $dbs->getmodenum($table, $mid, $modenum);
		if($modenum == '' || $mid==0)exit('not found data');
		
		$flow		= f($modenum);
		$flow->initrecord($mid);
		if(!$flow->rs)exit('记录不存在');
		
		$this->title					= $flow->flowname;
		$this->smartydata['content']	= $flow->contentview('print');
		$this->smartydata['notitle']	= $notitle;
		$torsk	= $this->get('rocktoken','',1);
		if($torsk!=''){
			$torsk=$this->jm->encrypt(str_replace('a=print','a=word', $torsk));
			foreach($_GET as $k=>$v)if($k!='rocktoken')$torsk.='&'.$k.'='.$v.'';
		}
		$this->smartydata['wordurl']	= $torsk;
	}
	
	public function wordAction()
	{
		$this->printAction();
		$filename = $this->title.'.doc';
		header('Content-type:application/msword');
		header('Content-disposition:attachment;filename='.iconv("utf-8","gb2312", $filename).'');
	}
}