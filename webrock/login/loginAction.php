<?php 
class loginClassAction extends Action{
	
	public function defaultAction()
	{
		$this->tpltype	= 'html';
		$this->smartydata['ca_adminuser']	= $this->getcookie('ca_adminuser');
		$this->smartydata['ca_rempass']		= $this->getcookie('ca_rempass');
		$this->smartydata['ca_adminpass']	= $this->getcookie('ca_adminpass');
		$this->title = $this->option->getval('systemtitle');
	}
	
	public function checkAjax()
	{
		$user 	= $this->jm->base64decode($this->post('adminuser'));
		$user	= str_replace(' ','',$user);
		$pass	= $this->jm->base64decode($this->post('adminpass'));
		$rempass= $this->post('rempass');
		$jmpass	= $this->post('jmpass');
		if($jmpass == 'true')$pass=$this->jm->uncrypt($pass);
		$arr 	= m('login')->start($user, $pass, 'pc');
		if(is_array($arr)){
			$uid 	= $arr['uid'];
			$name 	= $arr['name'];
			$user 	= $arr['user'];
			$token 	= $arr['token'];
			$this->rock->savesession(array(
				QOM.'adminid'	=> $uid,
				QOM.'adminname'	=> $name,
				QOM.'adminuser'	=> $user,
				QOM.'admintoken'=> $token
			));
			$this->rock->savecookie(QOM.'ca_adminuser', $user);
			$this->rock->savecookie(QOM.'ca_rempass', $rempass);
			$ca_adminpass	= $this->jm->encrypt($pass);
			if($rempass=='0')$ca_adminpass='';
			$this->rock->savecookie(QOM.'ca_adminpass', $ca_adminpass);
			echo 'success';
		}else{
			echo $arr;
		}
	}
	
	
	public function exitAction()
	{
		$this->rock->clearallsession();
		$this->rock->location('?m=login');
	}
}