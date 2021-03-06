<?php
class extentClassAction extends Action
{
	public $rows	= array();
	
	public function initAction()
	{
		$this->table	= $this->T('menu');
	}
	
	/**
		保存
	*/
	public function saveAjax()
	{
		$type		= $this->post('type');
		$mid		= $this->post('mid');
		$checkaid	= $this->post('checkaid');
		if($type == 'um'){
			$this->extentclear($mid);
		}else{
			$this->db->delete($this->T('sjoin'), "`type`='$type' and `mid`='$mid'");
		}
		$ntable		= '';
		$msg		= '';
		switch($type){
			case 'um';
				$ntable = ''.PREFIX.'menu';
			break;	
			case 'gm';
				$ntable = ''.PREFIX.'menu';
			break;
			case 'mu';
				$ntable = ''.PREFIX.'admin';
			break;
			case 'mg';
				$ntable = ''.PREFIX.'group';
			break;
		}
		if($ntable != ''){
			$this->db->insert($this->T('sjoin'),'`type`,`mid`,`sid`,`indate`',"select '$type','$mid',`id`,'$this->now' from `$ntable` where `id` in($checkaid)",true);
		}
		if($msg=='')$msg='success';
		echo $msg;
	}
	
	private function extentclear($uid)
	{
		$this->db->delete($this->T('sjoin'), "( (`type` in ('um','uu','ut') and `mid`='$uid') or (`type`='mu' and `sid`='$uid') )");
	}
	
	/**
		获取权限信息
	*/
	public function getextentAjax()
	{
		$type		= $this->rock->post('type');
		$mid		= $this->rock->post('mid');
		$ntable		= '';
		$s			= '[0]';
		
		//权限查看的
		if($type == 'view' || $type == 'um'){
			$s.=$this->getuserext($mid);
		}else{
			$rsa	= $this->db->getall("select `sid` from `[Q]sjoin` where `type`='$type' and `mid`='$mid'");
			foreach($rsa as $rs)$s.=',['.$rs['sid'].']';
		}
		echo $s;
	}

	/**
		查看人员菜单权限
	*/	
	private function getuserext($uid)
	{
		$gasql	= " ( id in( select `sid` from `[Q]sjoin` where `type`='ug' and `mid`='$uid') or id in( select `mid` from `[Q]sjoin` where `type`='gu' and `sid`='$uid') )";//用户所在组id
		$gsql	= "select `id` from `[Q]group` where $gasql ";
		$owhe	= " and (`id` in(select `sid` from `[Q]sjoin` where ((`type`='um' and `mid`='$uid') or (`type`='gm' and `mid` in($gsql) ) ) ) or `id` in(select `mid` from `[Q]sjoin` where ((`type`='mu' and `sid`='$uid') or (`type`='mg' and `sid` in($gsql) )) ))";
		if($this->db->rows('[Q]group',"`ispir`=0 and $gasql")>0)$owhe=''; 	//不用权限验证的用户
		$guid	= '';
		$arss	= $this->db->getall("select `id` from `[Q]menu` where (`status` =1 $owhe) or (`status` =1 and `ispir`=0) order by `sort`");
		foreach($arss as $ars){
			$guid.=',['.$ars['id'].']';
		}
		return $guid;
	}
	
	public function viewafterstore($table, $rows)
	{
		$mrs = m('flow_set')->getall("id>0 order by `sort`", '`id`,`num`,`name`,`table`');
		
		return array('modearr'=>$mrs);
	}
}