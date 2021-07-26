<?php 
class appapiAction extends ActionNot{
	public function initAction()
	{
		$this->showreturn('', '请先安装api', 201);
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
}