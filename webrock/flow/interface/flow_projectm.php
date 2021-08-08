<?php
class projectmflowClass extends flowChajian
{
	
	protected function contentother()
	{
		$headstr = 'state,状态@optname,操作人@optdt,操作时间@explain,说明,left';
		$rows    = m('projects')->getall("`mid`='$this->id' order by `id`");
		$file	 = m('file');
		foreach($rows as $k=>$rs){
			$rows[$k]['state'] = $rs['state'].'('.$rs['progress'].'%)';
			$fstr = $file->getstr('projects', $rs['id']);
			if($fstr!='')$rows[$k]['explain'].='<br>'.$fstr.'';
		}
		$arr[] = array(
			'fields' 		=> 'jindu',
			'name' 			=> '项目进度报告',
			'data' 			=> c('html')->createrows($rows, $headstr, '#000000', 'noborder'),
		);
		return $arr;
	}
}