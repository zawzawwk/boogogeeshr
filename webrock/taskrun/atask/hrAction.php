<?php 
class hrClassAction extends ataskAction{
	
	//更新转正离职变动
	public function updateAjax()
	{
		$mdb	 	= m('admin');
		$tiemss 	= strtotime($this->date);
		$this->updatepositive($mdb, $tiemss);//转正的
		$this->updatehrredund($mdb, $tiemss);//离职的
		$this->updatehrtransfer($mdb, $tiemss);//调动的
		echo 'success';
	}
	
	//转正的
	private function updatepositive($mdb, $timess)
	{
		$db		= m('hrpositive');
		$rows 	= $db->getall("`status`=1 and `isover`=0",'`id`,`uid`,`entrydt`,`syenddt`,`positivedt`');
		foreach($rows as $k=>$rs){
			if(strtotime($rs['positivedt']) <= $timess){
				$bo = $mdb->update(array(
					'state' => '1',
					'syenddt' => $rs['syenddt'],
					'positivedt' => $rs['positivedt'],
				), $rs['uid']);
				if($bo)$db->update("`isover`=1", $rs['id']);
			}
		}
	}
	
	//离职的
	private function updatehrredund($mdb, $timess)
	{
		$db		= m('hrredund');
		$rows 	= $db->getall("`status`=1 and `isover`=0",'`id`,`uid`,`quitdt`');
		$timess	= $timess - 24*3600;//昨天
		foreach($rows as $k=>$rs){
			if(strtotime($rs['quitdt']) <= $timess){
				$bo = $mdb->update(array(
					'state' => '5',
					'quitdt' => $rs['quitdt']
				), $rs['uid']);
				if($bo)$db->update("`isover`=1", $rs['id']);
			}
		}
	}
	
	//调动的
	private function updatehrtransfer($mdb, $timess)
	{
		$db		= m('hrtransfer');
		$rows 	= $db->getall("`status`=1 and `isover`=0",'`id`,`uid`,`effectivedt`,`newdeptid`,`tranuid`,`newdeptname`,`newranking`');
		$uids	= '0';
		foreach($rows as $k=>$rs){
			if(strtotime($rs['effectivedt']) <= $timess){
				$uid = $rs['tranuid'];
				$bo = $mdb->update(array(
					'deptid' 	=> $rs['newdeptid'],
					'deptname' 	=> $rs['newdeptname'],
					'ranking' 	=> $rs['newranking'],
				), $uid);
				if($bo){
					$db->update("`isover`=1", $rs['id']);
					$uids.=','.$uid;
				}	
			}
		}
		if($uids != '0')m('admin')->updatedata("and `id` in($uids)");
	}
}