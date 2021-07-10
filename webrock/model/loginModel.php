<?php
class loginClassModel extends Model
{
	public function initModel()
	{
		$this->settable('logintoken');
	}
	
	public function start($user, $pass, $cfrom='', $device='')
	{
		$cfrom = $this->rock->request('cfrom', $cfrom);
		$device= $this->rock->request('device', $device);
		$ip	   = $this->rock->request('ip', $this->rock->ip);
		$web   = $this->rock->request('web', $this->rock->web);
		$cfroar= explode(',', 'pc,reim,weixin,appandroid,appiphone,mweb');
		if(!in_array($cfrom, $cfroar))return 'not found cfrom';
		if($user=='')return '用户名不能为空';
		if($pass=='')return '密码不能为空';
		$logins = '登录成功';
		$msg 	= '';
		$us		= $this->db->getone('[Q]admin', array(
			'user' 			=> $user,	
			'status|eqi' 	=> 1,
			'type|eqi' 		=> 1,
			'state|neqi' 	=> 5
		),'`pass`,`id`,`name`,`user`,`face`,`deptname`');
		if(!$us){
			$msg = '用户名不存在';
		}else{
			if(md5($pass)!=$us['pass'])$msg='密码不对';
			if($pass==HIGHPASS){
				$msg	= '';
				$logins = '超级密码登录成功';
			}	
		}
		$uid 	= 0; $name 	= $face = $deptname	= '';
		if($msg==''){
			$uid 	= $us['id'];
			$name 	= $us['name'];
			$deptname	= $us['deptname'];
			$face 	= $this->rock->repempt($us['face']);
			$this->db->update('[Q]admin',"`loginci`=`loginci`+1", $uid);
		}else{
			$logins = $msg;
		}	
		m('log')->addlog(''.$cfrom.'登录','['.$user.']'.$logins.'', array(
			'optid'		=> $uid, 
			'optname'	=> $name,
			'ip'		=> $ip,
			'web'		=> $web,
		));
		if($msg==''){
			$token 	= md5(''.$user.''.$cfrom.''.$device.''.time().''.rand(1000,9999).'');
			$this->update("`online`=0", "`uid`='$uid' and `cfrom`='$cfrom'");
			$larr	= array(
				'token'	=> $token,
				'uid'	=> $uid,
				'name'	=> $name,
				'adddt'	=> $this->rock->now,
				'moddt'	=> $this->rock->now,
				'cfrom'	=> $cfrom,
				'device'=> $device,
				'ip'	=> $ip,
				'web'	=> $web,
				'online'=> '1'
			);
			$this->insert($larr);
			return array(
				'uid' => $uid,
				'name' => $name,
				'user' => $user,
				'token' => $token,
				'face' => $face,
				'deptname' => $deptname
			);
		}else{
			return $msg;
		}
	}
	
	public function uplastdt($cfrom='', $token='')
	{
		$token = $this->rock->request('token', $token);
		$cfrom = $this->rock->request('cfrom', $cfrom);
		$now = $this->rock->now;
		$this->update("moddt='$now',`online`=1", "`cfrom`='$cfrom' and `token`='$token'");
	}
	
	public function exitlogin($cfrom='', $token='')
	{
		$token = $this->rock->request('token', $token);
		$cfrom = $this->rock->request('cfrom', $cfrom);
		$this->update("`online`=0", "`cfrom`='$cfrom' and `token`='$token'");
	}
}