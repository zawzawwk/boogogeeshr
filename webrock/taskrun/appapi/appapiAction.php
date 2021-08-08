<?php 
class appapiAction extends ActionNot{
	
	public $appapikey 	= 'lds56rockdemoappkey%^&S@f56';
	public $splittime 	= 0;
	
	public $userrs;
	public $cfrom		= '';
	public $token		= '';
	
	public function initAction()
	{
		$msg 		= '';
		$time 		= time();
		$this->cfrom= $this->request('cfrom');
		$this->token= $this->request('token');
		$appapikey	= $this->get('appapikey');
		$timekey	= floatval($this->get('timekey','0'))/1000;
		$this->adminid 	 = (int)$this->get('adminid','0');
		$this->splittime = (int)($time - $timekey);
		$code 		= 200;
		$isdl		= false;
		if(M=='login|appapi'||A=='getsign')$isdl=true;
		if(!$isdl){
			if($appapikey != md5($this->appapikey)){
				$msg = 'apikey invalid';
				$code= 201;
			}
			if($msg == ''){
				$time1 = $time - 10;
				$time2 = $time + 10;
				if($timekey>$time2 || $timekey<$time1){
					$msg = 'timekey invalid';
					$code= 202;
				}
			}
			if($msg == ''){
				$to 	= m('logintoken')->rows("`token`='$this->token' and `cfrom`='$this->cfrom' and `uid`='$this->adminid'");
				if($to==0){
					$msg = 'access invalid';
					$code= 299;
				}
			}
		}
		if($msg != ''){
			$this->showreturn('', $msg, $code);
		}
		$this->adminname 	= '';
		if(!$isdl){
			$this->userrs		= m('admin')->getone("`id`='$this->adminid' and `status`=1 and `state`<>5", '`name`,`id`,`ranking`,`finge`');
			if(!$this->userrs){
				$this->showreturn('', 'not found user', 203);
			}
			if($this->userrs)$this->adminname = $this->userrs['name'];
		}
		$this->rock->adminid	= $this->adminid;
		$this->rock->adminname 	= $this->adminname;
	}
	
	public function showreturn($arr, $msg='', $code=200)
	{
		$callback	= $this->get('callback');
		$result 	= json_encode(array(
			'code' 	=> $code,
			'msg'	=> $msg,
			'data'	=> $arr,
			'sysd'	=> array(
				'time' => time(),
				'now'  => $this->now
			)
		));
		if($callback!=''){
			echo ''.$callback.'('.$result.')';
		}else{
			echo $result;
		}
		exit();
	}
	
	public function getvals($nae, $dev='')
	{
		$sv = $this->rock->jm->base64decode($this->request($nae));
		if($this->isempt($sv))$sv=$dev;
		return $sv;
	}
	
	public function submitflow($id, $num='')
	{
		$flownum 	= $this->request('flownum');
		if($num!='')$flownum = $num;
		$flow 		= f($flownum);
		$this->filesave($flow->table,$id);
		$flow->adminid 		= $this->adminid;
		$flow->adminname 	= $this->adminname;
		$flow->initrecord($id);
		$msg 		= $flow->submit(1);
		return $msg;
	}
	public function filesave($mtype, $id)
	{
		$fileid 	= $this->getvals('fileid','0');
		if($fileid!='0')m('file')->addfile($fileid,$mtype , $id);
	}
}