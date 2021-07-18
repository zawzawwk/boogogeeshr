<?php
class taskClassAction extends Action
{
	public function taskrestartAjax()
	{
		$msg = c('socket')->sendshell('taskrestart');
		echo $msg;
	}
	public function taskaftershow($table, $rows)
	{
		$db = m('taskuser');
		foreach($rows as $k=>$rs){
			$s = '';
			if($rs['zntx'])$s.=',站内';
			if($rs['emtx'])$s.=',邮件';
			if($s!=''){
				$s = substr($s, 1).'通知';
				$rso = $db->getone("`id`='".$rs['confuid']."'",'recename,chaoname');
				if($rso){
					$s.='<br>接收:'.$rso['recename'].'';
					if(!$this->isempt($rso['chaoname']))$s.=';抄送:'.$rso['chaoname'].'';
				}
			}
			$rows[$k]['todocont'] = $s;
		}
		return array('rows'=>$rows);
	}
	
	public function publicaftersave($table, $cans, $id)
	{
		$ffsid	= $this->rock->post('timeidPost','0');
		$db = m('tasktime');
		$db->record(array('table'=>$table,'mid'=>$id), "id in($ffsid)");
		$db->delete("`table`='$table' and mid='$id' and id not in($ffsid)");
	}
	
	public function gettaketimeAjax()
	{
		$mid	= $this->get('mid');
		$table	= $this->get('table');
		$rows	= m('tasktime')->getall("`table`='$table' and mid='$mid' order by id asc");
		echo  json_encode($rows);
	}

	public function taskqueueAjax()
	{
		$rate	= c('rate', true);
		$ndt	= date('Y-m-d');
		$dt		= $this->post('dt', $ndt);
		$hor	= '';
		$rows	= $rate->result('task', $dt, 'and `status`=1', $hor);
		echo json_encode(array(
			'totalCount'=> count($rows),
			'rows'		=> $rows
		));
	}
	
	public function gettaskuserAjax()
	{
		$rows = m('taskuser')->getall('id>0 order by `sort`','id,name');
		echo json_encode($rows);
	}
	
	
	public function downbatAjax()
	{
		$ljth = str_replace('/','\\',ROOT_PATH);
		$path = exec('where php.exe');
		$str1 = '@echo off
'.$path.' '.$ljth.'\task.php -minute';
		$this->rock->createtxt('upload/RockOAMinute.bat', $str1);
		
		$str1 = '@echo off
'.$path.' '.$ljth.'\task.php';
		$this->rock->createtxt('upload/RockOABase.bat', $str1);
		$str = '::双击页面运行就可以了,该文件必须在您的win服务器上运行哦 
::每一天间隔5分钟从08:00 开始运行 到19:00
schtasks /create /sc DAILY /mo 1 /du "11:00" /ri 5 /sd "2016/04/01" /st "08:00:00"  /tn "RockOAMinute" /tr '.$ljth.'\upload\RockOAMinute.bat
::每天每15分钟运行一次
schtasks /create /sc DAILY /mo 1 /du "24:00" /ri 15 /sd "2016/04/01" /st "00:00:05"  /tn "RockOABase" /tr '.$ljth.'\upload\RockOABase.bat';
		//$luj = 'upload/RockOATask.bat';
		//$this->rock->createtxt($luj, $str);
		echo $str;
		header('Content-type:application/vnd.ms-excel');
		header('Content-disposition:attachment;filename=RockOATask.bat');
	}
}