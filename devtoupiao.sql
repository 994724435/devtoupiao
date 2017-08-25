/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : devtoupiao

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-08-25 23:28:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `p_article`
-- ----------------------------
DROP TABLE IF EXISTS `p_article`;
CREATE TABLE `p_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1首页 2公告 3值班团队 4分析专家 5公司简介',
  `cont` text,
  `addtime` varchar(128) DEFAULT NULL,
  `addymd` varchar(128) DEFAULT NULL,
  `admin` varchar(64) DEFAULT NULL,
  `num` int(11) DEFAULT '1',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_article
-- ----------------------------
INSERT INTO `p_article` VALUES ('1', '曼雷弗风控基金', '1', '<p class=\"MsoNormal\" align=\"right\" style=\"text-indent:12.0500pt;text-align:right;\">\r\n	<b>&nbsp;صنإندوق إدارة المخاطر (الدولي) مانويل </b><b><span>【</span>MIF<span>】</span></b><b>هو صندوق التحكم في مخاطر تداول الأسهم في العالم (هو مسمى </b><b>MIF</b><b>&nbsp;في التالي)، وإن الحكومة الجزائرية وصندوق الصخرة الألماني وجمعية </b><b>JRT</b><b>&nbsp;المالية الهولندية وأسرة </b><b>R</b><b>·</b><b>BY</b><b>&nbsp;</b><b>السويد، أسرة الكليفلاند الأمريكية هم إستثمرو أربعة مليارات وثمانمائة مليون دولارا لبناء هذا الصندوق.</b><b></b> \r\n</p>\r\n<br />', '2017-08-16 09:20:25', '2017-08-16', 'admin', '1');
INSERT INTO `p_article` VALUES ('2', '公司简介标题', '2', '<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n	<b><span style=\"font-size:24px;color:#9933E5;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;kkkk</strong></span></b>\r\n</p>', '2017-08-16 11:42:33', '2017-08-16', 'admin', '1');
INSERT INTO `p_article` VALUES ('5', '值班团队标题', '3', '值班的团队', '2017-08-16 09:51:46', '2017-08-16', 'admin', '1');
INSERT INTO `p_article` VALUES ('6', '分析专家李云龙标题', '4', '分析啊啊', '2017-08-16 09:52:56', '2017-08-16', 'admin', '1');
INSERT INTO `p_article` VALUES ('7', '公司简介', '5', '<table class=\"table\" style=\"width:1272px;color:#333333;font-family:Roboto, sans-serif;font-size:16px;\">\r\n	<tbody>\r\n		<tr class=\"info\">\r\n			<th style=\"text-align:left;vertical-align:top;font-size:0.85em;color:#999999;background-color:#D9EDF7;\">\r\n				<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n					<span><span style=\"font-size:24px;color:#9933E5;\"><span>&nbsp; 曼雷弗（国际）风控基金【</span></span><span style=\"font-size:24px;color:#9933E5;\"><span>MIF</span></span><span style=\"font-size:24px;color:#9933E5;\"><span>】</span></span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n					<span>صندوق إدارة المخاطر (الدولي) مانويل</span><span>المقدمة الموجزة</span>\r\n				</p>\r\n				<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">曼雷弗（国际）风控基金简称【</span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">】是由阿尔及利亚政府及德国磐石基金、荷兰</span><span style=\"font-size:18px;\">JRT</span><span style=\"font-size:18px;\">财团、瑞典</span><span style=\"font-size:18px;\">R</span></span><span><span style=\"font-size:18px;\">·</span></span><span><span style=\"font-size:18px;\">BY</span><span style=\"font-size:18px;\">家族、美国克利夫兰家族共同出资</span><span style=\"font-size:18px;\">48</span><span style=\"font-size:18px;\">亿美元所组成的全球股权交易风控基金（下称</span></span><span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">）</span></span><span><span style=\"font-size:18px;\">。</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" align=\"right\" style=\"text-indent:2em;text-align:right;\">\r\n					<span><span style=\"font-size:18px;\">إن صندوق إدارة المخاطر (الدولي) مانويل&nbsp;</span></span><span><span style=\"font-size:18px;\">【</span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">】</span></span><span><span style=\"font-size:18px;\">هو صندوق التحكم في مخاطر تداول الأسهم في العالم (هو مسمى&nbsp;</span></span><span><span style=\"font-size:18px;\">MIF</span></span><span><span style=\"font-size:18px;\">&nbsp;في التالي)، وإن الحكومة الجزائرية وصندوق الصخرة الألماني وجمعية&nbsp;</span></span><span><span style=\"font-size:18px;\">JRT</span></span><span><span style=\"font-size:18px;\">&nbsp;المالية الهولندية وأسرة</span></span><span><span style=\"font-size:18px;\">R</span></span><span><span style=\"font-size:18px;\">·</span></span><span><span style=\"font-size:18px;\">BY</span></span><span><span style=\"font-size:18px;\">&nbsp;</span></span><span><span style=\"font-size:18px;\">السويد، أسرة الكليفلاند الأمريكية هم إستثمرو أربعة مليارات وثمانمائة مليون دولارا لبناء هذا الصندوق.</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" align=\"right\" style=\"text-indent:2em;text-align:right;\">\r\n					<span><span style=\"font-size:18px;\">&nbsp;</span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">成立于</span><span style=\"font-size:18px;\">2014</span><span style=\"font-size:18px;\">年</span><span style=\"font-size:18px;\">9</span><span style=\"font-size:18px;\">月，总部位于阿尔及利亚比斯克拉省首府比斯克拉苏埃尔大街</span><span style=\"font-size:18px;\">1698</span><span style=\"font-size:18px;\">号。</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" align=\"right\" style=\"text-indent:2em;text-align:right;\">\r\n					<span><span style=\"font-size:18px;\">إن تأسُس&nbsp;</span></span><span><span style=\"font-size:18px;\">MIF</span></span><span><span style=\"font-size:18px;\">&nbsp;في سبتمبر في عام 2014، ومركزه الرئيسي وقع في رقم 1698 من شارع سيويل من حاضرة محافظة بسكرة&nbsp;</span></span><span><span style=\"font-size:18px;\">–</span></span><span><span style=\"font-size:18px;\">&nbsp;الجزائر.</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">目前拥有阿尔及利亚比斯克拉省油田储量</span><span style=\"font-size:18px;\">3864</span><span style=\"font-size:18px;\">万桶，高储量精选钻石矿</span><span style=\"font-size:18px;\">3</span><span style=\"font-size:18px;\">座。主要业务涵盖</span></span><span><span style=\"font-size:18px;\">全球股权交易风控、石油开发、钻石开采、酒店管理、体育博彩等二十几类业务。</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" align=\"right\" style=\"text-align:right;text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">يملك&nbsp;</span></span><span><span style=\"font-size:18px;\">MIF</span></span><span><span style=\"font-size:18px;\">&nbsp;ثمانية وثلاثين مليون و ستمائة وأربعين ألف برميلا من النفط من احتياطي النفط في محافظة بسكرة&nbsp;</span></span><span><span style=\"font-size:18px;\">–</span></span><span><span style=\"font-size:18px;\">&nbsp;الجزائر، وثلاثة مناجم الماس المميز الآن ولهم احتياطي الماس الكبير . تضمنت الأعمال الرئيسية الأكثر من عشرين العمل مثل التحكم في مخاطر تداول الأسهم في العالم، واستخراج النفط واستخراج الماس وإدارة الفنادق، الرهان الرياضي وإلخ.</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">独创的</span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">数据网络区域链</span></span><span><span style=\"font-size:18px;\">MIF(Memory Initialization File)</span><span style=\"font-size:18px;\">文件是</span></span><span><span style=\"font-size:18px;\">MapInfo</span></span><span><span style=\"font-size:18px;\">通用数据交换格式，这种格式是</span><span style=\"font-size:18px;\">ASCⅡ</span><span style=\"font-size:18px;\">码，可以编辑，容易生成，且可以工作在支持</span><span style=\"font-size:18px;\">MapInfo</span><span style=\"font-size:18px;\">的所有平台上</span></span><span><span style=\"font-size:18px;\">。</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" align=\"right\" style=\"text-indent:2em;text-align:right;\">\r\n					<span><span style=\"font-size:18px;\">إن سلسلة&nbsp;</span></span><span><span style=\"font-size:18px;\">MIF</span></span><span><span style=\"font-size:18px;\">&nbsp;بيانات الشبكة المحلية التي هي مبتكرة من&nbsp;</span></span><span><span style=\"font-size:18px;\">MIF</span></span><span><span style=\"font-size:18px;\">، وثيقة</span></span><span><span style=\"font-size:18px;\">&nbsp;</span></span><span><span style=\"font-size:18px;\">MIF</span></span><span><span style=\"font-size:18px;\">&nbsp;(ملف تهيئة الذاكرة) هي تهيئة</span></span><span><span style=\"font-size:18px;\">MapInfo</span></span><span><span style=\"font-size:18px;\">&nbsp;لتبادل البيانات المشتركة، وهذه التهيئة هي</span></span><span><span style=\"font-size:18px;\">ASC</span></span><span><span style=\"font-size:18px;\">Ⅱ</span></span><span><span style=\"font-size:18px;\">، فممكن أن تحررها ومن السهل توليدها، وبالإضافة إلى ذلك، ممكن أنها مستخدمة في أي سطوح التدعيم</span></span><span><span style=\"font-size:18px;\">MapInfo</span></span><span><span style=\"font-size:18px;\">.</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">通过</span></span><span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">旗下各大财团高级理财风控专家团队每天精准分析，遴选出全球</span><span style=\"font-size:18px;\">34</span><span style=\"font-size:18px;\">个国家股权交易市场绩优股权进行操作交易，实现基金投资客财富增值，进一步提升风控基金的稳健运营，降低交易风险！</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" align=\"right\" style=\"text-align:right;text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">اختيار الأسهم ذات الجودة العالية من سوق الأسهم من 34 دولة في جميع أنحاء العالم لتداول الأسهم وفقا للتحليل الدقيق اليومي من فريق كبار الخبراء من الجمعيات المالية ل</span></span><span><span style=\"font-size:18px;\">MIF</span></span><span><span style=\"font-size:18px;\">&nbsp;لمراقبة المخاطر المالية، الأمر الذي يؤدي إلى المستثمرين يزيدون الثروة، ويقوي إجراء العملية السلمية للحد من مخاطر الصندوق، ويقلل مخاطر الصفقة!</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" style=\"text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">2017</span><span style=\"font-size:18px;\">年</span><span style=\"font-size:18px;\">6</span><span style=\"font-size:18px;\">月，</span><span style=\"font-size:18px;\">MIF</span><span style=\"font-size:18px;\">正式启动中华区（含中国、东南亚、朝鲜半岛、日本、印度等）交易市场。并委托位于中国（四川）自由贸易实验区成都高新区吉泰五路</span><span style=\"font-size:18px;\">88</span><span style=\"font-size:18px;\">号</span><span style=\"font-size:18px;\">3</span><span style=\"font-size:18px;\">栋</span><span style=\"font-size:18px;\">9</span><span style=\"font-size:18px;\">层</span><span style=\"font-size:18px;\">5</span><span style=\"font-size:18px;\">号的成都曼雷弗网络科技有限公司负责中华区网络维护、市场巡查、会员管理、基金定投发放等相关业务。</span></span><span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" align=\"right\" style=\"text-align:right;text-indent:2em;\">\r\n					<span><span style=\"font-size:18px;\">يونيو في عام 2017، فتح&nbsp;</span></span><span><span style=\"font-size:18px;\">MIF</span></span><span><span style=\"font-size:18px;\">&nbsp;السوف في منطقة آسيا(من ضمنها الصين وجنوب سرق آسي وشبه الجزيرة الكورية واليابان والهند وإلخ). ثم أسند شركة مانويل الشبكة والتكنولوجيا المحدودة بتشنغدو التي موقعها في الغرفة 5 الطابق 9 العمارة 3 رقم 88 من شارع جي تاي الخامس&nbsp;</span></span><span><span style=\"font-size:18px;\">–</span></span><span><span style=\"font-size:18px;\">الحي العالي والجديد بتشنغدو&nbsp;</span></span><span><span style=\"font-size:18px;\">–</span></span><span><span style=\"font-size:18px;\">&nbsp;منطقة التجارة الحرة التجريبية&nbsp;</span></span><span><span style=\"font-size:18px;\">–</span></span><span><span style=\"font-size:18px;\">&nbsp;(سيتشوان) الصين لمسؤولة عن صيانة الشبكة في منطقة آسيا، وتفتيش السوق وإدارة الأعضاء وقرارات إستخدام الموارد المالية والأعمال الأخرى المتعلقة.</span></span>\r\n				</p>\r\n				<p class=\"MsoNormal\" align=\"right\" style=\"text-align:right;text-indent:2em;\">\r\n					<span><span style=\"font-size:24px;\">曼雷弗（国际）风控基金：</span></span><span><span style=\"font-size:24px;\">您身边的财富增值天使，期待与</span></span><span><span style=\"font-size:24px;\">您扬帆起航</span><span style=\"font-size:24px;\">!!!</span></span><span><span style=\"font-size:24px;\">&nbsp;&nbsp;</span>&nbsp; &nbsp; &nbsp;&nbsp;</span>\r\n				</p>\r\n				<div>\r\n					<span><br />\r\n</span>\r\n				</div>\r\n			</th>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2017-08-16 09:55:01', '2017-08-16', 'admin', '1');

-- ----------------------------
-- Table structure for `p_menber`
-- ----------------------------
DROP TABLE IF EXISTS `p_menber`;
CREATE TABLE `p_menber` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `pwd` varchar(100) DEFAULT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` int(4) DEFAULT '1' COMMENT '1普通 2 3 4',
  `dongbag` varchar(50) DEFAULT '0' COMMENT '动态钱包',
  `jingbag` varchar(50) DEFAULT '0' COMMENT '静态钱包',
  `fuid` int(11) DEFAULT '0' COMMENT '注册上家',
  `fuids` varchar(1000) DEFAULT NULL COMMENT '上家',
  `addtime` int(12) DEFAULT NULL,
  `addymd` date DEFAULT NULL,
  `pwd2` varchar(255) NOT NULL,
  `chargebag` varchar(50) DEFAULT '0' COMMENT '充值钱包',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `zhifubao` varchar(100) DEFAULT NULL COMMENT '支付宝账号',
  `zhifubaoname` varchar(100) DEFAULT NULL COMMENT '支付宝姓名',
  `weixin` varchar(64) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL COMMENT '银行卡号',
  `bankname` varchar(64) DEFAULT NULL COMMENT '银行卡姓名',
  `bankfrom` varchar(100) DEFAULT NULL COMMENT '银行卡开户行',
  `mif` int(11) DEFAULT '0' COMMENT 'mif',
  `isdelete` int(1) DEFAULT '0' COMMENT '0 未经用 1禁用',
  `jifeng` int(11) DEFAULT '0' COMMENT '排位积分',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_menber
-- ----------------------------
INSERT INTO `p_menber` VALUES ('1', '100', '1', '188883276544', null, '1', '169.10', '83', '0', '1,', null, null, '1', '142.00', null, null, null, null, null, null, null, '1', '0', '30');
INSERT INTO `p_menber` VALUES ('2', '101', '1', '101', null, '1', '435.98', '275.00', '1', '1,2,', '1502892880', '2017-08-16', '1', '1189.08', null, null, null, null, null, null, null, '1', '0', '14');
INSERT INTO `p_menber` VALUES ('3', '102', '1', '102', null, '1', '14', '174', '1', '1,3,', '1502893254', '2017-08-16', '1', '6.00', null, null, null, null, null, null, null, '2', '0', '14');
INSERT INTO `p_menber` VALUES ('4', '103', '1', '103', null, '1', '41.08', '172', '1', '1,4,', '1502893292', '2017-08-16', '1', '38.00', null, null, null, null, null, null, null, '1', '0', '6');
INSERT INTO `p_menber` VALUES ('5', '104', '1', '104', null, '1', '41', '172', '1', '1,5,', '1502893314', '2017-08-16', '1', '38.00', null, null, null, null, null, null, null, '1', '0', '6');
INSERT INTO `p_menber` VALUES ('6', '105', '1', '105', null, '1', '6', '172', '2', '1,2,6,', '1502893727', '2017-08-16', '1', '38.00', null, null, null, null, null, null, null, '1', '0', '6');
INSERT INTO `p_menber` VALUES ('7', '106', '1', '106', null, '1', '6', '172', '2', '1,2,7,', '1502893743', '2017-08-16', '1', '38.00', null, null, null, null, null, null, null, '1', '0', '6');
INSERT INTO `p_menber` VALUES ('8', '107', '1', '107', null, '1', '2', '172', '4', '1,4,8,', '1502894185', '2017-08-16', '1', '38.00', null, null, null, null, null, null, null, '1', '0', '2');
INSERT INTO `p_menber` VALUES ('9', '108', '1', '108', null, '1', '2', '172', '4', '1,4,9,', '1502894209', '2017-08-16', '1', '38.00', null, null, null, null, null, null, null, '1', '0', '2');

-- ----------------------------
-- Table structure for `p_orderlog`
-- ----------------------------
DROP TABLE IF EXISTS `p_orderlog`;
CREATE TABLE `p_orderlog` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '用户id',
  `productid` int(11) NOT NULL,
  `bianhao` varchar(64) DEFAULT NULL,
  `productname` varchar(64) DEFAULT NULL,
  `producttype` int(2) DEFAULT NULL COMMENT '展览平类型',
  `addtime` int(12) DEFAULT NULL,
  `addymd` varchar(32) DEFAULT NULL COMMENT '公排数量 购买数量',
  `state` int(1) DEFAULT '1' COMMENT '1 创新奖 2实用奖',
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_orderlog
-- ----------------------------
INSERT INTO `p_orderlog` VALUES ('54', '1', '9', '0003', '产品名3', '2', '1503672927', '2017-08-25 22:55:27', '1');
INSERT INTO `p_orderlog` VALUES ('55', '1', '9', '0003', '产品名3', '2', '1503673632', '2017-08-25 23:07:12', '2');

-- ----------------------------
-- Table structure for `p_product`
-- ----------------------------
DROP TABLE IF EXISTS `p_product`;
CREATE TABLE `p_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '产品名',
  `cont` text COMMENT '产品描述',
  `pic` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `price` varchar(100) DEFAULT NULL COMMENT '1 实物类 2壁报类 3多媒体类',
  `effectdays` varchar(30) DEFAULT NULL COMMENT '理财有效天数',
  `daycome` varchar(100) DEFAULT NULL COMMENT '理财每日收益',
  `daynum` int(11) DEFAULT NULL COMMENT '每日发放数量',
  `one` varchar(50) DEFAULT NULL COMMENT '一代每日返利',
  `two` varchar(50) DEFAULT NULL,
  `state` int(3) DEFAULT '1' COMMENT '1上架  2下架',
  `addtime` varchar(100) DEFAULT NULL,
  `salenum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_product
-- ----------------------------
INSERT INTO `p_product` VALUES ('9', '产品名3', '0003', '/devtoupiao', '2', null, null, null, null, null, '1', '2017-08-25 22:04:15', '0');
INSERT INTO `p_product` VALUES ('10', '产品名', '0001', '/devtoupiao', '2', null, null, null, null, null, '1', '2017-08-25 22:03:50', '0');
INSERT INTO `p_product` VALUES ('11', '产品名2', '0002', '/devtoupiao', '2', null, null, null, null, null, '1', '2017-08-25 22:04:04', '0');
INSERT INTO `p_product` VALUES ('14', '产品四', '0005', '/devtoupiao', '3', null, null, null, null, null, '1', '2017-08-25 23:27:17', '0');
INSERT INTO `p_product` VALUES ('15', '产品6', '0006', '/devtoupiao', '1', null, null, null, null, null, '1', '2017-08-25 23:27:35', '0');
INSERT INTO `p_product` VALUES ('16', '产品8', '0008', '/devtoupiao', '1', null, null, null, null, null, '1', '2017-08-25 23:28:10', '0');
INSERT INTO `p_product` VALUES ('17', '产品9', '0009', '/devtoupiao', '3', null, null, null, null, null, '1', '2017-08-25 23:28:21', '0');
INSERT INTO `p_product` VALUES ('18', '产品10', '00010', '/devtoupiao', '3', null, null, null, null, null, '1', '2017-08-25 23:28:37', '0');

-- ----------------------------
-- Table structure for `p_user`
-- ----------------------------
DROP TABLE IF EXISTS `p_user`;
CREATE TABLE `p_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '登录名',
  `openid` varchar(255) DEFAULT NULL COMMENT '微信ID',
  `nickname` varchar(255) DEFAULT NULL COMMENT '微信昵称',
  `address` varchar(255) DEFAULT NULL COMMENT '微信地址',
  `userface` varchar(255) DEFAULT NULL COMMENT '维信头像',
  `addtime` varchar(255) DEFAULT NULL COMMENT '注册时间',
  `manager` int(2) DEFAULT '0' COMMENT '0 普通 1管理员 2 超级管理员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_user
-- ----------------------------
INSERT INTO `p_user` VALUES ('1', '123asd', 'admin', null, null, null, null, '2017-03-10 13:56:27', '2');
INSERT INTO `p_user` VALUES ('2', '123456', 'admin2', null, null, null, null, '2017-03-10 13:56:27', '2');
