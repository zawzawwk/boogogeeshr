<?php 
/**
	*****************************************************************
	* 联系QQ： 290802026/1073744729									*
	* 版  本： V2.0													*
	* 开发者：雨中磐石工作室										*
	* 邮  箱： qqqq2900@126.com										*
	* 网  址： http://www.xh829.com/								*
	* 说  明: 定义常用的方法										*
	* 备  注: 未经允许不得商业出售，代码欢迎参考纠正				*
	*****************************************************************
*/



/**
	m 读取数据模型，操作数据库的
	$name 表名
*/
$GLOBALS['rockModelImport']	= array();
function m($name)
{
	$cls			= NULL;
	$pats			= '';
	if(isset($GLOBALS['rockModelImport'][$name])){
		$cls		= $GLOBALS['rockModelImport'][$name];
	}else{
		$nas		= $name;
		$asq		= explode(':', $nas);
		if(count($asq)>1){
			$nas	= $asq[1];
			$pats	= $asq[0].'/';
			$_pats	= ''.ROOT_PATH.'/'.PROJECT.'/model/'.$asq[0].'/'.$asq[0].'.php';
			if(file_exists($_pats))include_once($_pats);
		}
		$class		= ''.$nas.'ClassModel';
		$path		= ''.ROOT_PATH.'/'.PROJECT.'/model/'.$pats.''.$nas.'Model.php';
		if(file_exists($path)){
			include_once($path);
			$cls	= new $class($nas);
		}else{
			$cls	= new sModel($nas);
		}
		$GLOBALS['rockModelImport'][$name]	= $cls;
	}
	return $cls;
}

/**
	引入插件
	$name 插件名称
	$inbo 是否初始化
	$param1,2,参数 
*/
function c($name, $inbo=true, $param1='', $param2='')
{
	$class	= ''.$name.'Chajian';
	$path	= ''.ROOT_PATH.'/include/chajian/'.$class.'.php';
	$cls	= NULL;
	if(file_exists($path)){
		include_once($path);
		if($inbo)$cls	= new $class($param1, $param2);
	}
	return $cls;	
}

/**
	引入class文件
*/
function import($name, $inbo=true)
{
	$class	= ''.$name.'Class';
	$path	= ''.ROOT_PATH.'/include/class/'.$class.'.php';
	$cls	= NULL;
	if(file_exists($path)){
		include_once($path);
		if($inbo){
			$cls	= new $class();
		}
	}
	return $cls;
}

/**
	读取配置
*/
function getconfig($key)
{
	$a = array();
	if(isset($GLOBALS['config']))$a = $GLOBALS['config'];
	$s = '';
	if(isset($a[$key]))$s = $a[$key];
	return $s;
}

function isempt($str)
{
	$bool=false;
	if( ($str==''||$str==NULL||empty($str)) && (!is_numeric($str)) )$bool=true;
	return $bool;
}
function contain($str,$a)
{
	$bool=false;
	if(!isempt($a) && !isempt($str)){
		$ad=strpos($str,$a);
		if($ad>0||!is_bool($ad))$bool=true;
	}
	return $bool;
}