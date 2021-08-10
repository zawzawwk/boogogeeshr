/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : rainrock

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-07-04 22:28:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `rock_admin`
-- ----------------------------
DROP TABLE IF EXISTS `rock_admin`;
CREATE TABLE `rock_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL COMMENT '用户名',
  `nicheng` varchar(50) DEFAULT NULL COMMENT '@昵称',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `pass` varchar(50) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  `loginci` smallint(6) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态@0|停用,1|启用',
  `gender` varchar(5) DEFAULT NULL COMMENT '性别@男,女',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(30) DEFAULT NULL COMMENT '操作人',
  `optid` int(11) DEFAULT NULL,
  `face` varchar(100) DEFAULT NULL,
  `style` varchar(30) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '类型@0不能登录后台,1|可登录后台',
  `mibao` varchar(50) DEFAULT NULL,
  `mibaodaan` varchar(50) DEFAULT NULL,
  `jifen` int(11) DEFAULT '0' COMMENT '@积分',
  `ranking` varchar(50) DEFAULT NULL COMMENT '职位',
  `deptid` smallint(4) DEFAULT '0',
  `deptpath` varchar(50) DEFAULT NULL,
  `deptname` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `superman` varchar(50) DEFAULT NULL COMMENT '上级主管',
  `superid` varchar(50) DEFAULT NULL,
  `superpath` varchar(50) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0' COMMENT '@排序号',
  `zhiwen` varchar(10) DEFAULT NULL COMMENT '指纹号',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `idnum` varchar(35) DEFAULT NULL COMMENT '身份证号',
  `homepage` varchar(50) DEFAULT NULL COMMENT '个人主页',
  `housetel` varchar(50) DEFAULT NULL COMMENT '家庭电话',
  `biyephoto` varchar(100) DEFAULT NULL COMMENT '@毕业证书图片',
  `xueweiphoto` varchar(100) DEFAULT NULL COMMENT '@学位图片',
  `houseaddress` varchar(100) DEFAULT NULL COMMENT '家庭地址',
  `nowaddress` varchar(100) DEFAULT NULL COMMENT '现在地址',
  `housecode` varchar(6) DEFAULT NULL COMMENT '邮编',
  `nowcode` varchar(6) DEFAULT NULL,
  `jinname` varchar(10) DEFAULT NULL COMMENT '紧急联系人',
  `jintel` varchar(50) DEFAULT NULL COMMENT '紧急人电话',
  `minzu` varchar(5) DEFAULT NULL COMMENT '民族',
  `xueli` varchar(5) DEFAULT NULL COMMENT '学历',
  `hunyin` varchar(5) DEFAULT NULL COMMENT '婚姻',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机号',
  `hkaddress` varchar(100) DEFAULT NULL COMMENT '户口地址',
  `workdate` date DEFAULT NULL COMMENT '入职时间',
  `positivedt` date DEFAULT NULL COMMENT '转正日期',
  `syenddt` date DEFAULT NULL COMMENT '试用到期日',
  `zhuanye` varchar(50) DEFAULT NULL COMMENT '专业',
  `school` varchar(50) DEFAULT NULL COMMENT '毕业学校',
  `aihao` varchar(200) DEFAULT NULL COMMENT '爱好',
  `shengao` varchar(20) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(20) DEFAULT NULL COMMENT '体重',
  `qq` varchar(50) DEFAULT NULL COMMENT 'QQ',
  `finge` varchar(20) DEFAULT NULL COMMENT '指纹号',
  `state` tinyint(1) DEFAULT '2' COMMENT '人员状态@1|正式员工,2|试用期,3|实习生,4|兼职,5|离职员工',
  `bydate` date DEFAULT NULL COMMENT '毕业时间',
  `groupname` varchar(50) DEFAULT NULL COMMENT '所在组',
  `quitdt` date DEFAULT NULL COMMENT '离职日期',
  `isdaily` tinyint(1) DEFAULT '1' COMMENT '写工作日报@0|不用写,1|要写',
  `isvcard` tinyint(1) DEFAULT '1' COMMENT '通讯录显示@0|不显示,1|显示',
  `homeitems` varchar(200) DEFAULT NULL COMMENT '@首页项目',
  `jiguan` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `workdt` date DEFAULT NULL COMMENT '参加工作时间',
  `xuexing` varchar(10) DEFAULT NULL COMMENT '血型',
  `zzmianmao` varchar(10) DEFAULT NULL COMMENT '政治面貌',
  `imonline` tinyint(4) DEFAULT '0' COMMENT '@是否在线',
  `imlastdt` datetime DEFAULT NULL COMMENT '@最后上线',
  `deviceid` varchar(100) DEFAULT NULL COMMENT '@APP登录设备',
  `applastdt` datetime DEFAULT NULL,
  `iswx` tinyint(1) DEFAULT '0' COMMENT '是否绑定微信',
  `companyid` smallint(6) DEFAULT '0' COMMENT '所属公司',
  `weixinid` varchar(50) DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_admin
-- ----------------------------
INSERT INTO `rock_admin` VALUES ('1', 'admin', '雨中磐石', '管理员', 'e10adc3949ba59abbe56e057f20f883e', null, '242', '1', '男', '1582233', 'admin@rockoa.com', '2016-03-02 16:11:14', '管理员', '1', 'upload/2015-08/1440578146698_4091.jpg', '1', '1', '我的英文名是？', 'rainrock', '511', 'OA项目经理', '4', '[1],[4]', '开发部', '磐石', '7', '[7]', '0', null, '1988-12-02', null, null, null, null, null, '厦门', '厦门', null, null, '管理员', '10086', '汉族', '中专', null, null, '厦门', '2015-01-01', '2015-08-15', '2015-08-01', '计算机', null, null, null, null, null, '1', '1', null, '系统管理员', null, '1', '1', null, null, '2015-01-01', 'B型', '党员', '0', '2016-01-02 17:19:08', '867112020521204', '2016-03-02 16:02:11', '1', '1', null);
INSERT INTO `rock_admin` VALUES ('2', 'rockoa', '客服', 'RockOA客服', '101ed0b1c565aac0f93c9d51c2cc622d', null, '58', '1', '男', null, 'kefu@rockoa.com', '2016-05-17 21:26:26', '管理员', '1', 'upload/2015-08/24_1510166137.png', null, '1', null, null, '51', '客服', '4', '[1],[4]', '开发部', '管理员', '1', '[7],[1]', '1', null, '1993-12-16', null, null, null, null, null, null, null, null, null, null, null, '汉族', '大专', null, null, null, '2014-12-09', null, null, null, null, null, null, null, null, '6', '1', null, '系统管理员', null, '1', '1', null, null, null, null, null, '0', '2015-08-14 09:53:23', '867112020521204', '2015-10-23 09:32:28', '0', '1', null);
INSERT INTO `rock_admin` VALUES ('3', 'diaochan', null, '貂蝉', 'e10adc3949ba59abbe56e057f20f883e', null, '48', '1', '女', '0592-222', 'diaochan@rockoa.com', '2015-10-21 17:11:35', '管理员', '1', 'upload/2015-08/02_2246506417_crop8455.jpg', '0', '1', null, null, '0', '人事经理', '3', '[1],[3]', '行政人事', '大乔', '4', '[7],[4]', '11', null, '1987-11-22', '36555', null, '0595-', null, null, '三国', '三国时期', null, null, '吕布', '10085', '回民', '博士后', '未婚', null, '三国户口', '2014-12-02', null, null, null, null, null, null, null, '222', '4', '2', null, null, null, '1', '1', null, null, '2015-04-28', 'A型', '群众', '1', '2016-01-29 12:34:46', '867112020521204', '2016-03-02 15:35:50', '0', '0', null);
INSERT INTO `rock_admin` VALUES ('4', 'daqiao', null, '大乔', 'e10adc3949ba59abbe56e057f20f883e', null, '11', '1', '女', null, 'daqiao@rockoa.com', '2015-11-22 20:52:20', '管理员', '1', null, '0', '1', null, null, '0', '行政主管', '3', '[1],[3]', '行政人事', '磐石', '7', '[7]', '10', null, '1968-01-01', null, null, null, null, null, null, null, null, null, null, null, '汉族', '初中', null, null, null, '2015-01-19', null, null, null, null, null, null, null, null, '3', '1', null, null, null, '1', '1', null, null, null, null, null, '0', '2015-12-12 12:51:10', '867112020521204', '2016-03-02 13:28:41', '0', '0', null);
INSERT INTO `rock_admin` VALUES ('5', 'xiaoqiao', null, '小乔', 'e10adc3949ba59abbe56e057f20f883e', null, '23', '1', '女', null, 'xiaoqiao@rockoa.com', '2015-01-24 00:14:05', '管理员', '1', 'upload/2015-08/30_1448539797_crop9267.jpg', '1', '1', null, null, '0', '行政前台', '3', '[1],[3]', '行政人事', '貂蝉', '3', '[7],[4],[3]', '12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2014-12-01', null, null, null, null, null, null, null, null, '5', '1', null, '组名', null, '1', '1', null, null, null, null, null, '0', '2015-10-12 10:51:29', '867112020521204', '2016-01-07 22:08:13', '0', '0', null);
INSERT INTO `rock_admin` VALUES ('6', 'liu1', null, '刘长', 'e10adc3949ba59abbe56e057f20f883e', null, '0', '1', '男', null, null, '2015-02-05 13:25:16', '管理员', '1', null, null, '1', null, null, '0', '程序员', '4', '[1],[4]', '开发部', 'RockOA客服', '2', '[7],[1],[2]', '22', null, '1990-02-01', null, null, null, null, null, null, null, null, null, null, null, '汉族', '本科', null, null, null, '2015-02-05', null, null, null, null, null, null, null, null, '7', '5', null, null, '2015-06-28', '1', '1', null, null, null, null, null, '0', null, null, null, '0', '0', null);
INSERT INTO `rock_admin` VALUES ('7', 'panshi', null, '磐石', 'e10adc3949ba59abbe56e057f20f883e', '2015-01-06 13:40:48', '7', '1', '男', '12', 'panshi@rockoa.com', '2016-05-19 12:29:55', '管理员', '1', null, '3', '1', null, null, '0', '董事长', '7', '[1],[7]', '管理部', null, null, null, '2', null, '1991-09-17', null, null, null, null, null, null, null, null, null, null, null, '回民', '初中', null, null, null, '2015-02-05', null, null, null, null, null, null, null, null, '2', '1', null, null, null, '1', '1', 'daib,gong|zxkq,work,todo', null, null, null, null, '0', '2015-08-19 14:41:20', '867112020521204', '2016-01-30 10:59:40', '0', '1', null);
INSERT INTO `rock_admin` VALUES ('8', 'zhangfei', null, '张飞', 'e10adc3949ba59abbe56e057f20f883e', '2015-02-06 09:41:01', '0', '1', '男', null, 'zhangfei@rockoa.com', '2015-02-06 09:41:01', '管理员', '1', null, null, '1', null, null, '0', '程序员', '4', '[1],[4]', '开发部', '管理员', '1', '[7],[1]', '23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2015-02-06', null, null, null, null, null, null, null, null, '8', '2', null, null, null, '1', '1', null, null, null, null, null, '0', '2015-05-29 21:44:58', null, null, '0', '0', null);
INSERT INTO `rock_admin` VALUES ('9', 'zhaozl', null, '赵子龙', 'e10adc3949ba59abbe56e057f20f883e', '2015-02-06 09:44:39', '1', '1', '男', null, 'zhaozl@rockoa.com', '2015-08-20 17:17:50', '管理员', '1', null, null, '1', null, null, '0', '财务经理', '6', '[1],[6]', '财务部', '管理员', '1', '[7],[1]', '24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2015-02-06', null, null, null, null, null, null, null, null, '9', '1', null, null, null, '1', '1', null, null, null, null, null, '0', '2016-01-05 22:57:13', '867112020521204', '2015-10-23 10:30:37', '0', '0', null);
INSERT INTO `rock_admin` VALUES ('10', 'lvbu', null, '吕布', 'e10adc3949ba59abbe56e057f20f883e', '2015-08-02 00:03:12', '2', '1', '男', null, 'lvbu@rockoa.com', '2015-08-20 17:17:33', '管理员', '1', null, null, '1', null, null, '0', '出纳', '6', '[1],[6]', '财务部', '赵子龙', '9', '[7],[1],[9]', '25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2015-08-01', null, null, null, null, null, null, null, null, '10', '2', null, null, null, '1', '1', null, null, null, null, null, '0', null, '867112020521204', '2016-03-01 09:08:56', '0', '0', null);

-- ----------------------------
-- Table structure for `rock_assetm`
-- ----------------------------
DROP TABLE IF EXISTS `rock_assetm`;
CREATE TABLE `rock_assetm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) DEFAULT NULL COMMENT '类别',
  `title` varchar(50) DEFAULT NULL COMMENT '名称',
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
  `brand` varchar(20) DEFAULT NULL COMMENT '品牌',
  `model` varchar(100) DEFAULT NULL COMMENT '规格型号',
  `laiyuan` varchar(50) DEFAULT NULL COMMENT '来源',
  `shuname` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `dt` date DEFAULT NULL COMMENT '日期',
  `address` varchar(50) DEFAULT NULL COMMENT '存放地点',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `adddt` datetime DEFAULT NULL COMMENT '添加时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `buydt` date DEFAULT NULL COMMENT '购进日期',
  `price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `optid` smallint(6) DEFAULT '0',
  `isturn` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_assetm
-- ----------------------------
INSERT INTO `rock_assetm` VALUES ('1', '电脑', '这是一个电脑', 'DN-0001', '联想', '12', '购入', null, null, '仓库一', '已报废', '报废啦？1', '管理员', '2015-04-13 16:34:49', '2016-04-28 19:39:37', '2015-10-30', '6000', '1', '1', '1');
INSERT INTO `rock_assetm` VALUES ('2', '笔记本', '2112', 'BJB-0001', '联想', 'M300', '购入', null, null, '仓库二', '维修中', '2121', '管理员', '2015-04-13 16:52:33', '2016-04-27 22:11:40', '2016-04-27', null, '1', '0', '1');
INSERT INTO `rock_assetm` VALUES ('3', '笔记本', '笔记本', 'BJB-0002', '戴尔', null, '自建', null, null, '仓库二', '借出', '哈哈', '管理员', '2015-04-13 17:03:52', '2015-06-30 17:32:49', null, null, '1', '0', '1');
INSERT INTO `rock_assetm` VALUES ('4', '笔记本', '这是不笔记本', 'BJB-0003', 'dell', 'I5 60G内存', '购入', null, null, '仓库一', '闲置', '呵呵', '管理员', '2015-04-14 11:08:51', '2015-07-13 20:09:24', null, null, '1', '0', '1');
INSERT INTO `rock_assetm` VALUES ('5', '笔记本', '这是一个笔记本', 'BJB-004', '联想', '006', '购入', null, null, '仓库一', '在用', null, '管理员', null, '2016-04-27 22:42:51', '2016-04-01', '500', '1', '1', '1');

-- ----------------------------
-- Table structure for `rock_assets`
-- ----------------------------
DROP TABLE IF EXISTS `rock_assets`;
CREATE TABLE `rock_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '主id',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_assets
-- ----------------------------
INSERT INTO `rock_assets` VALUES ('1', '1', '管理员', '2015-04-14 10:29:30', '已报废', 'hahaha');
INSERT INTO `rock_assets` VALUES ('2', '1', '管理员', '2015-04-14 10:37:45', '已报废', '233232');
INSERT INTO `rock_assets` VALUES ('3', '2', '管理员', '2015-04-14 10:47:21', '借出', '借给了刘备');
INSERT INTO `rock_assets` VALUES ('4', '2', '管理员', '2015-04-14 10:47:56', '闲置', '刘备已归还，现在闲置');
INSERT INTO `rock_assets` VALUES ('5', '2', '管理员', '2015-04-14 10:59:41', '维修中', '坏掉了，去修了');
INSERT INTO `rock_assets` VALUES ('6', '3', '管理员', '2015-10-30 09:45:07', '借出', '借给了程序员');

-- ----------------------------
-- Table structure for `rock_careserve`
-- ----------------------------
DROP TABLE IF EXISTS `rock_careserve`;
CREATE TABLE `rock_careserve` (
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
  `useid` varchar(200) DEFAULT NULL,
  `usename` varchar(200) DEFAULT NULL COMMENT '使用者',
  `useren` smallint(6) DEFAULT '0' COMMENT '使用人数',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '截止时间',
  `address` varchar(50) DEFAULT NULL COMMENT '目的地',
  `carid` smallint(6) DEFAULT NULL,
  `carnum` varchar(10) DEFAULT NULL COMMENT '使用车辆',
  `xianlines` varchar(200) DEFAULT NULL COMMENT '线路',
  `jiaid` varchar(200) DEFAULT NULL,
  `jianame` varchar(200) DEFAULT NULL COMMENT '驾驶员',
  `kmstart` varchar(20) DEFAULT NULL COMMENT '起始公里数',
  `kmend` varchar(20) DEFAULT NULL COMMENT '结束公里数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_careserve
-- ----------------------------
INSERT INTO `rock_careserve` VALUES ('1', '1', '2015-09-23 16:54:19', '1', '管理员', '2015-09-23', '呵呵呵呵', '1', '1', null, '7,5', '1', '小乔', null, 'u4,u3', '大乔,貂蝉', '0', '2015-09-23 15:00:00', '2015-09-23 16:00:00', '漳州', '2', '闽D·123456', 'G15-S30', '1', '管理员', null, null);
INSERT INTO `rock_careserve` VALUES ('2', '1', '2015-09-23 16:54:08', '1', '管理员', '2015-09-23', null, '1', '1', null, '7,5', '1', '小乔', null, 'u4,u3', '大乔,貂蝉', '2', '2015-09-25 15:30:00', '2015-09-25 16:13:00', '安溪', '2', '闽D·123456', '同安S206', '4,3', '大乔,貂蝉', null, null);
INSERT INTO `rock_careserve` VALUES ('3', '1', '2016-03-07 21:02:32', '1', '管理员', '2016-03-07', null, '0', '1', '7', '7,5', '0', null, '磐石', 'u7', '刘备', '1', '2016-03-07 20:56:00', '2016-03-08 20:56:00', '不知道', '2', '闽D·123456', '嗯嗯', '1', '管理员', null, null);
INSERT INTO `rock_careserve` VALUES ('4', '1', '2016-04-28 20:29:14', '1', '管理员', '2016-04-28', null, '0', '1', '7', '7,5', '0', null, '磐石', null, 'RockOA开发团队', '12', '2016-04-28 20:28:00', '2016-04-29 20:28:00', '12', '2', '闽D·123456', '12', null, '刘备', null, null);

-- ----------------------------
-- Table structure for `rock_carm`
-- ----------------------------
DROP TABLE IF EXISTS `rock_carm`;
CREATE TABLE `rock_carm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carnum` varchar(10) DEFAULT NULL COMMENT '车牌号',
  `carbrand` varchar(20) DEFAULT NULL COMMENT '车辆品牌',
  `carmode` varchar(30) DEFAULT NULL COMMENT '型号',
  `cartype` varchar(10) DEFAULT NULL COMMENT '车辆类型',
  `buydt` date DEFAULT NULL COMMENT '购买日期',
  `buyprice` mediumint(9) DEFAULT NULL COMMENT '购买价格',
  `enginenb` varchar(50) DEFAULT NULL COMMENT '发动机号',
  `ispublic` tinyint(4) DEFAULT '1' COMMENT '是否公开使用',
  `optdt` datetime DEFAULT NULL,
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  `addname` varchar(20) DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `framenum` varchar(50) DEFAULT NULL COMMENT '车架号',
  `qxstartdt` date DEFAULT NULL COMMENT '强险开始日期',
  `qxenddt` date DEFAULT NULL COMMENT '强险截止日期',
  `xszstartdt` date DEFAULT NULL COMMENT '行驶证开始日期',
  `xszenddt` date DEFAULT NULL COMMENT '行驶证截止日期',
  `syxstartdt` date DEFAULT NULL COMMENT '商业险开始日期',
  `syxenddt` date DEFAULT NULL COMMENT '商业险截止日期',
  `nsstartdt` date DEFAULT NULL COMMENT '年审开始日期',
  `nsenddt` date DEFAULT NULL COMMENT '年审截止日期',
  `isturn` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_carm
-- ----------------------------
INSERT INTO `rock_carm` VALUES ('1', '闽D·123QB', '奥迪', 'N7', '小型车', '2015-09-01', '20000', '不知道', '1', '2016-04-28 19:36:09', '1', '管理员', '2015-09-16 10:51:56', '管理员', null, '可用', null, '2015-09-01', null, null, '2016-08-31', null, null, null, null, '1', '1');
INSERT INTO `rock_carm` VALUES ('2', '闽D·123456', '奔驰', 'A4L', '轿车', '2015-01-01', '20000', null, '1', '2016-04-28 19:36:27', '1', '管理员', '2015-09-17 09:54:49', '管理员', null, '可用', 'aodiche', null, null, null, null, null, null, null, null, '1', '1');

-- ----------------------------
-- Table structure for `rock_cars`
-- ----------------------------
DROP TABLE IF EXISTS `rock_cars`;
CREATE TABLE `rock_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '主id',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `fields` varchar(20) DEFAULT NULL,
  `fieldsname` varchar(20) DEFAULT NULL COMMENT '字段名',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `value` varchar(500) DEFAULT NULL COMMENT '对应值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_cars
-- ----------------------------
INSERT INTO `rock_cars` VALUES ('1', '1', '管理员', '2015-09-16 15:33:02', 'state', '状态', '废了', '报废');
INSERT INTO `rock_cars` VALUES ('5', '1', '管理员', '2015-09-17 09:49:22', 'jymoney', '加油费', null, '50');
INSERT INTO `rock_cars` VALUES ('3', '1', '管理员', '2015-09-16 15:40:33', 'state', '状态', '嘿嘿', '报废');
INSERT INTO `rock_cars` VALUES ('4', '1', '管理员', '2015-09-16 15:46:40', 'qxstartdt', '强险开始日期', null, '2015-09-01');
INSERT INTO `rock_cars` VALUES ('6', '1', '管理员', '2015-09-24 10:43:35', 'state', '状态', null, '可用');
INSERT INTO `rock_cars` VALUES ('7', '1', '管理员', '2015-09-24 10:43:50', 'xszenddt', '行驶证截止日期', null, '2016-08-31');

-- ----------------------------
-- Table structure for `rock_chargemode`
-- ----------------------------
DROP TABLE IF EXISTS `rock_chargemode`;
CREATE TABLE `rock_chargemode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modeid` smallint(6) DEFAULT NULL,
  `modename` varchar(20) DEFAULT NULL,
  `installdt` datetime DEFAULT NULL,
  `installkey` varchar(100) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  `updatedt` datetime DEFAULT NULL,
  `ver` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `modeid` (`modeid`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_chargemode
-- ----------------------------
INSERT INTO `rock_chargemode` VALUES ('170', '7', '系统核心模块', '2016-03-30 20:25:29', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-03-30 20:21:12', '25');
INSERT INTO `rock_chargemode` VALUES ('171', '10', '系统插件库', '2016-03-30 20:25:33', 'ZGExZTMxNTQ3MTRlNGU2MmIyMTAzOTIwNjQ3NDM3ZDE:', '管理员', '2016-03-30 20:09:29', '9');
INSERT INTO `rock_chargemode` VALUES ('172', '11', '系统M模型库', '2016-03-30 20:25:37', 'MDk2YjZlMGFlNDg2YTBmZDZlMDA3NWU0MmU0ZGQxYWE:', '管理员', '2016-03-30 20:09:29', '15');
INSERT INTO `rock_chargemode` VALUES ('173', '13', '用户组组织结构菜单权限', '2016-03-30 20:25:40', 'MTg0MjMxM2I4ODY4YWI4NjM4Y2UxNTE5YjlhZjRiOTU:', '管理员', '2016-03-30 20:20:27', '9');
INSERT INTO `rock_chargemode` VALUES ('174', '12', '系统登录主界面', '2016-03-30 20:25:44', 'MmRlZjA3YWZjNGU5NGNmZDI0OWFjZDBjYzRjMTU3OGQ:', '管理员', '2016-03-30 20:21:12', '22');
INSERT INTO `rock_chargemode` VALUES ('175', '1', '内部邮件', '2016-03-30 20:25:48', 'cm9ja2VtYWlsaW4:', '管理员', '2016-03-30 20:21:12', '15');
INSERT INTO `rock_chargemode` VALUES ('176', '2', '项目任务', '2016-03-30 20:25:58', 'ZTMzMGRmNWJmYTlmNzczYzY2NTJjZDE4ZGQyNTU0M2I:', '管理员', '2016-03-30 20:20:27', '33');
INSERT INTO `rock_chargemode` VALUES ('177', '4', '模块安装升级', '2016-03-30 20:26:03', 'NGJlYzk0NGJhZGZlMmM0YzU3YzVmZTI2ZWU0NTZiNWY:', '管理员', '2016-03-30 20:21:12', '36');
INSERT INTO `rock_chargemode` VALUES ('178', '8', '移动端API接口', '2016-03-30 20:26:35', 'NjUyYjVkZWE2NTdkMjMyOTQzNzc1MWIwZjFkMDMwZjQ:', '管理员', '2016-03-30 20:09:29', '10');
INSERT INTO `rock_chargemode` VALUES ('179', '9', '流程配置管理', '2016-03-30 20:26:40', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-03-30 20:21:12', '20');
INSERT INTO `rock_chargemode` VALUES ('180', '14', '人员档案管理', '2016-03-30 20:26:45', 'ODkwOGVlOWZjNGYyNjczNDMzYjU5ODUwNGRjOTE5MTk:', '管理员', '2016-03-30 20:20:07', '7');
INSERT INTO `rock_chargemode` VALUES ('181', '15', '定时任务', '2016-03-30 20:26:49', 'YWFkMTYyZDM0ZDVkZTI2YTk2MWMwYmFhM2Q0MjhkZDE:', '管理员', '2016-03-30 20:20:07', '8');
INSERT INTO `rock_chargemode` VALUES ('182', '16', '考勤系统', '2016-03-30 20:26:54', 'ZDRlN2IzZDU0ZDMyZmZkNGU1OWI0MjFhNTVhMjdjYzc:', '管理员', '2016-03-30 20:20:07', '11');
INSERT INTO `rock_chargemode` VALUES ('183', '17', 'REIM客户端', '2016-03-30 20:26:58', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-03-30 20:21:12', '7');
INSERT INTO `rock_chargemode` VALUES ('184', '18', '行政系统', '2016-03-30 20:27:03', 'YTRlNjM1MWU4OTcxMTQ0OWI3YjJjOWIyYWE3Nzg2MGY:', '管理员', '2016-03-30 20:11:54', '6');
INSERT INTO `rock_chargemode` VALUES ('185', '19', '财务系统', '2016-03-30 20:27:08', 'MTA0ZWY1MDljYTk0NTFkMjk3MjU4OTliOTlkZjg3YjQ:', '管理员', '2016-03-30 20:20:07', '6');
INSERT INTO `rock_chargemode` VALUES ('186', '20', '公共信息模块', '2016-03-30 20:27:13', 'MjYwMGQ0NzJiZWUzOTU1MjQ1YjdiMjNjNjk0MmNiOTA:', '管理员', '2016-03-30 20:20:07', '7');
INSERT INTO `rock_chargemode` VALUES ('187', '7', '系统核心模块', '2016-04-12 21:13:55', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-04-12 21:08:32', '26');
INSERT INTO `rock_chargemode` VALUES ('188', '11', '系统M模型库', '2016-04-12 21:14:00', 'MDk2YjZlMGFlNDg2YTBmZDZlMDA3NWU0MmU0ZGQxYWE:', '管理员', '2016-04-12 21:08:32', '17');
INSERT INTO `rock_chargemode` VALUES ('189', '13', '用户组组织结构菜单权限', '2016-04-12 21:14:04', 'MTg0MjMxM2I4ODY4YWI4NjM4Y2UxNTE5YjlhZjRiOTU:', '管理员', '2016-04-12 21:08:32', '11');
INSERT INTO `rock_chargemode` VALUES ('190', '12', '系统登录主界面', '2016-04-12 21:14:12', 'MmRlZjA3YWZjNGU5NGNmZDI0OWFjZDBjYzRjMTU3OGQ:', '管理员', '2016-04-12 21:08:32', '23');
INSERT INTO `rock_chargemode` VALUES ('191', '1', '内部邮件', '2016-04-12 21:14:18', 'cm9ja2VtYWlsaW4:', '管理员', '2016-04-12 21:08:32', '17');
INSERT INTO `rock_chargemode` VALUES ('192', '8', '移动端API接口', '2016-04-12 21:14:24', 'NjUyYjVkZWE2NTdkMjMyOTQzNzc1MWIwZjFkMDMwZjQ:', '管理员', '2016-04-12 21:08:32', '11');
INSERT INTO `rock_chargemode` VALUES ('193', '9', '流程配置管理', '2016-04-12 21:15:02', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-04-12 21:08:32', '25');
INSERT INTO `rock_chargemode` VALUES ('194', '15', '定时任务', '2016-04-12 21:15:08', 'YWFkMTYyZDM0ZDVkZTI2YTk2MWMwYmFhM2Q0MjhkZDE:', '管理员', '2016-04-12 21:08:32', '9');
INSERT INTO `rock_chargemode` VALUES ('195', '16', '考勤系统', '2016-04-12 21:15:40', 'ZDRlN2IzZDU0ZDMyZmZkNGU1OWI0MjFhNTVhMjdjYzc:', '管理员', '2016-04-12 21:08:32', '13');
INSERT INTO `rock_chargemode` VALUES ('196', '17', 'REIM客户端', '2016-04-12 21:15:45', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-04-12 21:08:32', '9');
INSERT INTO `rock_chargemode` VALUES ('197', '18', '行政系统', '2016-04-12 21:15:50', 'YTRlNjM1MWU4OTcxMTQ0OWI3YjJjOWIyYWE3Nzg2MGY:', '管理员', '2016-04-12 21:08:32', '7');
INSERT INTO `rock_chargemode` VALUES ('198', '20', '公共信息模块', '2016-04-12 21:15:55', 'MjYwMGQ0NzJiZWUzOTU1MjQ1YjdiMjNjNjk0MmNiOTA:', '管理员', '2016-04-12 21:08:32', '9');
INSERT INTO `rock_chargemode` VALUES ('199', '7', '系统核心模块', '2016-04-12 21:30:05', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-04-12 21:28:53', '27');
INSERT INTO `rock_chargemode` VALUES ('200', '7', '系统核心模块', '2016-04-20 19:49:40', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-04-20 19:45:44', '28');
INSERT INTO `rock_chargemode` VALUES ('201', '10', '系统插件库', '2016-04-20 19:49:47', 'ZGExZTMxNTQ3MTRlNGU2MmIyMTAzOTIwNjQ3NDM3ZDE:', '管理员', '2016-04-20 19:45:44', '10');
INSERT INTO `rock_chargemode` VALUES ('202', '11', '系统M模型库', '2016-04-20 19:49:52', 'MDk2YjZlMGFlNDg2YTBmZDZlMDA3NWU0MmU0ZGQxYWE:', '管理员', '2016-04-20 19:45:44', '19');
INSERT INTO `rock_chargemode` VALUES ('203', '13', '用户组组织结构菜单权限', '2016-04-20 19:49:59', 'MTg0MjMxM2I4ODY4YWI4NjM4Y2UxNTE5YjlhZjRiOTU:', '管理员', '2016-04-20 19:45:44', '12');
INSERT INTO `rock_chargemode` VALUES ('204', '8', 'API接口', '2016-04-20 19:50:20', 'NjUyYjVkZWE2NTdkMjMyOTQzNzc1MWIwZjFkMDMwZjQ:', '管理员', '2016-04-20 19:45:44', '14');
INSERT INTO `rock_chargemode` VALUES ('205', '9', '流程配置管理', '2016-04-20 19:50:54', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-04-20 19:45:44', '26');
INSERT INTO `rock_chargemode` VALUES ('206', '14', '人员档案管理', '2016-04-20 19:51:00', 'ODkwOGVlOWZjNGYyNjczNDMzYjU5ODUwNGRjOTE5MTk:', '管理员', '2016-04-20 19:45:44', '8');
INSERT INTO `rock_chargemode` VALUES ('207', '15', '定时任务', '2016-04-20 19:51:08', 'YWFkMTYyZDM0ZDVkZTI2YTk2MWMwYmFhM2Q0MjhkZDE:', '管理员', '2016-04-20 19:45:44', '10');
INSERT INTO `rock_chargemode` VALUES ('208', '16', '考勤系统', '2016-04-20 19:51:14', 'ZDRlN2IzZDU0ZDMyZmZkNGU1OWI0MjFhNTVhMjdjYzc:', '管理员', '2016-04-20 19:45:44', '14');
INSERT INTO `rock_chargemode` VALUES ('209', '17', 'REIM即时通信', '2016-04-20 19:51:26', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-04-20 19:47:48', '12');
INSERT INTO `rock_chargemode` VALUES ('210', '9', '流程配置管理', '2016-04-20 19:54:01', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-04-20 19:52:35', '27');
INSERT INTO `rock_chargemode` VALUES ('211', '17', 'REIM即时通信', '2016-04-20 19:54:15', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-04-20 19:53:47', '14');
INSERT INTO `rock_chargemode` VALUES ('212', '9', '流程配置管理', '2016-04-20 19:57:31', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-04-20 19:57:16', '29');
INSERT INTO `rock_chargemode` VALUES ('213', '17', 'REIM即时通信', '2016-04-20 19:59:19', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-04-20 19:55:48', '16');
INSERT INTO `rock_chargemode` VALUES ('214', '17', 'REIM即时通信', '2016-04-20 20:00:53', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-04-20 20:00:33', '17');
INSERT INTO `rock_chargemode` VALUES ('215', '7', '系统核心模块', '2016-04-20 22:23:26', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-04-20 22:23:10', '29');
INSERT INTO `rock_chargemode` VALUES ('216', '9', '流程配置管理', '2016-04-20 22:24:00', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-04-20 22:23:15', '31');
INSERT INTO `rock_chargemode` VALUES ('217', '17', 'REIM即时通信', '2016-04-20 22:24:08', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-04-20 22:23:10', '18');
INSERT INTO `rock_chargemode` VALUES ('218', '7', '系统核心模块', '2016-05-08 17:41:50', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-05-08 17:39:08', '31');
INSERT INTO `rock_chargemode` VALUES ('219', '10', '系统插件库', '2016-05-08 17:41:58', 'ZGExZTMxNTQ3MTRlNGU2MmIyMTAzOTIwNjQ3NDM3ZDE:', '管理员', '2016-05-08 17:39:08', '11');
INSERT INTO `rock_chargemode` VALUES ('220', '11', '系统M模型库', '2016-05-08 17:42:05', 'MDk2YjZlMGFlNDg2YTBmZDZlMDA3NWU0MmU0ZGQxYWE:', '管理员', '2016-05-08 17:39:08', '20');
INSERT INTO `rock_chargemode` VALUES ('221', '13', '用户组组织结构菜单权限', '2016-05-08 17:42:11', 'MTg0MjMxM2I4ODY4YWI4NjM4Y2UxNTE5YjlhZjRiOTU:', '管理员', '2016-05-08 17:39:08', '14');
INSERT INTO `rock_chargemode` VALUES ('222', '12', '系统登录主界面', '2016-05-08 17:42:17', 'MmRlZjA3YWZjNGU5NGNmZDI0OWFjZDBjYzRjMTU3OGQ:', '管理员', '2016-05-08 17:39:08', '24');
INSERT INTO `rock_chargemode` VALUES ('223', '8', 'API接口', '2016-05-08 17:42:32', 'NjUyYjVkZWE2NTdkMjMyOTQzNzc1MWIwZjFkMDMwZjQ:', '管理员', '2016-05-08 17:39:08', '15');
INSERT INTO `rock_chargemode` VALUES ('224', '9', '流程配置管理', '2016-05-08 17:43:08', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-05-08 17:39:08', '33');
INSERT INTO `rock_chargemode` VALUES ('225', '15', '定时任务', '2016-05-08 17:43:22', 'YWFkMTYyZDM0ZDVkZTI2YTk2MWMwYmFhM2Q0MjhkZDE:', '管理员', '2016-05-08 17:39:08', '11');
INSERT INTO `rock_chargemode` VALUES ('226', '16', '考勤系统', '2016-05-08 17:43:33', 'ZDRlN2IzZDU0ZDMyZmZkNGU1OWI0MjFhNTVhMjdjYzc:', '管理员', '2016-05-08 17:39:08', '15');
INSERT INTO `rock_chargemode` VALUES ('227', '17', 'REIM即时通信', '2016-05-08 17:43:44', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-05-08 17:39:08', '19');
INSERT INTO `rock_chargemode` VALUES ('228', '18', '行政系统', '2016-05-08 17:43:52', 'YTRlNjM1MWU4OTcxMTQ0OWI3YjJjOWIyYWE3Nzg2MGY:', '管理员', '2016-05-08 17:39:08', '9');
INSERT INTO `rock_chargemode` VALUES ('229', '19', '财务系统', '2016-05-08 17:44:04', 'MTA0ZWY1MDljYTk0NTFkMjk3MjU4OTliOTlkZjg3YjQ:', '管理员', '2016-05-08 17:39:08', '8');
INSERT INTO `rock_chargemode` VALUES ('230', '20', '公共信息模块', '2016-05-08 17:44:12', 'MjYwMGQ0NzJiZWUzOTU1MjQ1YjdiMjNjNjk0MmNiOTA:', '管理员', '2016-05-08 17:39:08', '11');
INSERT INTO `rock_chargemode` VALUES ('231', '19', '财务系统', '2016-05-08 17:45:59', 'MTA0ZWY1MDljYTk0NTFkMjk3MjU4OTliOTlkZjg3YjQ:', '管理员', '2016-05-08 17:45:47', '9');
INSERT INTO `rock_chargemode` VALUES ('232', '7', '系统核心模块', '2016-05-17 21:22:05', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-05-17 21:11:05', '33');
INSERT INTO `rock_chargemode` VALUES ('233', '10', '系统插件库', '2016-05-17 21:22:14', 'ZGExZTMxNTQ3MTRlNGU2MmIyMTAzOTIwNjQ3NDM3ZDE:', '管理员', '2016-05-17 21:11:05', '12');
INSERT INTO `rock_chargemode` VALUES ('234', '11', '系统M模型库', '2016-05-17 21:22:20', 'MDk2YjZlMGFlNDg2YTBmZDZlMDA3NWU0MmU0ZGQxYWE:', '管理员', '2016-05-17 21:11:05', '21');
INSERT INTO `rock_chargemode` VALUES ('235', '13', '用户组组织结构菜单权限', '2016-05-17 21:22:24', 'MTg0MjMxM2I4ODY4YWI4NjM4Y2UxNTE5YjlhZjRiOTU:', '管理员', '2016-05-17 21:11:05', '16');
INSERT INTO `rock_chargemode` VALUES ('236', '12', '系统登录主界面', '2016-05-17 21:22:29', 'MmRlZjA3YWZjNGU5NGNmZDI0OWFjZDBjYzRjMTU3OGQ:', '管理员', '2016-05-17 21:11:05', '25');
INSERT INTO `rock_chargemode` VALUES ('237', '9', '流程配置管理', '2016-05-17 21:22:36', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-05-17 21:11:05', '36');
INSERT INTO `rock_chargemode` VALUES ('238', '16', '考勤系统', '2016-05-17 21:22:42', 'ZDRlN2IzZDU0ZDMyZmZkNGU1OWI0MjFhNTVhMjdjYzc:', '管理员', '2016-05-17 21:20:53', '17');
INSERT INTO `rock_chargemode` VALUES ('239', '17', 'REIM即时通信', '2016-05-17 21:22:47', 'MjdkYTI5NDc2MWY0ODBhNjg3NWYzYjBkZjYwODYzNTg:', '管理员', '2016-05-17 21:11:05', '21');
INSERT INTO `rock_chargemode` VALUES ('240', '18', '行政系统', '2016-05-17 21:22:52', 'YTRlNjM1MWU4OTcxMTQ0OWI3YjJjOWIyYWE3Nzg2MGY:', '管理员', '2016-05-17 21:11:05', '10');
INSERT INTO `rock_chargemode` VALUES ('241', '19', '财务系统', '2016-05-17 21:22:57', 'MTA0ZWY1MDljYTk0NTFkMjk3MjU4OTliOTlkZjg3YjQ:', '管理员', '2016-05-09 10:06:10', '10');
INSERT INTO `rock_chargemode` VALUES ('242', '20', '公共信息模块', '2016-05-17 21:23:02', 'MjYwMGQ0NzJiZWUzOTU1MjQ1YjdiMjNjNjk0MmNiOTA:', '管理员', '2016-05-10 09:08:23', '13');
INSERT INTO `rock_chargemode` VALUES ('243', '7', '系统核心模块', '2016-05-18 21:02:02', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-05-18 21:01:35', '34');
INSERT INTO `rock_chargemode` VALUES ('244', '11', '系统M模型库', '2016-05-18 21:02:06', 'MDk2YjZlMGFlNDg2YTBmZDZlMDA3NWU0MmU0ZGQxYWE:', '管理员', '2016-05-18 21:01:35', '22');
INSERT INTO `rock_chargemode` VALUES ('245', '12', '系统登录主界面', '2016-05-18 21:02:41', 'MmRlZjA3YWZjNGU5NGNmZDI0OWFjZDBjYzRjMTU3OGQ:', '管理员', '2016-05-18 21:01:35', '26');
INSERT INTO `rock_chargemode` VALUES ('246', '9', '流程配置管理', '2016-05-18 21:02:52', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-05-18 21:01:35', '38');
INSERT INTO `rock_chargemode` VALUES ('247', '7', '系统核心模块', '2016-06-06 20:40:16', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-06-06 20:33:16', '35');
INSERT INTO `rock_chargemode` VALUES ('248', '2', '项目任务', '2016-06-06 20:40:22', 'ZTMzMGRmNWJmYTlmNzczYzY2NTJjZDE4ZGQyNTU0M2I:', '管理员', '2016-05-27 21:01:04', '34');
INSERT INTO `rock_chargemode` VALUES ('249', '9', '流程配置管理', '2016-06-06 20:40:31', 'ZmM1MjcyMWI5ODUyNmQwNDc2ZjI0ZmI0YTNiNjRkMDk:', '管理员', '2016-05-27 21:01:04', '39');
INSERT INTO `rock_chargemode` VALUES ('250', '15', '定时任务', '2016-06-06 20:41:02', 'YWFkMTYyZDM0ZDVkZTI2YTk2MWMwYmFhM2Q0MjhkZDE:', '管理员', '2016-06-06 20:33:16', '12');
INSERT INTO `rock_chargemode` VALUES ('251', '16', '考勤系统', '2016-06-06 20:41:12', 'ZDRlN2IzZDU0ZDMyZmZkNGU1OWI0MjFhNTVhMjdjYzc:', '管理员', '2016-06-06 20:33:16', '18');
INSERT INTO `rock_chargemode` VALUES ('252', '18', '行政系统', '2016-06-06 20:41:18', 'YTRlNjM1MWU4OTcxMTQ0OWI3YjJjOWIyYWE3Nzg2MGY:', '管理员', '2016-05-27 21:01:04', '11');
INSERT INTO `rock_chargemode` VALUES ('253', '14', '人员档案管理', '2016-07-04 22:19:35', 'ODkwOGVlOWZjNGYyNjczNDMzYjU5ODUwNGRjOTE5MTk:', '管理员', '2016-07-04 22:18:54', '9');
INSERT INTO `rock_chargemode` VALUES ('254', '8', 'API接口', '2016-07-04 22:19:41', 'NjUyYjVkZWE2NTdkMjMyOTQzNzc1MWIwZjFkMDMwZjQ:', '管理员', '2016-07-04 22:18:54', '16');
INSERT INTO `rock_chargemode` VALUES ('255', '7', '系统核心模块', '2016-07-04 22:20:41', 'NjZjNzIwZWFjYTgwZGFmNmNmYmExN2M3NWRhMGE4OTA:', '管理员', '2016-07-04 22:20:27', '36');

-- ----------------------------
-- Table structure for `rock_chargemodes`
-- ----------------------------
DROP TABLE IF EXISTS `rock_chargemodes`;
CREATE TABLE `rock_chargemodes` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT NULL,
  `updatedt` datetime DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=877 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_chargemodes
-- ----------------------------
INSERT INTO `rock_chargemodes` VALUES ('42', '4', '2016-01-16 18:42:35', '7', '2016-01-20 21:24:45');
INSERT INTO `rock_chargemodes` VALUES ('45', '1', '2016-01-20 21:02:29', '2', '2016-01-20 21:26:02');
INSERT INTO `rock_chargemodes` VALUES ('46', '1', '2016-01-20 21:02:29', '3', '2016-01-20 21:26:02');
INSERT INTO `rock_chargemodes` VALUES ('48', '1', '2016-01-20 21:02:29', '9', '2016-01-20 21:26:02');
INSERT INTO `rock_chargemodes` VALUES ('52', '4', '2016-02-18 22:55:59', '8', '2016-02-18 22:56:17');
INSERT INTO `rock_chargemodes` VALUES ('55', '7', '2016-01-25 13:31:00', '32', '2016-02-18 22:58:47');
INSERT INTO `rock_chargemodes` VALUES ('56', '7', '2016-01-25 13:31:11', '33', '2016-02-18 22:58:47');
INSERT INTO `rock_chargemodes` VALUES ('57', '7', '2016-01-25 13:31:37', '34', '2016-02-18 22:58:47');
INSERT INTO `rock_chargemodes` VALUES ('60', '7', '2016-01-25 13:34:26', '37', '2016-02-18 22:58:48');
INSERT INTO `rock_chargemodes` VALUES ('63', '7', '2016-01-26 22:08:42', '44', '2016-02-18 22:58:49');
INSERT INTO `rock_chargemodes` VALUES ('64', '7', '2016-01-26 22:08:46', '45', '2016-02-18 22:58:49');
INSERT INTO `rock_chargemodes` VALUES ('65', '7', '2016-01-26 22:08:50', '46', '2016-02-18 22:58:49');
INSERT INTO `rock_chargemodes` VALUES ('67', '7', '2016-01-26 21:13:16', '48', '2016-02-18 22:58:49');
INSERT INTO `rock_chargemodes` VALUES ('68', '7', '2016-02-01 13:36:45', '100', '2016-02-18 22:58:49');
INSERT INTO `rock_chargemodes` VALUES ('69', '10', '2016-02-01 13:46:02', '101', '2016-02-18 22:58:56');
INSERT INTO `rock_chargemodes` VALUES ('72', '10', '2016-02-01 13:46:22', '104', '2016-02-18 22:58:57');
INSERT INTO `rock_chargemodes` VALUES ('73', '10', '2016-02-01 13:46:26', '105', '2016-02-18 22:58:57');
INSERT INTO `rock_chargemodes` VALUES ('74', '10', '2016-02-01 13:46:30', '106', '2016-02-18 22:58:57');
INSERT INTO `rock_chargemodes` VALUES ('75', '10', '2016-02-01 13:46:34', '107', '2016-02-18 22:58:57');
INSERT INTO `rock_chargemodes` VALUES ('76', '10', '2016-02-01 13:46:37', '108', '2016-02-18 22:58:57');
INSERT INTO `rock_chargemodes` VALUES ('77', '10', '2016-02-01 13:46:40', '109', '2016-02-18 22:58:58');
INSERT INTO `rock_chargemodes` VALUES ('78', '10', '2016-02-01 13:46:44', '110', '2016-02-18 22:58:58');
INSERT INTO `rock_chargemodes` VALUES ('80', '10', '2016-02-01 13:46:56', '112', '2016-02-18 22:58:58');
INSERT INTO `rock_chargemodes` VALUES ('81', '10', '2016-02-01 13:47:08', '113', '2016-02-18 22:58:58');
INSERT INTO `rock_chargemodes` VALUES ('82', '10', '2016-02-01 13:47:13', '114', '2016-02-18 22:58:58');
INSERT INTO `rock_chargemodes` VALUES ('83', '10', '2016-02-01 13:47:16', '115', '2016-02-18 22:58:59');
INSERT INTO `rock_chargemodes` VALUES ('84', '10', '2016-02-01 13:47:20', '116', '2016-02-18 22:58:59');
INSERT INTO `rock_chargemodes` VALUES ('87', '11', '2016-02-01 13:50:31', '119', '2016-02-18 22:59:05');
INSERT INTO `rock_chargemodes` VALUES ('88', '11', '2016-02-01 13:50:35', '120', '2016-02-18 22:59:05');
INSERT INTO `rock_chargemodes` VALUES ('91', '11', '2016-02-01 13:50:46', '123', '2016-02-18 22:59:06');
INSERT INTO `rock_chargemodes` VALUES ('93', '11', '2016-02-01 13:50:52', '125', '2016-02-18 22:59:06');
INSERT INTO `rock_chargemodes` VALUES ('95', '11', '2016-02-01 13:51:01', '127', '2016-02-18 22:59:06');
INSERT INTO `rock_chargemodes` VALUES ('96', '11', '2016-02-01 13:51:05', '128', '2016-02-18 22:59:06');
INSERT INTO `rock_chargemodes` VALUES ('97', '11', '2016-02-01 13:51:08', '129', '2016-02-18 22:59:06');
INSERT INTO `rock_chargemodes` VALUES ('98', '11', '2016-02-01 13:51:12', '130', '2016-02-18 22:59:07');
INSERT INTO `rock_chargemodes` VALUES ('99', '11', '2016-02-01 13:51:16', '131', '2016-02-18 22:59:07');
INSERT INTO `rock_chargemodes` VALUES ('100', '11', '2016-02-01 13:51:20', '132', '2016-02-18 22:59:07');
INSERT INTO `rock_chargemodes` VALUES ('101', '11', '2016-02-01 13:51:24', '133', '2016-02-18 22:59:07');
INSERT INTO `rock_chargemodes` VALUES ('102', '11', '2016-02-01 13:51:29', '134', '2016-02-18 22:59:07');
INSERT INTO `rock_chargemodes` VALUES ('104', '11', '2016-02-01 13:51:40', '136', '2016-02-18 22:59:07');
INSERT INTO `rock_chargemodes` VALUES ('107', '11', '2016-02-01 13:51:52', '139', '2016-02-18 22:59:08');
INSERT INTO `rock_chargemodes` VALUES ('108', '11', '2016-02-01 13:51:57', '140', '2016-02-18 22:59:08');
INSERT INTO `rock_chargemodes` VALUES ('109', '11', '2016-02-01 13:52:01', '141', '2016-02-18 22:59:08');
INSERT INTO `rock_chargemodes` VALUES ('110', '12', '2016-02-01 19:27:48', '142', '2016-02-18 23:01:29');
INSERT INTO `rock_chargemodes` VALUES ('111', '12', '2016-02-01 19:27:50', '143', '2016-02-18 23:01:29');
INSERT INTO `rock_chargemodes` VALUES ('112', '12', '2016-02-01 19:28:00', '144', '2016-02-18 23:01:29');
INSERT INTO `rock_chargemodes` VALUES ('114', '12', '2016-02-01 19:28:09', '146', '2016-02-18 23:01:29');
INSERT INTO `rock_chargemodes` VALUES ('115', '12', '2016-02-01 19:28:13', '147', '2016-02-18 23:01:29');
INSERT INTO `rock_chargemodes` VALUES ('116', '12', '2016-02-01 19:28:17', '148', '2016-02-18 23:01:29');
INSERT INTO `rock_chargemodes` VALUES ('117', '12', '2016-02-01 19:28:21', '149', '2016-02-18 23:01:30');
INSERT INTO `rock_chargemodes` VALUES ('118', '12', '2016-02-01 19:28:25', '150', '2016-02-18 23:01:30');
INSERT INTO `rock_chargemodes` VALUES ('119', '12', '2016-02-01 19:28:29', '151', '2016-02-18 23:01:30');
INSERT INTO `rock_chargemodes` VALUES ('121', '12', '2016-02-01 19:28:38', '153', '2016-02-18 23:01:30');
INSERT INTO `rock_chargemodes` VALUES ('126', '12', '2016-02-01 19:30:10', '158', '2016-02-18 23:01:31');
INSERT INTO `rock_chargemodes` VALUES ('129', '12', '2016-02-01 19:30:28', '161', '2016-02-18 23:01:31');
INSERT INTO `rock_chargemodes` VALUES ('130', '4', '2016-02-19 12:41:50', '162', '2016-02-21 17:44:27');
INSERT INTO `rock_chargemodes` VALUES ('131', '10', '2016-02-21 17:39:02', '111', '2016-02-21 17:44:32');
INSERT INTO `rock_chargemodes` VALUES ('133', '10', '2016-02-22 22:30:34', '102', '2016-02-22 22:31:41');
INSERT INTO `rock_chargemodes` VALUES ('135', '12', '2016-02-22 22:28:16', '155', '2016-02-22 22:31:56');
INSERT INTO `rock_chargemodes` VALUES ('136', '12', '2016-02-22 22:28:16', '156', '2016-02-22 22:31:56');
INSERT INTO `rock_chargemodes` VALUES ('140', '13', '2016-02-23 21:27:42', '171', '2016-02-23 22:10:59');
INSERT INTO `rock_chargemodes` VALUES ('142', '13', '2016-02-23 21:27:55', '173', '2016-02-23 22:11:00');
INSERT INTO `rock_chargemodes` VALUES ('143', '13', '2016-02-23 21:28:23', '174', '2016-02-23 22:11:00');
INSERT INTO `rock_chargemodes` VALUES ('144', '13', '2016-02-23 21:28:30', '175', '2016-02-23 22:11:00');
INSERT INTO `rock_chargemodes` VALUES ('146', '13', '2016-02-23 21:30:09', '177', '2016-02-23 22:11:00');
INSERT INTO `rock_chargemodes` VALUES ('147', '13', '2016-02-23 21:30:17', '178', '2016-02-23 22:11:01');
INSERT INTO `rock_chargemodes` VALUES ('148', '13', '2016-02-23 21:30:37', '179', '2016-02-23 22:11:01');
INSERT INTO `rock_chargemodes` VALUES ('150', '13', '2016-02-23 21:30:49', '181', '2016-02-23 22:11:01');
INSERT INTO `rock_chargemodes` VALUES ('151', '13', '2016-02-23 21:31:07', '182', '2016-02-23 22:11:01');
INSERT INTO `rock_chargemodes` VALUES ('152', '13', '2016-02-23 21:31:13', '183', '2016-02-23 22:11:02');
INSERT INTO `rock_chargemodes` VALUES ('153', '13', '2016-02-23 21:31:46', '184', '2016-02-23 22:11:02');
INSERT INTO `rock_chargemodes` VALUES ('154', '13', '2016-02-23 21:31:54', '185', '2016-02-23 22:11:02');
INSERT INTO `rock_chargemodes` VALUES ('155', '13', '2016-02-23 21:32:33', '186', '2016-02-23 22:11:02');
INSERT INTO `rock_chargemodes` VALUES ('156', '13', '2016-02-23 21:32:40', '187', '2016-02-23 22:11:02');
INSERT INTO `rock_chargemodes` VALUES ('157', '13', '2016-02-23 21:32:47', '188', '2016-02-23 22:11:02');
INSERT INTO `rock_chargemodes` VALUES ('158', '13', '2016-02-23 21:32:57', '189', '2016-02-23 22:11:03');
INSERT INTO `rock_chargemodes` VALUES ('159', '13', '2016-02-23 21:33:03', '190', '2016-02-23 22:11:03');
INSERT INTO `rock_chargemodes` VALUES ('160', '13', '2016-02-23 21:33:15', '191', '2016-02-23 22:11:03');
INSERT INTO `rock_chargemodes` VALUES ('161', '13', '2016-02-23 21:33:36', '192', '2016-02-23 22:11:03');
INSERT INTO `rock_chargemodes` VALUES ('162', '13', '2016-02-23 21:33:58', '193', '2016-02-23 22:11:03');
INSERT INTO `rock_chargemodes` VALUES ('163', '13', '2016-02-23 21:34:03', '194', '2016-02-23 22:11:03');
INSERT INTO `rock_chargemodes` VALUES ('164', '13', '2016-02-23 21:58:43', '211', '2016-02-23 22:11:04');
INSERT INTO `rock_chargemodes` VALUES ('165', '13', '2016-02-23 22:04:18', '212', '2016-02-23 22:11:04');
INSERT INTO `rock_chargemodes` VALUES ('166', '12', '2016-02-23 21:50:09', '195', '2016-02-23 22:11:32');
INSERT INTO `rock_chargemodes` VALUES ('167', '12', '2016-02-23 21:50:09', '196', '2016-02-23 22:11:32');
INSERT INTO `rock_chargemodes` VALUES ('168', '12', '2016-02-23 21:50:09', '197', '2016-02-23 22:11:32');
INSERT INTO `rock_chargemodes` VALUES ('169', '12', '2016-02-23 21:50:09', '198', '2016-02-23 22:11:32');
INSERT INTO `rock_chargemodes` VALUES ('170', '12', '2016-02-23 21:50:09', '199', '2016-02-23 22:11:33');
INSERT INTO `rock_chargemodes` VALUES ('171', '12', '2016-02-23 21:50:09', '200', '2016-02-23 22:11:33');
INSERT INTO `rock_chargemodes` VALUES ('173', '12', '2016-02-23 21:50:09', '202', '2016-02-23 22:11:33');
INSERT INTO `rock_chargemodes` VALUES ('174', '12', '2016-02-23 21:50:09', '203', '2016-02-23 22:11:33');
INSERT INTO `rock_chargemodes` VALUES ('175', '12', '2016-02-23 21:50:09', '204', '2016-02-23 22:11:33');
INSERT INTO `rock_chargemodes` VALUES ('176', '12', '2016-02-23 21:50:09', '205', '2016-02-23 22:11:34');
INSERT INTO `rock_chargemodes` VALUES ('177', '12', '2016-02-23 21:52:37', '206', '2016-02-23 22:11:34');
INSERT INTO `rock_chargemodes` VALUES ('178', '12', '2016-02-23 21:52:37', '207', '2016-02-23 22:11:34');
INSERT INTO `rock_chargemodes` VALUES ('180', '12', '2016-02-23 21:52:37', '209', '2016-02-23 22:11:34');
INSERT INTO `rock_chargemodes` VALUES ('182', '8', '2016-02-23 13:05:04', '50', '2016-02-23 22:11:42');
INSERT INTO `rock_chargemodes` VALUES ('183', '8', '2016-02-23 13:05:04', '51', '2016-02-23 22:11:42');
INSERT INTO `rock_chargemodes` VALUES ('184', '8', '2016-02-23 13:05:04', '52', '2016-02-23 22:11:42');
INSERT INTO `rock_chargemodes` VALUES ('185', '8', '2016-02-23 13:05:04', '53', '2016-02-23 22:11:42');
INSERT INTO `rock_chargemodes` VALUES ('187', '8', '2016-02-23 13:05:04', '55', '2016-02-23 22:11:43');
INSERT INTO `rock_chargemodes` VALUES ('189', '8', '2016-02-23 13:05:04', '57', '2016-02-23 22:11:43');
INSERT INTO `rock_chargemodes` VALUES ('190', '8', '2016-02-23 13:05:04', '58', '2016-02-23 22:11:43');
INSERT INTO `rock_chargemodes` VALUES ('192', '8', '2016-02-23 13:05:04', '61', '2016-02-23 22:11:44');
INSERT INTO `rock_chargemodes` VALUES ('193', '8', '2016-02-23 13:05:04', '62', '2016-02-23 22:11:44');
INSERT INTO `rock_chargemodes` VALUES ('194', '8', '2016-02-23 13:05:04', '63', '2016-02-23 22:11:44');
INSERT INTO `rock_chargemodes` VALUES ('195', '8', '2016-02-23 13:05:04', '64', '2016-02-23 22:11:44');
INSERT INTO `rock_chargemodes` VALUES ('199', '9', '2016-02-23 20:08:52', '68', '2016-02-23 22:11:52');
INSERT INTO `rock_chargemodes` VALUES ('200', '9', '2016-02-23 20:08:52', '69', '2016-02-23 22:11:52');
INSERT INTO `rock_chargemodes` VALUES ('201', '9', '2016-02-23 20:08:52', '70', '2016-02-23 22:11:52');
INSERT INTO `rock_chargemodes` VALUES ('202', '9', '2016-02-23 20:08:52', '71', '2016-02-23 22:11:52');
INSERT INTO `rock_chargemodes` VALUES ('203', '9', '2016-02-23 20:08:52', '72', '2016-02-23 22:11:52');
INSERT INTO `rock_chargemodes` VALUES ('204', '9', '2016-02-23 20:08:52', '73', '2016-02-23 22:11:53');
INSERT INTO `rock_chargemodes` VALUES ('205', '9', '2016-02-23 20:08:52', '74', '2016-02-23 22:11:53');
INSERT INTO `rock_chargemodes` VALUES ('206', '9', '2016-02-23 20:08:52', '75', '2016-02-23 22:11:53');
INSERT INTO `rock_chargemodes` VALUES ('210', '9', '2016-02-23 20:08:52', '79', '2016-02-23 22:11:54');
INSERT INTO `rock_chargemodes` VALUES ('211', '9', '2016-02-23 20:08:52', '80', '2016-02-23 22:11:54');
INSERT INTO `rock_chargemodes` VALUES ('215', '9', '2016-02-23 20:08:52', '84', '2016-02-23 22:11:54');
INSERT INTO `rock_chargemodes` VALUES ('217', '9', '2016-02-23 20:08:52', '167', '2016-02-23 22:11:55');
INSERT INTO `rock_chargemodes` VALUES ('219', '2', '2016-02-21 19:52:53', '18', '2016-02-23 22:17:39');
INSERT INTO `rock_chargemodes` VALUES ('220', '2', '2016-02-21 19:52:53', '17', '2016-02-23 22:17:39');
INSERT INTO `rock_chargemodes` VALUES ('221', '2', '2016-02-21 19:52:53', '16', '2016-02-23 22:17:39');
INSERT INTO `rock_chargemodes` VALUES ('222', '2', '2016-02-21 19:52:53', '15', '2016-02-23 22:17:39');
INSERT INTO `rock_chargemodes` VALUES ('224', '2', '2016-02-21 19:52:53', '14', '2016-02-23 22:17:40');
INSERT INTO `rock_chargemodes` VALUES ('225', '2', '2016-02-21 19:52:53', '26', '2016-02-23 22:17:40');
INSERT INTO `rock_chargemodes` VALUES ('227', '2', '2016-02-21 19:52:53', '24', '2016-02-23 22:17:40');
INSERT INTO `rock_chargemodes` VALUES ('229', '2', '2016-02-21 19:52:53', '22', '2016-02-23 22:17:41');
INSERT INTO `rock_chargemodes` VALUES ('231', '2', '2016-02-21 19:52:53', '20', '2016-02-23 22:17:41');
INSERT INTO `rock_chargemodes` VALUES ('233', '2', '2016-02-21 19:52:53', '29', '2016-02-23 22:17:41');
INSERT INTO `rock_chargemodes` VALUES ('234', '2', '2016-02-21 19:52:53', '39', '2016-02-23 22:17:42');
INSERT INTO `rock_chargemodes` VALUES ('236', '2', '2016-02-21 19:52:53', '41', '2016-02-23 22:17:42');
INSERT INTO `rock_chargemodes` VALUES ('238', '11', '2016-02-24 15:16:59', '117', '2016-02-26 20:19:39');
INSERT INTO `rock_chargemodes` VALUES ('239', '11', '2016-02-25 09:00:56', '118', '2016-02-26 20:19:39');
INSERT INTO `rock_chargemodes` VALUES ('240', '13', '2016-02-25 09:01:28', '169', '2016-02-26 20:19:46');
INSERT INTO `rock_chargemodes` VALUES ('241', '13', '2016-02-25 09:01:28', '170', '2016-02-26 20:19:46');
INSERT INTO `rock_chargemodes` VALUES ('242', '12', '2016-02-25 09:02:01', '208', '2016-02-26 20:19:57');
INSERT INTO `rock_chargemodes` VALUES ('245', '15', '2016-02-25 21:55:59', '218', '2016-02-26 20:20:14');
INSERT INTO `rock_chargemodes` VALUES ('246', '15', '2016-02-25 21:55:59', '219', '2016-02-26 20:20:14');
INSERT INTO `rock_chargemodes` VALUES ('247', '15', '2016-02-25 21:55:59', '220', '2016-02-26 20:20:15');
INSERT INTO `rock_chargemodes` VALUES ('248', '15', '2016-02-25 21:55:59', '221', '2016-02-26 20:20:15');
INSERT INTO `rock_chargemodes` VALUES ('249', '15', '2016-02-25 21:55:59', '222', '2016-02-26 20:20:15');
INSERT INTO `rock_chargemodes` VALUES ('250', '15', '2016-02-25 21:55:59', '223', '2016-02-26 20:20:15');
INSERT INTO `rock_chargemodes` VALUES ('251', '15', '2016-02-25 21:55:59', '224', '2016-02-26 20:20:16');
INSERT INTO `rock_chargemodes` VALUES ('252', '15', '2016-02-25 21:55:59', '225', '2016-02-26 20:20:16');
INSERT INTO `rock_chargemodes` VALUES ('257', '15', '2016-02-25 21:55:59', '230', '2016-02-26 20:20:16');
INSERT INTO `rock_chargemodes` VALUES ('258', '15', '2016-02-25 21:55:59', '231', '2016-02-26 20:20:17');
INSERT INTO `rock_chargemodes` VALUES ('259', '15', '2016-02-25 21:55:59', '232', '2016-02-26 20:20:17');
INSERT INTO `rock_chargemodes` VALUES ('262', '11', '2016-03-01 12:55:08', '122', '2016-03-01 13:35:04');
INSERT INTO `rock_chargemodes` VALUES ('266', '2', '2016-03-01 12:56:03', '25', '2016-03-01 13:35:16');
INSERT INTO `rock_chargemodes` VALUES ('269', '9', '2016-03-01 12:53:23', '76', '2016-03-01 13:35:21');
INSERT INTO `rock_chargemodes` VALUES ('272', '15', '2016-03-01 12:53:57', '226', '2016-03-01 13:35:28');
INSERT INTO `rock_chargemodes` VALUES ('273', '15', '2016-03-01 12:53:57', '227', '2016-03-01 13:35:28');
INSERT INTO `rock_chargemodes` VALUES ('274', '15', '2016-03-01 12:53:57', '228', '2016-03-01 13:35:29');
INSERT INTO `rock_chargemodes` VALUES ('275', '15', '2016-03-01 12:53:57', '229', '2016-03-01 13:35:29');
INSERT INTO `rock_chargemodes` VALUES ('276', '14', '2016-03-01 12:59:02', '213', '2016-03-01 13:35:33');
INSERT INTO `rock_chargemodes` VALUES ('277', '14', '2016-03-01 12:59:02', '214', '2016-03-01 13:35:33');
INSERT INTO `rock_chargemodes` VALUES ('278', '14', '2016-03-01 12:59:02', '215', '2016-03-01 13:35:33');
INSERT INTO `rock_chargemodes` VALUES ('279', '14', '2016-03-01 12:59:02', '216', '2016-03-01 13:35:33');
INSERT INTO `rock_chargemodes` VALUES ('281', '14', '2016-03-01 12:59:02', '234', '2016-03-01 13:35:35');
INSERT INTO `rock_chargemodes` VALUES ('282', '14', '2016-03-01 12:59:02', '235', '2016-03-01 13:35:35');
INSERT INTO `rock_chargemodes` VALUES ('283', '12', '2016-03-02 09:35:44', '145', '2016-03-02 09:36:00');
INSERT INTO `rock_chargemodes` VALUES ('288', '16', '2016-03-02 16:08:58', '236', '2016-03-02 16:10:12');
INSERT INTO `rock_chargemodes` VALUES ('290', '16', '2016-03-02 16:02:58', '238', '2016-03-02 16:10:12');
INSERT INTO `rock_chargemodes` VALUES ('291', '16', '2016-03-02 16:02:58', '239', '2016-03-02 16:10:12');
INSERT INTO `rock_chargemodes` VALUES ('292', '16', '2016-03-02 16:02:58', '240', '2016-03-02 16:10:12');
INSERT INTO `rock_chargemodes` VALUES ('293', '16', '2016-03-02 16:02:58', '241', '2016-03-02 16:10:12');
INSERT INTO `rock_chargemodes` VALUES ('294', '16', '2016-03-02 16:02:58', '242', '2016-03-02 16:10:12');
INSERT INTO `rock_chargemodes` VALUES ('295', '16', '2016-03-02 16:02:58', '243', '2016-03-02 16:10:13');
INSERT INTO `rock_chargemodes` VALUES ('296', '16', '2016-03-02 16:02:58', '244', '2016-03-02 16:10:13');
INSERT INTO `rock_chargemodes` VALUES ('297', '16', '2016-03-02 16:02:58', '245', '2016-03-02 16:10:13');
INSERT INTO `rock_chargemodes` VALUES ('298', '16', '2016-03-02 16:02:58', '246', '2016-03-02 16:10:13');
INSERT INTO `rock_chargemodes` VALUES ('299', '16', '2016-03-02 16:02:58', '247', '2016-03-02 16:10:13');
INSERT INTO `rock_chargemodes` VALUES ('300', '16', '2016-03-02 16:02:58', '248', '2016-03-02 16:10:13');
INSERT INTO `rock_chargemodes` VALUES ('301', '16', '2016-03-02 16:02:58', '249', '2016-03-02 16:10:13');
INSERT INTO `rock_chargemodes` VALUES ('302', '16', '2016-03-02 16:02:58', '250', '2016-03-02 16:10:14');
INSERT INTO `rock_chargemodes` VALUES ('303', '16', '2016-03-02 16:02:58', '251', '2016-03-02 16:10:14');
INSERT INTO `rock_chargemodes` VALUES ('304', '16', '2016-03-02 16:02:58', '252', '2016-03-02 16:10:14');
INSERT INTO `rock_chargemodes` VALUES ('305', '16', '2016-03-02 16:02:58', '253', '2016-03-02 16:10:14');
INSERT INTO `rock_chargemodes` VALUES ('306', '16', '2016-03-02 16:02:58', '254', '2016-03-02 16:10:14');
INSERT INTO `rock_chargemodes` VALUES ('307', '16', '2016-03-02 16:02:58', '255', '2016-03-02 16:10:14');
INSERT INTO `rock_chargemodes` VALUES ('308', '16', '2016-03-02 16:02:58', '256', '2016-03-02 16:10:14');
INSERT INTO `rock_chargemodes` VALUES ('309', '16', '2016-03-02 16:02:58', '257', '2016-03-02 16:10:14');
INSERT INTO `rock_chargemodes` VALUES ('310', '16', '2016-03-02 16:02:58', '258', '2016-03-02 16:10:15');
INSERT INTO `rock_chargemodes` VALUES ('311', '16', '2016-03-02 16:02:58', '259', '2016-03-02 16:10:15');
INSERT INTO `rock_chargemodes` VALUES ('312', '16', '2016-03-02 16:02:58', '260', '2016-03-02 16:10:15');
INSERT INTO `rock_chargemodes` VALUES ('313', '16', '2016-03-02 16:02:58', '261', '2016-03-02 16:10:15');
INSERT INTO `rock_chargemodes` VALUES ('314', '16', '2016-03-02 16:02:58', '262', '2016-03-02 16:10:15');
INSERT INTO `rock_chargemodes` VALUES ('315', '16', '2016-03-02 16:02:58', '263', '2016-03-02 16:10:15');
INSERT INTO `rock_chargemodes` VALUES ('316', '16', '2016-03-02 16:02:58', '264', '2016-03-02 16:10:15');
INSERT INTO `rock_chargemodes` VALUES ('317', '16', '2016-03-02 16:02:58', '265', '2016-03-02 16:10:15');
INSERT INTO `rock_chargemodes` VALUES ('318', '16', '2016-03-02 16:02:58', '266', '2016-03-02 16:10:16');
INSERT INTO `rock_chargemodes` VALUES ('319', '16', '2016-03-02 16:02:58', '267', '2016-03-02 16:10:16');
INSERT INTO `rock_chargemodes` VALUES ('320', '16', '2016-03-02 16:02:58', '268', '2016-03-02 16:10:16');
INSERT INTO `rock_chargemodes` VALUES ('321', '16', '2016-03-02 16:02:58', '269', '2016-03-02 16:10:16');
INSERT INTO `rock_chargemodes` VALUES ('322', '16', '2016-03-02 16:02:58', '270', '2016-03-02 16:10:16');
INSERT INTO `rock_chargemodes` VALUES ('323', '16', '2016-03-02 16:02:58', '271', '2016-03-02 16:10:16');
INSERT INTO `rock_chargemodes` VALUES ('324', '16', '2016-03-02 16:02:58', '272', '2016-03-02 16:10:16');
INSERT INTO `rock_chargemodes` VALUES ('325', '16', '2016-03-02 16:02:58', '273', '2016-03-02 16:10:16');
INSERT INTO `rock_chargemodes` VALUES ('326', '16', '2016-03-02 16:01:10', '274', '2016-03-02 16:10:17');
INSERT INTO `rock_chargemodes` VALUES ('327', '16', '2016-03-02 16:01:13', '275', '2016-03-02 16:10:18');
INSERT INTO `rock_chargemodes` VALUES ('329', '7', '2016-03-03 10:18:01', '35', '2016-03-06 15:42:34');
INSERT INTO `rock_chargemodes` VALUES ('331', '9', '2016-03-03 10:18:01', '78', '2016-03-06 15:42:39');
INSERT INTO `rock_chargemodes` VALUES ('333', '7', '2016-03-08 17:04:04', '43', '2016-03-09 09:27:18');
INSERT INTO `rock_chargemodes` VALUES ('334', '7', '2016-03-08 17:04:04', '47', '2016-03-09 09:27:20');
INSERT INTO `rock_chargemodes` VALUES ('337', '13', '2016-03-08 17:04:04', '172', '2016-03-09 09:28:41');
INSERT INTO `rock_chargemodes` VALUES ('338', '13', '2016-03-08 17:04:04', '180', '2016-03-09 09:28:43');
INSERT INTO `rock_chargemodes` VALUES ('339', '12', '2016-03-08 17:04:04', '157', '2016-03-09 09:28:56');
INSERT INTO `rock_chargemodes` VALUES ('341', '12', '2016-03-08 17:04:04', '201', '2016-03-09 09:29:00');
INSERT INTO `rock_chargemodes` VALUES ('342', '12', '2016-03-09 09:25:59', '276', '2016-03-09 09:29:02');
INSERT INTO `rock_chargemodes` VALUES ('343', '12', '2016-03-09 09:25:59', '277', '2016-03-09 09:29:04');
INSERT INTO `rock_chargemodes` VALUES ('344', '12', '2016-03-09 09:25:59', '278', '2016-03-09 09:29:06');
INSERT INTO `rock_chargemodes` VALUES ('345', '12', '2016-03-09 09:25:59', '279', '2016-03-09 09:29:08');
INSERT INTO `rock_chargemodes` VALUES ('346', '12', '2016-03-09 09:25:59', '280', '2016-03-09 09:29:10');
INSERT INTO `rock_chargemodes` VALUES ('347', '12', '2016-03-09 09:25:59', '354', '2016-03-09 09:29:12');
INSERT INTO `rock_chargemodes` VALUES ('351', '9', '2016-03-09 09:25:59', '356', '2016-03-09 09:30:22');
INSERT INTO `rock_chargemodes` VALUES ('352', '9', '2016-03-09 09:25:59', '368', '2016-03-09 09:30:24');
INSERT INTO `rock_chargemodes` VALUES ('353', '9', '2016-03-09 09:25:59', '369', '2016-03-09 09:30:26');
INSERT INTO `rock_chargemodes` VALUES ('354', '9', '2016-03-09 09:25:59', '370', '2016-03-09 09:30:28');
INSERT INTO `rock_chargemodes` VALUES ('355', '14', '2016-03-08 17:04:04', '217', '2016-03-09 09:31:52');
INSERT INTO `rock_chargemodes` VALUES ('357', '16', '2016-03-09 09:25:59', '342', '2016-03-09 09:32:09');
INSERT INTO `rock_chargemodes` VALUES ('358', '16', '2016-03-09 09:25:59', '345', '2016-03-09 09:32:11');
INSERT INTO `rock_chargemodes` VALUES ('359', '16', '2016-03-09 09:25:59', '346', '2016-03-09 09:32:13');
INSERT INTO `rock_chargemodes` VALUES ('360', '16', '2016-03-09 09:25:59', '347', '2016-03-09 09:32:15');
INSERT INTO `rock_chargemodes` VALUES ('361', '16', '2016-03-09 09:25:59', '348', '2016-03-09 09:32:17');
INSERT INTO `rock_chargemodes` VALUES ('362', '16', '2016-03-09 09:25:59', '349', '2016-03-09 09:32:20');
INSERT INTO `rock_chargemodes` VALUES ('363', '16', '2016-03-09 09:25:59', '350', '2016-03-09 09:32:22');
INSERT INTO `rock_chargemodes` VALUES ('364', '16', '2016-03-09 09:25:59', '351', '2016-03-09 09:32:24');
INSERT INTO `rock_chargemodes` VALUES ('365', '16', '2016-03-09 09:25:59', '352', '2016-03-09 09:32:26');
INSERT INTO `rock_chargemodes` VALUES ('366', '17', '2016-03-09 09:25:59', '281', '2016-03-09 09:32:41');
INSERT INTO `rock_chargemodes` VALUES ('367', '17', '2016-03-09 09:25:59', '282', '2016-03-09 09:32:43');
INSERT INTO `rock_chargemodes` VALUES ('368', '17', '2016-03-09 09:25:59', '283', '2016-03-09 09:32:45');
INSERT INTO `rock_chargemodes` VALUES ('369', '17', '2016-03-09 09:25:59', '284', '2016-03-09 09:32:48');
INSERT INTO `rock_chargemodes` VALUES ('370', '17', '2016-03-09 09:25:59', '285', '2016-03-09 09:32:50');
INSERT INTO `rock_chargemodes` VALUES ('371', '17', '2016-03-09 09:25:59', '286', '2016-03-09 09:32:52');
INSERT INTO `rock_chargemodes` VALUES ('372', '17', '2016-03-09 09:25:59', '287', '2016-03-09 09:32:54');
INSERT INTO `rock_chargemodes` VALUES ('373', '17', '2016-03-09 09:25:59', '288', '2016-03-09 09:32:56');
INSERT INTO `rock_chargemodes` VALUES ('374', '17', '2016-03-09 09:25:59', '289', '2016-03-09 09:32:58');
INSERT INTO `rock_chargemodes` VALUES ('375', '17', '2016-03-09 09:25:59', '290', '2016-03-09 09:33:00');
INSERT INTO `rock_chargemodes` VALUES ('377', '17', '2016-03-09 09:25:59', '292', '2016-03-09 09:33:05');
INSERT INTO `rock_chargemodes` VALUES ('378', '17', '2016-03-09 09:25:59', '293', '2016-03-09 09:33:07');
INSERT INTO `rock_chargemodes` VALUES ('379', '17', '2016-03-09 09:25:59', '294', '2016-03-09 09:33:09');
INSERT INTO `rock_chargemodes` VALUES ('380', '17', '2016-03-09 09:25:59', '295', '2016-03-09 09:33:11');
INSERT INTO `rock_chargemodes` VALUES ('381', '17', '2016-03-09 09:25:59', '296', '2016-03-09 09:33:13');
INSERT INTO `rock_chargemodes` VALUES ('382', '17', '2016-03-09 09:25:59', '297', '2016-03-09 09:33:15');
INSERT INTO `rock_chargemodes` VALUES ('383', '17', '2016-03-09 09:25:59', '298', '2016-03-09 09:33:17');
INSERT INTO `rock_chargemodes` VALUES ('384', '17', '2016-03-09 09:25:59', '299', '2016-03-09 09:33:19');
INSERT INTO `rock_chargemodes` VALUES ('385', '17', '2016-03-09 09:25:59', '300', '2016-03-09 09:33:22');
INSERT INTO `rock_chargemodes` VALUES ('386', '17', '2016-03-09 09:25:59', '301', '2016-03-09 09:33:24');
INSERT INTO `rock_chargemodes` VALUES ('387', '17', '2016-03-09 09:25:59', '302', '2016-03-09 09:33:26');
INSERT INTO `rock_chargemodes` VALUES ('388', '17', '2016-03-09 09:25:59', '303', '2016-03-09 09:33:28');
INSERT INTO `rock_chargemodes` VALUES ('389', '17', '2016-03-09 09:25:59', '304', '2016-03-09 09:33:30');
INSERT INTO `rock_chargemodes` VALUES ('390', '17', '2016-03-09 09:25:59', '305', '2016-03-09 09:33:32');
INSERT INTO `rock_chargemodes` VALUES ('391', '17', '2016-03-09 09:25:59', '309', '2016-03-09 09:33:34');
INSERT INTO `rock_chargemodes` VALUES ('392', '17', '2016-03-09 09:25:59', '310', '2016-03-09 09:33:36');
INSERT INTO `rock_chargemodes` VALUES ('393', '17', '2016-03-09 09:24:36', '387', '2016-03-09 09:33:38');
INSERT INTO `rock_chargemodes` VALUES ('394', '18', '2016-03-09 09:25:59', '311', '2016-03-09 09:34:16');
INSERT INTO `rock_chargemodes` VALUES ('395', '18', '2016-03-09 09:25:59', '312', '2016-03-09 09:34:18');
INSERT INTO `rock_chargemodes` VALUES ('396', '18', '2016-03-09 09:25:59', '313', '2016-03-09 09:34:20');
INSERT INTO `rock_chargemodes` VALUES ('397', '18', '2016-03-09 09:25:59', '314', '2016-03-09 09:34:22');
INSERT INTO `rock_chargemodes` VALUES ('398', '18', '2016-03-09 09:25:59', '315', '2016-03-09 09:34:24');
INSERT INTO `rock_chargemodes` VALUES ('399', '18', '2016-03-09 09:25:59', '316', '2016-03-09 09:34:26');
INSERT INTO `rock_chargemodes` VALUES ('400', '18', '2016-03-09 09:25:59', '317', '2016-03-09 09:34:29');
INSERT INTO `rock_chargemodes` VALUES ('401', '18', '2016-03-09 09:25:59', '318', '2016-03-09 09:34:31');
INSERT INTO `rock_chargemodes` VALUES ('402', '18', '2016-03-09 09:25:59', '319', '2016-03-09 09:34:33');
INSERT INTO `rock_chargemodes` VALUES ('403', '18', '2016-03-09 09:25:59', '320', '2016-03-09 09:34:35');
INSERT INTO `rock_chargemodes` VALUES ('404', '18', '2016-03-09 09:25:59', '321', '2016-03-09 09:34:37');
INSERT INTO `rock_chargemodes` VALUES ('405', '18', '2016-03-09 09:25:59', '322', '2016-03-09 09:34:39');
INSERT INTO `rock_chargemodes` VALUES ('406', '18', '2016-03-09 09:25:59', '323', '2016-03-09 09:34:41');
INSERT INTO `rock_chargemodes` VALUES ('407', '18', '2016-03-09 09:25:59', '324', '2016-03-09 09:34:43');
INSERT INTO `rock_chargemodes` VALUES ('408', '18', '2016-03-09 09:25:59', '325', '2016-03-09 09:34:45');
INSERT INTO `rock_chargemodes` VALUES ('409', '18', '2016-03-09 09:25:59', '326', '2016-03-09 09:34:48');
INSERT INTO `rock_chargemodes` VALUES ('410', '18', '2016-03-09 09:25:59', '327', '2016-03-09 09:34:50');
INSERT INTO `rock_chargemodes` VALUES ('411', '18', '2016-03-09 09:25:59', '328', '2016-03-09 09:34:52');
INSERT INTO `rock_chargemodes` VALUES ('413', '18', '2016-03-09 09:25:59', '330', '2016-03-09 09:34:56');
INSERT INTO `rock_chargemodes` VALUES ('414', '18', '2016-03-09 09:25:59', '331', '2016-03-09 09:34:58');
INSERT INTO `rock_chargemodes` VALUES ('415', '18', '2016-03-09 09:25:59', '332', '2016-03-09 09:35:00');
INSERT INTO `rock_chargemodes` VALUES ('416', '18', '2016-03-09 09:25:59', '333', '2016-03-09 09:35:02');
INSERT INTO `rock_chargemodes` VALUES ('417', '18', '2016-03-09 09:25:59', '334', '2016-03-09 09:35:05');
INSERT INTO `rock_chargemodes` VALUES ('418', '18', '2016-03-09 09:25:59', '335', '2016-03-09 09:35:07');
INSERT INTO `rock_chargemodes` VALUES ('419', '18', '2016-03-09 09:25:59', '336', '2016-03-09 09:35:09');
INSERT INTO `rock_chargemodes` VALUES ('420', '18', '2016-03-09 09:25:59', '337', '2016-03-09 09:35:11');
INSERT INTO `rock_chargemodes` VALUES ('421', '18', '2016-03-09 09:25:59', '338', '2016-03-09 09:35:13');
INSERT INTO `rock_chargemodes` VALUES ('422', '18', '2016-03-09 09:25:59', '339', '2016-03-09 09:35:15');
INSERT INTO `rock_chargemodes` VALUES ('423', '18', '2016-03-09 09:25:59', '340', '2016-03-09 09:35:17');
INSERT INTO `rock_chargemodes` VALUES ('424', '18', '2016-03-09 09:25:59', '343', '2016-03-09 09:35:19');
INSERT INTO `rock_chargemodes` VALUES ('425', '18', '2016-03-09 09:25:59', '344', '2016-03-09 09:35:21');
INSERT INTO `rock_chargemodes` VALUES ('426', '18', '2016-03-09 09:25:59', '353', '2016-03-09 09:35:24');
INSERT INTO `rock_chargemodes` VALUES ('427', '19', '2016-03-09 09:25:59', '357', '2016-03-09 09:35:42');
INSERT INTO `rock_chargemodes` VALUES ('428', '19', '2016-03-09 09:25:59', '358', '2016-03-09 09:35:44');
INSERT INTO `rock_chargemodes` VALUES ('429', '19', '2016-03-09 09:25:59', '359', '2016-03-09 09:35:46');
INSERT INTO `rock_chargemodes` VALUES ('430', '19', '2016-03-09 09:25:59', '360', '2016-03-09 09:35:48');
INSERT INTO `rock_chargemodes` VALUES ('431', '19', '2016-03-09 09:25:59', '361', '2016-03-09 09:35:50');
INSERT INTO `rock_chargemodes` VALUES ('432', '19', '2016-03-09 09:25:59', '362', '2016-03-09 09:35:53');
INSERT INTO `rock_chargemodes` VALUES ('433', '19', '2016-03-09 09:25:59', '363', '2016-03-09 09:35:55');
INSERT INTO `rock_chargemodes` VALUES ('434', '20', '2016-03-09 09:25:59', '371', '2016-03-09 09:47:21');
INSERT INTO `rock_chargemodes` VALUES ('435', '20', '2016-03-09 09:25:59', '372', '2016-03-09 09:47:23');
INSERT INTO `rock_chargemodes` VALUES ('436', '20', '2016-03-09 09:25:59', '373', '2016-03-09 09:47:25');
INSERT INTO `rock_chargemodes` VALUES ('437', '20', '2016-03-09 09:25:59', '374', '2016-03-09 09:47:27');
INSERT INTO `rock_chargemodes` VALUES ('438', '20', '2016-03-09 09:25:59', '375', '2016-03-09 09:47:29');
INSERT INTO `rock_chargemodes` VALUES ('439', '20', '2016-03-09 09:25:59', '376', '2016-03-09 09:47:31');
INSERT INTO `rock_chargemodes` VALUES ('440', '20', '2016-03-09 09:25:59', '377', '2016-03-09 09:47:34');
INSERT INTO `rock_chargemodes` VALUES ('441', '20', '2016-03-09 09:25:59', '378', '2016-03-09 09:47:36');
INSERT INTO `rock_chargemodes` VALUES ('442', '20', '2016-03-09 09:25:59', '379', '2016-03-09 09:47:38');
INSERT INTO `rock_chargemodes` VALUES ('444', '20', '2016-03-09 09:25:59', '381', '2016-03-09 09:47:42');
INSERT INTO `rock_chargemodes` VALUES ('445', '20', '2016-03-09 09:25:59', '382', '2016-03-09 09:47:44');
INSERT INTO `rock_chargemodes` VALUES ('446', '20', '2016-03-09 09:25:59', '383', '2016-03-09 09:47:46');
INSERT INTO `rock_chargemodes` VALUES ('447', '20', '2016-03-09 09:25:59', '384', '2016-03-09 09:47:48');
INSERT INTO `rock_chargemodes` VALUES ('448', '20', '2016-03-09 09:25:59', '385', '2016-03-09 09:47:50');
INSERT INTO `rock_chargemodes` VALUES ('449', '20', '2016-03-09 09:25:59', '386', '2016-03-09 09:47:53');
INSERT INTO `rock_chargemodes` VALUES ('451', '19', '2016-03-09 09:25:59', '365', '2016-03-09 09:50:09');
INSERT INTO `rock_chargemodes` VALUES ('452', '19', '2016-03-09 09:25:59', '366', '2016-03-09 09:50:11');
INSERT INTO `rock_chargemodes` VALUES ('453', '7', '2016-03-10 20:13:44', '38', '2016-03-11 01:43:21');
INSERT INTO `rock_chargemodes` VALUES ('455', '7', '2016-03-10 20:17:28', '395', '2016-03-11 01:43:21');
INSERT INTO `rock_chargemodes` VALUES ('456', '7', '2016-03-10 20:17:28', '396', '2016-03-11 01:43:21');
INSERT INTO `rock_chargemodes` VALUES ('457', '12', '2016-03-10 20:13:44', '152', '2016-03-11 01:43:34');
INSERT INTO `rock_chargemodes` VALUES ('462', '20', '2016-03-10 20:13:44', '380', '2016-03-11 22:45:08');
INSERT INTO `rock_chargemodes` VALUES ('463', '20', '2016-03-09 12:03:42', '390', '2016-03-11 22:45:08');
INSERT INTO `rock_chargemodes` VALUES ('465', '7', '2016-03-12 15:21:57', '36', '2016-03-12 17:18:39');
INSERT INTO `rock_chargemodes` VALUES ('466', '7', '2016-03-12 15:26:20', '399', '2016-03-12 17:18:40');
INSERT INTO `rock_chargemodes` VALUES ('468', '13', '2016-03-15 19:19:23', '176', '2016-03-15 19:20:54');
INSERT INTO `rock_chargemodes` VALUES ('471', '2', '2016-03-15 19:19:23', '23', '2016-03-15 19:21:03');
INSERT INTO `rock_chargemodes` VALUES ('472', '2', '2016-03-15 19:19:23', '21', '2016-03-15 19:21:03');
INSERT INTO `rock_chargemodes` VALUES ('474', '2', '2016-03-15 19:19:23', '40', '2016-03-15 19:21:03');
INSERT INTO `rock_chargemodes` VALUES ('475', '2', '2016-03-15 19:19:23', '42', '2016-03-15 19:21:03');
INSERT INTO `rock_chargemodes` VALUES ('476', '8', '2016-03-15 19:19:23', '54', '2016-03-15 19:21:09');
INSERT INTO `rock_chargemodes` VALUES ('482', '1', '2016-02-21 17:59:46', '163', '2016-03-20 20:26:13');
INSERT INTO `rock_chargemodes` VALUES ('483', '1', '2016-03-08 17:04:04', '164', '2016-03-20 20:26:13');
INSERT INTO `rock_chargemodes` VALUES ('485', '10', '2016-03-20 21:41:27', '103', '2016-03-20 21:43:47');
INSERT INTO `rock_chargemodes` VALUES ('486', '11', '2016-03-20 21:41:27', '121', '2016-03-20 21:43:53');
INSERT INTO `rock_chargemodes` VALUES ('488', '11', '2016-03-20 21:41:27', '126', '2016-03-20 21:43:53');
INSERT INTO `rock_chargemodes` VALUES ('489', '11', '2016-03-20 21:41:27', '135', '2016-03-20 21:43:54');
INSERT INTO `rock_chargemodes` VALUES ('491', '11', '2016-03-20 21:41:27', '138', '2016-03-20 21:43:54');
INSERT INTO `rock_chargemodes` VALUES ('493', '1', '2016-03-20 21:41:27', '1', '2016-03-20 21:44:08');
INSERT INTO `rock_chargemodes` VALUES ('494', '1', '2016-03-20 21:41:27', '4', '2016-03-20 21:44:08');
INSERT INTO `rock_chargemodes` VALUES ('495', '1', '2016-03-20 21:41:27', '10', '2016-03-20 21:44:08');
INSERT INTO `rock_chargemodes` VALUES ('497', '1', '2016-03-20 21:41:27', '400', '2016-03-20 21:44:09');
INSERT INTO `rock_chargemodes` VALUES ('498', '1', '2016-03-20 21:41:27', '401', '2016-03-20 21:44:09');
INSERT INTO `rock_chargemodes` VALUES ('501', '2', '2016-03-20 21:43:17', '13', '2016-03-20 21:45:09');
INSERT INTO `rock_chargemodes` VALUES ('502', '2', '2016-03-20 21:41:27', '19', '2016-03-20 21:45:09');
INSERT INTO `rock_chargemodes` VALUES ('503', '8', '2016-03-20 21:41:27', '49', '2016-03-20 21:45:38');
INSERT INTO `rock_chargemodes` VALUES ('504', '8', '2016-03-20 21:41:27', '56', '2016-03-20 21:45:38');
INSERT INTO `rock_chargemodes` VALUES ('505', '8', '2016-03-20 21:41:27', '59', '2016-03-20 21:45:39');
INSERT INTO `rock_chargemodes` VALUES ('506', '8', '2016-03-20 21:41:27', '65', '2016-03-20 21:45:39');
INSERT INTO `rock_chargemodes` VALUES ('508', '9', '2016-03-20 21:41:27', '67', '2016-03-20 21:45:45');
INSERT INTO `rock_chargemodes` VALUES ('509', '9', '2016-03-20 21:41:27', '77', '2016-03-20 21:45:45');
INSERT INTO `rock_chargemodes` VALUES ('511', '9', '2016-03-20 21:41:27', '82', '2016-03-20 21:45:46');
INSERT INTO `rock_chargemodes` VALUES ('514', '9', '2016-03-20 21:30:12', '168', '2016-03-20 21:45:46');
INSERT INTO `rock_chargemodes` VALUES ('515', '15', '2016-03-20 21:41:27', '233', '2016-03-20 21:45:52');
INSERT INTO `rock_chargemodes` VALUES ('516', '18', '2016-03-20 21:41:27', '329', '2016-03-20 21:45:58');
INSERT INTO `rock_chargemodes` VALUES ('517', '18', '2016-03-09 12:03:03', '388', '2016-03-20 21:45:58');
INSERT INTO `rock_chargemodes` VALUES ('518', '18', '2016-03-20 21:41:27', '404', '2016-03-20 21:45:58');
INSERT INTO `rock_chargemodes` VALUES ('519', '1', '2016-03-20 21:51:29', '11', '2016-03-20 21:51:39');
INSERT INTO `rock_chargemodes` VALUES ('520', '12', '2016-03-20 22:06:29', '355', '2016-03-21 18:23:14');
INSERT INTO `rock_chargemodes` VALUES ('521', '1', '2016-03-20 22:06:29', '403', '2016-03-21 18:23:19');
INSERT INTO `rock_chargemodes` VALUES ('522', '11', '2016-03-21 19:48:36', '137', '2016-03-21 19:48:51');
INSERT INTO `rock_chargemodes` VALUES ('524', '11', '2016-03-22 22:01:24', '124', '2016-03-22 22:07:44');
INSERT INTO `rock_chargemodes` VALUES ('528', '16', '2016-03-22 22:01:24', '237', '2016-03-22 22:07:56');
INSERT INTO `rock_chargemodes` VALUES ('529', '16', '2016-03-22 22:01:24', '341', '2016-03-22 22:07:57');
INSERT INTO `rock_chargemodes` VALUES ('530', '16', '2016-03-22 22:01:24', '448', '2016-03-22 22:07:57');
INSERT INTO `rock_chargemodes` VALUES ('532', '7', '2016-03-29 18:58:15', '394', '2016-03-29 18:59:59');
INSERT INTO `rock_chargemodes` VALUES ('533', '9', '2016-03-29 18:58:15', '83', '2016-03-29 19:00:06');
INSERT INTO `rock_chargemodes` VALUES ('534', '14', '2016-03-09 12:10:51', '392', '2016-03-29 19:36:52');
INSERT INTO `rock_chargemodes` VALUES ('535', '19', '2016-03-09 12:03:20', '389', '2016-03-29 19:37:14');
INSERT INTO `rock_chargemodes` VALUES ('536', '7', '2016-03-30 20:21:12', '30', '2016-03-30 20:25:29');
INSERT INTO `rock_chargemodes` VALUES ('537', '7', '2016-03-30 20:21:12', '31', '2016-03-30 20:25:29');
INSERT INTO `rock_chargemodes` VALUES ('538', '7', '2016-03-30 20:21:12', '367', '2016-03-30 20:25:29');
INSERT INTO `rock_chargemodes` VALUES ('539', '12', '2016-03-30 20:21:12', '154', '2016-03-30 20:25:43');
INSERT INTO `rock_chargemodes` VALUES ('540', '12', '2016-03-30 20:21:12', '159', '2016-03-30 20:25:44');
INSERT INTO `rock_chargemodes` VALUES ('541', '12', '2016-03-30 20:21:12', '160', '2016-03-30 20:25:44');
INSERT INTO `rock_chargemodes` VALUES ('542', '1', '2016-03-30 20:21:12', '402', '2016-03-30 20:25:47');
INSERT INTO `rock_chargemodes` VALUES ('543', '4', '2016-03-30 20:21:12', '6', '2016-03-30 20:26:03');
INSERT INTO `rock_chargemodes` VALUES ('544', '4', '2016-03-30 20:22:18', '449', '2016-03-30 20:26:03');
INSERT INTO `rock_chargemodes` VALUES ('545', '9', '2016-03-30 20:21:12', '66', '2016-03-30 20:26:40');
INSERT INTO `rock_chargemodes` VALUES ('546', '9', '2016-03-30 20:21:12', '81', '2016-03-30 20:26:40');
INSERT INTO `rock_chargemodes` VALUES ('547', '9', '2016-03-30 20:21:12', '85', '2016-03-30 20:26:40');
INSERT INTO `rock_chargemodes` VALUES ('548', '17', '2016-03-30 20:21:12', '291', '2016-03-30 20:26:58');
INSERT INTO `rock_chargemodes` VALUES ('549', '7', '2016-04-12 21:08:32', '30', '2016-04-12 21:13:54');
INSERT INTO `rock_chargemodes` VALUES ('550', '7', '2016-04-12 21:08:32', '35', '2016-04-12 21:13:55');
INSERT INTO `rock_chargemodes` VALUES ('551', '7', '2016-04-12 21:08:32', '36', '2016-04-12 21:13:55');
INSERT INTO `rock_chargemodes` VALUES ('552', '7', '2016-04-12 21:08:32', '48', '2016-04-12 21:13:55');
INSERT INTO `rock_chargemodes` VALUES ('553', '7', '2016-04-12 21:08:32', '367', '2016-04-12 21:13:55');
INSERT INTO `rock_chargemodes` VALUES ('554', '11', '2016-04-12 21:08:32', '117', '2016-04-12 21:13:59');
INSERT INTO `rock_chargemodes` VALUES ('555', '11', '2016-04-12 21:08:32', '118', '2016-04-12 21:13:59');
INSERT INTO `rock_chargemodes` VALUES ('556', '11', '2016-04-12 21:08:32', '120', '2016-04-12 21:13:59');
INSERT INTO `rock_chargemodes` VALUES ('557', '11', '2016-04-12 21:08:32', '122', '2016-04-12 21:13:59');
INSERT INTO `rock_chargemodes` VALUES ('558', '11', '2016-04-12 21:08:32', '124', '2016-04-12 21:13:59');
INSERT INTO `rock_chargemodes` VALUES ('559', '11', '2016-04-12 21:08:32', '126', '2016-04-12 21:14:00');
INSERT INTO `rock_chargemodes` VALUES ('560', '11', '2016-04-12 21:08:32', '133', '2016-04-12 21:14:00');
INSERT INTO `rock_chargemodes` VALUES ('561', '13', '2016-04-12 21:08:32', '169', '2016-04-12 21:14:04');
INSERT INTO `rock_chargemodes` VALUES ('562', '13', '2016-04-12 21:08:32', '177', '2016-04-12 21:14:04');
INSERT INTO `rock_chargemodes` VALUES ('563', '13', '2016-04-12 21:08:32', '180', '2016-04-12 21:14:04');
INSERT INTO `rock_chargemodes` VALUES ('564', '12', '2016-04-12 21:08:32', '143', '2016-04-12 21:14:11');
INSERT INTO `rock_chargemodes` VALUES ('565', '12', '2016-04-12 21:08:32', '154', '2016-04-12 21:14:11');
INSERT INTO `rock_chargemodes` VALUES ('566', '12', '2016-04-12 21:08:32', '156', '2016-04-12 21:14:11');
INSERT INTO `rock_chargemodes` VALUES ('567', '12', '2016-04-12 21:08:32', '159', '2016-04-12 21:14:11');
INSERT INTO `rock_chargemodes` VALUES ('568', '12', '2016-04-12 21:08:32', '160', '2016-04-12 21:14:11');
INSERT INTO `rock_chargemodes` VALUES ('569', '12', '2016-04-12 21:08:32', '161', '2016-04-12 21:14:11');
INSERT INTO `rock_chargemodes` VALUES ('570', '12', '2016-04-12 21:08:32', '198', '2016-04-12 21:14:11');
INSERT INTO `rock_chargemodes` VALUES ('571', '12', '2016-04-12 21:08:32', '199', '2016-04-12 21:14:12');
INSERT INTO `rock_chargemodes` VALUES ('572', '12', '2016-04-12 21:08:32', '203', '2016-04-12 21:14:12');
INSERT INTO `rock_chargemodes` VALUES ('573', '12', '2016-04-12 21:08:32', '450', '2016-04-12 21:14:12');
INSERT INTO `rock_chargemodes` VALUES ('574', '1', '2016-04-12 21:08:32', '402', '2016-04-12 21:14:18');
INSERT INTO `rock_chargemodes` VALUES ('575', '1', '2016-04-12 21:08:32', '403', '2016-04-12 21:14:18');
INSERT INTO `rock_chargemodes` VALUES ('576', '1', '2016-04-12 21:08:32', '451', '2016-04-12 21:14:18');
INSERT INTO `rock_chargemodes` VALUES ('577', '8', '2016-04-12 21:08:32', '49', '2016-04-12 21:14:23');
INSERT INTO `rock_chargemodes` VALUES ('578', '8', '2016-04-12 21:08:32', '50', '2016-04-12 21:14:23');
INSERT INTO `rock_chargemodes` VALUES ('579', '8', '2016-04-12 21:08:32', '55', '2016-04-12 21:14:23');
INSERT INTO `rock_chargemodes` VALUES ('580', '8', '2016-04-12 21:08:32', '56', '2016-04-12 21:14:23');
INSERT INTO `rock_chargemodes` VALUES ('581', '8', '2016-04-12 21:08:32', '57', '2016-04-12 21:14:23');
INSERT INTO `rock_chargemodes` VALUES ('582', '8', '2016-04-12 21:08:32', '58', '2016-04-12 21:14:23');
INSERT INTO `rock_chargemodes` VALUES ('583', '8', '2016-04-12 21:08:32', '61', '2016-04-12 21:14:24');
INSERT INTO `rock_chargemodes` VALUES ('584', '8', '2016-04-12 21:08:32', '62', '2016-04-12 21:14:24');
INSERT INTO `rock_chargemodes` VALUES ('585', '8', '2016-04-12 21:08:32', '65', '2016-04-12 21:14:24');
INSERT INTO `rock_chargemodes` VALUES ('586', '8', '2016-04-12 21:08:32', '455', '2016-04-12 21:14:24');
INSERT INTO `rock_chargemodes` VALUES ('587', '8', '2016-04-12 21:08:32', '456', '2016-04-12 21:14:24');
INSERT INTO `rock_chargemodes` VALUES ('588', '9', '2016-04-09 09:25:30', '76', '2016-04-12 21:15:02');
INSERT INTO `rock_chargemodes` VALUES ('589', '9', '2016-04-12 21:08:32', '81', '2016-04-12 21:15:02');
INSERT INTO `rock_chargemodes` VALUES ('590', '9', '2016-04-09 09:25:30', '83', '2016-04-12 21:15:02');
INSERT INTO `rock_chargemodes` VALUES ('591', '9', '2016-04-09 09:25:30', '85', '2016-04-12 21:15:02');
INSERT INTO `rock_chargemodes` VALUES ('592', '9', '2016-04-09 09:28:10', '168', '2016-04-12 21:15:02');
INSERT INTO `rock_chargemodes` VALUES ('593', '15', '2016-04-12 21:08:32', '220', '2016-04-12 21:15:07');
INSERT INTO `rock_chargemodes` VALUES ('594', '15', '2016-04-12 21:08:32', '221', '2016-04-12 21:15:07');
INSERT INTO `rock_chargemodes` VALUES ('595', '15', '2016-04-12 21:08:32', '224', '2016-04-12 21:15:07');
INSERT INTO `rock_chargemodes` VALUES ('596', '15', '2016-04-12 21:08:32', '225', '2016-04-12 21:15:07');
INSERT INTO `rock_chargemodes` VALUES ('597', '15', '2016-04-12 21:08:32', '230', '2016-04-12 21:15:08');
INSERT INTO `rock_chargemodes` VALUES ('598', '15', '2016-04-12 21:08:32', '231', '2016-04-12 21:15:08');
INSERT INTO `rock_chargemodes` VALUES ('599', '15', '2016-04-12 21:08:32', '232', '2016-04-12 21:15:08');
INSERT INTO `rock_chargemodes` VALUES ('600', '15', '2016-04-12 21:08:32', '233', '2016-04-12 21:15:08');
INSERT INTO `rock_chargemodes` VALUES ('601', '16', '2016-04-12 21:08:32', '243', '2016-04-12 21:15:40');
INSERT INTO `rock_chargemodes` VALUES ('602', '17', '2016-04-12 21:08:32', '287', '2016-04-12 21:15:44');
INSERT INTO `rock_chargemodes` VALUES ('603', '17', '2016-04-12 21:08:32', '289', '2016-04-12 21:15:44');
INSERT INTO `rock_chargemodes` VALUES ('604', '17', '2016-04-12 21:08:32', '290', '2016-04-12 21:15:45');
INSERT INTO `rock_chargemodes` VALUES ('605', '17', '2016-04-12 21:08:32', '454', '2016-04-12 21:15:45');
INSERT INTO `rock_chargemodes` VALUES ('606', '18', '2016-04-12 21:08:32', '325', '2016-04-12 21:15:49');
INSERT INTO `rock_chargemodes` VALUES ('607', '18', '2016-04-12 21:08:32', '404', '2016-04-12 21:15:50');
INSERT INTO `rock_chargemodes` VALUES ('608', '20', '2016-04-12 21:08:32', '379', '2016-04-12 21:15:54');
INSERT INTO `rock_chargemodes` VALUES ('609', '20', '2016-04-12 21:08:32', '386', '2016-04-12 21:15:54');
INSERT INTO `rock_chargemodes` VALUES ('610', '20', '2016-04-12 21:08:32', '452', '2016-04-12 21:15:55');
INSERT INTO `rock_chargemodes` VALUES ('611', '20', '2016-04-12 21:08:32', '453', '2016-04-12 21:15:55');
INSERT INTO `rock_chargemodes` VALUES ('612', '7', '2016-04-12 21:28:53', '461', '2016-04-12 21:30:05');
INSERT INTO `rock_chargemodes` VALUES ('613', '7', '2016-04-12 21:28:53', '462', '2016-04-12 21:30:05');
INSERT INTO `rock_chargemodes` VALUES ('614', '7', '2016-04-12 21:28:53', '463', '2016-04-12 21:30:05');
INSERT INTO `rock_chargemodes` VALUES ('615', '7', '2016-04-20 19:45:44', '36', '2016-04-20 19:49:40');
INSERT INTO `rock_chargemodes` VALUES ('616', '7', '2016-04-20 19:45:44', '463', '2016-04-20 19:49:40');
INSERT INTO `rock_chargemodes` VALUES ('617', '10', '2016-04-20 19:45:44', '103', '2016-04-20 19:49:46');
INSERT INTO `rock_chargemodes` VALUES ('618', '11', '2016-04-16 16:32:56', '120', '2016-04-20 19:49:52');
INSERT INTO `rock_chargemodes` VALUES ('619', '11', '2016-04-20 19:45:44', '122', '2016-04-20 19:49:52');
INSERT INTO `rock_chargemodes` VALUES ('620', '13', '2016-04-20 19:45:44', '171', '2016-04-20 19:49:58');
INSERT INTO `rock_chargemodes` VALUES ('621', '13', '2016-04-20 19:45:44', '194', '2016-04-20 19:49:58');
INSERT INTO `rock_chargemodes` VALUES ('622', '13', '2016-04-20 19:45:44', '475', '2016-04-20 19:49:58');
INSERT INTO `rock_chargemodes` VALUES ('623', '13', '2016-04-20 19:45:44', '476', '2016-04-20 19:49:58');
INSERT INTO `rock_chargemodes` VALUES ('624', '13', '2016-04-20 19:45:44', '477', '2016-04-20 19:49:58');
INSERT INTO `rock_chargemodes` VALUES ('625', '8', '2016-04-20 19:45:44', '61', '2016-04-20 19:50:19');
INSERT INTO `rock_chargemodes` VALUES ('626', '8', '2016-04-16 16:32:56', '62', '2016-04-20 19:50:19');
INSERT INTO `rock_chargemodes` VALUES ('627', '8', '2016-04-15 11:25:57', '456', '2016-04-20 19:50:19');
INSERT INTO `rock_chargemodes` VALUES ('628', '8', '2016-04-20 19:45:44', '464', '2016-04-20 19:50:19');
INSERT INTO `rock_chargemodes` VALUES ('629', '8', '2016-04-20 19:45:44', '465', '2016-04-20 19:50:20');
INSERT INTO `rock_chargemodes` VALUES ('630', '9', '2016-04-20 19:45:44', '66', '2016-04-20 19:50:53');
INSERT INTO `rock_chargemodes` VALUES ('631', '9', '2016-04-20 19:45:44', '83', '2016-04-20 19:50:53');
INSERT INTO `rock_chargemodes` VALUES ('632', '9', '2016-04-20 19:45:44', '85', '2016-04-20 19:50:54');
INSERT INTO `rock_chargemodes` VALUES ('633', '9', '2016-04-20 19:45:44', '471', '2016-04-20 19:50:54');
INSERT INTO `rock_chargemodes` VALUES ('634', '9', '2016-04-20 19:45:44', '472', '2016-04-20 19:50:54');
INSERT INTO `rock_chargemodes` VALUES ('635', '14', '2016-04-20 19:45:44', '234', '2016-04-20 19:51:00');
INSERT INTO `rock_chargemodes` VALUES ('636', '15', '2016-04-20 19:45:44', '220', '2016-04-20 19:51:08');
INSERT INTO `rock_chargemodes` VALUES ('637', '15', '2016-04-20 19:45:44', '221', '2016-04-20 19:51:08');
INSERT INTO `rock_chargemodes` VALUES ('638', '16', '2016-04-20 19:45:44', '268', '2016-04-20 19:51:13');
INSERT INTO `rock_chargemodes` VALUES ('639', '17', '2016-04-20 19:45:44', '466', '2016-04-20 19:51:19');
INSERT INTO `rock_chargemodes` VALUES ('640', '17', '2016-04-20 19:45:44', '467', '2016-04-20 19:51:19');
INSERT INTO `rock_chargemodes` VALUES ('641', '17', '2016-04-20 19:45:44', '468', '2016-04-20 19:51:19');
INSERT INTO `rock_chargemodes` VALUES ('642', '17', '2016-04-20 19:45:44', '469', '2016-04-20 19:51:19');
INSERT INTO `rock_chargemodes` VALUES ('643', '17', '2016-04-20 19:45:44', '470', '2016-04-20 19:51:19');
INSERT INTO `rock_chargemodes` VALUES ('644', '17', '2016-04-20 19:45:44', '478', '2016-04-20 19:51:19');
INSERT INTO `rock_chargemodes` VALUES ('645', '17', '2016-04-20 19:45:44', '479', '2016-04-20 19:51:19');
INSERT INTO `rock_chargemodes` VALUES ('646', '17', '2016-04-20 19:45:44', '480', '2016-04-20 19:51:19');
INSERT INTO `rock_chargemodes` VALUES ('647', '17', '2016-04-20 19:45:44', '481', '2016-04-20 19:51:20');
INSERT INTO `rock_chargemodes` VALUES ('648', '17', '2016-04-20 19:45:44', '482', '2016-04-20 19:51:20');
INSERT INTO `rock_chargemodes` VALUES ('649', '17', '2016-04-20 19:45:44', '483', '2016-04-20 19:51:20');
INSERT INTO `rock_chargemodes` VALUES ('650', '17', '2016-04-20 19:45:44', '484', '2016-04-20 19:51:20');
INSERT INTO `rock_chargemodes` VALUES ('651', '17', '2016-04-20 19:45:44', '485', '2016-04-20 19:51:20');
INSERT INTO `rock_chargemodes` VALUES ('652', '17', '2016-04-20 19:45:44', '486', '2016-04-20 19:51:20');
INSERT INTO `rock_chargemodes` VALUES ('653', '17', '2016-04-20 19:45:44', '487', '2016-04-20 19:51:20');
INSERT INTO `rock_chargemodes` VALUES ('654', '17', '2016-04-20 19:45:44', '488', '2016-04-20 19:51:21');
INSERT INTO `rock_chargemodes` VALUES ('655', '17', '2016-04-20 19:45:44', '489', '2016-04-20 19:51:21');
INSERT INTO `rock_chargemodes` VALUES ('656', '17', '2016-04-20 19:45:44', '490', '2016-04-20 19:51:21');
INSERT INTO `rock_chargemodes` VALUES ('657', '17', '2016-04-20 19:45:44', '491', '2016-04-20 19:51:21');
INSERT INTO `rock_chargemodes` VALUES ('658', '17', '2016-04-20 19:45:44', '492', '2016-04-20 19:51:21');
INSERT INTO `rock_chargemodes` VALUES ('659', '17', '2016-04-20 19:45:44', '493', '2016-04-20 19:51:21');
INSERT INTO `rock_chargemodes` VALUES ('660', '17', '2016-04-20 19:45:44', '494', '2016-04-20 19:51:21');
INSERT INTO `rock_chargemodes` VALUES ('661', '17', '2016-04-20 19:45:44', '495', '2016-04-20 19:51:22');
INSERT INTO `rock_chargemodes` VALUES ('662', '17', '2016-04-20 19:45:44', '496', '2016-04-20 19:51:22');
INSERT INTO `rock_chargemodes` VALUES ('663', '17', '2016-04-20 19:45:44', '497', '2016-04-20 19:51:22');
INSERT INTO `rock_chargemodes` VALUES ('664', '17', '2016-04-20 19:45:44', '498', '2016-04-20 19:51:22');
INSERT INTO `rock_chargemodes` VALUES ('665', '17', '2016-04-20 19:45:44', '499', '2016-04-20 19:51:22');
INSERT INTO `rock_chargemodes` VALUES ('666', '17', '2016-04-20 19:45:44', '500', '2016-04-20 19:51:22');
INSERT INTO `rock_chargemodes` VALUES ('667', '17', '2016-04-20 19:45:44', '501', '2016-04-20 19:51:22');
INSERT INTO `rock_chargemodes` VALUES ('668', '17', '2016-04-20 19:45:44', '502', '2016-04-20 19:51:23');
INSERT INTO `rock_chargemodes` VALUES ('669', '17', '2016-04-20 19:45:44', '503', '2016-04-20 19:51:23');
INSERT INTO `rock_chargemodes` VALUES ('670', '17', '2016-04-20 19:45:44', '504', '2016-04-20 19:51:23');
INSERT INTO `rock_chargemodes` VALUES ('671', '17', '2016-04-20 19:45:44', '505', '2016-04-20 19:51:23');
INSERT INTO `rock_chargemodes` VALUES ('672', '17', '2016-04-20 19:45:44', '506', '2016-04-20 19:51:23');
INSERT INTO `rock_chargemodes` VALUES ('673', '17', '2016-04-20 19:45:44', '507', '2016-04-20 19:51:23');
INSERT INTO `rock_chargemodes` VALUES ('674', '17', '2016-04-20 19:45:44', '508', '2016-04-20 19:51:23');
INSERT INTO `rock_chargemodes` VALUES ('675', '17', '2016-04-20 19:45:44', '509', '2016-04-20 19:51:24');
INSERT INTO `rock_chargemodes` VALUES ('676', '17', '2016-04-20 19:45:44', '510', '2016-04-20 19:51:24');
INSERT INTO `rock_chargemodes` VALUES ('677', '17', '2016-04-20 19:45:44', '511', '2016-04-20 19:51:24');
INSERT INTO `rock_chargemodes` VALUES ('678', '17', '2016-04-20 19:45:44', '512', '2016-04-20 19:51:24');
INSERT INTO `rock_chargemodes` VALUES ('679', '17', '2016-04-20 19:45:44', '513', '2016-04-20 19:51:24');
INSERT INTO `rock_chargemodes` VALUES ('680', '17', '2016-04-20 19:45:44', '514', '2016-04-20 19:51:24');
INSERT INTO `rock_chargemodes` VALUES ('681', '17', '2016-04-20 19:45:44', '515', '2016-04-20 19:51:24');
INSERT INTO `rock_chargemodes` VALUES ('682', '17', '2016-04-20 19:45:44', '516', '2016-04-20 19:51:24');
INSERT INTO `rock_chargemodes` VALUES ('683', '17', '2016-04-20 19:45:44', '517', '2016-04-20 19:51:25');
INSERT INTO `rock_chargemodes` VALUES ('684', '17', '2016-04-20 19:45:44', '518', '2016-04-20 19:51:25');
INSERT INTO `rock_chargemodes` VALUES ('685', '17', '2016-04-20 19:45:44', '519', '2016-04-20 19:51:25');
INSERT INTO `rock_chargemodes` VALUES ('686', '17', '2016-04-20 19:45:44', '520', '2016-04-20 19:51:25');
INSERT INTO `rock_chargemodes` VALUES ('687', '17', '2016-04-20 19:45:44', '521', '2016-04-20 19:51:25');
INSERT INTO `rock_chargemodes` VALUES ('688', '17', '2016-04-20 19:45:44', '522', '2016-04-20 19:51:25');
INSERT INTO `rock_chargemodes` VALUES ('689', '17', '2016-04-20 19:44:42', '523', '2016-04-20 19:51:25');
INSERT INTO `rock_chargemodes` VALUES ('690', '9', '2016-04-20 19:52:35', '85', '2016-04-20 19:54:01');
INSERT INTO `rock_chargemodes` VALUES ('691', '9', '2016-04-20 19:57:16', '85', '2016-04-20 19:57:31');
INSERT INTO `rock_chargemodes` VALUES ('692', '17', '2016-04-20 20:00:33', '387', '2016-04-20 20:00:53');
INSERT INTO `rock_chargemodes` VALUES ('693', '7', '2016-04-20 22:23:10', '46', '2016-04-20 22:23:26');
INSERT INTO `rock_chargemodes` VALUES ('694', '9', '2016-04-20 22:23:10', '66', '2016-04-20 22:23:59');
INSERT INTO `rock_chargemodes` VALUES ('695', '9', '2016-04-20 22:23:10', '78', '2016-04-20 22:23:59');
INSERT INTO `rock_chargemodes` VALUES ('696', '9', '2016-04-20 22:23:10', '471', '2016-04-20 22:24:00');
INSERT INTO `rock_chargemodes` VALUES ('697', '9', '2016-04-20 22:23:10', '524', '2016-04-20 22:24:00');
INSERT INTO `rock_chargemodes` VALUES ('698', '9', '2016-04-20 22:23:10', '525', '2016-04-20 22:24:00');
INSERT INTO `rock_chargemodes` VALUES ('699', '17', '2016-04-20 22:23:10', '489', '2016-04-20 22:24:08');
INSERT INTO `rock_chargemodes` VALUES ('700', '7', '2016-05-08 17:39:08', '36', '2016-05-08 17:41:49');
INSERT INTO `rock_chargemodes` VALUES ('701', '7', '2016-05-08 17:39:08', '37', '2016-05-08 17:41:49');
INSERT INTO `rock_chargemodes` VALUES ('702', '7', '2016-05-08 17:39:08', '38', '2016-05-08 17:41:50');
INSERT INTO `rock_chargemodes` VALUES ('703', '7', '2016-05-08 17:39:08', '367', '2016-05-08 17:41:50');
INSERT INTO `rock_chargemodes` VALUES ('704', '7', '2016-05-08 17:39:08', '462', '2016-05-08 17:41:50');
INSERT INTO `rock_chargemodes` VALUES ('705', '7', '2016-05-08 17:39:08', '463', '2016-05-08 17:41:50');
INSERT INTO `rock_chargemodes` VALUES ('706', '10', '2016-05-08 17:39:08', '109', '2016-05-08 17:41:58');
INSERT INTO `rock_chargemodes` VALUES ('707', '11', '2016-05-08 17:39:08', '119', '2016-05-08 17:42:05');
INSERT INTO `rock_chargemodes` VALUES ('708', '11', '2016-05-08 17:39:08', '124', '2016-05-08 17:42:05');
INSERT INTO `rock_chargemodes` VALUES ('709', '11', '2016-05-08 17:39:08', '141', '2016-05-08 17:42:05');
INSERT INTO `rock_chargemodes` VALUES ('710', '11', '2016-05-08 17:39:08', '536', '2016-05-08 17:42:05');
INSERT INTO `rock_chargemodes` VALUES ('711', '13', '2016-05-08 17:39:08', '171', '2016-05-08 17:42:10');
INSERT INTO `rock_chargemodes` VALUES ('712', '13', '2016-05-08 17:39:08', '177', '2016-05-08 17:42:10');
INSERT INTO `rock_chargemodes` VALUES ('713', '13', '2016-05-08 17:39:08', '186', '2016-05-08 17:42:10');
INSERT INTO `rock_chargemodes` VALUES ('714', '13', '2016-05-08 17:39:08', '187', '2016-05-08 17:42:11');
INSERT INTO `rock_chargemodes` VALUES ('715', '13', '2016-05-08 17:39:08', '193', '2016-05-08 17:42:11');
INSERT INTO `rock_chargemodes` VALUES ('716', '13', '2016-05-08 17:39:08', '194', '2016-05-08 17:42:11');
INSERT INTO `rock_chargemodes` VALUES ('717', '13', '2016-05-08 17:39:08', '475', '2016-05-08 17:42:11');
INSERT INTO `rock_chargemodes` VALUES ('718', '13', '2016-05-08 17:39:08', '476', '2016-05-08 17:42:11');
INSERT INTO `rock_chargemodes` VALUES ('719', '12', '2016-05-08 17:39:08', '145', '2016-05-08 17:42:16');
INSERT INTO `rock_chargemodes` VALUES ('720', '12', '2016-05-08 17:39:08', '147', '2016-05-08 17:42:17');
INSERT INTO `rock_chargemodes` VALUES ('721', '12', '2016-05-08 17:39:08', '159', '2016-05-08 17:42:17');
INSERT INTO `rock_chargemodes` VALUES ('722', '12', '2016-05-08 17:39:08', '450', '2016-05-08 17:42:17');
INSERT INTO `rock_chargemodes` VALUES ('723', '8', '2016-05-08 17:39:08', '456', '2016-05-08 17:42:32');
INSERT INTO `rock_chargemodes` VALUES ('724', '9', '2016-05-08 17:39:08', '66', '2016-05-08 17:43:06');
INSERT INTO `rock_chargemodes` VALUES ('725', '9', '2016-05-08 17:39:08', '67', '2016-05-08 17:43:06');
INSERT INTO `rock_chargemodes` VALUES ('726', '9', '2016-05-08 17:39:08', '68', '2016-05-08 17:43:06');
INSERT INTO `rock_chargemodes` VALUES ('727', '9', '2016-05-08 17:39:08', '72', '2016-05-08 17:43:06');
INSERT INTO `rock_chargemodes` VALUES ('728', '9', '2016-05-08 17:39:08', '78', '2016-05-08 17:43:07');
INSERT INTO `rock_chargemodes` VALUES ('729', '9', '2016-05-08 17:39:08', '79', '2016-05-08 17:43:07');
INSERT INTO `rock_chargemodes` VALUES ('730', '9', '2016-05-08 17:39:08', '80', '2016-05-08 17:43:07');
INSERT INTO `rock_chargemodes` VALUES ('731', '9', '2016-05-08 17:39:08', '81', '2016-05-08 17:43:07');
INSERT INTO `rock_chargemodes` VALUES ('732', '9', '2016-05-08 17:39:08', '83', '2016-05-08 17:43:07');
INSERT INTO `rock_chargemodes` VALUES ('733', '9', '2016-05-08 17:39:08', '85', '2016-05-08 17:43:07');
INSERT INTO `rock_chargemodes` VALUES ('734', '9', '2016-05-08 17:39:08', '471', '2016-05-08 17:43:07');
INSERT INTO `rock_chargemodes` VALUES ('735', '9', '2016-05-08 17:39:08', '472', '2016-05-08 17:43:08');
INSERT INTO `rock_chargemodes` VALUES ('736', '9', '2016-05-08 17:39:08', '524', '2016-05-08 17:43:08');
INSERT INTO `rock_chargemodes` VALUES ('737', '9', '2016-05-08 17:39:08', '525', '2016-05-08 17:43:08');
INSERT INTO `rock_chargemodes` VALUES ('738', '9', '2016-05-08 17:39:08', '535', '2016-05-08 17:43:08');
INSERT INTO `rock_chargemodes` VALUES ('739', '15', '2016-05-08 17:39:08', '220', '2016-05-08 17:43:20');
INSERT INTO `rock_chargemodes` VALUES ('740', '15', '2016-05-08 17:39:08', '221', '2016-05-08 17:43:20');
INSERT INTO `rock_chargemodes` VALUES ('741', '15', '2016-05-08 17:15:00', '526', '2016-05-08 17:43:21');
INSERT INTO `rock_chargemodes` VALUES ('742', '15', '2016-05-08 17:39:08', '527', '2016-05-08 17:43:21');
INSERT INTO `rock_chargemodes` VALUES ('743', '15', '2016-05-08 17:39:08', '528', '2016-05-08 17:43:21');
INSERT INTO `rock_chargemodes` VALUES ('744', '15', '2016-05-08 17:39:08', '529', '2016-05-08 17:43:21');
INSERT INTO `rock_chargemodes` VALUES ('745', '15', '2016-05-08 17:39:08', '530', '2016-05-08 17:43:21');
INSERT INTO `rock_chargemodes` VALUES ('746', '15', '2016-05-08 17:39:08', '531', '2016-05-08 17:43:21');
INSERT INTO `rock_chargemodes` VALUES ('747', '15', '2016-05-08 17:39:08', '532', '2016-05-08 17:43:21');
INSERT INTO `rock_chargemodes` VALUES ('748', '15', '2016-05-08 17:39:08', '533', '2016-05-08 17:43:22');
INSERT INTO `rock_chargemodes` VALUES ('749', '15', '2016-05-08 17:39:08', '534', '2016-05-08 17:43:22');
INSERT INTO `rock_chargemodes` VALUES ('750', '16', '2016-05-08 17:39:08', '264', '2016-05-08 17:43:29');
INSERT INTO `rock_chargemodes` VALUES ('751', '16', '2016-05-08 17:39:08', '265', '2016-05-08 17:43:29');
INSERT INTO `rock_chargemodes` VALUES ('752', '16', '2016-05-08 17:39:08', '266', '2016-05-08 17:43:30');
INSERT INTO `rock_chargemodes` VALUES ('753', '16', '2016-05-08 17:39:08', '267', '2016-05-08 17:43:30');
INSERT INTO `rock_chargemodes` VALUES ('754', '16', '2016-05-08 17:39:08', '269', '2016-05-08 17:43:30');
INSERT INTO `rock_chargemodes` VALUES ('755', '16', '2016-05-08 17:39:08', '270', '2016-05-08 17:43:30');
INSERT INTO `rock_chargemodes` VALUES ('756', '16', '2016-05-08 17:39:08', '271', '2016-05-08 17:43:30');
INSERT INTO `rock_chargemodes` VALUES ('757', '16', '2016-05-08 17:39:08', '273', '2016-05-08 17:43:30');
INSERT INTO `rock_chargemodes` VALUES ('758', '16', '2016-05-08 17:39:08', '347', '2016-05-08 17:43:30');
INSERT INTO `rock_chargemodes` VALUES ('759', '16', '2016-05-08 17:39:08', '348', '2016-05-08 17:43:31');
INSERT INTO `rock_chargemodes` VALUES ('760', '16', '2016-05-08 17:39:08', '349', '2016-05-08 17:43:31');
INSERT INTO `rock_chargemodes` VALUES ('761', '16', '2016-05-08 17:39:08', '350', '2016-05-08 17:43:31');
INSERT INTO `rock_chargemodes` VALUES ('762', '16', '2016-05-08 17:39:08', '351', '2016-05-08 17:43:31');
INSERT INTO `rock_chargemodes` VALUES ('763', '16', '2016-05-08 17:39:08', '352', '2016-05-08 17:43:31');
INSERT INTO `rock_chargemodes` VALUES ('764', '16', '2016-05-08 17:39:08', '537', '2016-05-08 17:43:31');
INSERT INTO `rock_chargemodes` VALUES ('765', '16', '2016-05-08 17:39:08', '550', '2016-05-08 17:43:31');
INSERT INTO `rock_chargemodes` VALUES ('766', '16', '2016-05-08 17:39:08', '551', '2016-05-08 17:43:32');
INSERT INTO `rock_chargemodes` VALUES ('767', '16', '2016-05-08 17:39:08', '554', '2016-05-08 17:43:32');
INSERT INTO `rock_chargemodes` VALUES ('768', '16', '2016-05-08 17:39:08', '559', '2016-05-08 17:43:32');
INSERT INTO `rock_chargemodes` VALUES ('769', '16', '2016-05-08 17:39:08', '560', '2016-05-08 17:43:32');
INSERT INTO `rock_chargemodes` VALUES ('770', '16', '2016-05-08 17:39:08', '565', '2016-05-08 17:43:32');
INSERT INTO `rock_chargemodes` VALUES ('771', '16', '2016-05-08 17:39:08', '566', '2016-05-08 17:43:32');
INSERT INTO `rock_chargemodes` VALUES ('772', '16', '2016-05-08 17:39:08', '567', '2016-05-08 17:43:32');
INSERT INTO `rock_chargemodes` VALUES ('773', '16', '2016-05-08 17:39:08', '568', '2016-05-08 17:43:33');
INSERT INTO `rock_chargemodes` VALUES ('774', '16', '2016-05-08 17:39:08', '569', '2016-05-08 17:43:33');
INSERT INTO `rock_chargemodes` VALUES ('775', '16', '2016-05-08 17:39:08', '572', '2016-05-08 17:43:33');
INSERT INTO `rock_chargemodes` VALUES ('776', '16', '2016-05-08 17:39:08', '574', '2016-05-08 17:43:33');
INSERT INTO `rock_chargemodes` VALUES ('777', '17', '2016-05-08 17:39:08', '467', '2016-05-08 17:43:43');
INSERT INTO `rock_chargemodes` VALUES ('778', '17', '2016-05-08 17:39:08', '498', '2016-05-08 17:43:43');
INSERT INTO `rock_chargemodes` VALUES ('779', '17', '2016-05-08 17:39:08', '501', '2016-05-08 17:43:43');
INSERT INTO `rock_chargemodes` VALUES ('780', '17', '2016-05-08 17:39:08', '506', '2016-05-08 17:43:43');
INSERT INTO `rock_chargemodes` VALUES ('781', '18', '2016-05-08 17:39:08', '311', '2016-05-08 17:43:48');
INSERT INTO `rock_chargemodes` VALUES ('782', '18', '2016-05-08 17:39:08', '312', '2016-05-08 17:43:49');
INSERT INTO `rock_chargemodes` VALUES ('783', '18', '2016-05-08 17:39:08', '313', '2016-05-08 17:43:49');
INSERT INTO `rock_chargemodes` VALUES ('784', '18', '2016-05-08 17:39:08', '314', '2016-05-08 17:43:49');
INSERT INTO `rock_chargemodes` VALUES ('785', '18', '2016-05-08 17:39:08', '315', '2016-05-08 17:43:49');
INSERT INTO `rock_chargemodes` VALUES ('786', '18', '2016-05-08 17:39:08', '316', '2016-05-08 17:43:49');
INSERT INTO `rock_chargemodes` VALUES ('787', '18', '2016-05-08 17:39:08', '319', '2016-05-08 17:43:49');
INSERT INTO `rock_chargemodes` VALUES ('788', '18', '2016-05-08 17:39:08', '322', '2016-05-08 17:43:49');
INSERT INTO `rock_chargemodes` VALUES ('789', '18', '2016-05-08 17:39:08', '335', '2016-05-08 17:43:50');
INSERT INTO `rock_chargemodes` VALUES ('790', '18', '2016-05-08 17:39:08', '336', '2016-05-08 17:43:50');
INSERT INTO `rock_chargemodes` VALUES ('791', '18', '2016-05-08 17:39:08', '337', '2016-05-08 17:43:50');
INSERT INTO `rock_chargemodes` VALUES ('792', '18', '2016-05-08 17:39:08', '338', '2016-05-08 17:43:50');
INSERT INTO `rock_chargemodes` VALUES ('793', '18', '2016-05-08 17:39:08', '339', '2016-05-08 17:43:50');
INSERT INTO `rock_chargemodes` VALUES ('794', '18', '2016-05-08 17:39:08', '340', '2016-05-08 17:43:50');
INSERT INTO `rock_chargemodes` VALUES ('795', '18', '2016-05-08 17:39:08', '539', '2016-05-08 17:43:50');
INSERT INTO `rock_chargemodes` VALUES ('796', '18', '2016-05-08 17:39:08', '540', '2016-05-08 17:43:51');
INSERT INTO `rock_chargemodes` VALUES ('797', '18', '2016-05-08 17:39:08', '548', '2016-05-08 17:43:51');
INSERT INTO `rock_chargemodes` VALUES ('798', '18', '2016-05-08 17:39:08', '549', '2016-05-08 17:43:51');
INSERT INTO `rock_chargemodes` VALUES ('799', '18', '2016-05-08 17:39:08', '552', '2016-05-08 17:43:51');
INSERT INTO `rock_chargemodes` VALUES ('800', '18', '2016-05-08 17:39:08', '553', '2016-05-08 17:43:51');
INSERT INTO `rock_chargemodes` VALUES ('801', '18', '2016-05-08 17:39:08', '555', '2016-05-08 17:43:51');
INSERT INTO `rock_chargemodes` VALUES ('802', '18', '2016-05-08 17:39:08', '556', '2016-05-08 17:43:52');
INSERT INTO `rock_chargemodes` VALUES ('803', '18', '2016-05-08 17:39:08', '557', '2016-05-08 17:43:52');
INSERT INTO `rock_chargemodes` VALUES ('804', '18', '2016-05-08 17:39:08', '558', '2016-05-08 17:43:52');
INSERT INTO `rock_chargemodes` VALUES ('805', '18', '2016-05-08 17:39:08', '570', '2016-05-08 17:43:52');
INSERT INTO `rock_chargemodes` VALUES ('806', '18', '2016-05-08 17:39:08', '571', '2016-05-08 17:43:52');
INSERT INTO `rock_chargemodes` VALUES ('807', '18', '2016-05-08 17:39:08', '573', '2016-05-08 17:43:52');
INSERT INTO `rock_chargemodes` VALUES ('808', '19', '2016-05-08 17:39:08', '361', '2016-05-08 17:44:03');
INSERT INTO `rock_chargemodes` VALUES ('809', '19', '2016-05-08 17:39:08', '362', '2016-05-08 17:44:03');
INSERT INTO `rock_chargemodes` VALUES ('810', '19', '2016-05-08 17:39:08', '363', '2016-05-08 17:44:03');
INSERT INTO `rock_chargemodes` VALUES ('811', '19', '2016-05-08 17:39:08', '365', '2016-05-08 17:44:03');
INSERT INTO `rock_chargemodes` VALUES ('812', '19', '2016-05-08 17:39:08', '366', '2016-05-08 17:44:03');
INSERT INTO `rock_chargemodes` VALUES ('813', '19', '2016-05-08 17:39:08', '541', '2016-05-08 17:44:03');
INSERT INTO `rock_chargemodes` VALUES ('814', '19', '2016-05-08 17:39:08', '542', '2016-05-08 17:44:03');
INSERT INTO `rock_chargemodes` VALUES ('815', '19', '2016-05-08 17:39:08', '543', '2016-05-08 17:44:03');
INSERT INTO `rock_chargemodes` VALUES ('816', '19', '2016-05-08 17:39:08', '544', '2016-05-08 17:44:04');
INSERT INTO `rock_chargemodes` VALUES ('817', '19', '2016-05-08 17:39:08', '545', '2016-05-08 17:44:04');
INSERT INTO `rock_chargemodes` VALUES ('818', '19', '2016-05-08 17:39:08', '546', '2016-05-08 17:44:04');
INSERT INTO `rock_chargemodes` VALUES ('819', '19', '2016-05-08 17:39:08', '561', '2016-05-08 17:44:04');
INSERT INTO `rock_chargemodes` VALUES ('820', '19', '2016-05-08 17:39:08', '562', '2016-05-08 17:44:04');
INSERT INTO `rock_chargemodes` VALUES ('821', '19', '2016-05-08 17:39:08', '563', '2016-05-08 17:44:04');
INSERT INTO `rock_chargemodes` VALUES ('822', '20', '2016-05-08 17:39:08', '380', '2016-05-08 17:44:11');
INSERT INTO `rock_chargemodes` VALUES ('823', '20', '2016-05-08 17:39:08', '384', '2016-05-08 17:44:11');
INSERT INTO `rock_chargemodes` VALUES ('824', '20', '2016-05-08 17:39:08', '386', '2016-05-08 17:44:11');
INSERT INTO `rock_chargemodes` VALUES ('825', '20', '2016-05-08 17:39:08', '538', '2016-05-08 17:44:11');
INSERT INTO `rock_chargemodes` VALUES ('826', '20', '2016-05-08 17:39:08', '547', '2016-05-08 17:44:11');
INSERT INTO `rock_chargemodes` VALUES ('827', '20', '2016-05-08 17:39:08', '564', '2016-05-08 17:44:11');
INSERT INTO `rock_chargemodes` VALUES ('828', '7', '2016-05-17 21:11:05', '30', '2016-05-17 21:22:05');
INSERT INTO `rock_chargemodes` VALUES ('829', '7', '2016-05-09 10:04:40', '100', '2016-05-17 21:22:05');
INSERT INTO `rock_chargemodes` VALUES ('830', '7', '2016-05-17 21:11:05', '367', '2016-05-17 21:22:05');
INSERT INTO `rock_chargemodes` VALUES ('831', '10', '2016-05-17 21:11:05', '575', '2016-05-17 21:22:13');
INSERT INTO `rock_chargemodes` VALUES ('832', '10', '2016-05-17 21:11:05', '576', '2016-05-17 21:22:13');
INSERT INTO `rock_chargemodes` VALUES ('833', '11', '2016-05-17 21:11:05', '118', '2016-05-17 21:22:19');
INSERT INTO `rock_chargemodes` VALUES ('834', '11', '2016-05-17 21:11:05', '122', '2016-05-17 21:22:19');
INSERT INTO `rock_chargemodes` VALUES ('835', '11', '2016-05-17 21:11:05', '123', '2016-05-17 21:22:20');
INSERT INTO `rock_chargemodes` VALUES ('836', '13', '2016-05-17 21:11:05', '194', '2016-05-17 21:22:23');
INSERT INTO `rock_chargemodes` VALUES ('837', '13', '2016-05-09 10:07:06', '211', '2016-05-17 21:22:23');
INSERT INTO `rock_chargemodes` VALUES ('838', '12', '2016-05-17 21:11:05', '159', '2016-05-17 21:22:29');
INSERT INTO `rock_chargemodes` VALUES ('839', '12', '2016-05-17 21:11:05', '160', '2016-05-17 21:22:29');
INSERT INTO `rock_chargemodes` VALUES ('840', '12', '2016-05-17 21:11:05', '276', '2016-05-17 21:22:29');
INSERT INTO `rock_chargemodes` VALUES ('841', '9', '2016-05-17 21:11:05', '72', '2016-05-17 21:22:35');
INSERT INTO `rock_chargemodes` VALUES ('842', '9', '2016-05-17 21:11:05', '83', '2016-05-17 21:22:35');
INSERT INTO `rock_chargemodes` VALUES ('843', '9', '2016-05-17 21:11:05', '85', '2016-05-17 21:22:35');
INSERT INTO `rock_chargemodes` VALUES ('844', '9', '2016-05-09 10:04:11', '168', '2016-05-17 21:22:35');
INSERT INTO `rock_chargemodes` VALUES ('845', '9', '2016-05-17 21:11:05', '471', '2016-05-17 21:22:36');
INSERT INTO `rock_chargemodes` VALUES ('846', '16', '2016-05-17 21:11:05', '265', '2016-05-17 21:22:42');
INSERT INTO `rock_chargemodes` VALUES ('847', '16', '2016-05-17 21:20:53', '274', '2016-05-17 21:22:42');
INSERT INTO `rock_chargemodes` VALUES ('848', '16', '2016-05-17 21:11:05', '569', '2016-05-17 21:22:42');
INSERT INTO `rock_chargemodes` VALUES ('849', '17', '2016-05-09 13:27:36', '467', '2016-05-17 21:22:47');
INSERT INTO `rock_chargemodes` VALUES ('850', '17', '2016-05-17 21:11:05', '488', '2016-05-17 21:22:47');
INSERT INTO `rock_chargemodes` VALUES ('851', '18', '2016-05-17 21:11:05', '343', '2016-05-17 21:22:52');
INSERT INTO `rock_chargemodes` VALUES ('852', '19', '2016-05-09 10:06:10', '389', '2016-05-17 21:22:57');
INSERT INTO `rock_chargemodes` VALUES ('853', '20', '2016-05-10 09:08:23', '390', '2016-05-17 21:23:01');
INSERT INTO `rock_chargemodes` VALUES ('854', '7', '2016-05-18 21:01:35', '46', '2016-05-18 21:02:02');
INSERT INTO `rock_chargemodes` VALUES ('855', '7', '2016-05-18 21:01:35', '367', '2016-05-18 21:02:02');
INSERT INTO `rock_chargemodes` VALUES ('856', '11', '2016-05-18 21:01:35', '124', '2016-05-18 21:02:06');
INSERT INTO `rock_chargemodes` VALUES ('857', '12', '2016-05-18 21:01:35', '155', '2016-05-18 21:02:41');
INSERT INTO `rock_chargemodes` VALUES ('858', '12', '2016-05-18 21:01:35', '198', '2016-05-18 21:02:41');
INSERT INTO `rock_chargemodes` VALUES ('859', '9', '2016-05-18 21:01:35', '77', '2016-05-18 21:02:51');
INSERT INTO `rock_chargemodes` VALUES ('860', '9', '2016-05-18 21:01:35', '81', '2016-05-18 21:02:52');
INSERT INTO `rock_chargemodes` VALUES ('861', '9', '2016-05-18 21:01:35', '83', '2016-05-18 21:02:52');
INSERT INTO `rock_chargemodes` VALUES ('862', '9', '2016-05-18 21:01:24', '167', '2016-05-18 21:02:52');
INSERT INTO `rock_chargemodes` VALUES ('863', '9', '2016-05-18 21:01:35', '577', '2016-05-18 21:02:52');
INSERT INTO `rock_chargemodes` VALUES ('864', '7', '2016-06-06 20:33:16', '31', '2016-06-06 20:40:14');
INSERT INTO `rock_chargemodes` VALUES ('865', '7', '2016-06-06 20:33:16', '367', '2016-06-06 20:40:15');
INSERT INTO `rock_chargemodes` VALUES ('866', '2', '2016-05-27 21:01:04', '41', '2016-06-06 20:40:21');
INSERT INTO `rock_chargemodes` VALUES ('867', '9', '2016-05-27 21:01:04', '85', '2016-06-06 20:40:28');
INSERT INTO `rock_chargemodes` VALUES ('868', '15', '2016-06-06 20:33:16', '218', '2016-06-06 20:41:01');
INSERT INTO `rock_chargemodes` VALUES ('869', '16', '2016-06-06 20:33:16', '242', '2016-06-06 20:41:09');
INSERT INTO `rock_chargemodes` VALUES ('870', '16', '2016-06-06 20:33:16', '260', '2016-06-06 20:41:10');
INSERT INTO `rock_chargemodes` VALUES ('871', '16', '2016-06-06 20:33:16', '263', '2016-06-06 20:41:11');
INSERT INTO `rock_chargemodes` VALUES ('872', '18', '2016-05-27 21:01:04', '325', '2016-06-06 20:41:18');
INSERT INTO `rock_chargemodes` VALUES ('873', '14', '2016-07-04 22:18:54', '213', '2016-07-04 22:19:35');
INSERT INTO `rock_chargemodes` VALUES ('874', '14', '2016-07-04 22:18:54', '214', '2016-07-04 22:19:35');
INSERT INTO `rock_chargemodes` VALUES ('875', '8', '2016-07-04 22:18:54', '54', '2016-07-04 22:19:41');
INSERT INTO `rock_chargemodes` VALUES ('876', '7', '2016-07-04 22:20:27', '36', '2016-07-04 22:20:41');

-- ----------------------------
-- Table structure for `rock_company`
-- ----------------------------
DROP TABLE IF EXISTS `rock_company`;
CREATE TABLE `rock_company` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `sort` smallint(6) DEFAULT '0',
  `chargename` varchar(100) DEFAULT NULL COMMENT '负责人',
  `chargeid` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `optdt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_company
-- ----------------------------
INSERT INTO `rock_company` VALUES ('1', 'RockOA开发团队', '0', '管理员', '1', '厦门思明区软件园', '2015-12-28 23:22:56');

-- ----------------------------
-- Table structure for `rock_crm_customer`
-- ----------------------------
DROP TABLE IF EXISTS `rock_crm_customer`;
CREATE TABLE `rock_crm_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT '0' COMMENT '类型',
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `pname` varchar(100) DEFAULT NULL COMMENT '所属单位',
  `category` varchar(20) DEFAULT NULL COMMENT '类别',
  `industry` varchar(50) DEFAULT NULL COMMENT '行业',
  `scale` varchar(30) DEFAULT NULL COMMENT '规模',
  `grade` varchar(30) DEFAULT NULL COMMENT '等级',
  `short` varchar(20) DEFAULT NULL COMMENT '简称',
  `optdt` datetime DEFAULT NULL,
  `sheng` varchar(20) DEFAULT NULL COMMENT '所在省',
  `shi` varchar(30) DEFAULT NULL COMMENT '所在市',
  `xian` varchar(20) DEFAULT NULL COMMENT '所在县(区)',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `fex` varchar(50) DEFAULT NULL COMMENT '传真',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `contact` varchar(50) DEFAULT NULL COMMENT '单位负责人',
  `optname` varchar(255) DEFAULT NULL COMMENT '操作人',
  `optid` smallint(6) DEFAULT NULL,
  `createname` varchar(20) DEFAULT NULL,
  `createid` smallint(6) DEFAULT NULL,
  `createdt` datetime DEFAULT NULL,
  `buslines` varchar(500) DEFAULT NULL COMMENT '行走线路',
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态@0|停用,1|启用',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机号',
  `homepage` varchar(50) DEFAULT NULL COMMENT '主页',
  `explain` varchar(500) DEFAULT NULL,
  `fuze` varchar(50) DEFAULT NULL COMMENT '客户负责人',
  `fuzeid` varchar(50) DEFAULT NULL,
  `laiyuan` varchar(50) DEFAULT NULL COMMENT '客户来源',
  `dist` varchar(50) DEFAULT NULL,
  `distid` varchar(50) DEFAULT NULL,
  `shate` varchar(50) DEFAULT NULL,
  `shateid` varchar(50) DEFAULT NULL,
  `lastlxdt` datetime DEFAULT NULL,
  `nextlxdt` datetime DEFAULT NULL,
  `isstar` tinyint(1) DEFAULT '0',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `opendt` datetime DEFAULT NULL COMMENT '开发时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_crm_customer
-- ----------------------------
INSERT INTO `rock_crm_customer` VALUES ('1', '供应商', 'rockoa', '陈先生', 'RockOA开发团队', null, null, null, '1星', null, '2016-03-07 20:54:57', null, null, null, null, null, null, null, null, '管理员', '1', '管理员', '1', '2016-02-25 21:11:52', null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2016-02-25 00:00:00');
INSERT INTO `rock_crm_customer` VALUES ('2', '普通客户', 'test', '测试', null, null, null, null, '1星', null, '2016-02-25 21:13:48', null, null, null, null, null, null, null, null, '管理员', '1', '管理员', '1', '2016-02-25 21:13:48', null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2016-02-25 00:00:00');
INSERT INTO `rock_crm_customer` VALUES ('3', '普通客户', null, 'test2', null, null, null, null, '1星', null, '2016-02-25 21:15:58', null, null, null, null, null, null, null, null, '管理员', '1', '管理员', '1', '2016-02-25 21:15:58', null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, '0', '意向', '2016-02-25 00:00:00');
INSERT INTO `rock_crm_customer` VALUES ('4', '普通客户', 'rockoa', '陈先生', 'RockOA开发团队', null, null, null, '1星', null, '2016-03-07 20:48:34', null, null, null, '电话', '传真', '邮箱', '地址', null, '管理员', '1', '管理员', '1', '2016-03-07 20:43:58', '路线', null, null, '1', '手机', null, null, null, null, '自己开括', null, null, null, null, null, null, '0', '正式', '2016-03-07 20:48:00');

-- ----------------------------
-- Table structure for `rock_daily`
-- ----------------------------
DROP TABLE IF EXISTS `rock_daily`;
CREATE TABLE `rock_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date DEFAULT NULL COMMENT '日期',
  `content` varchar(4000) DEFAULT NULL COMMENT '内容',
  `adddt` datetime DEFAULT NULL COMMENT '新增时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `uid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '姓名',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|日报,1|周报,2|月报,3|年报',
  `plan` varchar(2000) DEFAULT NULL COMMENT '明日计划',
  `status` tinyint(1) DEFAULT '0',
  `enddt` date DEFAULT NULL,
  `optid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_daily
-- ----------------------------
INSERT INTO `rock_daily` VALUES ('1', '2016-04-07', 'REIM系统开发，添加推送密码，官网维护等。', '2016-04-08 23:00:40', '2016-04-08 23:00:40', '1', '管理员', '0', null, '0', null, '1');
INSERT INTO `rock_daily` VALUES ('2', '2016-04-08', '1、核心模块流程添加转办给其他人功能。\n2、REIM开发添加手机端提醒。', '2016-04-08 23:01:24', '2016-04-08 23:01:24', '1', '管理员', '0', null, '0', null, '1');
INSERT INTO `rock_daily` VALUES ('3', '2016-04-05', '1、官网添加会员用户中心，添加密码修改，REIM密钥创建。', '2016-04-08 23:02:49', '2016-04-08 23:02:49', '1', '管理员', '0', null, '0', null, '1');

-- ----------------------------
-- Table structure for `rock_dailyfx`
-- ----------------------------
DROP TABLE IF EXISTS `rock_dailyfx`;
CREATE TABLE `rock_dailyfx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '分析时间',
  `month` varchar(10) DEFAULT NULL COMMENT '月份',
  `totaly` smallint(6) DEFAULT '0' COMMENT '应写次数',
  `totalx` smallint(6) DEFAULT '0' COMMENT '已写次数',
  `totalw` smallint(6) DEFAULT '0' COMMENT '未写次数',
  `dtjoin` varchar(500) DEFAULT NULL COMMENT '未写日期',
  `optname` varchar(10) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_dailyfx
-- ----------------------------

-- ----------------------------
-- Table structure for `rock_demand`
-- ----------------------------
DROP TABLE IF EXISTS `rock_demand`;
CREATE TABLE `rock_demand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `jsid` smallint(6) DEFAULT '0',
  `jsname` varchar(20) DEFAULT NULL COMMENT '技术处理人',
  `uid` int(11) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL COMMENT '内容',
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_demand
-- ----------------------------
INSERT INTO `rock_demand` VALUES ('1', '来个需求啦，呵呵呵呵', '0', null, '1', null, '2015-11-27 22:01:54', '1', '管理员', '2015-11-27', '呵呵呵呵额呵呵', '1', '1', null, '1,0,4', '1', '大乔', null);
INSERT INTO `rock_demand` VALUES ('2', '呵呵呵呵呵', '0', null, '1', null, '2015-11-28 12:38:04', '1', '管理员', '2015-11-28', null, '1', '1', null, '1,0,4', '1', '大乔', null);
INSERT INTO `rock_demand` VALUES ('3', '这是个申请啊，嘿嘿嘿嘿噩耗', '0', null, '1', '呵呵额和<img alt=\"\" src=\"upload/2015-11/28_1956194078.jpg\" />', '2015-11-28 19:56:23', '1', '管理员', '2015-11-28', null, '1', '1', null, '1,0,4', '1', '大乔', null);
INSERT INTO `rock_demand` VALUES ('4', '122112122112', '0', null, '1', null, '2015-11-28 20:12:42', '1', '管理员', '2015-11-28', '12122112', '1', '1', null, '1,0,5', '1', '小乔', null);
INSERT INTO `rock_demand` VALUES ('5', '我有一个生情呵呵呵', '0', null, '1', null, '2015-12-15 19:32:09', '1', '管理员', '2015-12-12', '1122121112', '5', '1', '1', '1,0', '0', null, '管理员');
INSERT INTO `rock_demand` VALUES ('6', '来个需求', '4', '大乔', '1', '<p>\n	<img width=\"639\" height=\"640\" style=\"width:150px;height:140px;\" alt=\"\" src=\"upload/2016-04/25_2021308319.png\" />\n</p>\n<p>\n	这是一个编辑喽吗？\n</p>', '2016-04-25 20:22:00', '1', '管理员', '2016-04-14', '呃呃呃', '1', '1', null, '1,4', '1', '大乔', null);

-- ----------------------------
-- Table structure for `rock_dept`
-- ----------------------------
DROP TABLE IF EXISTS `rock_dept`;
CREATE TABLE `rock_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `name` varchar(100) DEFAULT NULL,
  `pid` smallint(8) DEFAULT NULL,
  `sort` tinyint(1) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  `headman` varchar(50) DEFAULT NULL COMMENT '负责人',
  `headid` varchar(50) DEFAULT NULL,
  `companyid` smallint(6) DEFAULT '0' COMMENT '所属单位',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_dept
-- ----------------------------
INSERT INTO `rock_dept` VALUES ('7', 'gl', '管理部', '1', '0', null, null, null, '0');
INSERT INTO `rock_dept` VALUES ('2', 'bues', '业务部', '1', '1', null, null, null, '0');
INSERT INTO `rock_dept` VALUES ('3', 'xzrs', '行政人事', '1', '0', null, '大乔', '4', '0');
INSERT INTO `rock_dept` VALUES ('4', 'dev', '开发部', '1', '0', null, '管理员', '1', '0');
INSERT INTO `rock_dept` VALUES ('5', 'shw', '商务部', '1', '0', null, null, null, '0');
INSERT INTO `rock_dept` VALUES ('6', 'fina', '财务部', '1', '0', null, null, null, '0');
INSERT INTO `rock_dept` VALUES ('1', 'rock', 'RockOA开发团队', '0', '0', null, null, null, '1');

-- ----------------------------
-- Table structure for `rock_docdeil`
-- ----------------------------
DROP TABLE IF EXISTS `rock_docdeil`;
CREATE TABLE `rock_docdeil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `nowcheckid` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所以审核人',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '@当然状态',
  `statusman` varchar(20) DEFAULT NULL COMMENT '@审核人',
  `nowcheckname` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `receid` varchar(50) DEFAULT NULL,
  `recename` varchar(50) DEFAULT NULL COMMENT '签收人',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_docdeil
-- ----------------------------
INSERT INTO `rock_docdeil` VALUES ('8', '1', '1', '1', null, '3', '1', '貂蝉', null, '一个文档', '3', '貂蝉', '2015-07-30 20:11:27', null, null, null, null);
INSERT INTO `rock_docdeil` VALUES ('9', '1', '1', '1', null, '1', '1', '管理员', null, 'wewe', '1', '管理员', '2015-08-14 10:40:21', null, null, null, null);
INSERT INTO `rock_docdeil` VALUES ('10', '1', '1', '1', null, '1', '1', '管理员', null, 'wcwwe', '1', '管理员', '2015-08-14 11:01:45', null, null, null, null);
INSERT INTO `rock_docdeil` VALUES ('11', '1', '1', '1', null, '1', '1', '管理员', null, '哈哈哈', '1', '管理员', '2015-09-17 16:27:32', null, '1', '管理员', '2015-08-21');
INSERT INTO `rock_docdeil` VALUES ('12', '1', '1', '1', null, '3', '1', '貂蝉', null, '哈哈哈', '3', '貂蝉', '2015-10-13 15:48:50', null, '1', '管理员', '2015-08-26');
INSERT INTO `rock_docdeil` VALUES ('13', '1', '1', '1', null, '1', '1', '管理员', null, '自己来试试', '1', '管理员', '2015-10-27 11:21:01', null, '1', '管理员', '2015-10-27');
INSERT INTO `rock_docdeil` VALUES ('14', '1', '1', '1', null, '1', '1', '管理员', null, 'hahahaha', '1', '管理员', '2016-01-31 13:34:27', '文件，看看', '1', '管理员', '2016-01-25');
INSERT INTO `rock_docdeil` VALUES ('15', '1', '1', '1', null, '1', '1', '管理员', null, '申请啦', '1', '管理员', '2016-01-31 14:02:29', '恩呢嫩', '1', '管理员', '2016-01-31');
INSERT INTO `rock_docdeil` VALUES ('16', '1', '1', '1', null, '1', '1', '管理员', null, '测测三次四次', '1', '管理员', '2016-01-31 16:44:38', '666', '1', '管理员', '2016-01-31');
INSERT INTO `rock_docdeil` VALUES ('17', '1', '1', '1', null, '4,1', '1', '大乔', null, '测试发琐琐碎碎', '4,1', '大乔,管理员', '2016-02-29 22:17:38', null, '1', '管理员', '2016-02-18');
INSERT INTO `rock_docdeil` VALUES ('18', '1', '1', '1', null, '4,3,5,2', '1', '大乔', null, '你有很多文件接收啦', '4,3,5,2', '大乔,貂蝉,小乔,陈稀糊', '2016-02-29 22:21:53', '这里有文档，收吧！', '1', '管理员', '2016-02-29');
INSERT INTO `rock_docdeil` VALUES ('19', '1', '0', '1', '1', '1', '0', null, '管理员', '12121212', '1', '管理员', '2016-04-05 12:49:48', null, '1', '管理员', '2016-03-15');
INSERT INTO `rock_docdeil` VALUES ('20', '1', '0', '1', '5,1', '5,1', '0', null, '小乔,管理员', '给你的文件', '5,1', '小乔,管理员', '2016-04-23 22:32:36', null, '1', '管理员', '2016-04-04');

-- ----------------------------
-- Table structure for `rock_editrecord`
-- ----------------------------
DROP TABLE IF EXISTS `rock_editrecord`;
CREATE TABLE `rock_editrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldsname` varchar(50) DEFAULT NULL,
  `oldval` varchar(200) DEFAULT NULL,
  `newval` varchar(200) DEFAULT NULL,
  `table` varchar(30) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_editrecord
-- ----------------------------
INSERT INTO `rock_editrecord` VALUES ('1', '开户行', '阿里巴巴', '阿里巴巴公司', 'fininfom', '4', '2016-05-08 16:10:08', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('2', '截止时间', '2016-04-12 11:45:00', '2016-04-13 11:45:00', 'kq_info', '56', '2016-05-08 16:10:49', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('3', '请假(小时)', '8', '16', 'kq_info', '56', '2016-05-08 16:10:49', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('4', '说明', '嗯嗯嗯嗯', '嗯嗯嗯嗯，在添加一天。', 'kq_info', '56', '2016-05-08 16:10:49', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('5', '发布给', '开发部', null, 'infor', '21', '2016-05-16 19:55:47', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('6', '发布给id', null, 'd4', 'infor', '21', '2016-05-16 19:55:59', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('7', '发布给', null, '开发部', 'infor', '21', '2016-05-16 19:55:59', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('8', '操作人', 'RockOA客服', '管理员', 'admin', '2', '2016-05-17 21:26:26', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('9', '职位', '工程师', '客服', 'admin', '2', '2016-05-17 21:26:26', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('10', '用户名', 'liubei', 'panshi', 'admin', '7', '2016-05-19 12:29:55', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('11', '姓名', '刘备', '磐石', 'admin', '7', '2016-05-19 12:29:55', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('12', '邮箱', 'liubei@rockoa.com', 'panshi@rockoa.com', 'admin', '7', '2016-05-19 12:29:55', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('13', '主题', '欢迎RockOA最新版本V2.3.1版本上线', '欢迎RockOA最新版本V2.3.2版本上线', 'infor', '14', '2016-07-04 22:22:56', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('14', '内容', '<p>\n	版本更新了很多内容\n</p>\n<p>\n	1、添加了可自定义模块元素，录入元素。\n</p>\n<p>\n	2、无需写任何代码即可开发一个流程模块出来喽，<a href=\"http://www.rockoa.com/view_flowset.html\" target=\"_blank\">详情</a> \n</p>\n<p>\n	&nbsp;\n</p>', '<p>\n	版本更新了很多内容\n</p>\n<p>\n	1、最新版本和demo上一致。\n</p>\n<p>\n	2、添加了可自定义模块元素，录入元素。\n</p>\n<p>\n	3、无需写任何代码即可开发一个流程模块出来喽，<a href=\"http://www.rockoa.com/view_flowset.html\" target=\"_blank\">详情</a> \n</p>\n<p>\n	&nbsp;\n</p>', 'infor', '14', '2016-07-04 22:22:56', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('15', '时间', '2016-05-08', '2016-07-04', 'infor', '14', '2016-07-04 22:22:56', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('16', '发布给id', 'all', null, 'infor', '14', '2016-07-04 22:22:56', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('17', '主题', '快去开发啊！', '信呼协同办公', 'infor', '7', '2016-07-04 22:25:08', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('18', '内容', '快去开发啊！快去开发啊！', '信呼，是作者推出轻量级的协同办公软件，是开源的一款办公系统，跨平台的系统，支持APP，pc网页版，pc客户端等。<br />\n1、让每个企业单位都有自己的工作系统。<br />\n2、移动，免费开源工作系统，数据全部自己管理。<br />\n3、自定义管理应用，模块数据，权限分配。<br />\n4、单据快速提醒推送，重要通知任务及时提醒。<br />\n5、即时信息沟通交流。\n<div>\n	6、更多的请', 'infor', '7', '2016-07-04 22:25:08', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('19', '发布给id', 'd4', null, 'infor', '7', '2016-07-04 22:25:08', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('20', '发布给', '开发部', null, 'infor', '7', '2016-07-04 22:25:08', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('21', '发布者/部门', null, 'RockOA开发团队', 'infor', '7', '2016-07-04 22:25:25', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('22', '时间', null, '2016-07-04', 'infor', '7', '2016-07-04 22:25:25', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('23', '主题', '信呼协同办公', '信呼', 'infor', '7', '2016-07-04 22:25:47', '1', '管理员');
INSERT INTO `rock_editrecord` VALUES ('24', '内容', '信呼，是作者推出轻量级的协同办公软件，是开源的一款办公系统，跨平台的系统，支持APP，pc网页版，pc客户端等。<br />\n1、让每个企业单位都有自己的工作系统。<br />\n2、移动，免费开源工作系统，数据全部自己管理。<br />\n3、自定义管理应用，模块数据，权限分配。<br />\n4、单据快速提醒推送，重要通知任务及时提醒。<br />\n5、即时信息沟通交流。\n<div>\n	6、更多的请', '信呼，是作者推出轻量级的协同办公软件，是开源的一款办公系统，跨平台的系统，支持APP，pc网页版，pc客户端等。<br />\n1、让每个企业单位都有自己的工作系统。<br />\n2、移动，免费开源工作系统，数据全部自己管理。<br />\n3、自定义管理应用，模块数据，权限分配。<br />\n4、单据快速提醒推送，重要通知任务及时提醒。<br />\n5、即时信息沟通交流。\n<div>\n	6、更多的请', 'infor', '7', '2016-07-04 22:26:25', '1', '管理员');

-- ----------------------------
-- Table structure for `rock_email`
-- ----------------------------
DROP TABLE IF EXISTS `rock_email`;
CREATE TABLE `rock_email` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `serversmtp` varchar(50) DEFAULT NULL COMMENT 'SMTP服务器',
  `serverport` varchar(20) DEFAULT NULL COMMENT 'SMTP服务器端口',
  `emailname` varchar(100) DEFAULT NULL COMMENT '邮箱帐号',
  `emailpass` varchar(500) DEFAULT NULL COMMENT '密码',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `secure` varchar(10) DEFAULT NULL COMMENT '连接方式',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_email
-- ----------------------------
INSERT INTO `rock_email` VALUES ('1', 'smtp.exmail.qq.com', '465', 'service_send@rockoa.com', 'zd0zh0od0wew0cc0wee0zw0hd0cz0wac0od0tz09', '2016-01-21 22:27:07', '自己帐号', '1', 'ssl');

-- ----------------------------
-- Table structure for `rock_emailm`
-- ----------------------------
DROP TABLE IF EXISTS `rock_emailm`;
CREATE TABLE `rock_emailm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(220) DEFAULT NULL COMMENT '主题',
  `content` text COMMENT '邮件内容',
  `sendid` smallint(6) DEFAULT NULL,
  `sendname` varchar(20) DEFAULT NULL COMMENT '发送人',
  `senddt` datetime DEFAULT NULL COMMENT '发送时间',
  `receid` varchar(200) DEFAULT NULL,
  `recename` varchar(200) DEFAULT NULL COMMENT '接收人',
  `status` tinyint(1) DEFAULT '1',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|草稿,1|已发送',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `hid` int(11) DEFAULT '0' COMMENT '@回复id',
  `isfile` tinyint(1) DEFAULT '0' COMMENT '@是否有附件',
  `ishui` tinyint(1) DEFAULT '0',
  `isdel` tinyint(1) DEFAULT '0',
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `uid` smallint(6) DEFAULT '0',
  `applydt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_emailm
-- ----------------------------
INSERT INTO `rock_emailm` VALUES ('1', '给你的信哦', '<p>\n	来这看看啊，有帅哥啊\n</p>\n<p>\n	<img alt=\"\" src=\"http://img.rockoa.com/upload/2016-04/07_2107551420.jpg\" />\n</p>', '1', '管理员', '2016-04-07 21:08:13', 'u3', '貂蝉', '1', '1', '2016-04-07 21:08:13', '0', '0', '1', '0', '1', '管理员', '1', '2016-04-07');
INSERT INTO `rock_emailm` VALUES ('2', '回复：给你的信哦', '还真是个帅哥啊，不错不错！<div style=\"margin-top:20px;border-bottom:1px #eeeeee solid\">原邮件内容↓</div><div class=\"yyjnr\">主题：给你的信哦<br>发件人：管理员<br>收件人：貂蝉<br>发送时间：2016-04-07 21:08:13</div><div><p>\n	来这看看啊，有帅哥啊\n</p>\n<p>\n	<img alt=\"\" src=\"http://img.rockoa.com/upload/2016-04/07_2107551420.jpg\" />\n</p></div>', '3', '貂蝉', '2016-04-07 21:09:01', 'u1', '管理员', '1', '1', '2016-04-07 21:09:01', '0', '0', '0', '0', '3', '貂蝉', '3', '2016-04-07');

-- ----------------------------
-- Table structure for `rock_emails`
-- ----------------------------
DROP TABLE IF EXISTS `rock_emails`;
CREATE TABLE `rock_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT '0',
  `uid` smallint(6) DEFAULT '0',
  `zt` tinyint(1) DEFAULT '0' COMMENT '@0|未读,1|已读',
  `isdel` tinyint(1) DEFAULT '0' COMMENT '@0|未删,1|已删',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_emails
-- ----------------------------
INSERT INTO `rock_emails` VALUES ('1', '1', '3', '1', '0', '2016-04-07 21:08:13');
INSERT INTO `rock_emails` VALUES ('3', '2', '1', '1', '0', '2016-04-07 21:09:01');

-- ----------------------------
-- Table structure for `rock_email_tpl`
-- ----------------------------
DROP TABLE IF EXISTS `rock_email_tpl`;
CREATE TABLE `rock_email_tpl` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `setid` smallint(6) DEFAULT NULL COMMENT '＠发送邮件',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` varchar(500) DEFAULT NULL COMMENT '邮件内容',
  `num` varchar(100) DEFAULT NULL COMMENT '编号',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rock_email_tpl
-- ----------------------------
INSERT INTO `rock_email_tpl` VALUES ('1', '1', '{name}{dt}的工作日报', '您好，以下工作日志内容\n{content}\n时间：{optdt}', 'dayreportemail', '工作日志发送', '2015-09-02 15:22:04', '0', '1', '管理员');
INSERT INTO `rock_email_tpl` VALUES ('2', '1', 'OA系统[{base_flowname}]待处理', 'auto', 'flowchecktodo', '流程处理提醒', '2015-07-01 12:08:43', '1', '1', '管理员');

-- ----------------------------
-- Table structure for `rock_file`
-- ----------------------------
DROP TABLE IF EXISTS `rock_file`;
CREATE TABLE `rock_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valid` tinyint(4) DEFAULT '1',
  `filename` varchar(200) DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `fileext` varchar(20) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filesizecn` varchar(30) DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(50) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `web` varchar(300) DEFAULT NULL,
  `mtype` varchar(50) DEFAULT NULL COMMENT '对应类型',
  `mid` int(11) DEFAULT '0' COMMENT '管理id',
  `downci` int(11) DEFAULT '0' COMMENT '下载次数',
  PRIMARY KEY (`id`),
  KEY `mtype` (`mtype`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_file
-- ----------------------------
INSERT INTO `rock_file` VALUES ('1', '1', '截图.png', null, 'png', '15504', '15.14 KB', 'upload/2016-04/18_2014428671.png', '2', '陈稀糊', '2016-04-18 20:14:42', '127.0.0.1', 'Chrome', 'docdeil', '20', '1');
INSERT INTO `rock_file` VALUES ('3', '1', '淄川工作绩效督导平台ST(1).docx', null, 'docx', '23236', '22.69 KB', 'upload/2016-04/18_2216247899.docx', '2', '陈稀糊', '2016-04-18 22:16:24', '127.0.0.1', 'Chrome', null, '0', '1');
INSERT INTO `rock_file` VALUES ('4', '1', 'InstallConfig.ini', null, 'ini', '48', '48.00 Byte', 'upload/2016-04/23_2022094231.temp', '1', null, '2016-04-23 20:22:10', '127.0.0.1', 'MSIE 9', null, '0', '0');
INSERT INTO `rock_file` VALUES ('5', '1', 'InstallConfig.ini', null, 'ini', '48', '48.00 Byte', 'upload/2016-04/23_2119193606.temp', '1', null, '2016-04-23 21:19:21', '127.0.0.1', 'MSIE 9', 'docdeil', '20', '0');
INSERT INTO `rock_file` VALUES ('6', '1', 'newshot.sot', null, 'sot', '23299', '22.75 KB', 'upload/2016-04/23_2120183561.temp', '1', null, '2016-04-23 21:20:19', '127.0.0.1', 'MSIE 9', null, '0', '0');

-- ----------------------------
-- Table structure for `rock_fininfom`
-- ----------------------------
DROP TABLE IF EXISTS `rock_fininfom`;
CREATE TABLE `rock_fininfom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) DEFAULT '0' COMMENT '单据类型@0|报销单,1|出差报销,2|借款单@not',
  `uid` int(11) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `moneycn` varchar(100) DEFAULT NULL COMMENT '大写金额',
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
  `bills` smallint(6) DEFAULT NULL COMMENT '附单据(张)',
  `paytype` varchar(20) DEFAULT NULL COMMENT '付款方式',
  `fullname` varchar(100) DEFAULT NULL COMMENT '收款人全称',
  `cardid` varchar(50) DEFAULT NULL COMMENT '收款帐号',
  `openbank` varchar(50) DEFAULT NULL COMMENT '开户行',
  `purpose` varchar(100) DEFAULT NULL COMMENT '用途',
  `purresult` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_fininfom
-- ----------------------------
INSERT INTO `rock_fininfom` VALUES ('1', '0', '1', '12.00', '壹拾贰元整', '2016-05-05 20:19:42', '1', '管理员', '2016-05-05', null, '1', '1', null, '7,9,10', '1', '吕布', null, '0', '支付宝', 'RockOA开发团队', 'admin@rockoa.com', '阿里巴巴', null, null);
INSERT INTO `rock_fininfom` VALUES ('3', '1', '1', '599.00', '伍佰玖拾玖元整', '2016-05-05 21:50:09', '1', '管理员', '2016-05-05', null, '0', '1', '7', '7,9,10', '0', null, '磐石', '0', '支付宝', 'RockOA开发团队', 'admin@rockoa.com', '阿里巴巴', '北京会见马云', '聊的不错');
INSERT INTO `rock_fininfom` VALUES ('4', '2', '1', '5000000.00', '伍佰万元整', '2016-05-08 16:10:08', '1', '管理员', '2016-05-08', '启动资金', '0', '1', '7', '7,9,10', '0', null, '磐石', null, '支付宝', 'RockOA开发团队', 'admin@rockoa.com', '阿里巴巴公司', '买房', null);

-- ----------------------------
-- Table structure for `rock_flow_bill`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_bill`;
CREATE TABLE `rock_flow_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sericnum` varchar(50) DEFAULT NULL COMMENT '单号',
  `table` varchar(50) DEFAULT NULL COMMENT '对应表',
  `mid` int(11) DEFAULT NULL COMMENT '主id',
  `modeid` smallint(6) DEFAULT '0' COMMENT '模块id',
  `modename` varchar(20) DEFAULT NULL COMMENT '模块名称',
  `uid` smallint(6) DEFAULT NULL COMMENT '用户id',
  `optdt` datetime DEFAULT NULL,
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所有审核人',
  `isdel` tinyint(4) DEFAULT '0' COMMENT '是否删除',
  `nstatus` tinyint(1) DEFAULT '0',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `nstatustext` varchar(100) DEFAULT NULL COMMENT '当前状态',
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`),
  KEY `sericnum` (`sericnum`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_bill
-- ----------------------------
INSERT INTO `rock_flow_bill` VALUES ('1', 'KL-20151227-0001', 'kq_info', '48', '1', '请假条', '3', '2016-04-27 21:46:14', '1', '管理员', '4,3', '0', '0', '2015-12-27', null);
INSERT INTO `rock_flow_bill` VALUES ('2', 'KL-20151227-0002', 'kq_info', '51', '1', '请假条', '3', '2016-04-27 21:46:14', '1', '管理员', '4,3', '0', '0', '2015-12-27', null);
INSERT INTO `rock_flow_bill` VALUES ('3', 'KL-20160105-0001', 'kq_info', '52', '1', '请假条', '1', '2016-04-27 21:46:14', '1', '管理员', '7,3,7', '0', '0', '2016-01-05', null);
INSERT INTO `rock_flow_bill` VALUES ('4', 'KL-20160423-0001', 'kq_info', '54', '1', '请假条', '1', '2016-04-27 21:46:14', '1', '管理员', '7,3', '0', '1', '2016-04-23', null);
INSERT INTO `rock_flow_bill` VALUES ('5', 'KL-20160423-0002', 'kq_info', '55', '1', '请假条', '1', '2016-04-27 21:46:14', '1', '管理员', '7,3,7', '0', '0', '2016-04-23', null);
INSERT INTO `rock_flow_bill` VALUES ('7', 'KJ-20151127-0001', 'kq_info', '42', '2', '加班单', '1', '2016-04-27 21:46:14', '1', '管理员', '3', '0', '0', '2015-11-27', null);
INSERT INTO `rock_flow_bill` VALUES ('8', 'KJ-20151227-0001', 'kq_info', '49', '2', '加班单', '3', '2016-04-27 21:46:14', '1', '管理员', '3', '0', '0', '2015-12-27', null);
INSERT INTO `rock_flow_bill` VALUES ('9', 'KJ-20151227-0002', 'kq_info', '50', '2', '加班单', '3', '2016-04-27 21:46:14', '1', '管理员', '3', '0', '0', '2015-12-27', null);
INSERT INTO `rock_flow_bill` VALUES ('10', 'KJ-20160423-0001', 'kq_info', '57', '2', '加班单', '1', '2016-04-27 21:46:14', '1', '管理员', '3', '0', '1', '2016-04-23', null);
INSERT INTO `rock_flow_bill` VALUES ('11', 'KW-20151127-0001', 'kq_out', '9', '3', '外出出差', '1', '2016-04-27 21:46:14', '1', '管理员', '3', '0', '0', '2015-11-27', null);
INSERT INTO `rock_flow_bill` VALUES ('12', 'KW-20151227-0001', 'kq_out', '10', '3', '外出出差', '3', '2016-04-27 21:46:14', '1', '管理员', '3', '0', '0', '2015-12-27', null);
INSERT INTO `rock_flow_bill` VALUES ('13', 'YP-20160302-0001', 'supplea', '9', '6', '物品领用', '5', '2016-04-27 21:46:14', '1', '管理员', '5', '0', '0', '2016-03-02', null);
INSERT INTO `rock_flow_bill` VALUES ('14', 'YP-20160425-0001', 'supplea', '10', '6', '物品领用', '1', '2016-04-27 21:46:14', '1', '管理员', '5', '0', '0', '2016-04-25', null);
INSERT INTO `rock_flow_bill` VALUES ('15', 'YA-20160424-0001', 'reward', '1', '14', '奖惩处罚', '1', '2016-04-27 21:46:14', '1', '管理员', '7,3', '0', '0', '2016-04-24', null);
INSERT INTO `rock_flow_bill` VALUES ('16', 'YB-20160307-0001', 'careserve', '3', '15', '车辆预定', '1', '2016-04-27 21:46:14', '1', '管理员', '7,5', '0', '0', '2016-03-07', null);
INSERT INTO `rock_flow_bill` VALUES ('18', 'FI-20160315-0001', 'docdeil', '19', '4', '文件传送', '1', '2016-04-27 21:46:14', '1', '管理员', '1', '0', '0', '2016-03-15', null);
INSERT INTO `rock_flow_bill` VALUES ('19', 'FI-20160404-0001', 'docdeil', '20', '4', '文件传送', '1', '2016-04-27 21:46:14', '1', '管理员', '5,1', '0', '0', '2016-04-04', null);
INSERT INTO `rock_flow_bill` VALUES ('20', 'FX-20160414-0001', 'demand', '6', '17', '业务需求', '1', '2016-04-27 21:46:14', '1', '管理员', '1,4', '0', '1', '2016-04-14', null);
INSERT INTO `rock_flow_bill` VALUES ('21', 'HR-20160426-0001', 'hrpositive', '3', '7', '转正申请', '1', '2016-04-27 21:46:14', '1', '管理员', '7,3', '0', '0', '2016-04-26', null);
INSERT INTO `rock_flow_bill` VALUES ('22', 'HE-20160426-0001', 'hrredund', '3', '9', '离职申请', '1', '2016-04-27 21:46:14', '1', '管理员', '7,3', '0', '0', '2016-04-26', null);
INSERT INTO `rock_flow_bill` VALUES ('23', 'HT-20160426-0001', 'hrtransfer', '4', '8', '人事调动', '1', '2016-04-27 21:46:14', '1', '管理员', '3', '0', '0', '2016-04-26', null);
INSERT INTO `rock_flow_bill` VALUES ('24', 'YB-20160428-0001', 'careserve', '4', '15', '车辆预定', '1', '2016-04-28 20:29:14', '1', '管理员', '7,5', '0', '0', '2016-04-28', null);
INSERT INTO `rock_flow_bill` VALUES ('25', 'KL-20151020-0001', 'kq_info', '40', '1', '请假条', '1', '2016-04-28 20:44:11', '1', '管理员', null, '0', '1', '2015-10-20', null);
INSERT INTO `rock_flow_bill` VALUES ('27', 'PA-20160505-0002', 'fininfom', '1', '11', '费用报销', '1', '2016-05-05 20:19:42', '1', '管理员', '7,9,10', '0', '1', '2016-05-05', null);
INSERT INTO `rock_flow_bill` VALUES ('28', 'PB-20160505-0001', 'fininfom', '3', '12', '出差报销', '1', '2016-05-05 21:50:09', '1', '管理员', '7,9,10', '0', '0', '2016-05-05', null);
INSERT INTO `rock_flow_bill` VALUES ('29', 'PC-20160508-0001', 'fininfom', '4', '13', '借款单', '1', '2016-05-08 16:10:08', '1', '管理员', '7,9,10', '0', '0', '2016-05-08', null);
INSERT INTO `rock_flow_bill` VALUES ('32', 'KL-20160423-0003', 'kq_info', '56', '1', '请假条', '1', '2016-05-19 12:30:08', '1', '管理员', '7,3', '0', '0', '2016-04-23', null);

-- ----------------------------
-- Table structure for `rock_flow_checks`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_checks`;
CREATE TABLE `rock_flow_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(30) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `checkid` varchar(100) DEFAULT NULL,
  `checkname` varchar(100) DEFAULT NULL,
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_checks
-- ----------------------------
INSERT INTO `rock_flow_checks` VALUES ('1', 'demand', '6', '49', '4', '大乔', '7', '刘备', '2016-05-16 21:27:20');

-- ----------------------------
-- Table structure for `rock_flow_course`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_course`;
CREATE TABLE `rock_flow_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setid` smallint(6) DEFAULT NULL COMMENT '对应配置',
  `name` varchar(50) DEFAULT NULL COMMENT '进程名称',
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `pid` int(11) DEFAULT '0' COMMENT '上一步id',
  `nid` int(11) DEFAULT NULL,
  `atype` varchar(20) DEFAULT NULL COMMENT '适用于所以人员,指定ren,部门',
  `atypename` varchar(200) DEFAULT NULL COMMENT '指定的人',
  `atypeid` varchar(200) DEFAULT NULL,
  `checktype` varchar(20) DEFAULT NULL COMMENT '审核人员类型',
  `checktypeid` varchar(100) DEFAULT NULL COMMENT '审核人id',
  `checktypename` varchar(100) DEFAULT NULL COMMENT '审核人员姓名',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `optdt` datetime DEFAULT NULL,
  `explain` varchar(100) DEFAULT NULL COMMENT '说明',
  `inputid` smallint(6) DEFAULT '0',
  `zscheck` smallint(6) DEFAULT '1' COMMENT '@至少',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|默认,1|可转移',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_course
-- ----------------------------
INSERT INTO `rock_flow_course` VALUES ('1', '1', '主管审核', null, '0', '0', 'all', '所有人员', null, 'super', null, null, '1', '2015-01-29 11:19:45', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('2', '1', '人事确认', null, '1', '0', null, null, null, 'rank', null, '人事经理', '0', '2016-04-06 21:17:19', '一天内', '0', '1', '1');
INSERT INTO `rock_flow_course` VALUES ('19', '2', '开始', null, '0', '0', 'all', '所有人员', null, 'start', null, null, '0', '2015-01-13 17:12:00', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('20', '2', '人事确认', null, '19', '0', null, null, null, 'rank', null, '人事经理', '0', '2015-01-13 17:13:34', '超过8小时', '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('21', '1', '总经理审核', null, '2', '0', null, null, null, 'rank', null, '董事长', '1', '2016-03-02 16:13:55', '超过3天', '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('22', '1', '结束', null, '2', '0', null, null, null, 'end', null, null, '0', '2015-01-13 16:45:51', '小于3天', '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('23', '2', '主管审核', null, '19', '0', null, null, null, 'super', null, null, '0', '2015-01-13 17:12:19', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('24', '3', '主管审核', null, '0', '0', 'all', '所有人员', null, 'user', '3', '貂蝉', '0', '2015-06-24 11:29:19', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('25', '4', '接收人签收', 'qianshou', '0', '0', 'all', '所有人员', null, 'auto', null, null, '0', '2016-02-29 20:43:55', null, '0', '0', '0');
INSERT INTO `rock_flow_course` VALUES ('26', '6', '行政发放', null, '0', '0', 'all', '所有人员', null, 'user', '5', '小乔', '0', '2015-07-23 16:18:50', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('27', '7', '领导审批', null, '0', '0', 'all', '所有人员', null, 'super', null, null, '0', '2015-08-01 11:52:06', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('28', '7', '人事审批', null, '27', '0', null, null, null, 'rank', null, '人事经理', '0', '2015-08-01 11:52:23', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('29', '9', '领导审批', null, '0', '0', 'all', '所有人员', null, 'super', null, null, '0', '2015-08-02 15:07:56', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('30', '9', '人事审批', null, '29', '0', null, null, null, 'rank', null, '人事经理', '0', '2015-08-02 15:08:07', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('31', '8', '人事经理审批', null, '0', '0', 'all', '所有人员', null, 'rank', null, '人事经理', '0', '2015-08-03 13:29:04', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('32', '10', '主管审核', null, '0', '0', 'all', '所有人员', null, 'super', null, null, '0', '2015-08-05 12:08:06', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('33', '11', '上级审批', null, '0', '0', 'all', '所有人员', null, 'super', null, null, '0', '2015-08-20 17:13:05', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('34', '11', '财务主管审批', null, '33', '0', null, null, null, 'rank', null, '财务经理', '0', '2015-08-20 17:15:36', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('35', '11', '财务付款', null, '34', '0', null, null, null, 'rank', null, '出纳', '0', '2015-08-20 17:15:00', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('36', '12', '上级审批', null, '0', '0', 'all', '所有人员', null, 'super', null, null, '0', '2015-08-25 11:17:18', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('37', '12', '财务主管审批', null, '36', '0', null, null, null, 'rank', null, '财务经理', '0', '2015-08-25 11:18:00', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('38', '12', '出纳付款', null, '37', '0', null, null, null, 'rank', null, '出纳', '0', '2015-08-25 11:18:19', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('39', '13', '上级审批', null, '0', '0', 'all', '所有人员', null, 'super', null, null, '0', '2015-08-25 11:22:06', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('40', '14', '上级审批', 'rewardobj', '0', '0', 'all', '所有人员', null, 'super', null, null, '0', '2015-09-14 14:34:46', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('41', '14', '人事确认', null, '40', '0', null, null, null, 'rank', null, '人事经理', '0', '2015-09-14 13:52:00', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('42', '13', '财务主管审批', null, '39', '0', null, null, null, 'rank', null, '财务经理', '0', '2015-09-15 15:52:00', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('43', '13', '财务付款', null, '42', '0', null, null, null, 'rank', null, '出纳', '0', '2015-09-15 15:52:17', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('44', '15', '上级审批', null, '0', '0', 'all', '所有人员', null, 'super', null, null, '0', '2015-09-23 14:09:09', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('45', '15', '行政审批', null, '44', '0', null, null, null, 'rank', null, '行政前台', '0', '2015-09-23 14:09:33', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('46', '12', '总经理审批', null, '36', '38', null, null, null, 'rank', null, '总经理', '0', '2015-10-27 10:26:55', '大于5千', '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('47', '16', '行政审批', null, '0', '0', 'all', '所有人员', null, 'rank', null, '行政主管', '0', '2015-11-22 20:53:09', null, '0', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('48', '17', '技术部受理', null, '0', '0', 'all', '所有人员', null, 'rank', null, 'OA项目经理', '0', '2015-11-28 20:12:17', null, '1', '1', '0');
INSERT INTO `rock_flow_course` VALUES ('49', '17', '技术人员处理', 'jishuculi', '48', '0', null, null, null, 'auto', null, null, '0', '2016-05-16 20:48:06', null, '0', '1', '1');
INSERT INTO `rock_flow_course` VALUES ('50', '20', '人事审批', null, '0', '0', 'all', '所有人员', null, 'rank', null, '人事经理', '0', '2015-12-30 18:39:12', null, '0', '1', '0');

-- ----------------------------
-- Table structure for `rock_flow_courseact`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_courseact`;
CREATE TABLE `rock_flow_courseact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '模块id',
  `cid` int(11) DEFAULT NULL COMMENT '进程id',
  `name` varchar(20) DEFAULT NULL COMMENT '动作名称',
  `names` varchar(20) DEFAULT NULL COMMENT '副名称',
  `actv` smallint(6) DEFAULT '0' COMMENT '状态值',
  `nid` int(11) DEFAULT '0' COMMENT '下一步id@0|正常,-1|退回提交人',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `action` varchar(100) DEFAULT NULL COMMENT '动作执行方法名',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `color` varchar(20) DEFAULT NULL COMMENT '状态颜色',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_courseact
-- ----------------------------
INSERT INTO `rock_flow_courseact` VALUES ('1', '4', '25', '签收', '已签收', '1', '0', '0', null, null, 'green');
INSERT INTO `rock_flow_courseact` VALUES ('2', '4', '25', '不签收', null, '2', '-1', '1', null, null, 'red');
INSERT INTO `rock_flow_courseact` VALUES ('3', '6', '26', '发放', '已发放', '1', '0', '0', null, null, 'green');
INSERT INTO `rock_flow_courseact` VALUES ('4', '6', '26', '驳回', null, '2', '-1', '1', null, null, 'red');
INSERT INTO `rock_flow_courseact` VALUES ('5', '11', '35', '付款', '已付款', '1', '0', '0', null, null, 'green');
INSERT INTO `rock_flow_courseact` VALUES ('6', '12', '38', '付款', '已付款', '1', '0', '0', null, null, 'green');
INSERT INTO `rock_flow_courseact` VALUES ('7', '13', '43', '付款', '已付款', '1', '0', '0', null, null, 'green');

-- ----------------------------
-- Table structure for `rock_flow_courseinput`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_courseinput`;
CREATE TABLE `rock_flow_courseinput` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` varchar(20) DEFAULT NULL COMMENT '表单类型',
  `sort` smallint(6) DEFAULT '0',
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_courseinput
-- ----------------------------
INSERT INTO `rock_flow_courseinput` VALUES ('1', '0', '处理人表单', null, '0', null);
INSERT INTO `rock_flow_courseinput` VALUES ('2', '1', 'changeuser', 'changeuser', '0', '下一步处理人');

-- ----------------------------
-- Table structure for `rock_flow_element`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_element`;
CREATE TABLE `rock_flow_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `fields` varchar(50) DEFAULT NULL COMMENT '对应字段',
  `fieldstype` varchar(30) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `dev` varchar(20) DEFAULT NULL COMMENT '默认值',
  `isbt` tinyint(1) DEFAULT '0' COMMENT '是否必填',
  `data` varchar(500) DEFAULT NULL COMMENT '数据源',
  `islu` tinyint(1) DEFAULT '1' COMMENT '是否录入元素',
  `iszs` tinyint(1) DEFAULT '1' COMMENT '是否列表展示',
  `attr` varchar(500) DEFAULT NULL COMMENT '属性',
  `iszb` tinyint(1) DEFAULT '0',
  `isss` tinyint(1) DEFAULT '0',
  `lattr` varchar(100) DEFAULT NULL COMMENT '列属性',
  `width` varchar(10) DEFAULT NULL COMMENT '列宽',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_element
-- ----------------------------
INSERT INTO `rock_flow_element` VALUES ('1', '1', '请假类型', 'qjkind', 'rockcombo', '1', null, '1', 'leavetypem', '1', '1', null, '0', '1', null, '80');
INSERT INTO `rock_flow_element` VALUES ('2', '1', '开始时间', 'stime', 'datetime', '2', null, '1', null, '1', '1', null, '0', '1', null, '100');
INSERT INTO `rock_flow_element` VALUES ('3', '1', '截止时间', 'etime', 'datetime', '3', null, '1', null, '1', '1', null, '0', '1', null, '100');
INSERT INTO `rock_flow_element` VALUES ('4', '1', '请假(小时)', 'totals', 'number', '5', '0', '1', null, '1', '1', null, '0', '0', null, '100');
INSERT INTO `rock_flow_element` VALUES ('5', '1', '说明', 'explain', 'textarea', '6', null, '1', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('6', '1', '类型', 'kind', 'fixed', '0', '请假', '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('7', '2', '类型', 'kind', 'fixed', '0', '加班', '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('8', '2', '开始时间', 'stime', 'datetime', '1', null, '1', null, '1', '1', null, '0', '1', null, '100');
INSERT INTO `rock_flow_element` VALUES ('9', '2', '截止时间', 'etime', 'datetime', '2', null, '1', null, '1', '1', null, '0', '1', null, '100');
INSERT INTO `rock_flow_element` VALUES ('10', '2', '说明', 'explain', 'textarea', '4', null, '1', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('11', '2', '加班(小时)', 'totals', 'number', '3', '0', '1', null, '1', '1', null, '0', '1', null, '100');
INSERT INTO `rock_flow_element` VALUES ('12', '3', '外出类型', 'atype', 'select', '0', null, '1', '外出,出差', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('13', '3', '外出时间', 'outtime', 'datetime', '1', null, '1', null, '1', '1', null, '0', '1', null, '155');
INSERT INTO `rock_flow_element` VALUES ('14', '3', '预计回岗', 'intime', 'datetime', '2', null, '1', null, '1', '1', null, '0', '1', null, '155');
INSERT INTO `rock_flow_element` VALUES ('15', '3', '外出地址', 'address', 'text', '3', null, '1', null, '1', '1', null, '0', '0', 'flex:0.4', null);
INSERT INTO `rock_flow_element` VALUES ('16', '3', '外出事由', 'reason', 'textarea', '4', null, '1', null, '1', '1', null, '0', '1', 'flex:0.6', null);
INSERT INTO `rock_flow_element` VALUES ('17', '3', '说明', 'explain', 'textarea', '5', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('18', '10', '异常类型', 'errtype', 'rockcombo', '0', null, '1', 'dakaerrtype', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('19', '10', '申请日期', 'dt', 'date', '1', null, '1', null, '1', '1', null, '0', '1', null, '12%');
INSERT INTO `rock_flow_element` VALUES ('20', '10', '应打卡时间', 'ytime', 'time', '2', null, '1', null, '1', '1', null, '0', '1', null, '12%');
INSERT INTO `rock_flow_element` VALUES ('21', '10', '说明', 'explain', 'textarea', '3', null, '1', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('22', '4', '标题', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '1', null, '12%');
INSERT INTO `rock_flow_element` VALUES ('23', '4', '签收人', 'recename', 'changeusercheck', '1', null, '1', 'receid', '1', '1', null, '0', '1', null, '12%');
INSERT INTO `rock_flow_element` VALUES ('24', '4', '签收人id', 'receid', 'hidden', '2', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('25', '4', '说明', 'explain', 'textarea', '4', null, '0', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('26', '16', '会议室', 'hyname', 'rockcombo', '0', null, '1', 'meeting', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('27', '16', '主题', 'title', 'text', '1', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('28', '16', '开始时间', 'startdt', 'datetime', '2', null, '1', null, '1', '1', null, '0', '1', null, '155');
INSERT INTO `rock_flow_element` VALUES ('29', '16', '结束时间', 'enddt', 'datetime', '3', null, '1', null, '1', '1', null, '0', '1', null, '155');
INSERT INTO `rock_flow_element` VALUES ('30', '16', '参会人员', 'joinname', 'changedeptusercheck', '4', null, '0', 'joinid', '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('31', '16', '说明', 'explain', 'textarea', '5', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('32', '17', '标题', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, '18%');
INSERT INTO `rock_flow_element` VALUES ('33', '17', '内容', 'content', 'htmlediter', '1', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('34', '17', '说明', 'explain', 'textarea', '3', null, '0', null, '1', '1', null, '0', '0', 'flex:1,align:\"left\"', null);
INSERT INTO `rock_flow_element` VALUES ('35', '14', '奖惩对象', 'object', 'changeuser', '0', null, '1', 'objectid', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('36', '14', '奖惩类型', 'atype', 'rockcombo', '1', null, '1', 'rewardtype', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('37', '14', '奖惩结果', 'result', 'rockcombo', '2', null, '1', 'rewardresult', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('38', '14', '奖惩金额', 'money', 'rockcombo', '3', '0', '1', 'rewardmoney,value', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('39', '14', '说明', 'explain', 'textarea', '4', null, '1', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('40', '14', '奖惩对象id', 'objectid', 'text', '0', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('41', '20', '销假类型', 'type', 'select', '0', null, '1', '0|请假销假,1|外出销假', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('42', '20', '销假单号', 'mseric', 'select', '1', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('43', '20', '实际开始时间', 'stime', 'text', '2', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('44', '20', '实际截止时间', 'etime', 'datetime', '3', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('45', '20', '说明', 'explain', 'textarea', '4', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('46', '20', '最后请假时间(小时)', 'totals', 'number', '5', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('47', '20', '是否销假全部', 'xjall', 'select', '1', null, '1', '0|否,1|是', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('48', '6', '物品名称', 'aname', 'hidden', '0', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('49', '6', '办公用品ID', 'aid', 'select', '1', null, '1', 'getsupplea', '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('50', '6', '说明', 'explain', 'textarea', '2', null, '0', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('51', '6', '领用数量', 'total', 'number', '3', '0', '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('52', '21', '信息类型', 'typenum', 'rockcombo', '0', null, '1', 'infortype,num', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('53', '21', '内容', 'content', 'htmlediter', '2', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('54', '21', '主题', 'title', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('55', '21', '发布给', 'faobjname', 'changedeptusercheck', '3', null, '0', 'faobjid', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('56', '21', '发布者/部门', 'zuozhe', 'text', '4', '{deptname}', '0', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('57', '21', '时间', 'indate', 'date', '5', '{date}', '0', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('58', '21', '类型名称', 'typename', 'hidden', '0', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('59', '21', '排序号', 'xu', 'number', '6', '0', '0', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('60', '21', '显示首页', 'isshow', 'checkbox', '7', '1', '0', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('61', '11', '单据类型', 'type', 'fixed', '0', '0', '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('62', '11', '申请日期', 'applydt', 'text', '1', '{date}', '1', null, '1', '1', 'readonly', '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('63', '11', '附单据(张)', 'bills', 'number', '2', '0', '0', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('64', '11', '收款人全称', 'fullname', 'text', '3', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('65', '11', '付款方式', 'paytype', 'rockcombo', '4', null, '1', 'finpaytype', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('66', '11', '收款帐号', 'cardid', 'text', '5', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('67', '11', '开户行', 'openbank', 'text', '6', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('68', '11', '报销金额', 'money', 'text', '7', '0', '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('69', '11', '大写金额', 'moneycn', 'text', '8', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('70', '11', '说明', 'explain', 'textarea', '9', null, '0', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('71', '7', '职位', 'ranking', 'text', '0', '{ranking}', '1', null, '1', '1', 'readonly', '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('72', '7', '入职日期', 'entrydt', 'text', '1', '{workdate}', '1', null, '1', '1', 'readonly', '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('73', '7', '试用到期日', 'syenddt', 'date', '2', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('74', '7', '转正日期', 'positivedt', 'date', '3', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('75', '7', '说明', 'explain', 'textarea', '5', null, '1', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('76', '9', '职位', 'ranking', 'text', '0', '{ranking}', '1', null, '1', '1', 'readonly', '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('77', '9', '入职日期', 'entrydt', 'text', '1', '{workdate}', '1', null, '1', '1', 'readonly', '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('78', '9', '离职类型', 'redundtype', 'rockcombo', '2', null, '1', 'redundtype', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('79', '9', '离职日期', 'quitdt', 'date', '3', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('80', '9', '离职原因', 'redundreson', 'checkboxall', '4', null, '1', 'redundreson', '1', '1', null, '0', '1', 'flex:0.5', null);
INSERT INTO `rock_flow_element` VALUES ('81', '9', '说明', 'explain', 'textarea', '5', null, '1', null, '1', '1', null, '0', '0', 'flex:0.8', null);
INSERT INTO `rock_flow_element` VALUES ('82', '8', '要调动人', 'tranname', 'changeuser', '0', null, '1', 'tranuid', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('83', '8', '调动类型', 'trantype', 'rockcombo', '1', null, '1', 'transfertype', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('84', '8', '原来部门', 'olddeptname', 'text', '2', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('85', '8', '调动后部门', 'newdeptname', 'changedept', '3', null, '1', 'newdeptid', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('86', '8', '原来职位', 'oldranking', 'text', '4', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('87', '8', '调动后职位', 'newranking', 'text', '5', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('88', '8', '生效日期', 'effectivedt', 'date', '6', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('89', '8', '说明', 'explain', 'textarea', '7', null, '1', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('90', '8', '要调动人Id', 'tranuid', 'text', '0', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('91', '8', '新部门Id', 'newdeptid', 'text', '1', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('92', '21', '类型', 'atype', 'hidden', '0', '0', '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('93', '23', '资产类别', 'typename', 'rockcombo', '0', null, '1', 'assetstype', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('94', '23', '编号', 'num', 'text', '1', null, '0', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('95', '23', '名称', 'title', 'text', '2', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('96', '23', '品牌', 'brand', 'rockcombo', '3', null, '0', 'assetsbrand', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('97', '23', '存放地点', 'address', 'rockcombo', '4', null, '1', 'assetsaddress', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('98', '23', '规格型号', 'model', 'text', '5', null, '0', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('99', '23', '资产来源', 'laiyuan', 'rockcombo', '6', null, '1', 'assetslaiyuan', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('100', '23', '状态', 'state', 'rockcombo', '7', null, '1', 'assetsstate', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('101', '23', '购进日期', 'buydt', 'date', '9', null, '0', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('102', '23', '价格', 'price', 'number', '11', null, '0', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('103', '23', '说明备注', 'remark', 'textarea', '11', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('104', '24', '车牌号', 'carnum', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('105', '24', '车辆类型', 'cartype', 'rockcombo', '1', null, '1', 'cartype', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('106', '24', '车辆品牌', 'carbrand', 'rockcombo', '2', null, '1', 'carbrand', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('107', '24', '型号', 'carmode', 'text', '3', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('108', '24', '购买日期', 'buydt', 'date', '5', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('109', '24', '购买价格', 'buyprice', 'number', '6', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('110', '24', '车架号', 'framenum', 'text', '7', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('111', '24', '发动机号', 'enginenb', 'text', '8', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('112', '24', '是否公开使用', 'ispublic', 'checkbox', '9', '1', '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('113', '24', '说明', 'explain', 'htmlediter', '10', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('114', '24', '状态', 'state', 'rockcombo', '11', null, '1', 'carstate', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('115', '15', '使用者', 'usename', 'changedeptusercheck', '0', null, '1', 'useid', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('116', '15', '使用人数', 'useren', 'number', '1', '0', '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('117', '15', '开始时间', 'startdt', 'datetime', '2', null, '1', null, '1', '1', null, '0', '0', null, '100');
INSERT INTO `rock_flow_element` VALUES ('118', '15', '截止时间', 'enddt', 'datetime', '3', null, '1', null, '1', '1', null, '0', '0', null, '100');
INSERT INTO `rock_flow_element` VALUES ('119', '15', '目的地', 'address', 'text', '4', null, '1', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('120', '15', '线路', 'xianlines', 'text', '5', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('121', '15', '预定车辆', 'carid', 'select', '6', null, '1', 'getcardata', '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('122', '15', '车牌号', 'carnum', 'hidden', '7', null, '1', null, '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('123', '15', '驾驶员', 'jianame', 'changeusercheck', '8', null, '1', 'jiaid', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('124', '15', '说明', 'explain', 'textarea', '9', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('125', '11', '报销项目', 'name', 'rockcombo', '0', null, '1', 'finaitems', '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('126', '11', '发生日期', 'startdt', 'date', '1', null, '1', null, '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('127', '11', '金额', 'moneys', 'number', '2', null, '1', null, '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('128', '11', '说明', 'explain', 'text', '3', null, '0', null, '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('129', '12', '单据类型', 'type', 'fixed', '0', '1', '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('130', '12', '申请日期', 'applydt', 'text', '1', '{date}', '1', null, '1', '1', 'readonly', '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('131', '12', '附单据(张)', 'bills', 'number', '2', '0', '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('132', '12', '收款人全称', 'fullname', 'text', '3', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('133', '12', '付款方式', 'paytype', 'rockcombo', '4', null, '1', 'finpaytype', '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('134', '12', '收款帐号', 'cardid', 'text', '5', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('135', '12', '开户行', 'openbank', 'text', '6', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('136', '12', '报销金额', 'money', 'text', '7', '0', '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('137', '12', '大写金额', 'moneycn', 'text', '8', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('138', '12', '说明', 'explain', 'textarea', '9', null, '0', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('139', '12', '报销项目', 'name', 'rockcombo', '1', null, '1', 'finaitems', '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('140', '12', '发生日期', 'startdt', 'date', '2', null, '1', null, '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('141', '12', '金额', 'moneys', 'number', '3', null, '1', null, '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('142', '12', '说明', 'explain', 'text', '4', null, '0', null, '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('143', '13', '单据类型', 'type', 'fixed', '0', '2', '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('144', '13', '申请日期', 'applydt', 'text', '1', '{date}', '1', null, '1', '1', 'readonly', '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('145', '13', '借款用途', 'purpose', 'text', '2', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('146', '13', '收款人全称', 'fullname', 'text', '3', null, '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('147', '13', '付款方式', 'paytype', 'rockcombo', '4', null, '1', 'finpaytype', '1', '1', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('148', '13', '收款帐号', 'cardid', 'text', '5', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('149', '13', '开户行', 'openbank', 'text', '6', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('150', '13', '借款金额', 'money', 'text', '7', '0', '1', null, '1', '1', null, '0', '1', null, null);
INSERT INTO `rock_flow_element` VALUES ('151', '13', '借款金额大写', 'moneycn', 'text', '8', null, '1', null, '1', '0', null, '0', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('152', '13', '说明', 'explain', 'textarea', '9', null, '0', null, '1', '1', null, '0', '0', 'flex:1', null);
INSERT INTO `rock_flow_element` VALUES ('157', '12', '出差目的', 'purpose', 'text', '10', null, '1', null, '1', '1', null, '0', '0', 'flex:0.5', null);
INSERT INTO `rock_flow_element` VALUES ('158', '12', '出差成果', 'purresult', 'text', '12', null, '1', null, '1', '1', null, '0', '1', 'flex:0.5', null);
INSERT INTO `rock_flow_element` VALUES ('159', '12', '发生地点', 'address', 'text', '0', null, '1', null, '1', '0', null, '1', '0', null, null);
INSERT INTO `rock_flow_element` VALUES ('160', '6', '申请时间', 'optdt', 'datetime', '0', null, '0', null, '0', '1', null, '0', '1', null, '160');
INSERT INTO `rock_flow_element` VALUES ('161', '4', '相关文件', 'filestr', 'text', '3', null, '0', null, '0', '0', null, '0', '0', 'flex:0.5,align:\"left\"', null);
INSERT INTO `rock_flow_element` VALUES ('162', '17', '操作时间', 'optdt', 'datetime', '2', null, '0', null, '0', '1', null, '0', '1', null, '155');
INSERT INTO `rock_flow_element` VALUES ('163', '1', '剩余假期', 'shengleval', 'auto', '0', null, '0', 'getshengleval', '0', '0', null, '0', '0', null, null);

-- ----------------------------
-- Table structure for `rock_flow_log`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_log`;
CREATE TABLE `rock_flow_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(50) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '1通过',
  `statusname` varchar(20) DEFAULT NULL COMMENT '状态名称',
  `name` varchar(50) DEFAULT NULL COMMENT '进程名称',
  `courseid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `ip` varchar(30) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL COMMENT '浏览器',
  `checkname` varchar(20) DEFAULT NULL,
  `checkid` smallint(6) DEFAULT NULL,
  `modeid` smallint(6) DEFAULT NULL COMMENT '@模块Id',
  `color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_log
-- ----------------------------
INSERT INTO `rock_flow_log` VALUES ('1', 'kq_info', '57', '1', '通过', '人事确认', '20', '2016-04-27 21:47:24', '好的', '127.0.0.1', 'MSIE 9', '貂蝉', '3', '2', null);
INSERT INTO `rock_flow_log` VALUES ('2', 'carm', '2', '1', null, '提交', '0', '2016-04-27 22:30:48', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '24', null);
INSERT INTO `rock_flow_log` VALUES ('3', 'assetm', '5', '1', null, '提交', '0', '2016-04-27 22:42:51', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '23', null);
INSERT INTO `rock_flow_log` VALUES ('4', 'carm', '1', '1', null, '提交', '0', '2016-04-28 19:36:09', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '24', null);
INSERT INTO `rock_flow_log` VALUES ('5', 'carm', '2', '1', null, '提交', '0', '2016-04-28 19:36:27', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '24', null);
INSERT INTO `rock_flow_log` VALUES ('6', 'assetm', '1', '1', null, '提交', '0', '2016-04-28 19:39:37', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '23', null);
INSERT INTO `rock_flow_log` VALUES ('7', 'careserve', '4', '1', null, '提交', '0', '2016-04-28 20:29:14', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '15', null);
INSERT INTO `rock_flow_log` VALUES ('8', 'fininfom', '1', '1', null, '提交', '0', '2016-05-05 19:55:50', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '11', null);
INSERT INTO `rock_flow_log` VALUES ('16', 'fininfom', '1', '1', null, '提交', '0', '2016-05-05 20:19:42', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '11', null);
INSERT INTO `rock_flow_log` VALUES ('19', 'fininfom', '3', '1', null, '提交', '0', '2016-05-05 21:47:39', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '12', null);
INSERT INTO `rock_flow_log` VALUES ('20', 'fininfom', '3', '1', null, '提交', '0', '2016-05-05 21:50:09', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '12', null);
INSERT INTO `rock_flow_log` VALUES ('21', 'fininfom', '4', '1', null, '提交', '0', '2016-05-08 09:37:21', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '13', null);
INSERT INTO `rock_flow_log` VALUES ('22', 'infor', '14', '1', null, '提交', '0', '2016-05-08 10:17:08', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('23', 'infor', '14', '1', null, '提交', '0', '2016-05-08 10:19:52', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('24', 'fininfom', '4', '1', null, '提交', '0', '2016-05-08 16:03:12', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '13', null);
INSERT INTO `rock_flow_log` VALUES ('25', 'fininfom', '4', '1', null, '提交', '0', '2016-05-08 16:10:08', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '13', null);
INSERT INTO `rock_flow_log` VALUES ('26', 'kq_info', '56', '1', null, '提交', '0', '2016-05-08 16:10:49', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '1', null);
INSERT INTO `rock_flow_log` VALUES ('27', 'infor', '21', '1', null, '提交', '0', '2016-05-16 19:35:54', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('28', 'infor', '21', '1', null, '提交', '0', '2016-05-16 19:55:00', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('29', 'infor', '21', '1', null, '提交', '0', '2016-05-16 19:55:39', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('30', 'infor', '21', '1', null, '提交', '0', '2016-05-16 19:55:47', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('31', 'infor', '21', '1', null, '提交', '0', '2016-05-16 19:55:59', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('32', 'kq_info', '56', '1', null, '提交', '0', '2016-05-16 20:42:59', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '1', null);
INSERT INTO `rock_flow_log` VALUES ('36', 'demand', '6', '1', '通过', '技术部受理', '48', '2016-05-16 21:24:44', null, '127.0.0.1', 'MSIE 9', '管理员', '1', '17', null);
INSERT INTO `rock_flow_log` VALUES ('37', 'demand', '6', '1', '转办', '技术人员处理', '0', '2016-05-16 21:27:20', '给你，转给：大乔', '127.0.0.1', 'MSIE 9', '刘备', '7', '17', '#ff6600');
INSERT INTO `rock_flow_log` VALUES ('38', 'demand', '6', '1', '通过', '技术人员处理', '49', '2016-05-16 21:29:25', null, '127.0.0.1', 'MSIE 9', '大乔', '4', '17', null);
INSERT INTO `rock_flow_log` VALUES ('39', 'fininfom', '1', '1', '通过', '上级审批', '33', '2016-05-16 21:33:59', null, '127.0.0.1', 'MSIE 9', '刘备', '7', '11', null);
INSERT INTO `rock_flow_log` VALUES ('40', 'fininfom', '1', '1', '通过', '财务主管审批', '34', '2016-05-16 21:37:47', null, '127.0.0.1', 'MSIE 9', '赵子龙', '9', '11', null);
INSERT INTO `rock_flow_log` VALUES ('41', 'fininfom', '1', '1', '已付款', '财务付款', '35', '2016-05-16 21:38:08', null, '127.0.0.1', 'MSIE 9', '吕布', '10', '11', 'green');
INSERT INTO `rock_flow_log` VALUES ('43', 'kq_info', '54', '1', '通过', '主管审核', '1', '2016-05-19 12:33:07', null, '127.0.0.1', 'MSIE 9', '磐石', '7', '1', null);
INSERT INTO `rock_flow_log` VALUES ('44', 'infor', '14', '1', null, '提交', '0', '2016-07-04 22:22:56', null, '127.0.0.1', 'Firefox', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('45', 'infor', '7', '1', null, '提交', '0', '2016-07-04 22:25:08', null, '127.0.0.1', 'Firefox', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('46', 'infor', '7', '1', null, '提交', '0', '2016-07-04 22:25:25', null, '127.0.0.1', 'Firefox', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('47', 'infor', '7', '1', null, '提交', '0', '2016-07-04 22:25:47', null, '127.0.0.1', 'Firefox', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('48', 'infor', '7', '1', null, '提交', '0', '2016-07-04 22:26:25', null, '127.0.0.1', 'Firefox', '管理员', '1', '21', null);
INSERT INTO `rock_flow_log` VALUES ('49', 'infor', '14', '1', null, '提交', '0', '2016-07-04 22:26:40', null, '127.0.0.1', 'Firefox', '管理员', '1', '21', null);

-- ----------------------------
-- Table structure for `rock_flow_rule`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_rule`;
CREATE TABLE `rock_flow_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rulename` varchar(50) DEFAULT NULL COMMENT '对应记录姓名',
  `flowname` varchar(50) DEFAULT NULL COMMENT '流程名称',
  `flowid` int(11) DEFAULT NULL,
  `allcourseid` varchar(200) DEFAULT NULL COMMENT '所有进程id',
  `alluserid` varchar(200) DEFAULT NULL COMMENT '所有审核人id',
  `alluser` varchar(200) DEFAULT NULL COMMENT '所有审核人姓名',
  `nowcourseid` int(11) DEFAULT NULL COMMENT '当前进程id',
  `nextcourseid` int(11) DEFAULT NULL COMMENT '下一进程id',
  `nowuser` varchar(200) DEFAULT NULL COMMENT '当前审核人',
  `nowuserid` varchar(200) DEFAULT NULL COMMENT '当前审核人id',
  `allstep` tinyint(4) DEFAULT '0' COMMENT '总步骤',
  `step` tinyint(4) DEFAULT '0' COMMENT '当前步骤',
  `adddt` datetime DEFAULT NULL COMMENT '添加时间',
  `table` varchar(50) DEFAULT NULL COMMENT '对应表',
  `mid` int(11) DEFAULT NULL COMMENT '表上id',
  `nstatus` tinyint(4) DEFAULT '0' COMMENT '当前状态',
  `allcheckid` varchar(300) DEFAULT NULL COMMENT '所有审核人id',
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_rule
-- ----------------------------
INSERT INTO `rock_flow_rule` VALUES ('1', '貂蝉', '请假条', '1', '1|2', '4|3', '大乔|貂蝉', '1', '2', '大乔', '4', '2', '1', '2016-04-27 21:46:14', 'kq_info', '48', '0', '4,3');
INSERT INTO `rock_flow_rule` VALUES ('2', '貂蝉', '请假条', '1', '1|2', '4|3', '大乔|貂蝉', '1', '2', '大乔', '4', '2', '1', '2016-04-27 21:46:14', 'kq_info', '51', '0', '4,3');
INSERT INTO `rock_flow_rule` VALUES ('3', '管理员', '请假条', '1', '1|2|21', '7|3|7', '磐石|貂蝉|磐石', '1', '2', '磐石', '7', '3', '1', '2016-05-19 12:38:47', 'kq_info', '52', '0', '7,3,7');
INSERT INTO `rock_flow_rule` VALUES ('4', '管理员', '请假条', '1', '1|2', '7|3', '磐石|貂蝉', '2', '0', '貂蝉', '3', '2', '2', '2016-05-19 12:33:07', 'kq_info', '54', '1', '7,3');
INSERT INTO `rock_flow_rule` VALUES ('5', '管理员', '请假条', '1', '1|2|21', '7|3|7', '磐石|貂蝉|磐石', '1', '2', '磐石', '7', '3', '1', '2016-05-19 12:38:47', 'kq_info', '55', '0', '7,3,7');
INSERT INTO `rock_flow_rule` VALUES ('6', '管理员', '请假条', '1', '1|2', '7|3', '磐石|貂蝉', '1', '2', '磐石', '7', '2', '1', '2016-05-19 12:38:47', 'kq_info', '56', '0', '7,3');
INSERT INTO `rock_flow_rule` VALUES ('7', '管理员', '加班单', '2', '20', '3', '貂蝉', '20', '0', '貂蝉', '3', '1', '1', '2016-04-27 21:46:14', 'kq_info', '42', '0', '3');
INSERT INTO `rock_flow_rule` VALUES ('8', '貂蝉', '加班单', '2', '20', '3', '貂蝉', '20', '0', '貂蝉', '3', '1', '1', '2016-04-27 21:46:14', 'kq_info', '49', '0', '3');
INSERT INTO `rock_flow_rule` VALUES ('9', '貂蝉', '加班单', '2', '20', '3', '貂蝉', '20', '0', '貂蝉', '3', '1', '1', '2016-04-27 21:46:14', 'kq_info', '50', '0', '3');
INSERT INTO `rock_flow_rule` VALUES ('24', '管理员', '车辆预定', '15', '44|45', '7|5', '磐石|小乔', '44', '45', '磐石', '7', '2', '1', '2016-05-19 12:38:47', 'careserve', '4', '0', '7,5');
INSERT INTO `rock_flow_rule` VALUES ('11', '管理员', '外出出差', '3', '24', '3', '貂蝉', '24', '0', '貂蝉', '3', '1', '1', '2016-04-27 21:46:14', 'kq_out', '9', '0', '3');
INSERT INTO `rock_flow_rule` VALUES ('12', '貂蝉', '外出出差', '3', '24', '3', '貂蝉', '24', '0', '貂蝉', '3', '1', '1', '2016-04-27 21:46:14', 'kq_out', '10', '0', '3');
INSERT INTO `rock_flow_rule` VALUES ('13', '小乔', '物品领用', '6', '26', '5', '小乔', '26', '0', '小乔', '5', '1', '1', '2016-04-27 21:46:14', 'supplea', '9', '0', '5');
INSERT INTO `rock_flow_rule` VALUES ('14', '管理员', '物品领用', '6', '26', '5', '小乔', '26', '0', '小乔', '5', '1', '1', '2016-04-27 21:46:14', 'supplea', '10', '0', '5');
INSERT INTO `rock_flow_rule` VALUES ('15', '管理员', '奖惩处罚', '14', '40|41', '7|3', '磐石|貂蝉', '40', '41', '磐石', '7', '2', '1', '2016-05-19 12:38:47', 'reward', '1', '0', '7,3');
INSERT INTO `rock_flow_rule` VALUES ('16', '管理员', '车辆预定', '15', '44|45', '7|5', '磐石|小乔', '44', '45', '磐石', '7', '2', '1', '2016-05-19 12:38:47', 'careserve', '3', '0', '7,5');
INSERT INTO `rock_flow_rule` VALUES ('17', '管理员', '会议预定', '16', '47', '4', '大乔', '47', '0', '大乔', '4', '1', '1', '2016-04-27 21:46:14', 'meet', '154', '0', '4');
INSERT INTO `rock_flow_rule` VALUES ('18', '管理员', '文件传送', '4', '25', '1', '管理员', '25', '0', '管理员', '1', '1', '1', '2016-04-27 21:46:14', 'docdeil', '19', '0', '1');
INSERT INTO `rock_flow_rule` VALUES ('19', '管理员', '文件传送', '4', '25', '5,1', '小乔,管理员', '25', '0', '小乔,管理员', '5,1', '1', '1', '2016-04-27 21:46:14', 'docdeil', '20', '0', '5,1');
INSERT INTO `rock_flow_rule` VALUES ('21', '管理员', '转正申请', '7', '27|28', '7|3', '磐石|貂蝉', '27', '28', '磐石', '7', '2', '1', '2016-05-19 12:38:47', 'hrpositive', '3', '0', '7,3');
INSERT INTO `rock_flow_rule` VALUES ('22', '管理员', '离职申请', '9', '29|30', '7|3', '磐石|貂蝉', '29', '30', '磐石', '7', '2', '1', '2016-05-19 12:38:47', 'hrredund', '3', '0', '7,3');
INSERT INTO `rock_flow_rule` VALUES ('23', '管理员', '人事调动', '8', '31', '3', '貂蝉', '31', '0', '貂蝉', '3', '1', '1', '2016-04-27 21:46:14', 'hrtransfer', '4', '0', '3');
INSERT INTO `rock_flow_rule` VALUES ('27', '管理员', '出差报销', '12', '36|37|38', '7|9|10', '磐石|赵子龙|吕布', '36', '37', '磐石', '7', '3', '1', '2016-05-19 12:38:55', 'fininfom', '3', '0', '7,9,10');
INSERT INTO `rock_flow_rule` VALUES ('28', '管理员', '借款单', '13', '39|42|43', '7|9|10', '磐石|赵子龙|吕布', '39', '42', '磐石', '7', '3', '1', '2016-05-19 12:38:55', 'fininfom', '4', '0', '7,9,10');

-- ----------------------------
-- Table structure for `rock_flow_set`
-- ----------------------------
DROP TABLE IF EXISTS `rock_flow_set`;
CREATE TABLE `rock_flow_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '配置名称',
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `table` varchar(50) DEFAULT NULL COMMENT '对应的表',
  `uidfields` varchar(50) DEFAULT NULL COMMENT '对应人员字段',
  `statusfields` varchar(50) DEFAULT NULL COMMENT '状态字段',
  `menunum` varchar(50) DEFAULT NULL COMMENT '对应菜单编号',
  `fields` varchar(500) DEFAULT NULL COMMENT '字段聚合',
  `summary` varchar(500) DEFAULT NULL COMMENT '摘要',
  `type` varchar(20) DEFAULT NULL COMMENT '分类',
  `zntx` tinyint(1) DEFAULT '0' COMMENT '@站内提醒',
  `imtx` tinyint(1) DEFAULT '0' COMMENT '@REIM提醒',
  `emtx` tinyint(1) DEFAULT '0' COMMENT '@邮件提醒',
  `sericnum` varchar(50) DEFAULT NULL COMMENT '编号规则',
  `isflow` tinyint(1) DEFAULT '1' COMMENT '是否有流程',
  `isapp` tinyint(1) DEFAULT '1' COMMENT '@手机模块',
  `wxtx` tinyint(1) DEFAULT '0' COMMENT '微信推送@0|否,1|是',
  `receid` varchar(255) DEFAULT NULL,
  `recename` varchar(255) DEFAULT NULL COMMENT '针对对象',
  `apptx` tinyint(1) DEFAULT '0' COMMENT 'APP提醒@0|否,1|是',
  `tables` varchar(50) DEFAULT NULL COMMENT '对应子表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_flow_set
-- ----------------------------
INSERT INTO `rock_flow_set` VALUES ('1', '请假条', 'leave', '0', '2016-01-31 14:50:12', 'kq_info', null, null, null, 'totals', '{qjkind}:{stime}至{etime}共{totals}小时,{explain}', '人事考勤', '0', '1', '0', 'KL-Ymd-', '1', '1', '0', 'all', '全体人员', '0', null);
INSERT INTO `rock_flow_set` VALUES ('2', '加班单', 'jiaban', '1', '2016-01-31 15:17:02', 'kq_info', null, null, null, 'totals,stime', '从{stime}至{etime}共{totals}小时,{explain}', '人事考勤', '0', '1', '0', 'KJ-Ymd-', '1', '1', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('3', '外出出差', 'waichu', '2', '2015-08-05 11:28:40', 'kq_out', null, null, null, null, '[{atype}]前往{address},{outtime},{reason}', '人事考勤', '1', '1', '0', 'KW-Ymd-', '1', '1', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('4', '文件传送', 'docdeil', '20', '2015-06-24 11:27:33', 'docdeil', null, null, null, null, '{title},接收人:{recename}', '协同办公', '1', '1', '0', 'FI-Ymd-', '1', '0', '1', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('5', '工作日报', 'daily', '21', '2015-12-22 18:21:16', 'daily', null, null, null, null, null, '协同办公', '0', '0', '0', '无', '0', '1', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('6', '物品领用', 'supplea', '5', '2015-11-03 09:59:20', 'supplea', null, null, null, null, '物品:{aname},申请数量:{total}', '行政', '1', '0', '0', 'YP-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('7', '转正申请', 'hrpositive', '30', '2015-08-01 11:54:45', 'hrpositive', null, null, null, null, '入职:{entrydt},职位:{ranking},转正{positivedt},{explain}', '人力资源', '1', '1', '0', 'HR-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('8', '人事调动', 'hrtransfer', '32', '2015-08-04 16:08:53', 'hrtransfer', null, null, null, null, '[{tranname}]【{trantype}】:{olddeptname}→{newdeptname},{oldranking}→{newranking}', '人力资源', '1', '1', '0', 'HT-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('9', '离职申请', 'hrredund', '31', '2015-08-03 10:36:35', 'hrredund', null, null, null, null, '原因【{redundreson}】辞职日期[{quitdt}],类型[{redundtype}]', '人力资源', '1', '1', '0', 'HE-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('10', '打卡异常', 'dkerr', '3', '2015-08-05 12:09:30', 'kq_dkerr', null, null, null, null, '{dt}{errtype},应打卡{ytime}', '人事考勤', '1', '1', '0', 'KE-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('11', '费用报销', 'finfybx', '40', '2016-05-05 16:40:14', 'fininfom', null, null, null, 'money', '报销金额:{money}', '财务', '1', '1', '0', 'PA-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('12', '出差报销', 'finccbx', '41', '2015-09-15 17:09:52', 'fininfom', null, null, null, 'money', '报销金额:{money},目的:{purpose},成果:{purresult}', '财务', '1', '1', '0', 'PB-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('13', '借款单', 'finjkd', '42', '2016-04-20 20:21:08', 'fininfom', null, null, null, 'money', '借款金额:{money},用途:{purpose}', '财务', '1', '1', '0', 'PC-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('14', '奖惩处罚', 'reward', '6', '2015-09-15 10:20:09', 'reward', null, null, null, null, '对【{object}】的{atype},奖惩结果:{result},金额:{money}', '行政', '1', '1', '0', 'YA-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('15', '车辆预定', 'careserve', '7', '2015-09-23 15:38:00', 'careserve', null, null, null, null, '{usename}预定车辆【{carnum}】在{startdt}前往{address}', '行政', '1', '0', '0', 'YB-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('16', '会议预定', 'meet', '8', '2016-04-07 20:29:54', 'meet', null, null, null, null, '预定[{hyname}]从{startdt}→{enddt}', '行政', '1', '0', '0', 'YC-Ymd-', '1', '1', '1', null, null, '1', null);
INSERT INTO `rock_flow_set` VALUES ('17', '业务需求', 'demand', '22', '2015-11-27 22:03:26', 'demand', null, null, null, null, '需求[{title}]', '协同办公', '1', '1', '0', 'FX-Ymd-', '1', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('18', '工作任务', 'work', '23', '2016-03-16 09:44:54', 'work', null, null, null, null, null, '协同办公', '1', '0', '0', '无', '0', '1', '1', null, null, '1', null);
INSERT INTO `rock_flow_set` VALUES ('19', '项目任务', 'projectm', '24', '2015-12-15 20:31:40', 'projectm', null, null, null, null, null, '协同办公', '1', '0', '0', '无', '0', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('20', '销假单', 'sickx', '4', '2015-12-30 21:33:43', 'kq_sick', null, null, null, null, '对【{mseric}】进行销假,{explain}', '人事考勤', '1', '0', '0', 'KF-Ymd-', '0', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('21', '通知公告', 'gong', '9', '2016-04-19 21:21:26', 'infor', null, null, null, null, null, '行政', '0', '1', '0', '无', '0', '1', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('22', '内部邮件', 'emailin', '25', '2016-03-20 20:54:27', 'emailm', null, null, null, null, null, '协同办公', '1', '0', '0', 'FE-Ymd-', '0', '1', '1', null, null, '1', null);
INSERT INTO `rock_flow_set` VALUES ('23', '资产管理', 'assetm', '10', '2016-04-27 22:04:30', 'assetm', null, null, null, null, null, '行政', '0', '0', '0', '无', '0', '0', '0', null, null, '0', null);
INSERT INTO `rock_flow_set` VALUES ('24', '车辆信息', 'carm', '11', '2016-04-27 22:17:25', 'carm', null, null, null, null, null, '行政', '0', '0', '0', '无', '0', '0', '0', null, null, '0', null);

-- ----------------------------
-- Table structure for `rock_group`
-- ----------------------------
DROP TABLE IF EXISTS `rock_group`;
CREATE TABLE `rock_group` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '组名',
  `sort` tinyint(4) DEFAULT '0',
  `ispir` tinyint(4) DEFAULT '1' COMMENT '是否权限验证',
  `indate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_group
-- ----------------------------
INSERT INTO `rock_group` VALUES ('1', '系统管理员', '1', '0', '2014-09-04 17:33:47');
INSERT INTO `rock_group` VALUES ('5', '组名', '2', '1', '2014-09-04 17:33:56');

-- ----------------------------
-- Table structure for `rock_homeitems`
-- ----------------------------
DROP TABLE IF EXISTS `rock_homeitems`;
CREATE TABLE `rock_homeitems` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0',
  `uid` smallint(6) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `num` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `type` smallint(6) DEFAULT '0',
  `sort` smallint(6) DEFAULT '0',
  `receid` varchar(200) DEFAULT NULL,
  `recename` varchar(200) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `ismr` tinyint(1) DEFAULT '1',
  `x` smallint(6) DEFAULT '0',
  `y` smallint(6) DEFAULT '0',
  `w` smallint(6) DEFAULT '0',
  `h` smallint(6) DEFAULT '0',
  `icons` varchar(30) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_homeitems
-- ----------------------------
INSERT INTO `rock_homeitems` VALUES ('1', '0', '0', null, 'daib', '待办/处理', '0', '1', 'all', '全体人员', '1', '1', '10', '5', '400', '250', 'time', null);
INSERT INTO `rock_homeitems` VALUES ('2', '0', '0', null, 'work', '工作任务', '0', '2', 'all', '全体人员', '1', '1', '418', '5', '699', '250', 'pencil', null);
INSERT INTO `rock_homeitems` VALUES ('3', '0', '0', null, 'wannl', '万年历', '0', '3', 'all', '全体人员', '1', '1', '10', '520', '550', '350', 'calendar', null);
INSERT INTO `rock_homeitems` VALUES ('4', '0', '0', null, 'todo', '提醒信息', '0', '1', 'all', '全体人员', '1', '1', '10', '262', '550', '250', 'lightbulb', null);
INSERT INTO `rock_homeitems` VALUES ('5', '0', '0', null, 'gong', '信息公告', '0', '2', 'all', '全体人员', '1', '1', '568', '261', '550', '250', 'sound_none', null);
INSERT INTO `rock_homeitems` VALUES ('6', '0', '0', null, 'zxkq', '在线考勤', '0', '3', 'all', '全体人员', '1', '1', '571', '776', '550', '250', 'clock', null);
INSERT INTO `rock_homeitems` VALUES ('7', '0', '0', '所有人员默认首页', null, null, '1', '0', 'all', '全体人员', '1', '1', '0', '0', '0', '0', null, null);
INSERT INTO `rock_homeitems` VALUES ('8', '7', '0', null, null, null, '1', '0', null, null, '1', '1', '10', '5', '451', '250', null, null);
INSERT INTO `rock_homeitems` VALUES ('9', '7', '0', null, null, null, '4', '0', null, null, '1', '1', '470', '5', '645', '250', null, null);
INSERT INTO `rock_homeitems` VALUES ('30', '14', '0', null, null, null, '2', '0', null, null, '1', '1', '528', '529', '591', '250', null, null);
INSERT INTO `rock_homeitems` VALUES ('11', '7', '0', null, null, null, '5', '0', null, null, '1', '1', '10', '266', '533', '274', null, null);
INSERT INTO `rock_homeitems` VALUES ('13', '7', '0', null, null, null, '3', '0', null, null, '1', '1', '552', '265', '564', '350', null, null);
INSERT INTO `rock_homeitems` VALUES ('14', '0', '0', '管理首页', null, null, '1', '1', 'u1', '管理员', '1', '1', '0', '0', '0', '0', null, null);
INSERT INTO `rock_homeitems` VALUES ('28', '14', '0', null, null, null, '1', '0', null, null, '1', '1', '10', '7', '400', '250', null, null);
INSERT INTO `rock_homeitems` VALUES ('25', '0', '0', null, 'emailin', '内部邮件', '0', '7', 'all', '全体人员', '1', '1', '569', '518', '550', '250', 'email', null);
INSERT INTO `rock_homeitems` VALUES ('29', '14', '0', null, null, null, '4', '0', null, null, '1', '1', '528', '266', '590', '248', null, null);
INSERT INTO `rock_homeitems` VALUES ('27', '0', '0', null, 'minstall', '模块安装升级', '0', '8', 'u1', '管理员', '1', '1', '0', '0', '400', '250', 'arrow_up', null);
INSERT INTO `rock_homeitems` VALUES ('31', '14', '0', null, null, null, '5', '0', null, null, '1', '1', '10', '266', '508', '250', null, null);
INSERT INTO `rock_homeitems` VALUES ('32', '14', '0', null, null, null, '3', '0', null, null, '1', '1', '10', '526', '509', '322', null, null);
INSERT INTO `rock_homeitems` VALUES ('33', '14', '0', null, null, null, '27', '0', null, null, '1', '1', '421', '7', '696', '250', null, null);

-- ----------------------------
-- Table structure for `rock_hrpositive`
-- ----------------------------
DROP TABLE IF EXISTS `rock_hrpositive`;
CREATE TABLE `rock_hrpositive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ranking` varchar(30) DEFAULT NULL COMMENT '职位',
  `entrydt` date DEFAULT NULL COMMENT '入职日期',
  `syenddt` date DEFAULT NULL COMMENT '试用到期日',
  `positivedt` date DEFAULT NULL COMMENT '转正日期',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `nowcheckid` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所以审核人',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '@当然状态',
  `statusman` varchar(20) DEFAULT NULL COMMENT '@审核人',
  `nowcheckname` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `isover` tinyint(1) DEFAULT '0',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_hrpositive
-- ----------------------------
INSERT INTO `rock_hrpositive` VALUES ('1', '1', 'OA项目经理', '2015-01-01', '2015-08-01', '2015-08-15', '2015-08-01 11:52:54', '哈哈哈哈', '1', '1', null, '7,3', '1', '貂蝉', null, '1', null, null, null);
INSERT INTO `rock_hrpositive` VALUES ('3', '1', 'OA项目经理', '2015-01-01', '2016-04-30', '2016-05-01', '2016-04-26 21:09:18', '工作人我', '0', '1', '7', '7,3', '0', null, '磐石', '0', '1', '管理员', '2016-04-26');

-- ----------------------------
-- Table structure for `rock_hrredund`
-- ----------------------------
DROP TABLE IF EXISTS `rock_hrredund`;
CREATE TABLE `rock_hrredund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ranking` varchar(30) DEFAULT NULL COMMENT '职位',
  `entrydt` date DEFAULT NULL COMMENT '入职日期',
  `quitdt` date DEFAULT NULL COMMENT '离职日期',
  `redundtype` varchar(20) DEFAULT NULL COMMENT '离职类型',
  `redundreson` varchar(100) DEFAULT NULL COMMENT '离职原因',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `nowcheckid` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所以审核人',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '@当然状态',
  `statusman` varchar(20) DEFAULT NULL COMMENT '@审核人',
  `nowcheckname` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `isover` tinyint(1) DEFAULT '0',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_hrredund
-- ----------------------------
INSERT INTO `rock_hrredund` VALUES ('1', '1', 'OA项目经理', '2015-01-01', '2015-08-04', '自动离职', '无法胜任工作,另找到工作,年龄到期', '2015-08-03 10:49:07', 'hahaha', '5', '1', '7', '7,3', '2', '刘备', '刘备', '0', null, null, null);
INSERT INTO `rock_hrredund` VALUES ('3', '1', 'OA项目经理', '2015-01-01', '2016-04-30', '退休', '另找到工作,身体原因,年龄到期', '2016-04-26 21:52:47', '呵呵呵呵，离职喽，退休啦', '0', '1', '7', '7,3', '0', null, '磐石', '0', '1', '管理员', '2016-04-26');

-- ----------------------------
-- Table structure for `rock_hrtransfer`
-- ----------------------------
DROP TABLE IF EXISTS `rock_hrtransfer`;
CREATE TABLE `rock_hrtransfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `tranuid` int(11) DEFAULT NULL,
  `tranname` varchar(20) DEFAULT NULL COMMENT '要调动人',
  `trantype` varchar(20) DEFAULT NULL COMMENT '调动类型',
  `olddeptname` varchar(50) DEFAULT NULL COMMENT '原来部门',
  `oldranking` varchar(20) DEFAULT NULL COMMENT '原来职位',
  `effectivedt` date DEFAULT NULL COMMENT '生效日期',
  `newdeptname` varchar(50) DEFAULT NULL COMMENT '调动后部门',
  `newdeptid` smallint(6) DEFAULT NULL,
  `newranking` varchar(20) DEFAULT NULL COMMENT '调动后职位',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `nowcheckid` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所以审核人',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '@当然状态',
  `statusman` varchar(20) DEFAULT NULL COMMENT '@审核人',
  `nowcheckname` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `isover` tinyint(1) DEFAULT '0',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_hrtransfer
-- ----------------------------
INSERT INTO `rock_hrtransfer` VALUES ('1', '1', '7', '刘备', '平调', '管理部', '董事长', '2015-08-03', '业务部', '2', 'CEO', '2015-08-03 17:46:15', 'hahahah', '1', '1', null, '3', '1', '貂蝉', null, '1', null, null, null);
INSERT INTO `rock_hrtransfer` VALUES ('2', '1', '1', '管理员', '平调', '业务部', 'CEO', '2015-08-03', '开发部', '4', 'OA项目经理', '2015-08-03 17:49:34', 'hah', '1', '1', null, '3', '1', '貂蝉', null, '1', null, null, null);
INSERT INTO `rock_hrtransfer` VALUES ('3', '1', '7', '刘备', '晋升', '业务部', 'CEO', '2015-08-03', '管理部', '1', '董事长', '2015-08-03 18:09:37', '董事长aa', '1', '1', null, '3', '1', '貂蝉', null, '1', null, null, null);
INSERT INTO `rock_hrtransfer` VALUES ('4', '1', '1', '管理员', '晋升', '开发部', 'OA项目经理', '2016-05-01', '开发部', '4', '技术总监', '2016-04-26 22:35:06', '好好做啊！', '0', '1', '3', '3', '0', null, '貂蝉', '0', '1', '管理员', '2016-04-26');

-- ----------------------------
-- Table structure for `rock_im_group`
-- ----------------------------
DROP TABLE IF EXISTS `rock_im_group`;
CREATE TABLE `rock_im_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|群,1|讨论组,2|应用',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `createid` int(11) DEFAULT NULL,
  `createname` varchar(20) DEFAULT NULL COMMENT '创建人',
  `createdt` datetime DEFAULT NULL COMMENT '创建时间',
  `face` varchar(50) DEFAULT NULL COMMENT '头像',
  `num` varchar(20) DEFAULT NULL,
  `receid` varchar(200) DEFAULT NULL,
  `recename` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `width` smallint(6) DEFAULT '0',
  `height` smallint(6) DEFAULT '0',
  `chatid` varchar(30) DEFAULT NULL COMMENT '会话Id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_im_group
-- ----------------------------
INSERT INTO `rock_im_group` VALUES ('1', '技术群', '0', '0', null, null, null, null, null, null, null, null, '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('2', '讨论区1', '1', '0', null, null, null, null, null, null, null, null, '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('3', '通知公告', '2', '0', null, null, null, 'webreim/client/images/im/laba.png', 'gong', null, null, null, '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('4', '会议通知', '2', '0', null, null, null, 'webreim/client/images/im/meet.png', 'meet', null, null, 'webreim/client/agent/meet.html', '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('5', '商务群', '0', '0', null, null, null, null, null, null, null, null, '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('7', '单据待办', '2', '0', null, null, '2015-06-25 16:03:34', 'webreim/client/images/im/daibans.png', 'daiban', null, null, 'webreim/client/agent/daiban.html', '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('8', '哈哈哈', '1', '0', '1', '管理员', '2015-07-17 17:43:38', null, null, null, null, null, '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('9', 'OA项目讨论', '1', '0', '1', null, '2015-08-14 17:11:18', null, null, null, null, null, '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('10', '高管的', '1', '0', '1', null, '2015-08-14 17:13:24', null, null, null, null, null, '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('11', '人事招聘', '1', '0', '3', null, '2015-08-18 09:34:04', null, null, null, null, null, '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('12', '项目任务', '2', '8', '1', '管理员', '2015-09-10 13:38:07', 'webreim/client/images/im/renwu.png', 'work', null, null, 'webreim/client/agent/work.html', '1', '0', '0', null);
INSERT INTO `rock_im_group` VALUES ('13', '万年历', '2', '10', null, null, null, 'images/calendar.png', 'calendar', null, null, 'webreim/client/agent/wnl.html', '1', '0', '0', null);

-- ----------------------------
-- Table structure for `rock_im_groupuser`
-- ----------------------------
DROP TABLE IF EXISTS `rock_im_groupuser`;
CREATE TABLE `rock_im_groupuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `adddt` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_im_groupuser
-- ----------------------------
INSERT INTO `rock_im_groupuser` VALUES ('1', '1', '1', null);
INSERT INTO `rock_im_groupuser` VALUES ('2', '1', '2', null);
INSERT INTO `rock_im_groupuser` VALUES ('3', '1', '3', null);
INSERT INTO `rock_im_groupuser` VALUES ('4', '1', '4', null);
INSERT INTO `rock_im_groupuser` VALUES ('10', '2', '2', null);
INSERT INTO `rock_im_groupuser` VALUES ('17', '1', '5', '2015-07-21 10:54:01');
INSERT INTO `rock_im_groupuser` VALUES ('11', '2', '5', '2015-06-16 12:04:08');
INSERT INTO `rock_im_groupuser` VALUES ('14', '8', '1', '2015-07-17 17:43:38');
INSERT INTO `rock_im_groupuser` VALUES ('15', '8', '4', '2015-07-17 17:44:53');
INSERT INTO `rock_im_groupuser` VALUES ('20', '9', '1', '2015-08-14 17:11:18');
INSERT INTO `rock_im_groupuser` VALUES ('27', '11', '3', '2015-08-18 09:34:04');
INSERT INTO `rock_im_groupuser` VALUES ('22', '10', '7', '2015-08-14 17:13:50');
INSERT INTO `rock_im_groupuser` VALUES ('23', '8', '7', '2015-08-17 11:31:44');
INSERT INTO `rock_im_groupuser` VALUES ('24', '8', '9', '2015-08-17 11:32:40');
INSERT INTO `rock_im_groupuser` VALUES ('25', '8', '10', '2015-08-17 11:32:40');
INSERT INTO `rock_im_groupuser` VALUES ('26', '8', '8', '2015-08-17 11:32:40');
INSERT INTO `rock_im_groupuser` VALUES ('28', '11', '4', '2015-08-18 09:36:42');
INSERT INTO `rock_im_groupuser` VALUES ('29', '8', '3', '2016-01-05 18:22:42');
INSERT INTO `rock_im_groupuser` VALUES ('30', '8', '5', '2016-01-05 18:22:42');
INSERT INTO `rock_im_groupuser` VALUES ('31', '2', '7', '2016-04-18 21:17:13');

-- ----------------------------
-- Table structure for `rock_im_history`
-- ----------------------------
DROP TABLE IF EXISTS `rock_im_history`;
CREATE TABLE `rock_im_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `mid` smallint(6) DEFAULT NULL,
  `uid` smallint(6) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_im_history
-- ----------------------------

-- ----------------------------
-- Table structure for `rock_im_mess`
-- ----------------------------
DROP TABLE IF EXISTS `rock_im_mess`;
CREATE TABLE `rock_im_mess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optdt` datetime DEFAULT NULL,
  `zt` tinyint(1) DEFAULT '0' COMMENT '状态',
  `cont` varchar(4000) DEFAULT NULL COMMENT '内容',
  `sendid` smallint(6) DEFAULT NULL,
  `receid` smallint(6) DEFAULT '0' COMMENT '接收',
  `receuid` varchar(1000) DEFAULT NULL COMMENT '接收用户id',
  `type` varchar(20) DEFAULT NULL COMMENT '信息类型',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL COMMENT '对应表',
  `mid` int(11) DEFAULT NULL COMMENT '主id',
  `url` varchar(1000) DEFAULT NULL COMMENT '相关地址',
  `ftype` tinyint(1) DEFAULT '0' COMMENT '来源@0|pc端,1|APP',
  `ists` tinyint(1) DEFAULT '0' COMMENT '推送',
  `tstime` datetime DEFAULT NULL COMMENT '推送时间',
  PRIMARY KEY (`id`),
  KEY `optdt` (`optdt`,`receid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_im_mess
-- ----------------------------
INSERT INTO `rock_im_mess` VALUES ('1', '2016-05-17 21:35:32', '0', 'MTIxMjEy', '1', '2', '1,2', 'user', null, null, null, null, null, '1', '0', null);
INSERT INTO `rock_im_mess` VALUES ('2', '2016-05-17 22:32:47', '0', '5Y2V5o2u5aSE55CGPGJyPuaooeWdlzror7flgYfmnaE8YnI!5Y2V5Y!3OktMLTIwMTYwNTE2LTAwMDE8YnI!55Sz6K!35Lq6OueuoeeQhuWRmDxicj7pg6jpl6g65byA5Y!R6YOo', '1', '7', '7', 'agent', '1', null, 'kq_info', '59', null, '0', '0', null);
INSERT INTO `rock_im_mess` VALUES ('3', '2016-05-19 12:33:07', '0', '5Y2V5o2u5aSE55CGPGJyPuaooeWdlzror7flgYfmnaE8YnI!5Y2V5Y!3OktMLTIwMTYwNDIzLTAwMDE8YnI!55Sz6K!35Lq6OueuoeeQhuWRmDxicj7pg6jpl6g65byA5Y!R6YOo', '7', '7', '3', 'agent', '7', null, 'kq_info', '54', null, '0', '0', null);

-- ----------------------------
-- Table structure for `rock_im_messzt`
-- ----------------------------
DROP TABLE IF EXISTS `rock_im_messzt`;
CREATE TABLE `rock_im_messzt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '信息id',
  `uid` int(11) DEFAULT NULL COMMENT '人员id',
  `gid` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_im_messzt
-- ----------------------------
INSERT INTO `rock_im_messzt` VALUES ('1', '2', '7', '7');
INSERT INTO `rock_im_messzt` VALUES ('2', '3', '3', '7');

-- ----------------------------
-- Table structure for `rock_infor`
-- ----------------------------
DROP TABLE IF EXISTS `rock_infor`;
CREATE TABLE `rock_infor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `typenum` varchar(50) DEFAULT NULL COMMENT '类型编号',
  `typename` varchar(50) DEFAULT NULL COMMENT '类型名称',
  `content` varchar(4000) DEFAULT NULL COMMENT '内容',
  `hits` tinyint(5) DEFAULT '0',
  `enddt` datetime DEFAULT NULL,
  `startdt` datetime DEFAULT NULL,
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '作者',
  `istt` tinyint(1) DEFAULT '0',
  `xu` smallint(6) DEFAULT '0',
  `color` varchar(7) DEFAULT NULL,
  `isshow` tinyint(1) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  `zuozhe` varchar(50) DEFAULT NULL COMMENT '作者',
  `indate` date DEFAULT NULL COMMENT '时间',
  `faobjid` varchar(200) DEFAULT NULL,
  `faobjname` varchar(200) DEFAULT NULL COMMENT '发布给',
  `atype` tinyint(1) DEFAULT '0' COMMENT '@分类id@0内部,1部门',
  `isturn` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_infor
-- ----------------------------
INSERT INTO `rock_infor` VALUES ('1', null, '关于OA上线通知公告', 'notice', '通知公告', '<p>\n	关于OA上线通知公告关于OA上线通知公告关于OA上线通知公告关于OA上线通知公告关于OA上线通知公告关于OA上线通知公告关于OA上线通知公告\n</p>', '58', null, null, '1', '管理员', '1', '1', null, '1', '2015-11-21 17:58:22', '行政部门', '2015-03-03', null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('2', null, '工作日报制度', 'rules', '规章制度', null, '5', null, null, '1', '管理员', '0', '2', null, '1', '2014-12-16 16:04:46', null, null, null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('3', null, '考勤制度', 'rules', '规章制度', null, '6', null, null, '1', '管理员', '0', '2', null, '1', '2014-12-16 16:04:55', null, null, null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('4', null, '请假销假制度', 'rules', '规章制度', null, '13', null, null, '1', '管理员', '0', '2', null, '1', '2015-02-12 15:27:16', null, null, null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('5', null, '加班制度', 'rules', '规章制度', null, '6', null, null, '1', '管理员', '0', '2', null, '1', '2014-12-16 16:05:15', null, null, null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('6', null, '规章制度是一个神马东东呢？', 'rules', '规章制度', null, '17', null, null, '1', '管理员', '0', '1', null, '1', '2015-02-12 15:28:53', null, null, null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('7', null, '信呼', 'notice', '通知公告', '信呼，是作者推出轻量级的协同办公软件，是开源的一款办公系统，跨平台的系统，支持APP，pc网页版，pc客户端等。<br />\n1、让每个企业单位都有自己的工作系统。<br />\n2、移动，免费开源工作系统，数据全部自己管理。<br />\n3、自定义管理应用，模块数据，权限分配。<br />\n4、单据快速提醒推送，重要通知任务及时提醒。<br />\n5、即时信息沟通交流。\n<div>\n	6、更多的请到官网下载，包括APP，服务端，客户端等下载。\n</div>\n<p>\n	官网地址：<a target=\"_blank\" href=\"http://xinhu.pw/\">http://xinhu.pw/</a>\n</p>', '28', null, null, '1', '管理员', '0', '0', null, '1', '2016-07-04 22:26:25', 'RockOA开发团队', '2016-07-04', null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('8', null, '当月2016-03技术KPI考核', 'jishukao', '技术考核', '<p>\n	管理员：做好开发OA完善，提高系统安全性，确保不要被黑(100%)。\n</p>\n<p>\n	张飞：拿下金州(100%)\n</p>\n<p>\n	----↑以上人员确保当月可以完成----\n</p>', '9', null, null, '1', '管理员', '0', '0', null, '1', '2016-02-27 11:32:50', '开发部', '2016-02-27', 'd4', '开发部', '4', '1', '1');
INSERT INTO `rock_infor` VALUES ('9', null, '欢迎使用ROCKOA，这里有说明文档', 'notice', '通知公告', null, '11', null, null, '1', '管理员', '0', '0', null, '1', '2015-08-11 10:16:32', null, null, null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('10', null, '关于REIM使用通知', 'notice', '通知公告', null, '2', null, null, '1', '管理员', '0', '0', null, '1', '2015-11-12 18:59:09', null, null, 'd3', '行政人事', '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('11', null, '关于对【管理员】奖励通告', 'jiang', '奖惩通告', '<p>\n	关于对【管理员】奖励通告，工作认真，奖励1W人民币！如下头像\n</p>\n<p>\n	<img alt=\"\" src=\"upload/2015-10/21_1410222684.jpg\" />\n</p>\n<p>\n	&nbsp;\n</p>', '15', null, null, '1', '管理员', '0', '0', null, '1', '2015-10-21 14:10:24', null, null, null, null, '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('12', null, '更多的模块的安装使用', 'notice', '通知公告', '<p>\n	<span style=\"font-size:18px;\">更多的模块请查看官网站点</span><a href=\"http://www.rockoa.com\"><span style=\"font-size:18px;\">www.rockoa.com</span></a> \n</p>', '14', null, null, '1', '管理员', '0', '0', null, '1', '2016-02-26 21:10:37', 'RockOA开发团队', '2016-01-21', 'd4', '开发部', '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('13', null, '移动办公来了,微信企业号办公', 'notice', '通知公告', '<p>\n	1、移动办公来了真的来了，微信企业号办公，内置各个基础模块使用。\n</p>\n<p>\n	2、您有单据要审批？你是不是在外面呢？哈哈，用微信企业号，拿在手上随时都可以审批。\n</p>\n<p>\n	3、外出出差轨迹报告，防止你乱跑。\n</p>\n<p>\n	<a href=\"http://www.rockoa.com/mobile.shtml\"> 详见查看</a> \n</p>\n<p>\n	以下是效果图：\n</p>\n<p>\n	<img width=\"400\" alt=\"\" src=\"http://img.rockoa.com/upload/2016-03/21_1352101910.png\" /> \n</p>\n<p>\n	&nbsp;\n</p>\n<p>\n	<img width=\"400\" alt=\"\" src=\"http://img.rockoa.com/upload/2016-03/21_1352174891.png\" /> \n</p>', '20', null, null, '1', '管理员', '0', '0', null, '1', '2016-04-07 19:37:40', 'RockOA开发团队', '2016-01-21', 'all', '全体人员', '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('14', null, '欢迎RockOA最新版本V2.3.2版本上线', 'notice', '通知公告', '<p>\n	版本更新了很多内容\n</p>\n<p>\n	1、最新版本和demo上一致。\n</p>\n<p>\n	2、添加了可自定义模块元素，录入元素。\n</p>\n<p>\n	3、无需写任何代码即可开发一个流程模块出来喽，<a href=\"http://www.rockoa.com/view_flowset.html\" target=\"_blank\">详情</a> \n</p>\n<p>\n	&nbsp;\n</p>', '23', null, null, '1', '管理员', '0', '0', null, '1', '2016-07-04 22:26:40', 'RockOA开发团队', '2016-07-04', null, '全体人员', '0', '1', '1');
INSERT INTO `rock_infor` VALUES ('15', null, 'REIM全面升级', 'notice', '通知公告', '<p>\n	REIM全面升级，不用在使用客户端，可web交流，也可以使用客户端，可到官网下载。\n</p>\n<p>\n	使用方法\n</p>\n<p>\n	1、到您OA模块那安装api方法。\n</p>\n<p>\n	2、登录首页设置一下您的OA地址，调用api。\n</p>\n<p>\n	3、推送可自己搭建服务器，也可以使用官网来测试推送【系统管理→REIM通信管理→服务器设置】。\n</p>\n<p>\n	效果图如下\n</p>\n<p>\n	<img alt=\"\" src=\"http://img.rockoa.com/upload/2016-04/14_2111507865.png\" />\n</p>\n<p>\n	<img alt=\"\" src=\"http://img.rockoa.com/upload/2016-04/14_2112027682.png\" />\n</p>', '0', null, null, '1', '管理员', '0', '0', null, '1', '2016-04-14 21:14:28', 'RockOA开发团队', '2016-04-14', 'all', '全体人员', '0', '1', '1');

-- ----------------------------
-- Table structure for `rock_items`
-- ----------------------------
DROP TABLE IF EXISTS `rock_items`;
CREATE TABLE `rock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(20) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `atype` varchar(20) DEFAULT NULL COMMENT '类型',
  `aid` smallint(6) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL COMMENT '相关名称',
  `startdt` varchar(30) DEFAULT NULL COMMENT '开始时间',
  `enddt` varchar(30) DEFAULT NULL COMMENT '截止时间',
  `moneys` decimal(8,2) DEFAULT '0.00' COMMENT '金额',
  `sort` smallint(6) DEFAULT '0',
  `address` varchar(50) DEFAULT NULL COMMENT '相关地点',
  `explain` varchar(100) DEFAULT NULL COMMENT '说明',
  `count` smallint(6) DEFAULT '0' COMMENT '数量',
  `optdt` datetime DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1' COMMENT '是否有效',
  `optid` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_items
-- ----------------------------
INSERT INTO `rock_items` VALUES ('5', 'fininfom', '1', null, '0', '停车费', '2016-05-05', null, '12.00', '0', null, null, '0', '2016-05-05 20:19:42', '1', '1');
INSERT INTO `rock_items` VALUES ('6', 'fininfom', '3', null, '0', '市内交通费', '2016-05-04', null, '399.00', '0', '北京', '火车票', '0', '2016-05-05 21:50:09', '1', '1');
INSERT INTO `rock_items` VALUES ('7', 'fininfom', '3', null, '0', '市内交通费', '2016-05-05', null, '200.00', '1', '厦门', '打了黑车啊，坑', '0', '2016-05-05 21:50:09', '1', '1');

-- ----------------------------
-- Table structure for `rock_kq_anay`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_anay`;
CREATE TABLE `rock_kq_anay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date DEFAULT NULL COMMENT '日期',
  `uid` smallint(6) DEFAULT NULL COMMENT '人员id',
  `ztname` varchar(20) DEFAULT NULL COMMENT '状态名称',
  `time` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL COMMENT '状态名称',
  `states` varchar(20) DEFAULT NULL COMMENT '状态1',
  `sort` smallint(6) DEFAULT '0',
  `optname` varchar(50) DEFAULT NULL COMMENT '操作人',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `iswork` tinyint(4) DEFAULT '1' COMMENT '是否工作日',
  `emiao` varchar(20) DEFAULT NULL COMMENT '秒数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_anay
-- ----------------------------

-- ----------------------------
-- Table structure for `rock_kq_dkerr`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_dkerr`;
CREATE TABLE `rock_kq_dkerr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `errtype` varchar(20) DEFAULT NULL COMMENT '异常类型',
  `dt` date DEFAULT NULL COMMENT '日期',
  `ytime` varchar(20) DEFAULT NULL COMMENT '应打卡时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `nowcheckid` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所以审核人',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '@当然状态',
  `statusman` varchar(20) DEFAULT NULL COMMENT '@审核人',
  `nowcheckname` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_dkerr
-- ----------------------------
INSERT INTO `rock_kq_dkerr` VALUES ('1', '1', '忘记打卡', '2015-07-29', '09:00:00', '2015-08-05 12:08:41', '哈哈哈', '1', '1', null, '7', '1', '刘备', null, null, null, null);
INSERT INTO `rock_kq_dkerr` VALUES ('2', '1', '忘记打卡', '2015-08-20', '16:34:00', '2015-08-20 16:37:34', 'hahha', '5', '1', '7', '7', '0', null, '刘备', '1', '管理员', '2015-08-20');
INSERT INTO `rock_kq_dkerr` VALUES ('3', '1', '忘记打卡', '2015-11-27', '20:57:00', '2015-11-27 20:56:41', '呵呵呵', '1', '1', null, '7', '1', '刘备', null, '1', '管理员', '2015-11-27');

-- ----------------------------
-- Table structure for `rock_kq_dkip`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_dkip`;
CREATE TABLE `rock_kq_dkip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receid` varchar(200) DEFAULT NULL,
  `recename` varchar(200) DEFAULT NULL,
  `ipvalue` varchar(300) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_dkip
-- ----------------------------
INSERT INTO `rock_kq_dkip` VALUES ('1', 'all', '全体人员', '127.0.0.1,*.*,::1', '0');

-- ----------------------------
-- Table structure for `rock_kq_dkjl`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_dkjl`;
CREATE TABLE `rock_kq_dkjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finge` varchar(20) DEFAULT NULL COMMENT '指纹',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `checktime` datetime DEFAULT NULL COMMENT '时间',
  `web` varchar(50) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '来源@0|打卡机,1|异常登记,2|手动添加,3|定位的',
  `locationid` int(11) DEFAULT '0' COMMENT '对应定位记录',
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `finge` (`finge`,`checktime`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_dkjl
-- ----------------------------
INSERT INTO `rock_kq_dkjl` VALUES ('3', '1', '管理员', '2015-11-04 14:41:37', 'MSIE 9', '2', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('4', '1', '管理员', '2015-11-21 23:02:27', 'MSIE 9', '2', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('5', '1', '管理员', '2015-11-22 21:31:50', 'MSIE 9', '2', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('6', '1', '管理员', '2015-11-27 20:57:00', null, '1', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('7', '1', '管理员', '2016-01-07 21:20:31', 'MSIE 9', '2', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('8', '1', '管理员', '2016-01-06 08:20:31', null, '0', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('9', '1', '管理员', '2016-01-06 18:20:31', null, '0', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('10', '1', '管理员', '2016-02-18 21:25:32', null, '3', '1', null);
INSERT INTO `rock_kq_dkjl` VALUES ('11', '1', '管理员', '2016-02-26 18:49:01', null, '3', '2', null);
INSERT INTO `rock_kq_dkjl` VALUES ('12', '1', '管理员', '2016-02-26 18:50:05', null, '3', '3', null);
INSERT INTO `rock_kq_dkjl` VALUES ('13', '1', '管理员', '2016-02-26 18:53:36', null, '3', '4', null);
INSERT INTO `rock_kq_dkjl` VALUES ('14', '1', '管理员', '2016-02-26 19:26:52', null, '3', '5', null);
INSERT INTO `rock_kq_dkjl` VALUES ('15', '1', '管理员', '2016-02-26 19:28:57', null, '3', '6', null);
INSERT INTO `rock_kq_dkjl` VALUES ('16', '1', '管理员', '2016-02-26 19:39:37', null, '3', '7', null);
INSERT INTO `rock_kq_dkjl` VALUES ('17', '1', '管理员', '2016-03-01 00:44:56', 'Chrome', '2', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('18', '1', '管理员', '2016-03-01 00:45:00', 'Chrome', '2', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('19', '1', '管理员', '2016-03-01 11:02:11', 'Chrome', '2', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('20', '1', '管理员', '2016-03-01 11:02:17', 'Chrome', '2', '0', null);
INSERT INTO `rock_kq_dkjl` VALUES ('21', '1', '管理员', '2016-03-01 11:04:51', null, '3', '8', null);
INSERT INTO `rock_kq_dkjl` VALUES ('22', '1', '管理员', '2016-03-01 11:05:08', null, '3', '9', null);
INSERT INTO `rock_kq_dkjl` VALUES ('23', '1', '管理员', '2016-03-01 13:36:51', null, '3', '10', null);
INSERT INTO `rock_kq_dkjl` VALUES ('24', '1', '管理员', '2016-03-02 15:57:36', 'Safari', '2', '0', null);

-- ----------------------------
-- Table structure for `rock_kq_info`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_info`;
CREATE TABLE `rock_kq_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `kind` varchar(10) DEFAULT NULL COMMENT '类型@请假,加班',
  `qjkind` varchar(20) DEFAULT NULL COMMENT '请假类型@年假',
  `stime` datetime DEFAULT NULL COMMENT '开始时间',
  `etime` datetime DEFAULT NULL COMMENT '截止时间',
  `totals` decimal(6,1) DEFAULT '0.0' COMMENT '时间(小时)',
  `optid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `nowcheckid` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所以审核人',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '@当然状态',
  `statusman` varchar(20) DEFAULT NULL COMMENT '@审核人',
  `nowcheckname` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `isxj` tinyint(1) DEFAULT '0',
  `sicksm` varchar(500) DEFAULT NULL COMMENT '销假说明',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_info
-- ----------------------------
INSERT INTO `rock_kq_info` VALUES ('33', '1', '请假', '年假', '2015-08-04 09:00:00', '2015-08-04 18:00:00', '8.0', '0', '2015-08-05 14:36:33', '12', '1', '1', null, '7,5', '1', '小乔', null, null, null, '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('34', '1', '加班', null, '2015-07-20 10:31:00', '2015-07-20 20:31:00', '10.0', '0', '2015-07-20 10:31:17', '12', '5', '1', '3', '3', '0', null, '貂蝉', null, null, '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('35', '1', '请假', '事假', '2015-08-03 10:00:00', '2015-08-03 18:01:00', '8.0', '0', '2015-08-03 15:01:24', '12', '1', '1', null, '7,5', '1', '小乔', null, null, null, '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('36', '1', '请假', '事假', '2015-08-17 16:52:00', '2015-08-17 16:52:00', '1.0', '0', '2015-08-17 16:54:39', 'afwew', '5', '1', '7', '7,5', '2', '刘备', '刘备', null, null, '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('37', '1', '请假', '事假', '2015-08-19 10:59:00', '2015-08-20 10:59:00', '8.0', '0', '2015-08-19 10:59:43', '12', '5', '1', '7', '7,5', '0', null, '刘备', null, null, '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('38', '1', '增加年假', null, '2015-08-01 14:58:00', '2015-08-19 14:58:00', '40.0', '1', '2015-08-19 14:58:53', null, '1', '1', null, null, '0', '管理员', null, null, null, '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('39', '1', '请假', '年假', '2015-08-20 10:47:00', '2015-08-21 10:47:00', '8.0', '0', '2015-08-20 10:57:03', '12', '1', '1', null, '7,5', '1', '小乔', null, null, null, '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('40', '1', '请假', '事假', '2015-10-20 09:43:00', '2015-10-21 09:43:00', '8.0', '1', '2015-10-20 09:45:35', '呵呵呵呵12', '1', '1', null, '7,1,3', '1', '管理员', null, '管理员', '2015-10-20', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('41', '1', '请假', '事假', '2015-12-29 20:55:00', '2015-12-30 20:55:00', '8.0', '1', '2015-11-27 20:55:42', '嗯嗯', '1', '1', null, '7,5', '1', '小乔', null, '管理员', '2015-11-27', '1', '1212', '原申请从2015-12-29 20:55:00→2015-12-30 20:55:00,8(小时)');
INSERT INTO `rock_kq_info` VALUES ('42', '1', '加班', null, '2015-11-27 20:55:00', '2015-11-27 23:55:00', '3.0', '1', '2015-11-27 20:56:03', '加班了', '0', '1', '3', '3', '0', null, '貂蝉', '管理员', '2015-11-27', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('47', '3', '请假', '事假', '2015-12-27 09:00:00', '2015-12-27 18:00:00', '8.0', '3', '2015-12-27 17:42:09', '嗯122112', '1', '1', null, '4,3,4,5', '1', '大乔', null, '貂蝉', '2015-12-27', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('48', '3', '请假', '事假', '2015-11-27 17:43:00', '2015-11-28 17:43:00', '8.0', '3', '2015-12-27 17:43:19', '哈哈哈', '0', '1', '4', '4,3', '1', '大乔', '大乔', null, '2015-12-27', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('46', '3', '请假', '事假', '2015-12-25 17:38:00', '2015-12-26 17:38:00', '8.0', '3', '2015-12-27 17:38:26', 'hehehe', '1', '1', null, '4,1', '1', '管理员', null, null, '2015-12-27', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('49', '3', '加班', null, '2015-12-26 18:23:00', '2015-12-26 23:23:00', '5.0', '3', '2015-12-27 18:23:40', '哈哈哈', '0', '1', '3', '3', '0', null, '貂蝉', null, '2015-12-27', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('50', '3', '加班', null, '2015-12-27 19:12:00', '2015-12-27 20:12:00', '1.0', '3', '2015-12-27 19:12:14', '12', '0', '1', '3', '3', '0', null, '貂蝉', null, '2015-12-27', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('51', '3', '请假', '事假', '2015-10-27 19:12:00', '2015-10-28 19:12:00', '8.0', '3', '2015-12-27 19:12:36', '121212', '0', '1', '4', '4,3', '0', null, '大乔', null, '2015-12-27', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('52', '1', '请假', '事假', '2016-01-04 21:18:00', '2016-01-08 21:18:00', '32.0', '1', '2016-04-09 09:51:33', '哈哈哈啊，请假啦', '0', '1', '7', '7,3,7', '2', '刘备', '磐石', '管理员', '2016-01-05', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('53', '1', '请假', '事假', '2016-03-02 16:01:00', '2016-03-02 16:03:00', '1.0', '1', '2016-04-09 09:49:00', '这么久了啊？1', '5', '1', '7', '7,3', '0', null, '刘备', '管理员', '2016-03-02', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('54', '1', '请假', '年假', '2016-04-23 11:38:00', '2016-04-24 11:38:00', '8.0', '1', '2016-04-23 11:39:08', 'afwewe', '0', '1', '3', '7,3', '1', '磐石', '貂蝉', '管理员', '2016-04-23', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('55', '1', '请假', '事假', '2016-04-14 11:42:00', '2016-04-18 11:42:00', '32.0', '1', '2016-04-25 19:48:00', '请假喽！', '0', '1', '7', '7,3,7', '0', null, '磐石', '管理员', '2016-04-23', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('56', '1', '请假', '年假', '2016-04-11 11:45:00', '2016-04-13 11:45:00', '16.0', '1', '2016-05-16 20:42:59', '嗯嗯嗯嗯，在添加一天。', '0', '1', '7', '7,3', '0', null, '磐石', '管理员', '2016-04-23', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('57', '1', '加班', null, '2016-04-23 01:04:00', '2016-04-23 15:04:00', '14.0', '1', '2016-04-23 15:05:27', '哈哈哈哈哈哈', '1', '1', null, '3', '1', '貂蝉', null, '管理员', '2016-04-23', '0', null, null);
INSERT INTO `rock_kq_info` VALUES ('58', '1', '增加年假', null, '2016-05-01 00:00:00', '2016-05-01 00:00:00', '16.0', '1', '2016-05-16 20:31:32', '入职一年了', '1', '1', null, null, '0', '管理员', null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for `rock_kq_out`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_out`;
CREATE TABLE `rock_kq_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL,
  `outtime` datetime DEFAULT NULL COMMENT '外出时间',
  `intime` datetime DEFAULT NULL COMMENT '回岗时间',
  `address` varchar(50) DEFAULT NULL COMMENT '外出地址',
  `reason` varchar(500) DEFAULT NULL COMMENT '外出事由',
  `atype` varchar(20) DEFAULT NULL COMMENT '外出类型@外出,出差',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `nowcheckid` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所以审核人',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '@当然状态',
  `statusman` varchar(20) DEFAULT NULL COMMENT '@审核人',
  `nowcheckname` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `isxj` tinyint(1) DEFAULT '0' COMMENT '是否销假@0|否,1|是',
  `sicksm` varchar(500) DEFAULT NULL COMMENT '销假说明',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_out
-- ----------------------------
INSERT INTO `rock_kq_out` VALUES ('7', '1', '2015-08-05 10:31:00', '2015-08-06 10:31:00', '美国', '调查', '出差', null, '2015-07-20 10:31:47', '1', '3', '3', '0', null, '貂蝉', '1', null, null, null, '0', null, null);
INSERT INTO `rock_kq_out` VALUES ('8', '1', '2015-08-19 11:16:00', '2015-08-20 11:16:00', '新加坡', '玩啦', '外出', null, '2015-08-19 11:16:40', '1', null, '3', '1', '貂蝉', null, '1', null, null, null, '0', null, null);
INSERT INTO `rock_kq_out` VALUES ('9', '1', '2015-12-01 20:56:00', '2015-12-03 20:56:00', '外出地址，呵呵呵呵', '外出事由', '出差', null, '2016-04-23 15:55:11', '0', '3', '3', '0', null, '貂蝉', '1', '1', '管理员', '2015-11-27', '0', null, null);
INSERT INTO `rock_kq_out` VALUES ('10', '3', '2015-12-27 19:11:00', '2015-12-27 20:11:00', '不知道', '出去走走', '外出', '呵呵呵', '2015-12-27 19:12:00', '0', '3', '3', '0', null, '貂蝉', '1', '3', null, '2015-12-27', '0', null, null);

-- ----------------------------
-- Table structure for `rock_kq_set`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_set`;
CREATE TABLE `rock_kq_set` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `receid` varchar(255) DEFAULT NULL,
  `recename` varchar(255) DEFAULT NULL COMMENT '针对对象',
  `type` smallint(6) DEFAULT '0' COMMENT '类型@0主',
  `mid` smallint(6) DEFAULT '0' COMMENT '主',
  `stime` varchar(20) DEFAULT NULL COMMENT '开始时间',
  `etime` varchar(20) DEFAULT NULL COMMENT '结束时间',
  `qtype` tinyint(4) DEFAULT '0' COMMENT '取值类型@0|最小值,1|最大值',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `dt` date DEFAULT NULL COMMENT '针对日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_set
-- ----------------------------
INSERT INTO `rock_kq_set` VALUES ('1', '全体人员(不许删)', '1', null, null, '0', '0', null, null, '0', '2015-09-21 11:58:07', null);
INSERT INTO `rock_kq_set` VALUES ('2', '下班', '3', null, null, '1', '0', '13:00:00', '18:00:00', '0', '2015-08-05 16:33:36', null);
INSERT INTO `rock_kq_set` VALUES ('5', '正常', '0', null, null, '0', '12', '06:00:00', '09:00:00', '0', '2015-08-05 16:19:01', null);
INSERT INTO `rock_kq_set` VALUES ('6', '迟到', '1', null, null, '0', '12', '09:00:01', '12:00:00', '0', '2015-08-05 16:19:09', null);
INSERT INTO `rock_kq_set` VALUES ('7', '正常', '0', null, null, '0', '2', '18:00:00', '23:59:00', '1', '2015-08-05 16:18:34', null);
INSERT INTO `rock_kq_set` VALUES ('8', '早退', '1', null, null, '0', '2', '13:00:00', '17:59:59', '1', '2015-08-05 16:18:25', null);
INSERT INTO `rock_kq_set` VALUES ('12', '上班', '0', null, null, '1', '0', '09:00:00', '12:00:00', '0', '2015-07-21 16:24:26', null);
INSERT INTO `rock_kq_set` VALUES ('21', '8点上班', '2', null, null, '0', '0', null, null, '0', '2015-09-21 11:16:11', null);
INSERT INTO `rock_kq_set` VALUES ('22', '上班', '0', null, null, '21', '0', '08:00:00', '12:00:00', '0', '2015-09-21 11:16:42', null);
INSERT INTO `rock_kq_set` VALUES ('23', '下班', '1', null, null, '21', '0', '14:00:00', '18:00:00', '0', '2015-09-21 11:17:20', null);
INSERT INTO `rock_kq_set` VALUES ('24', '正常', '0', null, null, '0', '22', '06:00:00', '08:00:00', '0', '2015-09-21 11:18:22', null);
INSERT INTO `rock_kq_set` VALUES ('25', '迟到', '1', null, null, '0', '22', '08:00:01', '12:00:00', '0', '2015-09-21 11:19:00', null);
INSERT INTO `rock_kq_set` VALUES ('26', '早退', '1', null, null, '0', '23', '14:00:01', '17:59:59', '1', '2015-09-21 11:20:08', null);
INSERT INTO `rock_kq_set` VALUES ('27', '正常', '0', null, null, '0', '23', '18:00:00', '23:59:59', '1', '2015-09-21 11:20:03', null);

-- ----------------------------
-- Table structure for `rock_kq_setm`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_setm`;
CREATE TABLE `rock_kq_setm` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `receid` varchar(255) DEFAULT NULL,
  `recename` varchar(255) DEFAULT NULL COMMENT '针对对象',
  `mid` smallint(6) DEFAULT '0' COMMENT '对应规则',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `startdt` date DEFAULT NULL COMMENT '针对开始日期',
  `enddt` date DEFAULT NULL COMMENT '针对截止日期',
  `sort` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '1排版',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_setm
-- ----------------------------
INSERT INTO `rock_kq_setm` VALUES ('1', 'all', '全体人员', '1', '2015-09-21 11:23:29', '2011-01-01', '2026-12-31', '0', '管理员', '0');
INSERT INTO `rock_kq_setm` VALUES ('2', 'd4', '开发部', '21', '2015-09-21 13:25:32', '2015-09-01', '2015-09-15', '1', '管理员', '0');

-- ----------------------------
-- Table structure for `rock_kq_sick`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_sick`;
CREATE TABLE `rock_kq_sick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|请假销假,1|外出销假',
  `mseric` varchar(30) DEFAULT NULL COMMENT '销假单号',
  `mid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `stime` datetime DEFAULT NULL COMMENT '开始时间',
  `etime` datetime DEFAULT NULL,
  `totals` smallint(6) DEFAULT '0' COMMENT '实际小时',
  `xjall` tinyint(1) DEFAULT '0' COMMENT '是否销假全部@0|否,1|是',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_sick
-- ----------------------------

-- ----------------------------
-- Table structure for `rock_kq_xiu`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_xiu`;
CREATE TABLE `rock_kq_xiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL COMMENT '日期',
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_xiu
-- ----------------------------
INSERT INTO `rock_kq_xiu` VALUES ('1', '2015-08-01', '1');
INSERT INTO `rock_kq_xiu` VALUES ('2', '2015-08-02', '1');
INSERT INTO `rock_kq_xiu` VALUES ('3', '2015-08-08', '1');
INSERT INTO `rock_kq_xiu` VALUES ('4', '2015-08-09', '1');
INSERT INTO `rock_kq_xiu` VALUES ('5', '2015-08-15', '1');
INSERT INTO `rock_kq_xiu` VALUES ('6', '2015-08-16', '1');
INSERT INTO `rock_kq_xiu` VALUES ('7', '2015-08-22', '1');
INSERT INTO `rock_kq_xiu` VALUES ('8', '2015-08-23', '1');
INSERT INTO `rock_kq_xiu` VALUES ('9', '2015-08-29', '1');
INSERT INTO `rock_kq_xiu` VALUES ('10', '2015-08-30', '1');
INSERT INTO `rock_kq_xiu` VALUES ('12', '2015-08-02', '2');
INSERT INTO `rock_kq_xiu` VALUES ('14', '2015-08-09', '2');
INSERT INTO `rock_kq_xiu` VALUES ('16', '2015-08-16', '2');
INSERT INTO `rock_kq_xiu` VALUES ('18', '2015-08-23', '2');
INSERT INTO `rock_kq_xiu` VALUES ('20', '2015-08-30', '2');
INSERT INTO `rock_kq_xiu` VALUES ('22', '2015-10-03', '1');
INSERT INTO `rock_kq_xiu` VALUES ('23', '2015-10-04', '1');
INSERT INTO `rock_kq_xiu` VALUES ('24', '2015-10-10', '1');
INSERT INTO `rock_kq_xiu` VALUES ('25', '2015-10-11', '1');
INSERT INTO `rock_kq_xiu` VALUES ('26', '2015-10-17', '1');
INSERT INTO `rock_kq_xiu` VALUES ('27', '2015-10-18', '1');
INSERT INTO `rock_kq_xiu` VALUES ('28', '2015-10-24', '1');
INSERT INTO `rock_kq_xiu` VALUES ('29', '2015-10-25', '1');
INSERT INTO `rock_kq_xiu` VALUES ('30', '2015-10-31', '1');
INSERT INTO `rock_kq_xiu` VALUES ('31', '2015-11-01', '1');
INSERT INTO `rock_kq_xiu` VALUES ('32', '2015-11-07', '1');
INSERT INTO `rock_kq_xiu` VALUES ('33', '2015-11-08', '1');
INSERT INTO `rock_kq_xiu` VALUES ('34', '2015-11-14', '1');
INSERT INTO `rock_kq_xiu` VALUES ('35', '2015-11-15', '1');
INSERT INTO `rock_kq_xiu` VALUES ('36', '2015-11-21', '1');
INSERT INTO `rock_kq_xiu` VALUES ('37', '2015-11-22', '1');
INSERT INTO `rock_kq_xiu` VALUES ('38', '2015-11-28', '1');
INSERT INTO `rock_kq_xiu` VALUES ('39', '2015-11-29', '1');
INSERT INTO `rock_kq_xiu` VALUES ('40', '2015-11-01', '2');
INSERT INTO `rock_kq_xiu` VALUES ('41', '2015-11-07', '2');
INSERT INTO `rock_kq_xiu` VALUES ('42', '2015-11-08', '2');
INSERT INTO `rock_kq_xiu` VALUES ('43', '2015-11-14', '2');
INSERT INTO `rock_kq_xiu` VALUES ('44', '2015-11-15', '2');
INSERT INTO `rock_kq_xiu` VALUES ('45', '2015-11-21', '2');
INSERT INTO `rock_kq_xiu` VALUES ('46', '2015-11-22', '2');
INSERT INTO `rock_kq_xiu` VALUES ('47', '2015-11-28', '2');
INSERT INTO `rock_kq_xiu` VALUES ('48', '2015-11-29', '2');

-- ----------------------------
-- Table structure for `rock_kq_xium`
-- ----------------------------
DROP TABLE IF EXISTS `rock_kq_xium`;
CREATE TABLE `rock_kq_xium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `receid` varchar(255) DEFAULT NULL,
  `recename` varchar(255) DEFAULT NULL COMMENT '针对对象',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `startdt` date DEFAULT NULL COMMENT '开始日期',
  `enddt` date DEFAULT NULL COMMENT '截止日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_kq_xium
-- ----------------------------
INSERT INTO `rock_kq_xium` VALUES ('1', '全体人员', null, null, '0', null, null);
INSERT INTO `rock_kq_xium` VALUES ('2', '开发部门', 'd4', '开发部', '1', null, null);

-- ----------------------------
-- Table structure for `rock_log`
-- ----------------------------
DROP TABLE IF EXISTS `rock_log`;
CREATE TABLE `rock_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `optid` int(11) DEFAULT NULL COMMENT '操作人id',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `optdt` datetime DEFAULT NULL COMMENT '添加时间',
  `ip` varchar(30) DEFAULT NULL COMMENT 'IP地址',
  `web` varchar(100) DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_log
-- ----------------------------
INSERT INTO `rock_log` VALUES ('1', 'pc登录', '1', '管理员', '[admin]登录成功', '2016-07-04 22:10:14', '127.0.0.1', 'Firefox');
INSERT INTO `rock_log` VALUES ('2', 'reim登录', '1', '管理员', '[admin]快捷登录', '2016-07-04 22:28:13', '127.0.0.1', 'Firefox');

-- ----------------------------
-- Table structure for `rock_logintoken`
-- ----------------------------
DROP TABLE IF EXISTS `rock_logintoken`;
CREATE TABLE `rock_logintoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  `moddt` datetime DEFAULT NULL,
  `cfrom` varchar(10) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `web` varchar(30) DEFAULT NULL,
  `online` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_logintoken
-- ----------------------------
INSERT INTO `rock_logintoken` VALUES ('1', '1', '管理员', 'fx6ocicq', '2016-06-06 20:44:52', '2016-06-06 20:44:52', 'weixin', null, '101.226.125.121', 'Chrome', '1');
INSERT INTO `rock_logintoken` VALUES ('2', '1', '管理员', '342jwrm6', '2016-07-04 22:10:14', '2016-07-04 22:20:48', 'pc', '1466598283817', '127.0.0.1', 'Firefox', '1');
INSERT INTO `rock_logintoken` VALUES ('3', '1', '管理员', 'nf5k2ipd', '2016-07-04 22:28:13', '2016-07-04 22:28:13', 'reim', null, '127.0.0.1', 'Firefox', '1');

-- ----------------------------
-- Table structure for `rock_meet`
-- ----------------------------
DROP TABLE IF EXISTS `rock_meet`;
CREATE TABLE `rock_meet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optname` varchar(20) DEFAULT NULL COMMENT '发起人',
  `hyname` varchar(20) DEFAULT NULL COMMENT '会议室名称',
  `title` varchar(50) DEFAULT NULL COMMENT '主题',
  `startdt` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `enddt` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `status` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|普通,1|固定@not',
  `joinid` varchar(200) DEFAULT NULL,
  `joinname` varchar(500) DEFAULT NULL COMMENT '参加人员',
  `mid` int(11) DEFAULT '0',
  `rate` varchar(100) DEFAULT NULL,
  `istz` tinyint(1) DEFAULT '0' COMMENT '@是否通知',
  `uid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT NULL,
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `state` tinyint(1) DEFAULT '0' COMMENT '会议状态@0|正常,1|会议中,2|结束,3|取消',
  `isturn` tinyint(1) DEFAULT '1',
  `nowcheckid` varchar(50) DEFAULT NULL,
  `allcheckid` varchar(200) DEFAULT NULL,
  `nstatus` tinyint(1) DEFAULT '0',
  `statusman` varchar(20) DEFAULT NULL,
  `nowcheckname` varchar(50) DEFAULT NULL,
  `cancelreason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_meet
-- ----------------------------
INSERT INTO `rock_meet` VALUES ('1', '管理员', '会议室1', '每天部门工作汇报', '09:30:00', '10:30:00', '1', '1', 'd4', '开发部', '0', '工作日', '0', null, '2015-11-21 19:34:54', null, null, null, '1', '0', null, null, '0', null, null, null);
INSERT INTO `rock_meet` VALUES ('2', '管理员', '会议室1', '每天部门工作汇报', '2016-05-16 09:30:00', '2016-05-16 10:30:00', '1', '0', 'd4', '开发部', '1', null, '0', null, '2016-05-16 21:46:10', null, null, null, '0', '1', null, null, '0', null, null, null);
INSERT INTO `rock_meet` VALUES ('3', '管理员', '会议室1', '每天部门工作汇报', '2016-05-17 09:30:00', '2016-05-17 10:30:00', '1', '0', 'd4', '开发部', '1', null, '0', null, '2016-05-16 21:46:10', null, null, null, '0', '1', null, null, '0', null, null, null);
INSERT INTO `rock_meet` VALUES ('4', '管理员', '会议室1', '每天部门工作汇报', '2016-05-18 09:30:00', '2016-05-18 10:30:00', '1', '0', 'd4', '开发部', '1', null, '0', null, '2016-05-16 21:46:10', null, null, null, '0', '1', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `rock_menu`
-- ----------------------------
DROP TABLE IF EXISTS `rock_menu`;
CREATE TABLE `rock_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `name` varchar(100) DEFAULT NULL,
  `pid` smallint(8) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `sort` tinyint(1) DEFAULT '0',
  `indate` datetime DEFAULT NULL,
  `icons` varchar(50) DEFAULT NULL COMMENT '图标',
  `level` tinyint(4) DEFAULT '1' COMMENT '级别',
  `color` varchar(20) DEFAULT NULL COMMENT '颜色',
  `ispir` tinyint(1) DEFAULT '1' COMMENT '是否权限验证',
  `isopen` tinyint(1) DEFAULT '0' COMMENT '是否展开',
  `ischeck` tinyint(1) DEFAULT '0' COMMENT '菜单类型@0|普通,1|iframe连接,2|跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_menu
-- ----------------------------
INSERT INTO `rock_menu` VALUES ('1', null, '系统管理', '0', null, '1', '3', '2014-03-21 23:55:50', 'cog', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('2', null, '菜单管理', '72', 'system,menu', '1', '3', '2014-01-02 20:16:50', 'table', '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('3', 'admin', '用户管理', '72', 'system,admin', '1', '4', '2014-01-02 19:33:39', 'user', '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('6', null, '人事考勤', '0', null, '1', '5', '2014-06-01 20:12:14', 'group_gear', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('40', null, '权限管理', '1', null, '1', '6', '2013-12-21 20:57:08', null, '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('41', null, '组→菜单', '40', 'system,extent,type=gm', '1', '1', '2013-12-22 13:33:40', null, '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('56', null, '人员→菜单', '40', 'system,extent,type=um', '1', '0', '2013-12-22 13:33:34', null, '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('57', 'group', '组管理', '72', 'system,group', '1', '5', '2013-12-20 09:40:48', 'group', '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('58', null, '菜单→人员', '40', 'system,extent,type=mu', '1', '2', '2013-12-22 13:33:47', null, '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('59', null, '菜单→组', '40', 'system,extent,type=mg', '1', '3', '2013-12-22 13:33:53', null, '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('60', null, '用户权限查看', '40', 'system,extent,type=view', '1', '4', '2013-12-20 16:19:33', null, '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('63', null, '个人办公', '0', null, '1', '0', '2014-01-02 20:16:45', 'folder', '2', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('64', null, '修改密码', '7', 'system,pass', '1', '1', '2014-01-02 20:16:22', 'lock', '3', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('65', null, '我的资料', '7', 'humanres,userinfor,edit,type=0,uid=0', '1', '2', '2014-01-02 20:16:25', null, '3', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('67', null, '定时任务', '1', null, '1', '10', '2014-04-03 20:57:13', 'time', '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('69', 'workadd', '新增任务', '110', 'work,work,add', '1', '1', '2014-01-08 21:34:05', 'add', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('70', null, '休息日设置', '10', 'humanres,kaoqin,xiu', '1', '5', '2014-02-11 21:53:03', null, '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('71', null, '会议管理', '109', null, '1', '3', '2014-02-11 21:52:51', null, '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('72', null, '基础设置', '1', null, '1', '1', '2014-02-09 20:10:09', 'computer', '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('76', null, '上传文件', '192', 'system,file', '1', '1', '2014-02-10 20:23:16', null, '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('81', null, '共享文件', '95', 'system,infor,fileshate', '1', '1', '2014-03-22 21:02:29', null, '2', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('82', 'inforlist', '信息列表', '133', 'system,infor,list,atype=0', '1', '3', '2014-08-23 22:07:09', null, '2', null, '1', '1', '0');
INSERT INTO `rock_menu` VALUES ('83', null, '系统选项', '72', 'system,option', '1', '20', '2014-08-23 22:10:13', 'wrench', '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('84', null, '人员档案', '153', 'humanres,userinfor', '1', '1', '2014-06-02 20:08:42', null, '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('87', null, '内部通讯录', '193', 'person,vcard,in', '1', '0', '2014-06-24 21:08:13', null, '2', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('91', null, '考勤分析', '146', 'humanres,kaoqin,kqfx', '1', '7', '2014-07-06 19:03:05', null, '2', null, '1', '1', '0');
INSERT INTO `rock_menu` VALUES ('92', null, '考勤时间规则', '10', 'humanres,kaoqin,set', '1', '2', '2014-07-06 19:06:32', null, '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('93', null, '打卡记录', '146', 'humanres,kaoqin,dkjl', '1', '4', '2014-07-06 19:06:59', 'clock_edit', '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('94', null, '组织结构', '72', 'system,dept', '1', '2', '2014-08-23 22:06:58', 'chart_organisation', '3', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('95', null, '公共信息', '0', null, '1', '1', '2014-08-23 22:11:30', 'page_word', '2', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('102', null, '定时任务管理', '67', 'system,task', '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('103', null, '定时队列', '67', 'system,task,taskqe', '1', '3', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('104', null, '人员分析', '153', 'humanres,userinfor,fx', '1', '10', null, 'chart_pie', '1', null, '1', '1', '0');
INSERT INTO `rock_menu` VALUES ('105', null, '流程配置', '183', 'flow,set', '1', '1', null, 'sitemap', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('106', null, '物品管理', '109', null, '1', '2', null, 'lorry', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('107', null, '固定会议', '71', 'humanres,meet,fixed', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('108', null, '会议列表', '71', 'humanres,meet,list', '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('109', null, '行政管理', '0', null, '1', '6', null, 'page_gear', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('110', null, '工作任务', '189', null, '1', '2', null, 'report', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('113', null, '数据查看权限', '40', 'system,extent,view', '1', '5', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('114', null, '我的考勤', '142', 'person,kaoqin,my', '1', '1', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('115', null, '物品统计', '106', 'humanres,supple,total', '1', '10', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('116', null, '物品列表', '106', 'humanres,supple,list', '1', '5', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('117', null, '物品选项', '106', 'system,option,guan,num=rocksupple,atype=1', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('122', null, '加密解密', '192', 'system,encode', '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('125', 'meetapply', '会议预定', '142', 'humanres,meet,apply', '1', '21', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('126', 'todo', '提醒信息', '7', 'person,todo', '1', '4', null, 'bell', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('127', null, '请假和加班', '146', 'humanres,kaoqin,leajia', '1', '5', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('128', null, '打卡记录', '142', 'person,kaoqin,dkjl', '1', '5', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('129', null, '考勤统计', '146', 'humanres,kaoqin,total', '1', '8', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('130', null, '外出出差', '146', 'humanres,kaoqin,waichu', '1', '6', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('131', 'workguan', '任务管理', '110', 'work,work,guan', '1', '1', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('132', 'worklist', '我今日任务', '110', 'work,work,list,atype=0', '1', '2', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('133', null, '信息资料', '95', null, '1', '10', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('134', null, '信息类别', '133', 'system,option,guan,num=infortype', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('135', null, '内部文件', '95', null, '1', '11', null, 'folder', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('136', null, '文件类别', '135', 'system,option,guan,num=filetype', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('137', null, '文件列表', '135', 'system,infor,filelist,atype=0', '1', '1', null, 'folder_table', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('138', null, '信息新增', '133', 'gong', '1', '2', null, 'add', '1', null, '1', '0', '3');
INSERT INTO `rock_menu` VALUES ('139', 'workmwc', '我所有的任务', '110', 'work,work,mwc,vtype=0', '1', '3', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('140', null, '我的任务月视图', '110', 'work,work,month', '1', '4', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('141', null, '任务查看', '110', 'work,work,view', '1', '5', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('142', null, '考勤行政', '63', null, '1', '11', null, 'clock_red', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('143', null, '工作日报', '63', null, '1', '12', null, 'page_white_text_width', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('144', null, '我日报列表', '143', 'person,daily,list,atype=5', '1', '1', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('145', null, '我日报统计', '143', 'person,daily,total', '1', '5', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('146', null, '考勤信息', '6', null, '1', '3', null, 'clock_red', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('147', null, '工作日报', '6', null, '1', '5', null, 'page_white_text_width', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('148', null, '日报设置', '147', 'humanres,daily,set', '0', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('149', null, '日报分析', '147', 'humanres,daily,fx', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('150', 'gong', '信息中心', '95', 'system,infor,gong', '1', '0', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('151', 'daicheck', '待办/处理', '202', 'flow,apply,check', '1', '0', null, 'time', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('152', null, '系统设置', '72', 'system,set', '1', '0', null, 'edit', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('153', null, '人员管理', '6', null, '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('155', null, '项目管理', '189', null, '1', '1', null, 'brick', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('208', null, '人员劳动合同', '153', 'humanres,userinfor,contract', '1', '5', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('207', null, '日报查看', '147', 'humanres,daily,view', '1', '5', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('167', null, '日志查看', '192', 'system,log', '1', '3', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('168', null, '资产管理', '109', null, '1', '5', null, 'monitor', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('169', null, '资产选项', '168', 'system,option,guan,num=assets,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('170', 'assetslist', '资产列表', '168', 'humanres,assets,list', '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('172', null, '任务选项', '110', 'system,option,guan,num=rockwork,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('173', null, '项目选项', '155', 'system,option,guan,num=rockproject,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('174', null, '考勤选项', '10', 'system,option,guan,num=humanres,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('175', null, '人员选项', '153', 'system,option,guan,num=userinfor,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('176', null, '上下班时间', '10', 'humanres,kaoqin,sxb', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('177', 'projectadd', '新增项目', '155', 'work,project,add', '1', '1', null, 'add', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('178', null, '项目列表', '155', 'work,project,list,atype=list', '1', '3', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('179', null, '项目管理', '155', 'work,project,guan', '1', '2', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('180', 'projectbg', '项目进度报告', '155', 'work,project,list,atype=bg', '1', '4', null, 'application_form_edit', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('181', null, '项目授权查看', '155', 'work,project,list,atype=view', '1', '5', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('182', null, '所有项目一览表', '155', 'work,project,list,atype=all', '1', '6', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('183', null, '流程管理', '1', null, '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('184', null, '流程审核日志', '183', 'flow,log', '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('185', 'schedule', '日程事务', '7', 'person,schedule', '1', '3', null, 'date', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('186', null, '文件网盘', '95', 'system,infor,filelist,atype=1', '1', '2', null, 'drive', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('187', null, '邮件管理', '1', null, '1', '5', null, 'email', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('188', null, '人事调动', '195', 'flow,applylist,hrtransfer,opentype=3', '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('189', null, '项目任务', '0', null, '1', '7', null, 'brick', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('190', null, '发邮件帐号设置', '187', 'system,email,set', '1', '0', null, 'email_go', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('191', null, '系统邮件模版', '187', 'system,email,tpl', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('192', null, '辅助功能', '1', null, '1', '20', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('193', null, '通讯录', '63', null, '1', '10', null, 'vcard', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('194', null, '我的通讯录', '193', 'person,vcard,out', '1', '1', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('195', null, '人力资源', '6', null, '1', '10', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('196', null, '员工转正', '195', 'flow,applylist,hrpositive,opentype=3', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('197', null, '离职管理', '195', 'flow,applylist,hrredund,opentype=3', '1', '10', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('198', null, 'REIM通信管理', '1', null, '1', '12', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('199', null, '聊天记录', '198', 'system,reim,record', '1', '5', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('200', null, '群/讨论组管理', '198', 'system,reim,group', '1', '2', null, 'group', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('201', null, '流程选项', '183', 'system,option,guan,num=flow,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('202', null, '工作流程', '63', null, '1', '12', null, 'report', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('203', null, '流程申请', '202', 'flow,apply', '1', '1', null, 'page_add', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('204', null, '我的申请', '202', 'flow,apply,checkmy,atype=0', '1', '2', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('205', null, '会议选项', '71', 'system,option,guan,num=meet,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('206', null, '部门信息资料', '95', 'system,infor,list,atype=1', '0', '5', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('209', null, '服务器设置', '198', 'system,reim,set', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('210', null, '常用菜单管理', '7', 'system,menu,chang', '1', '5', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('7', null, '个人中心', '63', null, '1', '1', null, 'user', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('212', null, '车辆管理', '109', null, '1', '6', null, 'car', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('213', null, '行政选项', '109', 'system,option,guan,num=rockadmins,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('214', null, '车辆信息', '212', 'humanres,car,infor', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('215', null, '车辆选项', '212', 'system,option,guan,num=rockcar,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('10', null, '考勤设置', '6', null, '1', '2', null, 'cog', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('11', null, '单位管理', '72', 'system,dept,company', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('42', null, '考勤时间分配', '10', 'humanres,kaoqin,setfp', '1', '3', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('12', null, '首页项管理', '72', 'index,home,guan', '1', '10', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('216', null, '车辆预定查询', '212', 'flow,applylist,careserve,opentype=3', '1', '3', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('217', null, '车辆预定情况', '212', 'humanres,car,reserve', '1', '4', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('218', null, '车辆提醒', '212', 'humanres,car,todo', '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('101', null, '定时提醒人员', '67', 'system,task,todouser', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('100', null, '定时任务选项', '67', 'system,option,guan,num=rocktask,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('230', 'emailin', '内部邮件', '63', 'person,email', '1', '13', null, 'email', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('15', 'homeperson', '个人首页项', '7', '@index,home,indextd,mid=-1,padding=0', '1', '6', null, 'application_view_tile', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('219', null, '经我处理', '202', 'flow,apply,checkmy,atype=1', '1', '3', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('220', null, '我下属申请', '202', 'flow,apply,checkmy,atype=2', '1', '4', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('221', null, '授权查看', '202', 'flow,apply,checkmy,atype=3', '1', '5', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('222', null, '我下属日报', '143', 'person,daily,list,atype=4', '1', '2', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('223', null, '日报授权我查看', '143', 'person,daily,list,atype=6', '1', '3', null, null, '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('43', null, '设置在线打卡IP', '10', 'humanres,kaoqin,kqip', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('96', null, '流程处理表单', '183', 'flow,course,input', '1', '10', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('85', 'minstall', '模块安装升级', '192', 'system,upgrade,install', '1', '6', '2015-12-08 23:15:59', 'arrow_up', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('16', null, '微信号管理', '1', null, '1', '7', null, 'wxqy', '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('225', null, '微信设置', '16', 'system,weixin,set', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('226', null, '应用设置', '16', 'system,weixin,agent', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('227', null, '微信用户', '16', 'system,weixin,user', '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('228', null, '微信部门', '16', 'system,weixin,dept', '1', '3', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('229', null, '查看所有任务', '110', 'work,work,mwc,vtype=1', '1', '6', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('17', null, 'CRM客户管理', '0', null, '0', '4', null, 'medal_bronze_1', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('18', null, '客户设置', '17', null, '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('19', null, '客户选项', '18', 'system,option,guan,num=rockcrm,atype=1', '1', '0', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('20', null, '客户管理', '17', null, '1', '1', null, null, '1', null, '0', '1', '0');
INSERT INTO `rock_menu` VALUES ('21', null, '产品管理', '18', null, '1', '2', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('22', 'customer', '我的客户', '20', 'work,crm,customer', '1', '0', null, 'user_suit', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('23', 'customeradd', '新增客户', '20', 'work,crm,customeradd', '1', '1', null, 'user_add', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('235', 'dailyadd', '新增日报', '143', 'person,daily,add', '1', '0', null, 'add', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('236', null, 'RockOA官网', '192', 'http://www.rockoa.com/', '1', '10', null, null, '1', null, '0', '0', '2');
INSERT INTO `rock_menu` VALUES ('237', null, '应用管理', '198', 'system,reim,agent', '1', '1', null, null, '1', null, '1', '0', '0');
INSERT INTO `rock_menu` VALUES ('4', null, '常用菜单', '63', null, '1', '2', null, 'computer', '1', null, '0', '0', '0');
INSERT INTO `rock_menu` VALUES ('8', null, '流程单据', '183', 'flow,set,bill', '1', '15', null, null, '1', null, '1', '0', '0');

-- ----------------------------
-- Table structure for `rock_menucom`
-- ----------------------------
DROP TABLE IF EXISTS `rock_menucom`;
CREATE TABLE `rock_menucom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `url` varchar(500) DEFAULT NULL COMMENT '地址',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `optdt` datetime DEFAULT NULL,
  `menuid` varchar(5) DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_menucom
-- ----------------------------
INSERT INTO `rock_menucom` VALUES ('1', '1', '菜单管理', 'menunum_2', 'system,menu', 'mode/icons/table.png', '0', '2016-02-18 22:49:54', '2');
INSERT INTO `rock_menucom` VALUES ('3', '1', '新增日报', 'dailyadd', 'person,daily,add,index=1', 'mode/icons/add.png', '0', '2016-03-22 20:04:35', null);

-- ----------------------------
-- Table structure for `rock_option`
-- ----------------------------
DROP TABLE IF EXISTS `rock_option`;
CREATE TABLE `rock_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `mnum` varchar(50) DEFAULT NULL COMMENT '上级编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `value` varchar(500) DEFAULT NULL COMMENT '对应值',
  `xu` smallint(6) DEFAULT NULL COMMENT '排序',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT '0',
  `content` varchar(4000) DEFAULT NULL COMMENT '相关介绍',
  `ism` tinyint(1) DEFAULT '0' COMMENT '是否主选项',
  `pid` int(11) DEFAULT '0' COMMENT '@上级ID',
  `valid` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `num` (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_option
-- ----------------------------
INSERT INTO `rock_option` VALUES ('1', 'rock', null, '系统选项', null, null, null, '0', null, '1', '0', '1');
INSERT INTO `rock_option` VALUES ('2', 'ranking', 'userinfor', '职位', null, '3', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('3', null, 'ranking', '工程师', null, '4', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('4', null, 'ranking', 'OA项目经理', null, '5', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('5', 'infortype', 'rock', '信息类别', null, '0', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('6', 'humanres', 'rock', '人事考勤', null, '2', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('7', 'notice', 'infortype', '通知公告', null, '0', '2015-05-15 16:30:53', '1', null, '0', '5', '1');
INSERT INTO `rock_option` VALUES ('8', 'rules', 'infortype', '规章制度', null, '1', '2015-11-12 19:17:28', '1', null, '0', '5', '1');
INSERT INTO `rock_option` VALUES ('9', 'culture', 'infortype', '企业文化', null, '2', '2015-11-12 19:17:24', '1', null, '0', '5', '1');
INSERT INTO `rock_option` VALUES ('10', 'tasktype', 'rocktask', '任务类型', null, '6', '2015-09-28 11:23:42', '1', null, '0', '273', '1');
INSERT INTO `rock_option` VALUES ('11', 'userinfor', 'rock', '人员选项', null, '4', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('12', 'workstatus', 'userinfor', '人员状态', null, '0', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('13', 'xueli', 'userinfor', '学历', null, '1', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('18', null, 'xueli', '小学', null, '0', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('19', null, 'xueli', '初中', null, '1', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('20', null, 'xueli', '高中', null, '2', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('21', null, 'xueli', '中专', null, '3', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('22', null, 'xueli', '大专', null, '4', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('23', null, 'xueli', '本科', null, '5', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('24', null, 'xueli', '研究生', null, '6', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('25', null, 'xueli', '博士', null, '7', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('26', null, 'xueli', '博士后', null, '8', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('28', 'minzu', 'userinfor', '民族', null, '2', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('29', null, 'minzu', '汉族', null, '0', null, '0', null, '0', '28', '1');
INSERT INTO `rock_option` VALUES ('30', null, 'minzu', '回民', null, '0', null, '0', null, '0', '28', '1');
INSERT INTO `rock_option` VALUES ('31', null, 'minzu', '壮族', null, '0', null, '0', null, '0', '28', '1');
INSERT INTO `rock_option` VALUES ('32', null, 'minzu', '维吾尔族', null, '0', null, '0', null, '0', '28', '1');
INSERT INTO `rock_option` VALUES ('34', null, 'ranking', '行政前台', null, '6', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('35', null, 'xueli', '其他', null, '9', '2014-12-17 15:12:49', '1', null, '0', '13', '1');
INSERT INTO `rock_option` VALUES ('38', null, 'ranking', '董事长', null, '0', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('39', null, 'ranking', '程序员', null, '7', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('40', null, 'ranking', '出纳', null, '8', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('41', null, 'tasktype', '基础任务', null, '0', '2014-12-17 16:39:10', '1', null, '0', '10', '1');
INSERT INTO `rock_option` VALUES ('44', null, 'meeting', '会议室1', null, '0', '2014-12-22 12:34:54', '1', null, '0', '169', '1');
INSERT INTO `rock_option` VALUES ('45', 'flow', 'rock', '流程选项', null, '7', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('46', 'flowatype', 'flow', '针对类型', null, '1', '2015-11-28 16:22:21', '1', null, '0', '45', '1');
INSERT INTO `rock_option` VALUES ('47', null, 'flowatype', '所有人员', 'all', '0', '2014-12-30 19:23:47', '1', null, '0', '46', '1');
INSERT INTO `rock_option` VALUES ('48', null, 'flowatype', '指定部门', 'dept', '2', '2014-12-30 19:23:47', '1', null, '0', '46', '1');
INSERT INTO `rock_option` VALUES ('49', null, 'flowatype', '指定人员', 'user', '1', '2014-12-30 19:23:47', '1', null, '0', '46', '1');
INSERT INTO `rock_option` VALUES ('50', 'flowchecktype', 'flow', '审核人类型', null, '2', '2015-11-28 16:22:21', '1', null, '0', '45', '1');
INSERT INTO `rock_option` VALUES ('51', null, 'flowchecktype', '直属上级', 'super', '2', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('52', null, 'flowchecktype', '部门负责人', 'dept', '3', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('53', null, 'flowchecktype', '指定人员', 'user', '6', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('54', null, 'flowchecktype', '职位', 'rank', '4', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('55', 'leavetypem', 'humanres', '请假类型', null, '0', '2015-09-01 09:36:19', '1', null, '0', '6', '1');
INSERT INTO `rock_option` VALUES ('56', 'leavetypes', 'humanres', '人事请假类型', null, '1', '2015-09-01 09:36:19', '1', null, '0', '6', '1');
INSERT INTO `rock_option` VALUES ('57', null, 'leavetypem', '事假', null, '0', '2015-01-04 21:07:10', '1', null, '0', '55', '1');
INSERT INTO `rock_option` VALUES ('58', null, 'leavetypem', '年假', null, '1', '2015-01-04 21:07:10', '1', null, '0', '55', '1');
INSERT INTO `rock_option` VALUES ('59', null, 'leavetypem', '婚假', null, '2', '2015-01-04 21:07:10', '1', null, '0', '55', '1');
INSERT INTO `rock_option` VALUES ('60', null, 'leavetypem', '病假', null, '3', '2015-01-04 21:07:10', '1', null, '0', '55', '1');
INSERT INTO `rock_option` VALUES ('61', null, 'leavetypes', '增加年假', null, '0', '2015-01-04 21:07:45', '1', null, '0', '56', '1');
INSERT INTO `rock_option` VALUES ('62', null, 'leavetypes', '增加婚假', null, '1', '2015-01-04 21:07:45', '1', null, '0', '56', '1');
INSERT INTO `rock_option` VALUES ('63', null, 'ranking', 'CEO', null, '1', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('64', null, 'ranking', '总经理', null, '2', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('65', null, 'ranking', '人事经理', null, '3', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('66', null, 'flowchecktype', '开始', 'start', '0', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('67', null, 'flowchecktype', '结束', 'end', '1', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('68', 'rockmode', 'rock', '功能模块', null, '8', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('69', 'leave', 'rockmode', '请假条', null, '0', '2015-03-19 15:44:07', '1', null, '0', '68', '1');
INSERT INTO `rock_option` VALUES ('70', 'jiaban', 'rockmode', '加班单', null, '1', '2015-03-19 15:44:07', '1', null, '0', '68', '1');
INSERT INTO `rock_option` VALUES ('71', null, 'flowcoursename_1', '主管审核', null, '0', '2015-01-29 11:17:54', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('72', null, 'flowcoursename_2', '上级主管审核', null, '0', '2015-01-29 11:10:41', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('73', null, 'flowcoursename_1', '人事确认', null, '1', '2015-01-29 11:17:54', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('74', null, 'flowcoursename_3', '主管审核', null, '0', '2015-01-30 15:35:42', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('75', 'kaoqintype', 'humanres', '考勤类型', null, '2', '2015-09-01 09:36:19', '1', null, '0', '6', '1');
INSERT INTO `rock_option` VALUES ('76', null, 'kaoqintype', '正常', null, '0', '2015-02-06 13:35:00', '1', null, '0', '75', '1');
INSERT INTO `rock_option` VALUES ('77', null, 'kaoqintype', '迟到', null, '1', '2015-02-06 13:35:00', '1', null, '0', '75', '1');
INSERT INTO `rock_option` VALUES ('78', null, 'kaoqintype', '早退', null, '2', '2015-02-06 13:35:00', '1', null, '0', '75', '1');
INSERT INTO `rock_option` VALUES ('79', null, 'kaoqintype', '未打卡', null, '3', '2015-02-06 13:35:00', '1', null, '0', '75', '1');
INSERT INTO `rock_option` VALUES ('80', 'rockwork', 'rock', '工作任务', null, '9', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('81', 'worktype', 'rockwork', '任务类型', null, '0', '2015-09-10 14:52:57', '1', null, '0', '80', '1');
INSERT INTO `rock_option` VALUES ('82', null, 'worktype', '设计', null, '0', '2016-01-13 13:03:00', '1', null, '0', '81', '1');
INSERT INTO `rock_option` VALUES ('83', null, 'worktype', '开发', null, '1', '2016-01-13 13:03:00', '1', null, '0', '81', '1');
INSERT INTO `rock_option` VALUES ('84', 'workgrade', 'rockwork', '任务等级', null, '1', '2015-09-10 14:52:57', '1', null, '0', '80', '1');
INSERT INTO `rock_option` VALUES ('85', 'workstate', 'rockwork', '任务状态', null, '2', '2015-09-10 14:52:57', '1', null, '0', '80', '1');
INSERT INTO `rock_option` VALUES ('86', null, 'workgrade', '低', null, '0', '2015-02-07 22:19:15', '1', null, '0', '84', '1');
INSERT INTO `rock_option` VALUES ('87', null, 'workgrade', '中', null, '1', '2015-02-07 22:19:15', '1', null, '0', '84', '1');
INSERT INTO `rock_option` VALUES ('88', null, 'workgrade', '高', null, '2', '2015-02-07 22:19:15', '1', null, '0', '84', '1');
INSERT INTO `rock_option` VALUES ('89', null, 'workgrade', '紧急', null, '3', '2015-02-07 22:19:15', '1', null, '0', '84', '1');
INSERT INTO `rock_option` VALUES ('90', null, 'workstate', '待执行', null, '0', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('91', null, 'workstate', '执行中', null, '1', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('92', null, 'workstate', '已完成', null, '8', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('93', null, 'workstate', '执行中5%', null, '2', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('94', null, 'workstate', '执行中10%', null, '3', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('95', null, 'workstate', '执行中50%', null, '5', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('96', null, 'workstate', '执行中90%', null, '7', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('97', null, 'workstate', '执行中30%', null, '4', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('98', null, 'worktype', '测试', null, '2', '2016-01-13 13:03:00', '1', null, '0', '81', '1');
INSERT INTO `rock_option` VALUES ('99', 'filetype', 'rock', '文档类别', null, '5', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('100', null, 'filetype', '基础文件', null, '0', '2015-05-15 15:20:22', '1', null, '0', '99', '1');
INSERT INTO `rock_option` VALUES ('101', null, 'filetype', '基础文档', null, '1', '2015-05-15 15:20:22', '1', null, '0', '99', '1');
INSERT INTO `rock_option` VALUES ('102', 'systemtitle', null, '系统名称', 'Rock协同办公OA在线演示系统', '7', '2016-01-07 18:29:39', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('103', 'dailyset', null, null, '3,w', null, '2015-03-19 16:22:41', '0', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('104', 'systemlogo', null, '系统logo', 'images/icons40.png', '0', '2016-01-07 18:29:39', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('106', 'assetstype', 'assets', '资产类别', null, '0', '2015-04-13 16:01:22', '1', null, '0', '107', '1');
INSERT INTO `rock_option` VALUES ('107', 'assets', 'rock', '资产选项', null, '6', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('108', 'assetsbrand', 'assets', '品牌', null, '1', '2015-04-13 16:01:22', '1', null, '0', '107', '1');
INSERT INTO `rock_option` VALUES ('109', null, 'assetstype', '笔记本', 'BJB', '0', '2015-06-30 17:13:06', '1', null, '0', '106', '1');
INSERT INTO `rock_option` VALUES ('110', null, 'assetstype', '电脑', 'DN', '0', '2015-06-30 17:13:16', '1', null, '0', '106', '1');
INSERT INTO `rock_option` VALUES ('111', 'assetslaiyuan', 'assets', '资产来源', null, '2', '2015-04-13 16:01:22', '1', null, '0', '107', '1');
INSERT INTO `rock_option` VALUES ('112', null, 'assetslaiyuan', '购入', null, '0', '2015-04-13 13:32:48', '1', null, '0', '111', '1');
INSERT INTO `rock_option` VALUES ('113', null, 'assetslaiyuan', '自建', null, '0', '2015-04-13 13:33:03', '1', null, '0', '111', '1');
INSERT INTO `rock_option` VALUES ('114', 'assetsstate', 'assets', '资产状态', null, '3', '2015-04-13 16:01:22', '1', null, '0', '107', '1');
INSERT INTO `rock_option` VALUES ('115', null, 'assetsstate', '在用', null, '0', '2015-04-13 13:35:16', '1', null, '0', '114', '1');
INSERT INTO `rock_option` VALUES ('116', null, 'assetsstate', '闲置', null, '0', '2015-04-13 13:35:22', '1', null, '0', '114', '1');
INSERT INTO `rock_option` VALUES ('117', null, 'assetsstate', '已报废', null, '0', '2015-04-13 13:35:31', '1', null, '0', '114', '1');
INSERT INTO `rock_option` VALUES ('118', null, 'assetsstate', '维修中', null, '0', '2015-04-13 13:35:41', '1', null, '0', '114', '1');
INSERT INTO `rock_option` VALUES ('119', 'assetsaddress', 'assets', '放置地点', null, '4', '2015-04-13 16:01:22', '1', null, '0', '107', '1');
INSERT INTO `rock_option` VALUES ('120', null, 'assetsaddress', '仓库一', null, '0', '2015-04-13 16:02:03', '1', null, '0', '119', '1');
INSERT INTO `rock_option` VALUES ('121', null, 'assetsaddress', '仓库二', null, '0', '2015-04-13 16:02:08', '1', null, '0', '119', '1');
INSERT INTO `rock_option` VALUES ('122', null, 'assetsstate', '借出', null, '0', '2015-04-14 10:28:37', '1', null, '0', '114', '1');
INSERT INTO `rock_option` VALUES ('123', 'rockproject', 'rock', '项目管理', null, '10', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('124', null, 'assetsbrand', '联想', null, '0', '2015-04-29 14:04:24', '1', null, '0', '108', '1');
INSERT INTO `rock_option` VALUES ('125', null, 'assetsbrand', '戴尔', null, '0', '2015-04-29 14:04:30', '1', null, '0', '108', '1');
INSERT INTO `rock_option` VALUES ('126', 'projecttype', 'rockproject', '项目类别', null, '0', '2015-05-08 17:40:51', '1', null, '0', '123', '1');
INSERT INTO `rock_option` VALUES ('127', 'projectstate', 'rockproject', '项目状态', null, '1', '2015-05-08 17:40:51', '1', null, '0', '123', '1');
INSERT INTO `rock_option` VALUES ('128', 'projectguimo', 'rockproject', '项目规模', null, '2', '2015-05-08 17:40:51', '1', null, '0', '123', '1');
INSERT INTO `rock_option` VALUES ('129', null, 'projectstate', '待执行', null, '0', '2015-05-08 23:20:48', '1', null, '0', '127', '1');
INSERT INTO `rock_option` VALUES ('130', null, 'projectstate', '执行中', null, '1', '2015-05-08 23:20:54', '1', null, '0', '127', '1');
INSERT INTO `rock_option` VALUES ('131', null, 'projectstate', '已完成', null, '2', '2015-05-08 23:21:00', '1', null, '0', '127', '1');
INSERT INTO `rock_option` VALUES ('132', null, 'projectstate', '已取消', null, '3', '2015-05-08 23:21:11', '1', null, '0', '127', '1');
INSERT INTO `rock_option` VALUES ('133', null, 'projecttype', '一般项目', null, '0', '2015-05-08 23:24:26', '1', null, '0', '126', '1');
INSERT INTO `rock_option` VALUES ('134', null, 'projecttype', '重大项目', null, '0', '2015-05-08 23:24:37', '1', null, '0', '126', '1');
INSERT INTO `rock_option` VALUES ('135', null, 'projecttype', '重要项目', null, '0', '2015-05-08 23:24:46', '1', null, '0', '126', '1');
INSERT INTO `rock_option` VALUES ('136', null, 'projecttype', '关键项目', null, '0', '2015-05-08 23:24:52', '1', null, '0', '126', '1');
INSERT INTO `rock_option` VALUES ('137', null, 'projectguimo', '小', null, '0', '2015-05-08 23:25:27', '1', null, '0', '128', '1');
INSERT INTO `rock_option` VALUES ('138', null, 'projectguimo', '中', null, '1', '2015-05-08 23:25:32', '1', null, '0', '128', '1');
INSERT INTO `rock_option` VALUES ('139', null, 'projectguimo', '大', null, '2', '2015-05-08 23:25:41', '1', null, '0', '128', '1');
INSERT INTO `rock_option` VALUES ('140', null, 'filetype_1', '技术文档', null, '0', '2015-05-15 16:27:03', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('141', 'filetype_1_4225', 'filetype_1', '培训文档', null, '1', '2015-05-15 16:27:03', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('143', null, 'vcardgroup1', '同事', null, '0', '2015-05-16 22:34:59', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('144', null, 'vcardgroup1', '盟友', null, '1', '2015-05-16 22:34:59', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('145', 'hunyin', 'userinfor', '婚姻状况', null, '4', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('146', 'xuexing', 'userinfor', '血型', null, '5', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('147', null, 'hunyin', '未婚', null, '0', '2015-05-16 23:06:08', '1', null, '0', '145', '1');
INSERT INTO `rock_option` VALUES ('148', null, 'hunyin', '已婚', null, '1', '2015-05-16 23:06:13', '1', null, '0', '145', '1');
INSERT INTO `rock_option` VALUES ('149', null, 'hunyin', '丧偶', null, '2', '2015-05-16 23:06:36', '1', null, '0', '145', '1');
INSERT INTO `rock_option` VALUES ('150', null, 'hunyin', '离异', null, '3', '2015-05-16 23:06:43', '1', null, '0', '145', '1');
INSERT INTO `rock_option` VALUES ('151', null, 'hunyin', '其他', null, '4', '2015-05-16 23:06:51', '1', null, '0', '145', '1');
INSERT INTO `rock_option` VALUES ('152', null, 'xuexing', 'A型', null, '0', '2015-05-16 23:07:07', '1', null, '0', '146', '1');
INSERT INTO `rock_option` VALUES ('153', null, 'xuexing', 'B型', null, '1', '2015-05-16 23:07:12', '1', null, '0', '146', '1');
INSERT INTO `rock_option` VALUES ('154', null, 'xuexing', 'O型', null, '2', '2015-05-16 23:07:17', '1', null, '0', '146', '1');
INSERT INTO `rock_option` VALUES ('155', null, 'xuexing', 'AB型', null, '3', '2015-05-16 23:07:25', '1', null, '0', '146', '1');
INSERT INTO `rock_option` VALUES ('156', null, 'xuexing', '其他', null, '4', '2015-05-16 23:07:30', '1', null, '0', '146', '1');
INSERT INTO `rock_option` VALUES ('157', null, 'xuexing', '未知', null, '5', '2015-05-16 23:07:36', '1', null, '0', '146', '1');
INSERT INTO `rock_option` VALUES ('158', 'zzmianmao', 'userinfor', '政治面貌', null, '6', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('159', null, 'zzmianmao', '群众', null, '0', '2015-05-17 10:37:49', '1', null, '0', '158', '1');
INSERT INTO `rock_option` VALUES ('160', null, 'zzmianmao', '党员', null, '0', '2015-05-17 10:37:54', '1', null, '0', '158', '1');
INSERT INTO `rock_option` VALUES ('161', null, 'zzmianmao', '团员', null, '0', '2015-05-17 10:38:00', '1', null, '0', '158', '1');
INSERT INTO `rock_option` VALUES ('162', 'flowfenlei', 'flow', '流程分类', null, '0', '2015-11-28 16:22:21', '1', null, '0', '45', '1');
INSERT INTO `rock_option` VALUES ('163', null, 'flowfenlei', '人事考勤', null, '0', '2015-09-14 16:02:50', '1', null, '0', '162', '1');
INSERT INTO `rock_option` VALUES ('164', null, 'flowfenlei', '财务', null, '0', '2015-07-31 15:58:47', '1', null, '0', '162', '1');
INSERT INTO `rock_option` VALUES ('165', null, 'flowfenlei', '协同办公', null, '1', '2015-06-17 16:38:06', '1', null, '0', '162', '1');
INSERT INTO `rock_option` VALUES ('166', null, 'flowcoursename_4', '接收人签收', null, '0', '2015-06-17 16:41:09', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('167', null, 'flowchecktype', '自定义', 'auto', '8', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('168', 'meet', 'rock', '会议选项', null, '3', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('169', 'meeting', 'meet', '会议室列表', null, '0', '2015-07-13 13:50:43', '1', null, '0', '168', '1');
INSERT INTO `rock_option` VALUES ('175', null, 'flowcoursename_6', '行政发放', null, '0', '2015-07-23 16:18:20', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('174', 'jishukao', 'infortype_dept_dev', '技术考核', null, '0', '2016-01-06 19:17:14', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('176', 'reimipsystem', null, null, '127.0.0.1', null, '2016-04-04 11:41:36', '0', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('177', 'reimportsystem', null, null, '4552', null, '2016-04-04 11:41:36', '0', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('178', 'hetongtype', 'userinfor', '合同类型', null, '7', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('179', null, 'hetongtype', '固定期限劳动合同', null, '0', '2015-07-31 15:23:40', '1', null, '0', '178', '1');
INSERT INTO `rock_option` VALUES ('180', null, 'hetongtype', '无固定期限劳动合同', null, '0', '2015-07-31 15:23:59', '1', null, '0', '178', '1');
INSERT INTO `rock_option` VALUES ('181', null, 'hetongtype', '劳务派遣合同', null, '0', '2015-07-31 15:24:15', '1', null, '0', '178', '1');
INSERT INTO `rock_option` VALUES ('182', null, 'hetongtype', '非全日制用工合同', null, '0', '2015-07-31 15:24:38', '1', null, '0', '178', '1');
INSERT INTO `rock_option` VALUES ('183', null, 'flowfenlei', '人力资源', null, '0', '2015-07-31 15:58:34', '1', null, '0', '162', '1');
INSERT INTO `rock_option` VALUES ('184', null, 'flowcoursename_7', '领导审批', null, '0', '2015-08-01 11:51:49', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('185', null, 'flowcoursename_7', '人事审批', null, '1', '2015-08-01 11:51:49', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('186', null, 'flowcoursename_8', '人事经理审批', null, '0', '2015-08-01 12:00:33', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('187', null, 'flowcoursename_9', '领导审批', null, '0', '2015-08-01 12:00:58', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('188', null, 'flowcoursename_9', '人事审批', null, '1', '2015-08-01 12:00:58', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('189', 'redundtype', 'userinfor', '离职类型', null, '8', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('190', 'redundreson', 'userinfor', '离职原因', null, '9', '2015-08-01 12:28:43', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('191', null, 'redundtype', '自动离职', null, '0', '2015-08-01 12:25:35', '1', null, '0', '189', '1');
INSERT INTO `rock_option` VALUES ('192', null, 'redundtype', '退休', null, '0', '2015-08-01 12:25:44', '1', null, '0', '189', '1');
INSERT INTO `rock_option` VALUES ('193', null, 'redundtype', '病辞', null, '0', '2015-08-01 12:25:52', '1', null, '0', '189', '1');
INSERT INTO `rock_option` VALUES ('194', null, 'redundtype', '辞退', null, '0', '2015-08-01 12:26:00', '1', null, '0', '189', '1');
INSERT INTO `rock_option` VALUES ('195', null, 'redundtype', '辞职', null, '0', '2015-08-01 12:26:06', '1', null, '0', '189', '1');
INSERT INTO `rock_option` VALUES ('196', null, 'redundreson', '无法胜任工作', null, '0', '2015-08-01 12:27:29', '1', null, '0', '190', '1');
INSERT INTO `rock_option` VALUES ('197', null, 'redundreson', '另找到工作', null, '0', '2015-08-01 12:26:44', '1', null, '0', '190', '1');
INSERT INTO `rock_option` VALUES ('198', null, 'redundreson', '身体原因', null, '0', '2015-08-01 12:26:53', '1', null, '0', '190', '1');
INSERT INTO `rock_option` VALUES ('199', null, 'redundreson', '年龄到期', null, '0', '2015-08-01 12:27:06', '1', null, '0', '190', '1');
INSERT INTO `rock_option` VALUES ('200', 'transfertype', 'userinfor', '调动类型', null, '10', '2015-08-18 11:59:29', '1', null, '0', '11', '1');
INSERT INTO `rock_option` VALUES ('201', null, 'transfertype', '平调', null, '0', '2015-08-01 12:29:04', '1', null, '0', '200', '1');
INSERT INTO `rock_option` VALUES ('202', null, 'transfertype', '晋升', null, '0', '2015-08-01 12:29:14', '1', null, '0', '200', '1');
INSERT INTO `rock_option` VALUES ('203', null, 'transfertype', '降职', null, '0', '2015-08-01 12:29:21', '1', null, '0', '200', '1');
INSERT INTO `rock_option` VALUES ('204', 'dakaerrtype', 'humanres', '打卡异常类型', null, '3', '2015-09-01 09:36:19', '1', null, '0', '6', '1');
INSERT INTO `rock_option` VALUES ('205', null, 'dakaerrtype', '忘记打卡', null, '0', '2015-08-05 12:05:51', '1', null, '0', '204', '1');
INSERT INTO `rock_option` VALUES ('206', null, 'dakaerrtype', '打卡不成功', null, '1', '2015-08-05 12:06:23', '1', null, '0', '204', '1');
INSERT INTO `rock_option` VALUES ('207', null, 'flowcoursename_10', '主管审核', null, '0', '2015-08-05 12:07:49', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('208', null, 'leavetypem', '产假', null, '4', '2015-08-20 10:26:28', '1', null, '0', '55', '1');
INSERT INTO `rock_option` VALUES ('209', null, 'leavetypes', '增加产假', null, '2', '2015-08-20 10:27:54', '1', null, '0', '56', '1');
INSERT INTO `rock_option` VALUES ('210', null, 'flowcoursename_11', '上级审批', null, '0', '2015-08-20 17:12:47', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('211', null, 'flowcoursename_11', '财务主管审批', null, '1', '2015-08-20 17:12:47', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('212', null, 'flowcoursename_11', '财务付款', null, '2', '2015-08-20 17:12:47', '1', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('213', null, 'ranking', '财务经理', null, '9', '2015-10-30 13:15:33', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('214', 'rockfina', 'rock', '财务选项', null, '11', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('215', 'finaitems', 'rockfina', '所属项目', null, '0', '2015-09-15 09:39:07', '1', null, '0', '214', '1');
INSERT INTO `rock_option` VALUES ('216', null, 'finaitems', '市内交通费', null, '0', '2015-08-21 10:29:01', '1', null, '0', '215', '1');
INSERT INTO `rock_option` VALUES ('217', null, 'finaitems', '办公用品', null, '1', '2015-08-21 10:29:01', '1', null, '0', '215', '1');
INSERT INTO `rock_option` VALUES ('218', null, 'finaitems', '快递费', null, '2', '2015-08-21 10:29:01', '1', null, '0', '215', '1');
INSERT INTO `rock_option` VALUES ('219', null, 'finaitems', '停车费', null, '3', '2015-08-21 10:29:01', '1', null, '0', '215', '1');
INSERT INTO `rock_option` VALUES ('220', null, 'finaitems', '电话费', null, '4', '2015-08-21 10:29:01', '1', null, '0', '215', '1');
INSERT INTO `rock_option` VALUES ('221', null, 'finaitems', '其它', null, '5', '2015-08-21 10:29:01', '1', null, '0', '215', '1');
INSERT INTO `rock_option` VALUES ('222', 'systeminit', null, null, '1', null, '2016-03-01 11:05:55', '0', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('229', 'jiang', 'infortype', '奖惩通告', null, '3', '2016-01-06 19:13:33', '1', null, '0', '5', '1');
INSERT INTO `rock_option` VALUES ('230', 'rockadmins', 'rock', '行政选项', null, '12', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('231', 'rewardtype', 'rockadmins', '奖惩类型', null, '0', '2015-09-14 14:23:27', '1', null, '0', '230', '1');
INSERT INTO `rock_option` VALUES ('232', 'rewardresult', 'rockadmins', '奖惩结果', null, '1', '2015-09-14 14:23:27', '1', null, '0', '230', '1');
INSERT INTO `rock_option` VALUES ('233', null, 'rewardtype', '奖励', null, '0', '2015-09-14 14:01:28', '1', null, '0', '231', '1');
INSERT INTO `rock_option` VALUES ('234', null, 'rewardtype', '处罚', null, '0', '2015-09-14 14:01:39', '1', null, '0', '231', '1');
INSERT INTO `rock_option` VALUES ('235', null, 'rewardresult', '奖励', null, '0', '2015-09-14 14:02:21', '1', null, '0', '232', '1');
INSERT INTO `rock_option` VALUES ('236', null, 'rewardresult', '警告', null, '0', '2015-09-14 14:02:26', '1', null, '0', '232', '1');
INSERT INTO `rock_option` VALUES ('237', null, 'rewardresult', '辞退', null, '0', '2015-09-14 14:02:33', '1', null, '0', '232', '1');
INSERT INTO `rock_option` VALUES ('238', null, 'rewardresult', '降职', null, '0', '2015-09-14 14:02:45', '1', null, '0', '232', '1');
INSERT INTO `rock_option` VALUES ('239', 'rewardmoney', 'rockadmins', '奖惩金额', null, '2', '2015-09-14 14:23:27', '1', null, '0', '230', '1');
INSERT INTO `rock_option` VALUES ('240', null, 'rewardmoney', '奖励100元', '100', '1', '2015-09-14 14:26:46', '1', null, '0', '239', '1');
INSERT INTO `rock_option` VALUES ('241', null, 'rewardmoney', '处罚100元', '-100', '2', '2015-09-14 14:26:51', '1', null, '0', '239', '1');
INSERT INTO `rock_option` VALUES ('242', null, 'rewardmoney', '无金额', '0', '0', '2015-09-14 14:27:06', '1', null, '0', '239', '1');
INSERT INTO `rock_option` VALUES ('243', null, 'flowfenlei', '行政', null, '2', '2015-09-14 16:03:03', '1', null, '0', '162', '1');
INSERT INTO `rock_option` VALUES ('244', 'finpaytype', 'rockfina', '付款方式', null, '1', '2015-09-15 09:39:07', '1', null, '0', '214', '1');
INSERT INTO `rock_option` VALUES ('245', null, 'finpaytype', '汇款', null, '0', '2015-09-15 09:40:00', '1', null, '0', '244', '1');
INSERT INTO `rock_option` VALUES ('246', null, 'finpaytype', '支付宝', null, '1', '2015-09-15 09:40:00', '1', null, '0', '244', '1');
INSERT INTO `rock_option` VALUES ('247', null, 'finpaytype', '财付通', null, '2', '2015-09-15 09:40:00', '1', null, '0', '244', '1');
INSERT INTO `rock_option` VALUES ('248', null, 'finpaytype', '其它', null, '3', '2015-09-15 09:40:00', '1', null, '0', '244', '1');
INSERT INTO `rock_option` VALUES ('249', 'rockcar', 'rock', '车辆选项', null, '13', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('250', 'cartype', 'rockcar', '车辆类型', null, '0', '2015-09-16 11:17:16', '1', null, '0', '249', '1');
INSERT INTO `rock_option` VALUES ('251', 'carbrand', 'rockcar', '车辆品牌', null, '1', '2015-09-16 11:17:16', '1', null, '0', '249', '1');
INSERT INTO `rock_option` VALUES ('252', 'carstate', 'rockcar', '车辆状态', null, '2', '2015-09-16 11:17:16', '1', null, '0', '249', '1');
INSERT INTO `rock_option` VALUES ('253', null, 'cartype', '小型车', null, '0', '2016-04-27 22:28:22', '1', null, '0', '250', '1');
INSERT INTO `rock_option` VALUES ('254', null, 'carbrand', '奥迪', null, '0', '2015-09-16 10:37:04', '1', null, '0', '251', '1');
INSERT INTO `rock_option` VALUES ('255', null, 'carbrand', '奔驰', null, '0', '2015-09-16 10:37:12', '1', null, '0', '251', '1');
INSERT INTO `rock_option` VALUES ('256', null, 'carstate', '可用', null, '0', '2015-09-16 10:48:57', '1', null, '0', '252', '1');
INSERT INTO `rock_option` VALUES ('257', null, 'carstate', '报废', null, '0', '2015-09-16 10:50:14', '1', null, '0', '252', '1');
INSERT INTO `rock_option` VALUES ('258', null, 'carstate', '维修中', null, '0', '2015-09-16 10:50:22', '1', null, '0', '252', '1');
INSERT INTO `rock_option` VALUES ('259', 'carbfields', 'rockcar', '车辆变更字段', null, '3', '2015-09-16 11:17:16', '1', null, '0', '249', '1');
INSERT INTO `rock_option` VALUES ('260', null, 'carbfields', '状态', 'state', '0', '2015-09-16 15:05:26', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('261', null, 'carbfields', '强险开始日期', 'qxstartdt', '1', '2015-09-16 15:05:26', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('262', null, 'carbfields', '强险截止日期', 'qxenddt', '2', '2015-09-16 15:05:26', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('263', null, 'carbfields', '强险金额', 'qxmoney', '3', '2015-09-16 15:05:26', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('264', null, 'carbfields', '加油费', 'jymoney', '4', '2015-09-16 15:44:01', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('265', null, 'carbfields', '维修费', 'wxmoney', '5', '2015-09-16 15:44:16', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('266', null, 'carbfields', '停车费', 'tcmoney', '6', '2015-09-16 15:44:29', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('267', null, 'carbfields', '行驶证开始日期', 'xszstartdt', '7', '2015-09-23 17:48:18', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('268', null, 'carbfields', '行驶证截止日期', 'xszenddt', '8', '2015-09-23 17:48:34', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('269', null, 'carbfields', '商业险开始日期', 'syxstartdt', '9', '2015-09-23 17:49:09', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('270', null, 'carbfields', '商业险截止日期', 'syxenddt', '10', '2015-09-23 17:49:20', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('271', null, 'carbfields', '年审开始日期', 'nsstartdt', '11', '2015-09-23 17:52:38', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('272', null, 'carbfields', '年审截止日期', 'nsenddt', '12', '2015-09-23 17:52:55', '1', null, '0', '259', '1');
INSERT INTO `rock_option` VALUES ('273', 'rocktask', 'rock', '定时任务选项', null, '1', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('274', null, 'tasktype', '系统任务', null, '1', '2015-10-21 17:52:08', '1', null, '0', '10', '1');
INSERT INTO `rock_option` VALUES ('275', 'rocksupple', 'rock', '物品选项', null, '14', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('276', 'suppletype', 'rocksupple', '物品分类', null, '0', '2015-10-30 13:48:22', '1', null, '0', '275', '1');
INSERT INTO `rock_option` VALUES ('277', 'suppleunit', 'rocksupple', '物品单位', null, '1', '2015-10-30 13:48:22', '1', null, '0', '275', '1');
INSERT INTO `rock_option` VALUES ('278', null, 'suppletype', '办公用品', null, '0', '2015-10-30 13:48:59', '1', null, '0', '276', '1');
INSERT INTO `rock_option` VALUES ('279', null, 'suppleunit', '个', null, '0', '2015-10-30 13:51:55', '1', null, '0', '277', '1');
INSERT INTO `rock_option` VALUES ('280', null, 'suppleunit', '件', null, '1', '2015-10-30 13:51:55', '1', null, '0', '277', '1');
INSERT INTO `rock_option` VALUES ('281', null, 'suppleunit', '箱', null, '2', '2015-10-30 13:51:55', '1', null, '0', '277', '1');
INSERT INTO `rock_option` VALUES ('282', null, 'suppletype', '耗材', null, '1', '2015-10-30 15:54:03', '1', null, '0', '276', '1');
INSERT INTO `rock_option` VALUES ('283', null, 'ranking', '行政主管', null, '10', '2015-11-22 20:51:38', '1', null, '0', '2', '1');
INSERT INTO `rock_option` VALUES ('284', null, 'workstate', '执行中70%', null, '6', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('285', 'flowinputtype', 'flow', '表单类型', null, '3', '2015-11-28 16:22:21', '1', null, '0', '45', '1');
INSERT INTO `rock_option` VALUES ('286', null, 'flowinputtype', '文本框', 'text', '0', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('287', null, 'flowinputtype', '日期', 'date', '1', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('288', null, 'flowinputtype', '日期时间', 'datetime', '2', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('289', null, 'flowinputtype', '时间', 'time', '3', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('290', null, 'flowinputtype', '隐藏文本框', 'hidden', '4', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('291', null, 'flowinputtype', '选择人员(单选)', 'changeuser', '7', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('292', null, 'flowinputtype', '选择人员(多选)', 'changeusercheck', '8', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('294', 'weixin_corpid', null, null, 'wxbfab78136fcc36c2', null, '2016-02-26 21:39:12', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('295', 'weixin_secret', null, null, '9Nwf8TNfqMz3L7VcS7ndmHtIAxFos881WCPaC1Gpzn5lHk98hE-tjudcWvpDn3Mt', null, '2016-02-26 21:39:12', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('296', 'weixin_ybappkey', null, null, 'NTY4ODg5Yjk0NDA3YTNjZDAyOGFiNTll', null, '2016-01-03 16:33:08', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('297', null, 'tasktype', '微信任务', null, '2', '2016-01-03 18:58:48', '1', null, '0', '10', '1');
INSERT INTO `rock_option` VALUES ('298', null, 'tasktype', '钉钉任务', null, '3', '2016-01-03 19:11:34', '1', null, '0', '10', '1');
INSERT INTO `rock_option` VALUES ('299', null, 'flowchecktype', '指定部门', 'depta', '7', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('300', null, 'worktype', '研究', null, '3', '2016-01-13 13:03:00', '1', null, '0', '81', '1');
INSERT INTO `rock_option` VALUES ('301', null, 'worktype', '讨论', null, '4', '2016-01-13 13:03:00', '1', null, '0', '81', '1');
INSERT INTO `rock_option` VALUES ('302', null, 'worktype', '改进', null, '5', '2016-01-13 13:03:00', '1', null, '0', '81', '1');
INSERT INTO `rock_option` VALUES ('303', null, 'worktype', 'bug', null, '6', '2016-01-13 13:03:00', '1', null, '0', '81', '1');
INSERT INTO `rock_option` VALUES ('304', null, 'worktype', '其它', null, '7', '2016-01-13 13:03:00', '1', null, '0', '81', '1');
INSERT INTO `rock_option` VALUES ('305', null, 'workstate', '推迟', null, '9', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('306', null, 'workstate', '取消', null, '10', '2016-01-14 18:42:59', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('307', null, 'workstate', '驳回', null, '12', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('308', null, 'workstate', '暂停', null, '11', '2016-01-14 18:42:33', '1', null, '0', '85', '1');
INSERT INTO `rock_option` VALUES ('309', 'modekeysval', null, null, '0c724beade77aed60b2eaa7b81e65428', null, '2016-01-16 14:11:38', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('349', null, 'flowinputtype', '自定义', 'auto', '17', '2016-05-16 20:08:36', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('311', 'weixin_url', null, null, 'http://m.rockoa.com/', null, '2016-02-26 21:39:12', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('312', 'rockcrm', 'rock', '客户选项', null, '15', '2016-02-25 20:20:05', '1', null, '1', '1', '1');
INSERT INTO `rock_option` VALUES ('313', 'custgrade', 'rockcrm', '客户等级', null, '0', '2016-02-25 20:29:44', '1', null, '0', '312', '1');
INSERT INTO `rock_option` VALUES ('314', 'custlaiyuan', 'rockcrm', '客户来源', null, '1', '2016-02-25 20:29:44', '1', null, '0', '312', '1');
INSERT INTO `rock_option` VALUES ('315', 'custstate', 'rockcrm', '客户状态', null, '2', '2016-02-25 20:29:44', '1', null, '0', '312', '1');
INSERT INTO `rock_option` VALUES ('316', null, 'custgrade', '1星', null, '0', '2016-02-25 20:23:09', '1', null, '0', '313', '1');
INSERT INTO `rock_option` VALUES ('317', null, 'custgrade', '2星', null, '1', '2016-02-25 20:23:09', '1', null, '0', '313', '1');
INSERT INTO `rock_option` VALUES ('318', null, 'custgrade', '3星', null, '2', '2016-02-25 20:23:09', '1', null, '0', '313', '1');
INSERT INTO `rock_option` VALUES ('319', null, 'custlaiyuan', '自己开括', null, '0', '2016-02-25 20:24:30', '1', null, '0', '314', '1');
INSERT INTO `rock_option` VALUES ('320', null, 'custlaiyuan', '推销电话', null, '1', '2016-02-25 20:24:30', '1', null, '0', '314', '1');
INSERT INTO `rock_option` VALUES ('321', null, 'custlaiyuan', '网上开括', null, '2', '2016-02-25 20:24:30', '1', null, '0', '314', '1');
INSERT INTO `rock_option` VALUES ('322', null, 'custstate', '正式', null, '0', '2016-02-25 20:25:58', '1', null, '0', '315', '1');
INSERT INTO `rock_option` VALUES ('323', null, 'custstate', '意向', null, '1', '2016-02-25 20:25:58', '1', null, '0', '315', '1');
INSERT INTO `rock_option` VALUES ('324', null, 'custstate', '丢失', null, '2', '2016-02-25 20:25:58', '1', null, '0', '315', '1');
INSERT INTO `rock_option` VALUES ('325', 'custtype', 'rockcrm', '客户类型', null, '3', '2016-02-25 20:29:44', '1', null, '0', '312', '1');
INSERT INTO `rock_option` VALUES ('326', null, 'custtype', '合作伙伴', null, '0', '2016-02-25 20:27:35', '1', null, '0', '325', '1');
INSERT INTO `rock_option` VALUES ('327', null, 'custtype', '代理商', null, '1', '2016-02-25 20:27:35', '1', null, '0', '325', '1');
INSERT INTO `rock_option` VALUES ('328', null, 'custtype', '供应商', null, '2', '2016-02-25 20:27:35', '1', null, '0', '325', '1');
INSERT INTO `rock_option` VALUES ('329', 'filetype_5_8071', 'filetype_5', '123', '123', '0', '2016-03-02 14:40:10', '5', null, '0', null, '1');
INSERT INTO `rock_option` VALUES ('330', null, 'flowchecktype', '申请人', 'apply', '5', '2016-03-29 20:46:38', '1', null, '0', '50', '1');
INSERT INTO `rock_option` VALUES ('331', 'reimhostsystem', null, null, null, null, '2016-05-08 15:24:02', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('332', 'reimrecidsystem', null, null, '2xethj3g', null, '2016-05-08 15:24:02', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('333', 'reimpushurlsystem', null, null, null, null, '2016-05-08 15:24:02', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('334', 'reimtitlesystem', null, null, 'REIM即时通', null, '2016-05-08 15:24:02', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('335', 'reimmiyuesystem', null, null, 'ic0cb0db0ld0ii0zd0aaa0aad0cz0abb0ck0abh0cc0dk0yb0abh0cd0zd0ahc0aac0cc0ahz0cc0ld0cz0ahz0ahc0abb0ci0ahz0di0li0cd0dl0cc0aad0da0cb0ahh0abb0ci0ahy0yz0aad0cc0ahz0zi0abh0cz0ahz0zi0ld0ci0dk0yb0aba0cc0abb0da0aac0ci0dl0cc0yl0cd0ahz0dy0li0cc0ahy0yz0yd03', null, '2016-05-08 15:24:02', '0', null, '0', '0', '1');
INSERT INTO `rock_option` VALUES ('336', null, 'flowinputtype', '数字', 'number', '5', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('337', null, 'flowinputtype', '文本域', 'textarea', '6', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('338', null, 'flowinputtype', '固定值', 'fixed', '11', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('339', null, 'flowinputtype', '系统选项下拉框', 'rockcombo', '12', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('340', null, 'flowinputtype', '下拉框', 'select', '13', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('341', null, 'flowinputtype', 'htmt编辑器', 'htmlediter', '14', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('342', null, 'flowinputtype', '选择部门人员', 'changedeptusercheck', '10', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('343', null, 'flowinputtype', '单个复选框', 'checkbox', '15', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('344', null, 'flowinputtype', '多个复选框', 'checkboxall', '16', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('345', null, 'flowinputtype', '选择部门', 'changedept', '9', '2016-04-26 22:15:19', '1', null, '0', '285', '1');
INSERT INTO `rock_option` VALUES ('346', null, 'cartype', '轿车', null, '1', '2016-04-27 22:28:22', '1', null, '0', '250', '1');
INSERT INTO `rock_option` VALUES ('347', null, 'cartype', '商务车', null, '2', '2016-04-27 22:28:22', '1', null, '0', '250', '1');
INSERT INTO `rock_option` VALUES ('348', null, 'cartype', '大巴', null, '3', '2016-04-27 22:28:22', '1', null, '0', '250', '1');

-- ----------------------------
-- Table structure for `rock_projectm`
-- ----------------------------
DROP TABLE IF EXISTS `rock_projectm`;
CREATE TABLE `rock_projectm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(20) DEFAULT NULL COMMENT '项目类别',
  `num` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `title` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '预计结束时间',
  `fuze` varchar(20) DEFAULT NULL COMMENT '负责人',
  `fuzeid` varchar(50) DEFAULT NULL,
  `runuser` varchar(100) DEFAULT NULL COMMENT '执行人员',
  `runuserid` varchar(100) DEFAULT NULL,
  `progress` smallint(6) DEFAULT '0' COMMENT '进度',
  `viewuser` varchar(100) DEFAULT NULL COMMENT '授权查看',
  `viewuserid` varchar(100) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL COMMENT '说明备注',
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optdt` datetime DEFAULT NULL,
  `adddt` datetime DEFAULT NULL COMMENT '添加时间',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_projectm
-- ----------------------------
INSERT INTO `rock_projectm` VALUES ('1', '关键项目', null, '执行中', 'ROCKOA开发', '2015-04-01 00:00:00', null, '管理员', '1', '开发部', 'd4', '25', null, null, '开发', '1', '管理员', '2015-08-27 08:53:19', '2015-05-08 23:58:54', '0');
INSERT INTO `rock_projectm` VALUES ('2', '重大项目', null, '已完成', '类型名称', '2015-05-06 11:38:00', '2015-05-31 14:11:00', '貂蝉', '3', '小乔', 'u5', '100', null, null, '这是一个项目啦', '1', '管理员', '2015-05-09 14:21:22', '2015-05-09 11:38:52', '0');
INSERT INTO `rock_projectm` VALUES ('3', '一般项目', 'rockapp', '执行中', 'APP开发', '2015-05-01 00:00:00', null, '管理员', '1', '开发部', 'd4', '41', null, null, '进行了一些操作', '1', '管理员', '2016-03-02 10:22:26', '2015-08-27 08:54:14', '0');
INSERT INTO `rock_projectm` VALUES ('4', '一般项目', '123', '执行中', '123', '2016-03-02 10:25:00', '2016-03-02 10:25:00', '赵子龙', '9', '行政人事', 'd3', '7', null, null, '123', '1', '管理员', '2016-03-02 10:27:12', '2016-03-02 10:27:12', '0');

-- ----------------------------
-- Table structure for `rock_projects`
-- ----------------------------
DROP TABLE IF EXISTS `rock_projects`;
CREATE TABLE `rock_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `progress` smallint(6) DEFAULT '0' COMMENT '进度',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_projects
-- ----------------------------
INSERT INTO `rock_projects` VALUES ('1', '2', '执行中', '8', '哈哈', '2015-05-09 16:11:16', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('2', '1', '执行中', '22', '嘿嘿黑', '2015-05-09 16:13:47', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('3', '2', '执行中', '12', '哈哈啊哈哈啊。。。', '2015-05-09 16:53:17', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('4', '2', '执行中', '13', null, '2015-05-09 16:53:45', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('5', '2', '执行中', '15', '哈哈哈哈', '2015-05-09 17:01:33', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('6', '2', '已完成', '100', '搞定', '2015-05-09 17:01:57', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('7', '1', '执行中', '25', 'hahahaa', '2015-07-22 17:16:35', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('8', '3', '执行中', '31', '块了了，哈哈', '2015-09-17 11:25:51', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('9', '3', '执行中', '31', '块了了，哈哈', '2015-09-17 11:26:10', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('10', '3', '执行中', '35', '慢慢啦阿拉', '2015-12-15 20:33:41', '管理员', '1');
INSERT INTO `rock_projects` VALUES ('11', '4', '执行中', '7', '完成情况，已经完成说布置任务。\n存在问题：问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多问题很多', '2016-03-02 10:35:31', '貂蝉', '3');

-- ----------------------------
-- Table structure for `rock_reads`
-- ----------------------------
DROP TABLE IF EXISTS `rock_reads`;
CREATE TABLE `rock_reads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(30) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `optid` smallint(6) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `web` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_reads
-- ----------------------------

-- ----------------------------
-- Table structure for `rock_reward`
-- ----------------------------
DROP TABLE IF EXISTS `rock_reward`;
CREATE TABLE `rock_reward` (
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
  `object` varchar(30) DEFAULT NULL COMMENT '奖惩对象',
  `objectid` smallint(6) DEFAULT '0',
  `atype` varchar(20) DEFAULT NULL COMMENT '奖惩类型',
  `result` varchar(50) DEFAULT NULL COMMENT '奖惩结果',
  `money` mediumint(6) DEFAULT NULL COMMENT '奖惩金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_reward
-- ----------------------------
INSERT INTO `rock_reward` VALUES ('1', '1', '2016-04-25 19:46:33', '1', '管理员', '2016-04-24', '管理员认证开发OA系统，奖励的。', '2', '1', '7', '7,3', '2', '貂蝉', '磐石', '管理员', '1', '奖励', '奖励', '100');

-- ----------------------------
-- Table structure for `rock_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `rock_schedule`;
CREATE TABLE `rock_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `startdt` datetime DEFAULT NULL,
  `enddt` datetime DEFAULT NULL,
  `uid` smallint(6) DEFAULT NULL COMMENT '用户Id',
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `mid` int(11) DEFAULT '0' COMMENT '主Id',
  `ratecont` varchar(500) DEFAULT NULL COMMENT '频率',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_schedule
-- ----------------------------
INSERT INTO `rock_schedule` VALUES ('17', 'ROCKOA开发', '2015-07-15 00:00:00', '2015-07-20 15:42:00', '1', '2015-07-20 15:42:18', '管理员', '0', null, '日程事务→通知公告→流程完善');
INSERT INTO `rock_schedule` VALUES ('18', '招聘', '2015-07-16 09:56:00', '2015-07-18 09:56:00', '3', '2015-07-16 09:56:25', '貂蝉', '0', null, '呵呵');
INSERT INTO `rock_schedule` VALUES ('19', 'REIM群讨论组管理', '2015-07-20 16:00:00', '2015-07-20 18:00:00', '1', '2015-07-20 15:43:12', '管理员', '0', null, null);
INSERT INTO `rock_schedule` VALUES ('21', 'REIM的socket推送改进', '2015-09-10 17:27:00', '2015-09-17 16:43:00', '1', '2015-09-17 16:43:32', '管理员', '0', null, 'REIM需要改进，如果连续发送很多，服务端卡死，哎');
INSERT INTO `rock_schedule` VALUES ('22', '开发OA', '2015-10-27 11:24:00', '2015-10-27 23:24:00', '1', '2015-10-27 11:24:48', '管理员', '0', null, null);
INSERT INTO `rock_schedule` VALUES ('23', 'ssssss', '2016-03-02 12:27:00', null, '1', '2016-03-02 12:28:43', '管理员', '0', null, 'ssss');

-- ----------------------------
-- Table structure for `rock_sjoin`
-- ----------------------------
DROP TABLE IF EXISTS `rock_sjoin`;
CREATE TABLE `rock_sjoin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `mid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_sjoin
-- ----------------------------
INSERT INTO `rock_sjoin` VALUES ('35', 'mu', '65', '1', '2013-12-25 20:26:03');
INSERT INTO `rock_sjoin` VALUES ('36', 'mu', '65', '2', '2013-12-25 20:26:03');
INSERT INTO `rock_sjoin` VALUES ('106', 'um', '2', '3', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('107', 'um', '2', '57', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('108', 'um', '2', '58', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('109', 'um', '2', '60', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('110', 'um', '2', '61', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('111', 'um', '2', '73', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('112', 'um', '2', '85', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('113', 'um', '2', '94', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('114', 'um', '2', '96', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('115', 'um', '2', '97', '2014-08-24 00:13:13');
INSERT INTO `rock_sjoin` VALUES ('147', 'um', '3', '3', '2014-12-12 11:29:30');
INSERT INTO `rock_sjoin` VALUES ('148', 'um', '3', '56', '2014-12-12 11:29:30');
INSERT INTO `rock_sjoin` VALUES ('149', 'um', '3', '63', '2014-12-12 11:29:30');
INSERT INTO `rock_sjoin` VALUES ('150', 'um', '3', '64', '2014-12-12 11:29:30');
INSERT INTO `rock_sjoin` VALUES ('151', 'um', '3', '65', '2014-12-12 11:29:30');
INSERT INTO `rock_sjoin` VALUES ('152', 'um', '3', '66', '2014-12-12 11:29:30');
INSERT INTO `rock_sjoin` VALUES ('153', 'ug', '0', '1', '2014-12-12 15:23:04');
INSERT INTO `rock_sjoin` VALUES ('170', 'ug', '1', '1', '2016-03-02 16:11:14');
INSERT INTO `rock_sjoin` VALUES ('160', 'ug', '5', '5', '2015-01-24 00:14:05');
INSERT INTO `rock_sjoin` VALUES ('173', 'ug', '2', '1', '2016-05-17 21:26:26');

-- ----------------------------
-- Table structure for `rock_sjoinv`
-- ----------------------------
DROP TABLE IF EXISTS `rock_sjoinv`;
CREATE TABLE `rock_sjoinv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL COMMENT '@用户id',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `mode` varchar(200) DEFAULT NULL COMMENT '模块编号',
  `modename` varchar(200) DEFAULT NULL COMMENT '模块名称',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|不允许查看,1|可查看',
  `renyid` varchar(200) DEFAULT NULL,
  `renyname` varchar(200) DEFAULT NULL COMMENT '对应值',
  `optdt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_sjoinv
-- ----------------------------
INSERT INTO `rock_sjoinv` VALUES ('2', '1', '管理员', 'jiaban,leave', '加班单,请假条', '1', 'd4', '开发部', '2015-07-23 13:58:51');
INSERT INTO `rock_sjoinv` VALUES ('3', '1', '管理员', 'daily', '工作日报', '1', 'd3', '行政人事', '2015-07-23 15:04:02');

-- ----------------------------
-- Table structure for `rock_supple`
-- ----------------------------
DROP TABLE IF EXISTS `rock_supple`;
CREATE TABLE `rock_supple` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` smallint(6) DEFAULT '0' COMMENT '分类id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `price` float(6,2) DEFAULT NULL COMMENT '单价',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `sort` smallint(6) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL COMMENT '单位',
  `num` varchar(20) DEFAULT NULL COMMENT '物品编号',
  `model` varchar(50) DEFAULT NULL COMMENT '规格型号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_supple
-- ----------------------------
INSERT INTO `rock_supple` VALUES ('1', '278', '笔记本', '1.00', '2015-11-30 21:22:13', '0', null, 'bjb', null);
INSERT INTO `rock_supple` VALUES ('2', '278', '铅笔', '0.00', '2015-10-30 16:50:23', '0', null, 'qianbi', null);
INSERT INTO `rock_supple` VALUES ('3', '278', '圆珠笔', '0.00', '2015-10-30 16:55:08', '4', null, 'yzb', null);
INSERT INTO `rock_supple` VALUES ('4', '278', '厕纸', '0.00', '2015-10-30 16:55:00', '5', null, 'cezhi', null);
INSERT INTO `rock_supple` VALUES ('5', '278', '鼠标', '1.00', '2015-10-30 17:07:26', '6', '个', 'shub1', null);
INSERT INTO `rock_supple` VALUES ('6', '278', '键盘', '2.00', '2015-10-30 17:07:26', '7', '个', 'jianp', null);

-- ----------------------------
-- Table structure for `rock_supplea`
-- ----------------------------
DROP TABLE IF EXISTS `rock_supplea`;
CREATE TABLE `rock_supplea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL COMMENT '@办公用品ID',
  `aname` varchar(30) DEFAULT NULL COMMENT '用品名称',
  `total` smallint(6) DEFAULT '0' COMMENT '申请数量',
  `uid` int(11) DEFAULT '0',
  `optid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待确认,1|已发放,2|不通过驳回,3|入库,4|异常入库',
  `explain` varchar(200) DEFAULT NULL COMMENT '说明',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `statusman` varchar(50) DEFAULT NULL,
  `checkdt` datetime DEFAULT NULL,
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `nowcheckid` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `allcheckid` varchar(200) DEFAULT NULL COMMENT '@所以审核人',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '@当然状态',
  `nowcheckname` varchar(50) DEFAULT NULL COMMENT '@当前审核人',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_supplea
-- ----------------------------
INSERT INTO `rock_supplea` VALUES ('1', '1', null, '1', '0', '1', '3', null, '2015-07-23 16:26:03', '管理员', null, '0', null, null, '0', null, null, null);
INSERT INTO `rock_supplea` VALUES ('2', '2', null, '3', '0', '1', '3', null, '2015-07-23 16:26:03', '管理员', null, '0', null, null, '0', null, null, null);
INSERT INTO `rock_supplea` VALUES ('4', '1', '笔记本', '4', '1', null, '1', 'heheheh', '2015-07-23 17:03:32', '小乔', null, '1', null, '5', '1', null, null, null);
INSERT INTO `rock_supplea` VALUES ('5', '2', '铅笔', '1', '1', null, '1', '12', '2015-07-23 17:39:37', '小乔', null, '1', null, '5', '1', null, null, null);
INSERT INTO `rock_supplea` VALUES ('6', '1', null, '3', '0', '1', '4', null, '2015-07-24 17:50:07', '管理员', null, '0', null, null, '0', null, null, null);
INSERT INTO `rock_supplea` VALUES ('7', '1', '笔记本', '1', '1', null, '1', '23', '2015-08-19 12:14:03', '小乔', null, '1', null, '5', '1', null, null, null);
INSERT INTO `rock_supplea` VALUES ('8', '2', '铅笔', '1', '1', '1', '1', '23', '2015-08-21 21:03:10', '小乔', null, '1', null, '5', '1', null, '管理员', '2015-08-21');
INSERT INTO `rock_supplea` VALUES ('9', '2', '铅笔', '1', '5', '5', '0', null, '2016-03-02 14:42:50', null, null, '1', '5', '5', '0', '小乔', '小乔', '2016-03-02');
INSERT INTO `rock_supplea` VALUES ('10', '2', '铅笔', '12', '1', '1', '0', '哈哈哈哈哈', '2016-04-25 21:39:59', null, null, '1', '5', '5', '0', '小乔', '管理员', '2016-04-25');
INSERT INTO `rock_supplea` VALUES ('11', '1', null, '20', '0', '1', '3', null, '2016-05-16 22:14:26', '管理员', null, '0', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `rock_task`
-- ----------------------------
DROP TABLE IF EXISTS `rock_task`;
CREATE TABLE `rock_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `typename` varchar(20) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL COMMENT '地址',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否启用',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optid` int(11) DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `xu` smallint(6) DEFAULT '0' COMMENT '序号',
  `ratecont` varchar(500) DEFAULT NULL COMMENT '频率',
  `lastrundt` datetime DEFAULT NULL COMMENT '最后运行时间',
  `lastrunzt` tinyint(1) DEFAULT '0' COMMENT '最后运行状态@0|无,1|成功,2|失败',
  `zntx` tinyint(1) DEFAULT '0',
  `emtx` tinyint(1) DEFAULT '0' COMMENT '邮件提醒',
  `confuid` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_task
-- ----------------------------
INSERT INTO `rock_task` VALUES ('8', '工作流匹配', '基础任务', 'flow,repipei', '1', '2016-04-08 10:56:48', '管理员', '1', null, '0', '每天的00时15分00秒\n每天的12时15分00秒\n', null, '0', '0', '0', '0');
INSERT INTO `rock_task` VALUES ('9', '读取固定会议', '基础任务', 'meet,fixed', '1', '2016-04-08 10:56:04', '管理员', '1', null, '0', '每小时的45分00秒 每天从07:00开始至19:00结束\n', null, '0', '0', '0', '0');
INSERT INTO `rock_task` VALUES ('12', '日报分析', '基础任务', 'kaoqin,dailyfx', '1', '2016-04-08 10:57:07', '管理员', '1', null, '0', '每天的00时30分00秒\n', null, '0', '0', '0', '0');
INSERT INTO `rock_task` VALUES ('13', '每日考勤分析', '基础任务', 'kaoqin,fenxi', '1', '2016-04-08 10:58:06', '管理员', '1', '考勤分析前3天的', '0', '每天的00时45分00秒\n每天的19时15分00秒\n', null, '0', '0', '0', '0');
INSERT INTO `rock_task` VALUES ('14', '人力资源更新', '基础任务', 'hr,update', '1', '2016-04-08 10:58:22', '管理员', '1', '转正,离职,变动', '0', '每天的00时45分00秒\n', null, '0', '0', '0', '0');
INSERT INTO `rock_task` VALUES ('16', '微信待办审批推送', '微信任务', 'weixin,daiban', '1', '2016-04-08 22:58:36', '管理员', '1', null, '0', '每工作日的18时00分00秒\n每工作日的08时00分00秒\n', null, '0', '0', '0', '0');
INSERT INTO `rock_task` VALUES ('17', '微信REIM未读信息', '微信任务', 'weixin,reimtodo', '1', '2016-04-08 22:57:58', '管理员', '1', null, '0', '每工作日的08时15分00秒\n每工作日的18时15分00秒\n', null, '0', '0', '0', '0');
INSERT INTO `rock_task` VALUES ('2', '备份数据库', '系统任务', 'system,bfmysql', '1', '2016-04-28 22:27:03', '管理员', '1', null, '0', '每天的00时10分00秒\n', null, '0', '0', '0', '0');
INSERT INTO `rock_task` VALUES ('1', '每5分钟运行一次', '基础任务', 'minute5,runtask', '1', '2016-04-28 21:22:49', '管理员', '1', null, '0', '每5分钟的00秒 每天从08:30开始至18:30结束\n', '2016-06-06 20:23:04', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `rock_tasktime`
-- ----------------------------
DROP TABLE IF EXISTS `rock_tasktime`;
CREATE TABLE `rock_tasktime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `atype` varchar(20) DEFAULT NULL COMMENT '类型',
  `shijian` varchar(50) DEFAULT NULL,
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '截止时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `rateval` smallint(6) DEFAULT '0' COMMENT '对应的值',
  `stime` varchar(20) DEFAULT NULL COMMENT '每天从几点开始',
  `etime` varchar(20) DEFAULT NULL COMMENT '截止',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_tasktime
-- ----------------------------
INSERT INTO `rock_tasktime` VALUES ('58', '8', 'task', '天', '00时15分00秒', null, null, '2016-04-08 10:56:22', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('60', '9', 'task', '小时', '45分00秒', null, null, '2016-04-08 10:56:01', '1', '07:00', '19:00');
INSERT INTO `rock_tasktime` VALUES ('79', '8', 'task', '天', '12时15分00秒', null, null, '2016-04-08 10:56:45', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('84', '12', 'task', '天', '00时30分00秒', null, null, '2016-04-08 10:57:05', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('87', '13', 'task', '天', '00时45分00秒', null, null, '2016-04-08 10:57:27', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('97', '14', 'task', '天', '00时45分00秒', null, null, '2016-04-08 10:58:20', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('99', '13', 'task', '天', '19时15分00秒', null, null, '2016-04-08 10:58:04', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('105', '16', 'task', '工作日', '08时00分00秒', null, null, '2016-04-08 22:58:32', '2', null, null);
INSERT INTO `rock_tasktime` VALUES ('106', '16', 'task', '工作日', '18时00分00秒', null, null, '2016-04-07 20:26:51', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('107', '17', 'task', '工作日', '08时15分00秒', null, null, '2016-04-08 10:58:58', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('108', '17', 'task', '工作日', '18时15分00秒', null, null, '2016-04-08 10:59:09', '1', null, null);
INSERT INTO `rock_tasktime` VALUES ('110', '1', 'task', '分钟', '00秒', null, null, '2016-04-28 21:22:46', '5', '08:30', '18:30');
INSERT INTO `rock_tasktime` VALUES ('111', '2', 'task', '天', '00时10分00秒', null, null, '2016-04-28 22:27:01', '1', null, null);

-- ----------------------------
-- Table structure for `rock_taskuser`
-- ----------------------------
DROP TABLE IF EXISTS `rock_taskuser`;
CREATE TABLE `rock_taskuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `receid` varchar(200) DEFAULT NULL,
  `recename` varchar(200) DEFAULT NULL,
  `chaoid` varchar(200) DEFAULT NULL,
  `chaoname` varchar(200) DEFAULT NULL COMMENT '抄送给',
  `sort` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_taskuser
-- ----------------------------
INSERT INTO `rock_taskuser` VALUES ('1', '管理员通知组', '1', '管理员', null, null, '0', '2015-10-21 10:20:23');

-- ----------------------------
-- Table structure for `rock_todo`
-- ----------------------------
DROP TABLE IF EXISTS `rock_todo`;
CREATE TABLE `rock_todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '类型',
  `mess` varchar(500) DEFAULT NULL COMMENT '信息内容',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态@0|未读,1|已读',
  `optdt` datetime DEFAULT NULL COMMENT '时间',
  `table` varchar(50) DEFAULT NULL,
  `mid` smallint(6) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL COMMENT '相关地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_todo
-- ----------------------------
INSERT INTO `rock_todo` VALUES ('1', '1', '加班单', '您提交的[加班单,单号:KJ-20160423-0001]已全部处理完成', '1', '2016-04-27 21:47:24', 'kq_info', '57', null);
INSERT INTO `rock_todo` VALUES ('2', '7', '车辆预定', '您有[管理员]的[车辆预定,单号:YB-20160428-0001]需要处理', '0', '2016-04-28 20:29:14', 'careserve', '4', null);
INSERT INTO `rock_todo` VALUES ('12', '7', '费用报销', '您有[管理员]的[费用报销,单号:PA-20160505-0001]需要处理', '0', '2016-05-05 21:04:13', 'fininfom', '2', null);
INSERT INTO `rock_todo` VALUES ('24', '1', '费用报销', '您提交的[费用报销,单号:PA-20160505-0002]已全部处理完成', '1', '2016-05-16 21:38:08', 'fininfom', '1', null);
INSERT INTO `rock_todo` VALUES ('14', '7', '出差报销', '您有[管理员]的[出差报销,单号:PB-20160505-0001]需要处理', '0', '2016-05-05 21:50:09', 'fininfom', '3', null);
INSERT INTO `rock_todo` VALUES ('17', '7', '借款单', '您有[管理员]的[借款单,单号:PC-20160508-0001]需要处理', '0', '2016-05-08 16:10:08', 'fininfom', '4', null);
INSERT INTO `rock_todo` VALUES ('21', '1', '业务需求', '您提交的[业务需求,单号:FX-20160414-0001]已全部处理完成', '0', '2016-05-16 21:29:25', 'demand', '6', null);

-- ----------------------------
-- Table structure for `rock_userjl`
-- ----------------------------
DROP TABLE IF EXISTS `rock_userjl`;
CREATE TABLE `rock_userjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `ranking` varchar(50) DEFAULT NULL,
  `startdt` date DEFAULT NULL COMMENT '开始日期',
  `enddt` date DEFAULT NULL COMMENT '截止日期',
  `uid` int(11) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `atype` varchar(20) DEFAULT NULL COMMENT '类型',
  `optdt` datetime DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL,
  `httype` varchar(30) DEFAULT NULL COMMENT '合同类型',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `tqenddt` date DEFAULT NULL COMMENT '提前终止',
  `company` varchar(50) DEFAULT NULL COMMENT '签署公司',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_userjl
-- ----------------------------
INSERT INTO `rock_userjl` VALUES ('2', '谷歌', '程序员', '2015-02-02', '2015-05-17', '1', '0', 'work', null, null, null, null, null, null);
INSERT INTO `rock_userjl` VALUES ('3', 'ROCKOA技术', '项目经理', '2015-05-17', '2015-08-08', '1', '0', 'work', null, null, null, null, null, null);
INSERT INTO `rock_userjl` VALUES ('5', '清华大学', '哈哈', '2015-05-17', '2015-05-28', '1', '0', 'edu', null, null, null, null, null, null);
INSERT INTO `rock_userjl` VALUES ('6', '微软', '开发工程师', '2012-01-24', '2015-05-17', '1', '0', 'work', null, null, null, null, null, null);
INSERT INTO `rock_userjl` VALUES ('7', '三国培训', '贵妃', '2015-05-17', '2015-05-20', '3', '0', 'work', null, null, null, null, null, null);
INSERT INTO `rock_userjl` VALUES ('8', null, null, '2015-01-01', null, '7', '0', 'ract', '2015-09-17 10:53:24', null, '固定期限劳动合同', '有效', null, '厦门新浩技术有限公司');
INSERT INTO `rock_userjl` VALUES ('10', null, null, '2015-01-01', '2015-12-31', '1', '0', 'ract', '2015-09-17 10:56:19', null, '固定期限劳动合同', '有效', null, '厦门新浩技术有限公司');

-- ----------------------------
-- Table structure for `rock_vcard`
-- ----------------------------
DROP TABLE IF EXISTS `rock_vcard`;
CREATE TABLE `rock_vcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '名字',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `optdt` datetime DEFAULT NULL,
  `optid` int(11) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `gname` varchar(20) DEFAULT NULL COMMENT '所在组名',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_vcard
-- ----------------------------
INSERT INTO `rock_vcard` VALUES ('1', '吕布', '10086', '2015-05-17 10:41:41', '1', null, null, '盟友', '管理员', null, '0');

-- ----------------------------
-- Table structure for `rock_where`
-- ----------------------------
DROP TABLE IF EXISTS `rock_where`;
CREATE TABLE `rock_where` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mnum` varchar(100) DEFAULT NULL COMMENT '对应编号',
  `luoji` varchar(10) DEFAULT NULL COMMENT '逻辑',
  `field` varchar(30) DEFAULT NULL COMMENT '字段',
  `name` varchar(30) DEFAULT NULL COMMENT '字段名',
  `optlx` varchar(20) DEFAULT NULL COMMENT '逻辑',
  `value` varchar(100) DEFAULT NULL COMMENT '对应值',
  `values` varchar(50) DEFAULT NULL,
  `optid` int(11) DEFAULT NULL COMMENT '人员ID',
  `optdt` datetime DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `explain` varchar(50) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_where
-- ----------------------------
INSERT INTO `rock_where` VALUES ('1', 'flowcourse_1', null, 'qjkind', '请假类型', '=', '年假', '年假', '1', '2015-01-09 17:46:42', '1', null);
INSERT INTO `rock_where` VALUES ('2', 'flowcourse_1', 'AND', 'stime', '开始时间', '>=', '2015-01-07', null, '1', '2015-01-09 17:46:42', '2', null);
INSERT INTO `rock_where` VALUES ('4', 'flowcourse_1', '(', null, null, null, null, null, '1', '2015-01-09 17:46:42', '0', null);
INSERT INTO `rock_where` VALUES ('5', 'flowcourse_1', ')', null, null, null, null, null, '1', '2015-01-09 17:46:42', '7', null);
INSERT INTO `rock_where` VALUES ('6', 'flowcourse_1', 'AND', 'explain', '说明', 'LEFT', ' 12', null, '1', '2015-01-09 17:46:42', '3', null);
INSERT INTO `rock_where` VALUES ('7', 'flowcourse_1', 'AND', 'optdt', '操作时间', 'NO NULL', null, null, '1', '2015-01-09 17:46:42', '4', null);
INSERT INTO `rock_where` VALUES ('8', 'flowcourse_1', 'AND', 'totals', '时间(小时)', '>=', '1', null, '1', '2015-01-09 17:46:42', '5', null);
INSERT INTO `rock_where` VALUES ('9', 'flowcourse_1', 'AND', 'isturn', '是否提交', '=', '提交', '1', '1', '2015-01-09 17:46:42', '6', null);
INSERT INTO `rock_where` VALUES ('11', 'flowcourse_2', null, 'totals', '时间(小时)', '<=', '8', null, '1', '2015-01-10 17:28:57', '0', null);
INSERT INTO `rock_where` VALUES ('12', 'flowcourse_3', null, 'totals', '时间(小时)', '>', '8', null, '1', '2015-01-10 17:37:18', '0', null);
INSERT INTO `rock_where` VALUES ('13', 'flowcourse_3', 'AND', 'totals', '时间(小时)', '<=', '24', null, '1', '2015-01-10 17:37:18', '1', null);
INSERT INTO `rock_where` VALUES ('14', 'flowcourse_4', null, 'totals', '时间(小时)', '>', '24', null, '1', '2015-01-10 17:37:46', '0', null);
INSERT INTO `rock_where` VALUES ('15', 'flowset_leave', null, 'kind', '类型', '=', '请假', '请假', '1', '2015-01-10 18:55:11', '0', null);
INSERT INTO `rock_where` VALUES ('16', 'flowset_jiaban', null, 'kind', '类型', '=', '加班', '加班', '1', '2015-01-10 19:54:30', '0', null);
INSERT INTO `rock_where` VALUES ('17', 'flowcourse_21', null, 'totals', '时间(小时)', '>', '24', null, '1', '2015-01-13 16:45:26', '0', null);
INSERT INTO `rock_where` VALUES ('20', 'flowcourse_20', null, 'totals', '时间(小时)', '>', '8', null, '1', '2015-01-13 17:20:43', '0', null);
INSERT INTO `rock_where` VALUES ('21', 'flowset_finfybx', null, 'type', '单据类型', '=', '报销单', '0', '1', '2015-08-20 17:35:33', '0', null);
INSERT INTO `rock_where` VALUES ('22', 'flowset_finccbx', null, 'type', '单据类型', '=', '出差报销', '1', '1', '2015-08-25 11:02:51', '0', null);
INSERT INTO `rock_where` VALUES ('23', 'flowset_finjkd', null, 'type', '单据类型', '=', '借款单', '2', '1', '2015-08-25 11:04:24', '0', null);
INSERT INTO `rock_where` VALUES ('24', 'flowcourse_46', null, 'money', '金额', '>', '5000', null, '1', '2015-10-27 10:25:52', '0', null);
INSERT INTO `rock_where` VALUES ('25', 'flowcourse_37', null, 'money', '金额', '<=', '5000', null, '1', '2015-10-27 10:26:23', '0', null);
INSERT INTO `rock_where` VALUES ('26', 'flowset_meet', null, 'type', '类型', '=', '普通', '0', '1', '2015-11-21 19:41:01', '0', null);

-- ----------------------------
-- Table structure for `rock_word`
-- ----------------------------
DROP TABLE IF EXISTS `rock_word`;
CREATE TABLE `rock_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(20) DEFAULT NULL COMMENT '类别',
  `typeid` smallint(6) DEFAULT '0',
  `adddt` datetime DEFAULT NULL,
  `fileid` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT '0' COMMENT '排序号',
  `filename` varchar(100) DEFAULT NULL COMMENT '文件名',
  `filesizecn` varchar(20) DEFAULT NULL COMMENT '文件大小',
  `fileext` varchar(20) DEFAULT NULL COMMENT '文档类型',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `shatename` varchar(200) DEFAULT NULL COMMENT '共享给',
  `shateuid` varchar(200) DEFAULT NULL,
  `atype` tinyint(4) DEFAULT '0' COMMENT '@0|内部,1|个人',
  `optid` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_word
-- ----------------------------
INSERT INTO `rock_word` VALUES ('5', '基础文件', '0', '2015-05-15 15:29:40', '52', '0', '20060905025434921[1].gif', '355.00 Byte', 'gif', '管理员', null, null, '0', '1');
INSERT INTO `rock_word` VALUES ('6', '基础文件', '0', '2015-05-15 15:29:42', '53', '0', '20060905025435380[1].gif', '111.00 Byte', 'gif', '管理员', null, null, '0', '1');
INSERT INTO `rock_word` VALUES ('7', '基础文件', '0', '2015-05-15 15:29:43', '54', '0', '20060905025512830[1].gif', '914.00 Byte', 'gif', '管理员', null, null, '0', '1');
INSERT INTO `rock_word` VALUES ('8', '基础文件', '0', '2015-05-15 15:29:45', '55', '0', '20060905025513169[1].gif', '341.00 Byte', 'gif', '管理员', null, null, '0', '1');
INSERT INTO `rock_word` VALUES ('9', '技术文档', '0', '2015-05-15 15:31:25', '56', '0', '20060905025435519[1].gif', '125.00 Byte', 'gif', '管理员', '本部门', 'dept', '1', '1');
INSERT INTO `rock_word` VALUES ('10', '技术文档', '0', '2015-05-15 16:35:20', '57', '0', '20060905025432709[1].gif', '170.00 Byte', 'gif', '管理员', '本部门', 'dept', '1', '1');
INSERT INTO `rock_word` VALUES ('11', '基础文档', '0', '2015-11-09 09:38:10', '45', '0', 'face.jpg', '41.24 KB', 'jpg', '管理员', null, null, '0', '1');
INSERT INTO `rock_word` VALUES ('12', '技术文档', '140', '2015-11-09 09:49:51', '46', '0', 'face.jpg', '41.24 KB', 'jpg', '管理员', null, null, '1', '1');
INSERT INTO `rock_word` VALUES ('13', '技术文档', '140', '2016-02-18 21:30:54', '81', '0', 'favicon.ico', '3.19 KB', 'ico', '管理员', null, null, '1', '1');
INSERT INTO `rock_word` VALUES ('14', '基础文档', '101', '2016-02-18 21:31:22', '82', '0', 'favicon.ico', '3.19 KB', 'ico', '管理员', '所有人员', 'all', '0', '1');
INSERT INTO `rock_word` VALUES ('15', '123', '329', '2016-03-02 14:40:25', '91', '0', 'Winaw32.exe', '949.37 KB', 'exe', '小乔', null, null, '1', '5');

-- ----------------------------
-- Table structure for `rock_work`
-- ----------------------------
DROP TABLE IF EXISTS `rock_work`;
CREATE TABLE `rock_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `type` varchar(20) DEFAULT NULL COMMENT '任务类型',
  `grade` varchar(10) DEFAULT NULL COMMENT '任务等级',
  `distid` varchar(200) DEFAULT NULL,
  `dist` varchar(200) DEFAULT NULL COMMENT '分配给',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `baoname` varchar(200) DEFAULT NULL COMMENT '报告给',
  `baoid` varchar(200) DEFAULT NULL,
  `bgtime` varchar(20) DEFAULT NULL COMMENT '报告时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '创建人',
  `plcont` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '@0|禁用,1|启用',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '结束时间',
  `wcsj` smallint(6) DEFAULT '0',
  `wclx` varchar(10) DEFAULT NULL,
  `wctime` varchar(20) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `dt` date DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `istx` tinyint(1) DEFAULT '1' COMMENT '@0|否,1|是',
  `projectid` smallint(6) DEFAULT '0' COMMENT '所属项目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_work
-- ----------------------------
INSERT INTO `rock_work` VALUES ('96', '测试任务的', '开发', '低', '1', '管理员', null, null, null, null, '2016-01-15 13:01:53', '1', '管理员', null, '1', '2016-01-15 13:01:00', '2016-01-23 12:58:00', '0', null, null, '0', null, '已完成', '1', '1');
INSERT INTO `rock_work` VALUES ('97', '哈哈哈哈122121', '开发', '高', '1', '管理员', '哈哈哈哈', null, null, null, '2016-01-14 12:24:10', '1', '管理员', null, '1', '2016-01-14 10:58:00', null, '0', null, null, '0', null, '执行中30%', '1', '2');
INSERT INTO `rock_work` VALUES ('98', '哈哈啊，哈哈哈', '开发', '中', '3', '貂蝉', '<p>\n	呵呵呵呵\n</p>', null, null, null, '2016-01-14 19:54:57', '1', '管理员', null, '1', '2016-01-15 19:04:00', null, '0', null, null, '0', null, '待执行', '1', '3');
INSERT INTO `rock_work` VALUES ('99', '登录不了啊', 'bug', '紧急', '1', '管理员', '尽快1个小时内修好啊！', null, null, null, '2016-01-15 19:53:26', '1', '管理员', null, '1', '2016-01-15 19:53:00', '2016-01-15 20:53:00', '0', null, null, '0', null, '已完成', '1', '3');
INSERT INTO `rock_work` VALUES ('100', '123', '开发', '中', '9', '赵子龙', '123', null, null, null, '2016-03-02 10:59:47', '1', '管理员', null, '1', '2016-03-02 10:58:00', '2016-03-10 10:58:00', '0', null, null, '0', null, '待执行', '1', '4');
INSERT INTO `rock_work` VALUES ('101', '紧急任务', 'bug', '低', '1', '管理员', '哈哈哈哈哈', null, null, null, '2016-03-16 09:55:52', '1', '管理员', null, '1', '2016-03-15 21:58:00', null, '0', null, null, '0', null, '已完成', '1', '3');
INSERT INTO `rock_work` VALUES ('102', '给你', '设计', '中', '1', '管理员', null, null, null, null, '2016-03-30 22:39:05', '1', '管理员', null, '1', '2016-03-30 22:38:00', null, '0', null, null, '0', null, '已完成', '1', '3');
INSERT INTO `rock_work` VALUES ('103', '给你', '设计', '中', '1', '管理员', null, null, null, null, '2016-03-30 22:39:11', '1', '管理员', null, '1', '2016-03-30 22:38:00', null, '0', null, null, '0', null, '待执行', '1', '3');
INSERT INTO `rock_work` VALUES ('104', 'hahahahaa', '开发', '中', '1', '管理员', 'wwewewewe', null, null, null, '2016-04-07 18:28:43', '3', '貂蝉', null, '1', '2016-04-07 18:28:00', null, '0', null, null, '0', null, '已完成', '1', '4');

-- ----------------------------
-- Table structure for `rock_workbg`
-- ----------------------------
DROP TABLE IF EXISTS `rock_workbg`;
CREATE TABLE `rock_workbg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(20) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `usetime` smallint(6) DEFAULT '0' COMMENT '用时',
  `explain` varchar(500) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_workbg
-- ----------------------------

-- ----------------------------
-- Table structure for `rock_wx_agent`
-- ----------------------------
DROP TABLE IF EXISTS `rock_wx_agent`;
CREATE TABLE `rock_wx_agent` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '应用名称',
  `agentid` smallint(6) DEFAULT '0' COMMENT '应用Id',
  `sort` smallint(6) DEFAULT '0',
  `square_logo_url` varchar(500) DEFAULT NULL,
  `redirect_domain` varchar(50) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `description` varchar(500) DEFAULT NULL,
  `allow_userinfos` varchar(500) DEFAULT NULL,
  `allow_partys` varchar(500) DEFAULT NULL,
  `allow_tags` varchar(500) DEFAULT NULL,
  `close` tinyint(1) DEFAULT '0' COMMENT '是否被禁用',
  `report_location_flag` tinyint(1) DEFAULT '0' COMMENT '@地理位置上报 0：不上报；1：进入会话上报；2：持续上报',
  `isreportenter` tinyint(1) DEFAULT '0' COMMENT '是否上报用户进入应用事件',
  `isreportuser` tinyint(1) DEFAULT '0' COMMENT '是否接收用户变更通知',
  `home_url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_wx_agent
-- ----------------------------
INSERT INTO `rock_wx_agent` VALUES ('11', '办公助手', '0', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM5ibtyPKoNZWAPiac30iaic1zL7rkpaUdkic596RiaSmY0Wn55A/0', 'm.rockoa.com', '1', 'RockOA开发团队', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '0', null);
INSERT INTO `rock_wx_agent` VALUES ('2', 'OA主页', '9', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM6GBwSiaHe3xpF7BAzkLDsVwEyqZdpeibk6xVvOQwmRBEcg/0', 'm.rockoa.com', '2', 'OA系统主页', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);
INSERT INTO `rock_wx_agent` VALUES ('3', '单据查看', '10', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM6TopibCrib7Ru4lFJmiaxcG4TjicLVUIgtrx6pfkOcjibCicAg/0', 'm.rockoa.com', '2', '查看流程请假条,加班单,财务,行政,人力资源,考勤等等各个单据.', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);
INSERT INTO `rock_wx_agent` VALUES ('4', '今日会议', '11', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM6dNatTnmFcXj9CVt6xC8DoSWjkaQVbjNwqmI2HqqDssQ/0', 'm.rockoa.com', '1', '今日会议,明日会议等', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '0', null);
INSERT INTO `rock_wx_agent` VALUES ('5', '通知公告', '12', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM5YTViaR9QibBgQNeGwXqibMlibxjG0vlt7ocXe08Kuq2Krqw/0', 'm.rockoa.com', '1', '通知公告信息，企业资料信息等。', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '0', null);
INSERT INTO `rock_wx_agent` VALUES ('6', 'REIM', '13', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM4ibh0D1xRjuK6fcpFakyt230ibouWhPTdLeyhlJmMPxV2A/0', 'm.rockoa.com', '1', 'REIM是一款集成到企业号上的简单即时通信，虽然不能即时显示信息聊天，但也可以工作上交流的。', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);
INSERT INTO `rock_wx_agent` VALUES ('7', '单据申请', '14', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM47n0l09Ov33SGNgUK8ib3vbx4G0mqYGuGGeTVBxibHia2xg/0', 'm.rockoa.com', '1', 'OA主页上显示一些基本信息。', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);
INSERT INTO `rock_wx_agent` VALUES ('8', '考勤中心', '15', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM7Q9CLsOJvamVVDkXTvSEwS4AkZlqczwcibPnfEvj3ibic1Q/0', 'm.rockoa.com', '1', '在线定位打卡,打卡记录,打卡分析,考勤统计等。', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '0', null);
INSERT INTO `rock_wx_agent` VALUES ('9', '腾讯企业邮箱', '16', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM6zuOaHom6j61FUBMoEsPLZLpwGbx5VHlckbv1f8dib5iaw/0', 'm.exmail.qq.com', '1', '一键授权，实现邮箱通讯录与企业号同步，员工无需绑定，可直接通过企业号接收邮件通知、动态密码等，更多贴心邮件增值服务。', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);
INSERT INTO `rock_wx_agent` VALUES ('10', '模块订单', '17', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM5ibibZE7hwwTgpIUp6EYcXcJQIicR9JYrBPiaicTIDDiceosIw/0', 'm.rockoa.com', '1', '模块购买订单管理', '{\"user\":[{\"userid\":\"diaochan\",\"status\":1},{\"userid\":\"admin\",\"status\":1}]}', '{\"partyid\":[]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);
INSERT INTO `rock_wx_agent` VALUES ('12', '单据待办', '18', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM58H6ZR1tzpqXHJvRA8d7AGNW371WNVHpZoxE0e3fZD6A/0', 'm.rockoa.com', '1', '单据待办可查看各个申请单据审批，处理未通过等。', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);
INSERT INTO `rock_wx_agent` VALUES ('13', '工作任务', '19', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM4VOCUPpz6oqmrfvEiabJic2EuUFbIsPB1WnMEG8FIa8gMA/0', 'm.rockoa.com', '1', '工作任务分配处理查看报告等', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);
INSERT INTO `rock_wx_agent` VALUES ('14', '内部邮件', '20', '0', 'http://wx.qlogo.cn/mmhead/Q3auHgzwzM5IJvIqvFMQTfQ58nT3VmZ3YOdv4o2wGzzodwRrOhGTLQ/0', 'm.rockoa.com', '1', '实现内部邮件交流等信息', '{\"user\":[]}', '{\"partyid\":[1]}', '{\"tagid\":[]}', '0', '0', '0', '1', null);

-- ----------------------------
-- Table structure for `rock_wx_dept`
-- ----------------------------
DROP TABLE IF EXISTS `rock_wx_dept`;
CREATE TABLE `rock_wx_dept` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `order` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_wx_dept
-- ----------------------------
INSERT INTO `rock_wx_dept` VALUES ('3', '行政人事', '1', '0');
INSERT INTO `rock_wx_dept` VALUES ('2', '业务部', '1', '1');
INSERT INTO `rock_wx_dept` VALUES ('1', 'RockOA开发团队', '0', '0');
INSERT INTO `rock_wx_dept` VALUES ('4', '开发部', '1', '0');
INSERT INTO `rock_wx_dept` VALUES ('7', '管理部', '1', '0');
INSERT INTO `rock_wx_dept` VALUES ('5', '商务部', '1', '0');
INSERT INTO `rock_wx_dept` VALUES ('6', '财务部', '1', '201');

-- ----------------------------
-- Table structure for `rock_wx_location`
-- ----------------------------
DROP TABLE IF EXISTS `rock_wx_location`;
CREATE TABLE `rock_wx_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `location_x` varchar(20) DEFAULT NULL,
  `location_y` varchar(20) DEFAULT NULL,
  `scale` smallint(6) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `uid` smallint(6) DEFAULT NULL,
  `isqr` tinyint(1) DEFAULT '0' COMMENT '是否确认',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_wx_location
-- ----------------------------
INSERT INTO `rock_wx_location` VALUES ('1', 'admin', '2016-02-18 21:25:32', '24.528158', '118.167671', '16', '湖里区钟宅邮政代办所西北', '0', '1', '0');
INSERT INTO `rock_wx_location` VALUES ('2', 'admin', '2016-02-26 18:49:01', '24.528246', '118.167816', '13', '福建省厦门市湖里区环岛干道', '0', '1', '0');
INSERT INTO `rock_wx_location` VALUES ('7', 'admin', '2016-02-26 19:39:37', '24.52818', '118.167625', '13', '福建省厦门市湖里区环岛干道', '0', '1', '0');
INSERT INTO `rock_wx_location` VALUES ('6', 'admin', '2016-02-26 19:28:57', '24.528164', '118.167694', '13', '福建省厦门市湖里区环岛干道', '0', '1', '0');
INSERT INTO `rock_wx_location` VALUES ('8', 'admin', '2016-03-01 11:04:51', '22.63187', '114.06303', '12', '广东省深圳市龙岗区长发路', '0', '1', '0');
INSERT INTO `rock_wx_location` VALUES ('9', 'admin', '2016-03-01 11:05:08', '22.63187', '114.06303', '15', '广东省深圳市龙岗区长发路', '0', '1', '0');
INSERT INTO `rock_wx_location` VALUES ('10', 'admin', '2016-03-01 13:36:51', '24.528511', '118.186775', '13', '福建省厦门市湖里区木浦路', '0', '1', '0');

-- ----------------------------
-- Table structure for `rock_wx_token`
-- ----------------------------
DROP TABLE IF EXISTS `rock_wx_token`;
CREATE TABLE `rock_wx_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(100) DEFAULT NULL,
  `otime` int(10) DEFAULT NULL COMMENT '失效时间',
  `type` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_wx_token
-- ----------------------------
INSERT INTO `rock_wx_token` VALUES ('1', '4f4YNxqEIaTwN4BRY-Cgm_l6dxsrUu5Sf_H4eQlr1RFTUUnpF4qN6StIfKE71aNN', '1465036852', '0');

-- ----------------------------
-- Table structure for `rock_wx_user`
-- ----------------------------
DROP TABLE IF EXISTS `rock_wx_user`;
CREATE TABLE `rock_wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `weixinid` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '状态@1|已关注,2|已冻结,4|未关注',
  `avatar` varchar(300) DEFAULT NULL COMMENT '头像url',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rock_wx_user
-- ----------------------------
INSERT INTO `rock_wx_user` VALUES ('1', 'admin', '管理员', '[4]', '技术总监', null, '1', 'admin@rockoa.com', null, '1', 'http://shp.qpic.cn/bizmp/zvqcSnnIIUDMd6aE2mxjSHWUXNNVJ15UL96ukn0WtDbbOX7Un7z6qQ/');
INSERT INTO `rock_wx_user` VALUES ('3', 'daqiao', '大乔', '[3]', '行政主管', null, '2', 'daqiao@rockoa.com', null, '4', null);
INSERT INTO `rock_wx_user` VALUES ('4', 'diaochan', '貂蝉', '[3]', '人事经理', null, '2', 'diaochan@rockoa.com', null, '1', 'http://shp.qpic.cn/bizmp/zvqcSnnIIUA9alt69jiaAibk1vjs18nVxDnh2fTYFZku9EnDndkNbIxw/');
INSERT INTO `rock_wx_user` VALUES ('5', 'liubei', '刘备', '[7]', '董事长', null, '1', 'liubei@rockoa.com', null, '1', 'http://shp.qpic.cn/bizmp/zvqcSnnIIUDwTntHlSMzqy8cdgSic69GIpzQHyJYMrUI8nicae0YoHlQ/');
INSERT INTO `rock_wx_user` VALUES ('6', 'lvbu', '吕布', '[6]', '出纳', null, '1', 'lvbu@rockoa.com', null, '1', 'http://shp.qpic.cn/bizmp/zvqcSnnIIUCqYsTKib7cGLvic1StZrehq2REWHFm32cyHAPeN8pH33pg/');
INSERT INTO `rock_wx_user` VALUES ('7', 'xiaoqiao', '小乔', '[3]', '行政前台', null, '2', 'xiaoqiao@rockoa.com', null, '4', null);
INSERT INTO `rock_wx_user` VALUES ('8', 'xwd', '唔歌', '[3]', '用户', null, '1', null, 'xwd-2010', '1', 'http://shp.qpic.cn/bizmp/zvqcSnnIIUDMd6aE2mxjSHWUXNNVJ15UM9XlLB7TAj4z4IqnicLdJ7A/');
INSERT INTO `rock_wx_user` VALUES ('9', 'zhangfei', '张飞', '[4]', '程序员', null, '1', 'zhangfei@rockoa.com', 'fallenearl', '1', 'http://shp.qpic.cn/bizmp/zvqcSnnIIUCO4lTic5PZUbs7qJWHQA7WSOWOr0qWIzibVos0hV9wIu5w/');
INSERT INTO `rock_wx_user` VALUES ('10', 'zhaozl', '赵子龙', '[6]', '财务经理', null, '1', 'zhaozl@rockoa.com', null, '4', null);
INSERT INTO `rock_wx_user` VALUES ('11', 'rockoa', 'RockOA客服', '[4]', '客服', null, '1', 'kefu@rockoa.com', null, '4', null);
