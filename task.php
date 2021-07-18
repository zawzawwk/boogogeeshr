<?php 
/**
*	OA定时任务
*	主页：http://www.rockoa.com
*	说明：免费开源软件，欢迎学习研究使用
*	作者：雨中磐石(rainrock)
*	使用说明，这个是定时任务，可直接用cli命令运行本文件如：php task.php
*	一般是每5分钟运行一次，这样就可以实现定时任务处理的
*	win 下使用 php F:\IIS\rock\task.php
*	linux 下使用
*/
include_once('config/config.php');
$d 			= 'taskrun';
$ajaxbool	= 'true';
$m 			= 'base';
$a 			= 'run';
if(isset($argv)){
	if(isset($argv[1])){
		if($argv[1]=='-minute'){
			$m = 'minute5';
			$a = 'runtask';
		}
	}
}
include_once('include/View.php');