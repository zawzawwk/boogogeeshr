<?php
/**
	*****************************************************************
	* 联系QQ：290802026/1073744729									*
	* QQ  群：429403774，提供技术交流等								*
	* 版  本：V2.2.7												*
	* 开发者：RockOA研发中心/雨中磐石工作室							*
	* 邮  箱：admin@rockoa.com										*
	* 网  址：http://www.rockoa.com/								*
	* 说  明: 核心代码不要修改哦									*
	* 备  注: 未经允许不得商业出售，代码欢迎参考纠正				*
	* 修改时: 2016-03-11 23:15:12									*	
	*****************************************************************
*/
 class jmChajian extends Chajian{private $keystr = 'abcdefghijklmnopqrstuvwxyz';private $jmsstr = '';protected function initChajian(){$this->initJm();}public function initJm(){$this->jmsstr = getconfig('randkey');$this->setRandkey($this->jmsstr);$this->getkeyshow();}public function setRandkey($str){$this->jmsstr = $str;if(strlen($this->jmsstr)<26)$this->jmsstr = $this->keystr;$this->getrocktoken();}public function getRandkey(){$str = $this->keystr;$s  = '';$len = strlen($str);$j  = $len-1;for($i=0; $i<$len; $i++){$r = rand(0, $j);$zm= substr($str, $r, 1);$s.= $zm;$str = str_replace($zm,'',$str);$j--;}return $s;}public function getkeyshow(){$str = '~!@#$%^&*()_+{}[];"<>?:-=.';$len = strlen($this->jmsstr);$s  = '';for($i=0;$i<$len;$i++){$l = substr($this->jmsstr,$i,1);$j = ord($l)-97;$s.= substr($str,$j,1);}return $s;}public function base64encode($str){if($this->rock->isempt($str))return '';$str= base64_encode($str);$str= str_replace(array('+', '/', '='), array('!', '.', ':'), $str);return $str;}public function base64decode($str){if($this->rock->isempt($str))return '';$str= str_replace(array('!', '.', ':'), array('+', '/', '='), $str);$str= base64_decode($str);return $str;}public function encrypt($str){$s= $this->base64encode($str);$s= $this->encrypts($s);return $s;}public function uncrypt($str){$s= $this->uncrypts($str);$s= $this->base64decode($s);return $s;}public function encrypts($str){$a= $this->jmsstr;$nstr= '';if($this->rock->isempt($str)) return $nstr;$len= strlen($str);$t= rand(1, 14);if($t == 10)$t++;for($i=0; $i<$len; $i++){$nstr.='0';$sta= substr($str,$i,1);$orstr= ''.ord($sta).'';$ile= strlen($orstr);for($j=0; $j<$ile; $j++){$oi= (int)substr($orstr,$j,1)+$t;$nstr.= substr($a,$oi,1);}}if($nstr != ''){$nstr = substr($nstr,1);$nstr.= '0'.$t.'';}return $nstr;}public function uncrypts($str){$nstr= '';if($this->rock->isempt($str)) return $nstr;$a1= $this->jmsstr;$a= array();for($i=0; $i<strlen($a1); $i++)$a[substr($a1, $i, 1)] = ''.$i.'';$na= explode('0', $str);$len= count($na);$r= (int)$na[$len-1];for($i=0; $i<$len-1; $i++){$st= $na[$i];$sl = strlen($st);$sa= '';for($j=0; $j<$sl; $j++){$ha= substr($st,$j,1);if(isset($a[$ha]))$ha = $a[$ha] - $r;$sa.=$ha;}$sa= (int)$sa;$nstr.=chr($sa);}return $nstr;}public function unescape($str){$str= rawurldecode($str);preg_match_all("/%u.{4}|&#x.{4};|&#d+;|.+/U", $str, $r);$ar= $r[0];foreach($ar as $k=>$v){if(substr($v,0,2) == "%u"){$ar[$k] = iconv("UCS-2","utf-8",pack("H4",substr($v,-4)));}elseif(substr($v,0,3) == "&#x"){$ar[$k] = iconv("UCS-2","utf-8",pack("H4",substr($v,3,-1)));}elseif(substr($v,0,2) == "&#") {$ar[$k] = iconv("UCS-2","utf-8",pack("n",substr($v,2,-1)));}}return join('',$ar);}public function escape($str){preg_match_all("/[\xc2-\xdf][\x80-\xbf]+|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}|[\x01-\x7f]+/e", $str, $r);$str= $r[0];$l= count($str);for($i=0; $i <$l; $i++){$value = ord($str[$i][0]);if($value < 223){$str[$i] = rawurlencode(utf8_decode($str[$i]));}else{$str[$i] = "%u".strtoupper(bin2hex(iconv("UTF-8","UCS-2",$str[$i])));}}return join('',$str);}public $rocktokenarr = array();public function getrocktoken(){$toke = $this->rock->get('rocktoken');$str = $this->uncrypt($toke);if($toke!='' && !$this->contain($str,'&'))exit('sorry,not found!');$arr= array('m'=>'index','a'=>'default','d'=>'');if($str){$a = explode('&', $str);foreach($a as $a1){$a2 = explode('=', $a1);$arr[$a2[0]] = $a2[1];}}$this->rocktokenarr = $arr;return $arr;}public function gettoken($na, $dev=''){$s = $dev;if(isset($this->rocktokenarr[$na])){$s = $this->rocktokenarr[$na];}else{$s = $this->rock->get($na, $dev);}return $s;}public function strrocktoken($a=array()){$s = '';foreach($a as $k=>$v){$s .='&'.$k.'='.$v.'';}if($s!=''){$s = $this->encrypt(substr($s, 1));}return $s;}}