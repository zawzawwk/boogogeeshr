var url=params.url;
var panel = {
	html:'<iframe src="" id="iframe_'+rand+'" width="100%" height="100%" frameborder="0"></iframe>'
};
return {
	panel:panel,
	init:function(){
		var surl = jm.uncrypt(url);
		get('iframe_'+rand+'').src=surl;
	}
};