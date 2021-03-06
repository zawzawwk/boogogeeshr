var grid;
function openurl(a){
	var sas = ['申请','审核'];
	var url = a.url,
		num = a.menunum,
		txt = a.title,
		typ = a.opentype;
	if(isempt(url))return;	
	if(typ){
		url+=',opentype='+typ+'';
		num+=''+typ+'';
	}
	addtabs(txt, url, num);
}

function opentablss(a, gsid){
	addtabs('[查看]'+a.modename,'flow,apply,'+a.modenum+',flownum='+a.modenum+',tablename='+a.tablename+',opentype=1,mid='+a.mid+',gridid='+gsid+'', ''+a.modenum+'_'+a.mid+'',{menutype:'cy'});
}

var flowrand = js.getrand();
var gridid 	 = 'checkapply_'+flowrand+'';
var flow = Ext.create('Ext.rock.flow',{opentype:1,flownum:'',gridid:gridid,rand:flowrand});

var panel = {
	bbarbool:false,xtype:'rockgrid',id:gridid,
	url:js.getajaxurl('daicl',mode,dir),
	tbar:[{
		text:'刷新',icon:gicons('reload'),handler:function(){
			this.up('rockgrid').storereload();
		}
	},'->',{
		text:'新窗口打开详情',icon:gicons('application'),disabled:true,itemId:'new',handler:function(){
			var a = this.up('grid')._openurl();
		}
	}],
	_openurl:function(){
		var a = this.changedata;
		mopenview(a.modenum,a.mid,this.getId());
	},
	storeconfig:{groupField: 'modename'},
	features: [{ftype:'grouping',groupHeaderTpl: '{name} ({rows.length}条)'}],
	fields:['modename','modenum','tablename','mid'],
	columns:[{
		xtype: 'rownumberer',
		width: 40
	},{
		text:'部门',width:'15%',dataIndex:'deptname',sortable:false
	},{
		text:'姓名',width:'10%',dataIndex:'name',sortable:false
	},{
		text:'时间',width:160,dataIndex:'optdt',sortable:false
	},{
		text:'状态',width:'13%',dataIndex:'statusman',sortable:false,renderer:function(v, m, c){
			var s = v,s1='',a = c.raw;
			s1= '<input value="去处理..." style="cursor:pointer" temp="flowbtn_'+flowrand+'_'+a.modenum+''+a.mid+'" receid="'+a.mid+'" flownum="'+a.modenum+'" type="button">';
			s+='<br>'+s1;
			return s;
		}
	},{
		text:'摘要',flex:1,dataIndex:'summary',sortable:false,renderer:rendercont,align:'left'
	}],
	click:function(a,v){
		openurl(v.raw);
		this.down('#new').setDisabled(false);
	},
	dblclick:function(){
		this._openurl();
	},
	load:function(mc){
		flow.loadshow(mc);
	},
	beforeload:function(){
		this.down('#new').setDisabled(true);
	}
};
return {
	panel:panel,
	init:function(){
		grid = objpanel.down('rockgrid');
	},
	tabson:{
		show:function(){
			rock[index].isReload();
		}
	}
};