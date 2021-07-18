<?php
class setClassAction extends Action
{
	
	public function pandtablelabefore($table, $cans)
	{
		$s = '';
		if($this->contain(URL, 'demo.'))$s='演示系统请不要修改,谢谢';
		return $s;
	}

	public function savefieldsAjax()
	{
		$id = $this->rock->post('id');
		m('flow_set')->record(array(
			'fields'	=> $this->rock->post('fields')
		), $id);
	}
	
	
	public function pipeiAjax()
	{
		$sid 	= $this->request('id');
		$rows	= m('flow_set')->getall("`id` in($sid) and `isflow`=1 and `table` is not null order by `sort`", 'num');
		$str	= '';
		$mess	= '';//邮件内容
		$naes	= '';
		
		foreach($rows as $k=>$rsss){
			$flow	 = f($rsss['num']);
			$arrs	 = $flow->reloadpipei();
			$str	.= ''.($k+1).'、'.$arrs[0];
		}
		echo $str;
	}
	
	public function pandtablela($table, $cans, $id)
	{
		$tab 		= $cans['table'];
		if($this->isempt($tab))return;
		$alltabls 	= $this->db->getalltable();
		if(!in_array(''.PREFIX.''.$tab.'', $alltabls)){
			$sql = "CREATE TABLE `[Q]".$tab."` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0',
  `isturn` tinyint(1) DEFAULT '0',
  `nowcheckid` varchar(50) DEFAULT NULL,
  `allcheckid` varchar(200) DEFAULT NULL,
  `nstatus` tinyint(1) DEFAULT '0',
  `statusman` varchar(20) DEFAULT NULL,
  `nowcheckname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;";
			$this->db->query($sql);
		}
	}
	
	
	public function pagesetAction()
	{
		$setid	= $this->get('setid');
		$atype	= $this->get('atype');
		$rs 	= m('flow_set')->getone("`id`='$setid'");
		if(!$rs)exit('sorry!');
		$this->smartydata['rs'] = $rs;
		$this->title  = $rs['name'].'_页面设置';
		
		$table  = $rs['table'];
		$farr	= c('edit')->getfield($table, 1);
		$fleft	= array();
		$fleft[]= array('base_name', '申请人');
		$fleft[]= array('base_deptname', '申请部门');
		$fleft[]= array('base_sericnum', '单号');
		foreach($farr as $k=>$rs1){
			$fleft[] = array($k, $rs1['name']);
		}
		$fleft[] = array('file_content', '相关文件');
		$this->smartydata['fleft'] = $fleft;
		$path 		= ''.ROOT_PATH.'/webrock/flow/applyview/page/page_'.$rs['num'].'';
		if($atype=='1')$path .= '_mobile';
		$path	   .= '.html';
		$content 	= '';
		if(file_exists($path)){
			$content = file_get_contents($path);
		}
		if($content==''){
			//$content = '<table width="100%" bordercolor="#000000" border="0"><tbody><tr><td width="15%" height="34" align="right" class="ys1">姓名：</td><td width="35%" class="ys2">{base_name}</td><td width="15%" class="ys1" align="right">部门：</td><td width="35%" class="ys2">{base_deptname}</td></tr><tr><td height="34" align="right" class="ys1">申请日期：</td><td class="ys2">{dt}</td><td align="right" class="ys1">操作时间：</td><td class="ys2">{optdt}</td></tr><tr><td height="34" align="right" class="ys1">说明：</td><td colspan="3" class="ys2">{explain}</td></tr><tr><td height="34" align="right" class="ys1">相关文件：</td><td colspan="3" class="ys2">{file_content}</td></tr></tbody></table>';
		}
		$this->smartydata['content'] = $content;
		$this->smartydata['atype'] 	= $atype;
	}
	
	public function pagesaveAjax()
	{
		$content = $this->post('content');
		$num 	 = $this->post('num');
		$atype 	 = $this->post('atype');
		$path 		= 'webrock/flow/applyview/page/page_'.$num.'';
		if($atype=='1')$path .= '_mobile';
		$path	   .= '.html';
		$this->rock->createtxt($path, $content);
		echo 'success';
	}
}