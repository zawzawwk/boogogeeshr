<?php 
class loginClassAction extends Action{
	
	public function defaultAction()
	{
		
	}
	
	public function checkAjax()
	{
		$adminuser	= $this->request('adminuser');
		$adminpass	= $this->request('adminpass');
		$arr 		= m('login')->start($adminuser, $adminpass, 'reim');
		if(is_array($arr)){
			$adminid = $arr['uid'];
			$keystr  = $this->jm->strrocktoken(array(
				'm' 	=> 'index',
				'd' 	=> 'webim',
				'uid'	=> $adminid,
				'token' => $arr['token']
			));
			$msg='success@@@'.$keystr.'';
			echo $msg;
		}else{
			echo $arr;
		}
	}
}