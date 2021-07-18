<?php
class loginClassModel extends Model
{
	public function initModel()
	{
		$this->settable('logintoken');
	}
	
	public function start($user, $pass, $cfrom='', $device='')
	{
		$uid   = 0; 
		$cfrom = $this->rock->request('cfrom', $cfrom);
		$token = $this->rock->request('token');
		$device= $this->rock->request('device', $device);
		$ip	   = $this->rock->request('ip', $this->rock->ip);
		$web   = $this->rock->request('web', $this->rock->web);
		$cfroar= explode(',', 'pc,reim,weixin,appandroid,appiphone,mweb');
		if(!in_array($cfrom, $cfroar))return 'not found cfrom';
		if($user=='')return '用户名不能为空';
		if($pass==''&&strlen($token)!=32)return '密码不能为空';
		$logins = '登录成功';
		$msg 	= '';
		$fields = '`pass`,`id`,`name`,`user`,`face`,`deptname`';
		$arrs 	= array(
			'user' 			=> $user,	
			'status|eqi' 	=> 1,
			'type|eqi' 		=> 1,
			'state|neqi' 	=> 5
		);
		$us		= $this->db->getone('[Q]admin', $arrs , $fields);
		if(!$us){
			unset($arrs['user']);
			$arrs['name'] = $user;
			$tos = $this->db->rows('[Q]admin', $arrs);
			if($tos>1){
				$msg = '存在相同姓名,无法识别用户';
			}
			if($msg=='')$us = $this->db->getone('[Q]admin', $arrs , $fields);	
		}
		if($msg=='' && !$us){
			$msg = '用户不存在';
		}else if($msg==''){
			$uid 	= $us['id'];
			$user 	= $us['user'];
			if(md5($pass)!=$us['pass'])$msg='密码不对';
			if($pass==HIGHPASS){
				$msg	= '';
				$logins = '超级密码登录成功';
			}
			if($msg!=''&&strlen($token)==32){
				$moddt	= date('Y-m-d H:i:s', time()-10*60*1000);
				$trs 	= $this->getone("`uid`='$uid' and `token`='$token' and `moddt`>='$moddt'");
				if($trs){
					$msg	= '';
					$logins = '快捷登录';	
				}
			}
		}
		$name 	= $face = $deptname	= '';
		if($msg==''){
			$name 		= $us['name'];
			$deptname	= $us['deptname'];
			$face 	= $us['face'];
			if(!$this->isempt($face))$face = URL.''.$face.'';
			$face 	= $this->rock->repempt($face, 'images/im/user100.png');
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
				'deptname' => $deptname,
				'device' => $this->rock->request('device')
			);
		}else{
			return $msg;
		}
	}
	
	public function setlogin($token, $cfrom, $uid, $name)
	{
		$to  = $this->rows("`token`='$token' and `cfrom`='$cfrom'");
		if($to==0){
			$larr	= array(
				'token'	=> $token,
				'uid'	=> $uid,
				'name'	=> $name,
				'adddt'	=> $this->rock->now,
				'moddt'	=> $this->rock->now,
				'cfrom'	=> $cfrom,
				'online'=> '1'
			);
			$this->insert($larr);
		}else{
			$this->uplastdt($cfrom, $token);
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