var stype='',sid='',gotourl='';

function initbody(){
	adminface=opener.adminface;
	resetw();
	$(window).resize(function(){
		resetw();
	});
	stype = js.request('stype');
	sid = js.request('sid');
	im.init();
}

function resetw(){
	var h = winHb();
	if(h<50)return;
	h = h-40;
	$('#userlist').css({height:''+(h)+'px'});
	$('#listcontent').css({height:''+(h-30)+'px'});
}
var mainarr = false;

function changeshow(lx){
	if(!mainarr)return false;
	if(lx==-1){
		im.showuser(mainarr.uarr);
	}else{	
		im.showgroup(mainarr.garr, lx);//后续需要调整
	}
	return false;
}

function a_openrecord(lx, lxid){
	stype = lx;
	sid = lxid;
	im.showview();
}


var grouparr = {},userarr={},wdarr=[];
var im = {
	wdarr:[],
	init:function(){
		this.loadinit();
	},
	loadinit:function(){
		mainarr=opener.maindata; 
		var a=mainarr;
		$('#userzong').html(a.uarr.length+'');
		im.showgroup(a.garr, 0);
		im.showview();
	},
	showuser:function(a){
		var s = '',i,
			o = $('#userlist');
		o.html('');	
		for(i=0; i<a.length; i++){
			userarr[a[i].id] = a[i];
			s  = '<div onclick="a_openrecord(\'user\', '+a[i].id+')"><img src="'+a[i].face+'" align="absmiddle">'+a[i].name+'</div>';
			o.append(s);
		}
		$('#userzong').html(i);
	},
	showgroup:function(a, oi){
		var toa  = [0,0,0];
		var s = '',i,
			o = $('#userlist');
		o.html('');	
		for(i=0; i<a.length; i++){
			lx	= a[i].type;
			grouparr[a[i].id] = a[i];
			if(lx==oi){
				s	= '<div onclick="a_openrecord(\'group\', '+a[i].id+')"><img src="'+a[i].face+'" align="absmiddle">'+a[i].name+'</div>';
				o.append(s);
			}
			toa[lx]++;
			$('#groupzong'+lx+'').html(''+toa[lx]+'');
		}
	},
	
	showview:function(){
		var a = false;
		atype = stype;
		if(stype=='user' || stype==''){
			im.showuser(mainarr.uarr);
			if(sid!='')a = userarr[sid];
		}else{
			a = grouparr[sid];
			im.showgroup(mainarr.garr, a.type);
			if(a.type==2)atype='agent';
		}
		if(sid=='')return;
		$('#shownamea').html('['+a.name+']信息记录：');
		this.showpage(1);
	},
	showpage:function(p){
		$('#pageshow').html('');
		$('#listcontent').html('<div style="padding:50px;" align="center"><img src="images/mloading.gif"></div>');
		js.ajaxss('reimjilu','data', function(a){
			im._showdata(a);
		},{page:p,atype:atype,sid:sid});
		return false;
	},
	_showdata:function(a){
		this.showdata(a.data);
		var s = '';
		if(a.page>1)s+='&nbsp; <a href="javascript:" onclick="return im.showpage(1)">首页</a>';
		if(a.page>1)s+='&nbsp; <a href="javascript:" onclick="return im.showpage('+(a.page-1)+')">上一页</a>';
		s+='&nbsp; 总记录'+a.count+'条/页数('+a.page+'/'+a.maxpage+')'
		if(a.page<a.maxpage)s+='&nbsp; <a href="javascript:" onclick="return im.showpage('+(a.page+1)+')">下一页</a>'
		if(a.page<a.maxpage)s+='&nbsp; <a href="javascript:" onclick="return im.showpage('+(a.maxpage)+')">尾页</a>';	
		if(a.count<=0)s='&nbsp; 无记录';
		$('#pageshow').html(s);
	},
	showdata:function(a){
		var i,len = a.length,cont,lex,nas,ids='0',fase,url;
		$('#listcontent').html('');
		for(i= len-1; i>=0; i--){
			lex = 'right';
			nas = '我';
			fase= ''+adminface;
			if(a[i].sendid!=adminid){
				lex	='left';
				nas	= a[i].sendname;
				fase= a[i].sendface;
			}
			if(a[i].zt=='0')ids+=','+a[i].id;
			cont = jm.base64decode(a[i].cont);
			url 	= strformat.geturl(a[i]);
			if(!isempt(url)){
				cont+='<br><a href="javascript:" onclick="return openurlla(\''+url+'\')">打开地址&gt;&gt;</a>';
			}
			cont= strformat.showqp(lex,nas,a[i].optdt, cont,'', fase);
			this.addcont(cont);
		}
		if(ids != '0')this.setyd(ids);
	},
	
	addcont:function( cont){
		var o	= $('#listcontent');
		o.append(cont);
		clearTimeout(this.scrolltime);
		this.scrolltime	= setTimeout(function(){
			if(get('listcontent'))o.animate({scrollTop:get('listcontent').scrollHeight},100);
		}, 50);
	},
	strcont:function(nr){
		var str	= strformat.strcont(nr);
		return str;
	},
	//更新为已读
	setyd :function(s){
		if(s)js.ajaxss('reim','setyd',function(){},{ids:s});
	}
}	