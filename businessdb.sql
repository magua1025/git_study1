/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : businessdb

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2022-03-05 15:46:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `nickName` varchar(20) DEFAULT NULL,
  `idCardNumber` varchar(20) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `sex` char(5) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `amount` double(15,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('10', 'xiaohua', '50', 'hauhau', 'XX12345678912345678', '15745456877', '男', 'shanghai', '17999899.99');
INSERT INTO `account` VALUES ('11', 'dahuahua', '20', 'dahuahau', 'YY12345612345612345', '15966667777', '女', 'beijing', '2000100.01');
INSERT INTO `account` VALUES ('16', 'xiaohuahua', '18', 'hauhau', 'XX12345678912345678', '15745456877', '男', 'shanghai', '19999899.99');
INSERT INTO `account` VALUES ('21', 'xiaoxu max', '30', '迟迟plus', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('25', 'xiaobai', '60', 'dabai', null, null, '女', null, '0.00');
INSERT INTO `account` VALUES ('26', 'xiaoniu', '20', 'niuniu', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('27', 'xiaoniu', '20', 'niuniu', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('28', '迪迦', '20', '大古', null, null, '', null, '0.00');
INSERT INTO `account` VALUES ('29', '赛文', '25', '文文', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('30', '雷欧', '30', '雷雷', null, null, '女', null, '0.00');
INSERT INTO `account` VALUES ('31', 'xiaoniu', '20', 'niuniu', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('32', '迪迦', '20', '大古', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('33', '赛文', '25', '文文', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('34', '雷欧', '30', '雷雷', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('35', 'xiaoniu', '20', 'niuniu', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('36', '迪迦', '20', '大古', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('37', '赛文', '25', '文文', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('38', '雷欧', '30', '雷雷', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('39', 'xiaoniu', '20', 'niuniu', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('40', '迪迦', '20', '大古', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('41', '赛文', '25', '文文', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('42', '雷欧', '30', '雷雷', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('43', 'xiaoniu', '20', 'niuniu', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('44', '迪迦', '20', '大古', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('45', '赛文', '25', '文文', null, null, null, null, '0.00');
INSERT INTO `account` VALUES ('46', '雷欧', '30', '雷雷', null, null, null, null, '0.00');

-- ----------------------------
-- Table structure for deal_detaile
-- ----------------------------
DROP TABLE IF EXISTS `deal_detaile`;
CREATE TABLE `deal_detaile` (
  `deal_id` int(5) NOT NULL AUTO_INCREMENT,
  `deal_account_in` varchar(20) NOT NULL,
  `deal_account_out` varchar(20) NOT NULL,
  `deal_amount` double NOT NULL,
  `deal_date` datetime NOT NULL,
  PRIMARY KEY (`deal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal_detaile
-- ----------------------------
INSERT INTO `deal_detaile` VALUES ('1', 'YY12345612345612345', 'XX12345678912345678', '100', '2022-01-05 09:51:21');
INSERT INTO `deal_detaile` VALUES ('2', 'Yy12345612345612345', 'XX12345678912345678', '100', '2022-01-05 09:53:03');
INSERT INTO `deal_detaile` VALUES ('3', 'YY12345612345612345 ', 'XX12345678912345678', '100', '2022-01-05 09:54:18');
INSERT INTO `deal_detaile` VALUES ('4', 'YY12345612345612345', 'XX12345678912345678', '1', '2022-01-05 09:55:39');
INSERT INTO `deal_detaile` VALUES ('5', 'YY12345612345612345', 'XX12345678912345678', '1000000', '2022-01-05 09:56:15');
INSERT INTO `deal_detaile` VALUES ('6', 'YY12345612345612345', 'XX12345678912345678', '0.01', '2022-01-05 09:56:38');
INSERT INTO `deal_detaile` VALUES ('7', 'YY12345612345612345', 'XX12345678912345678', '1000000', '2022-01-05 09:57:06');
INSERT INTO `deal_detaile` VALUES ('8', 'YY12345612345612345', 'XX12345678912345678', '100', '2022-01-05 09:59:40');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goodsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `goodsName` varchar(60) NOT NULL,
  `goodsTypeId` int(5) DEFAULT NULL,
  `descp` varchar(255) DEFAULT NULL,
  `num` int(5) NOT NULL DEFAULT '99999' COMMENT '库存',
  `onTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品上架时间',
  `offTime` date DEFAULT '2099-12-31' COMMENT '商品下架时间',
  `shopPrice` decimal(10,2) DEFAULT '0.00' COMMENT '原价',
  `promotePrice` decimal(10,2) DEFAULT '0.00' COMMENT '促销价格',
  `promoteStartTime` date DEFAULT NULL COMMENT '1970-01-01',
  `promoteEndTime` date DEFAULT NULL COMMENT '1970-01-01',
  `isOnSale` smallint(1) DEFAULT '0' COMMENT '(0,1)销售状态',
  `isPromote` smallint(1) DEFAULT '1' COMMENT '(0,1)促销状态',
  `givePoints` varchar(11) DEFAULT '10',
  PRIMARY KEY (`goodsId`)
) ENGINE=InnoDB AUTO_INCREMENT=100011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('100000', '预留数据', '10000', '该数据为自动化预留数据请勿删除', '1000', '2021-01-29 16:05:09', '2099-12-31', '100.00', null, null, null, '1', '0', '10');
INSERT INTO `tb_goods` VALUES ('100003', '小米手机', '10001', '撒的撒范德萨', '99999', '2022-01-06 14:19:20', '2099-12-31', '0.00', '0.00', null, null, '0', '0', '10');
INSERT INTO `tb_goods` VALUES ('100004', 'iphone5', '10001', '改变世界', '99999', '2022-03-05 11:04:13', '2099-12-31', '5000.00', '0.00', null, null, '1', '1', '10');
INSERT INTO `tb_goods` VALUES ('100005', 'iphone13', '10001', '毫无新意', '99999', '2022-03-05 11:04:13', '2099-12-31', '5000.00', '0.00', '2022-03-02', '2022-03-17', '0', '1', '10');
INSERT INTO `tb_goods` VALUES ('100006', '帝王蟹', '10003', '生猛海鲜', '99999', '2022-03-05 11:06:03', '2099-12-31', '999.00', '0.00', null, null, '1', '1', '10');
INSERT INTO `tb_goods` VALUES ('100007', '老八汉堡', '10002', '奥里给', '99999', '2022-03-05 11:07:18', '2099-12-31', '0.00', '0.00', null, null, '0', '1', '10');
INSERT INTO `tb_goods` VALUES ('100008', '三文鱼', '10002', '日料必备', '99999', '2022-03-05 11:07:51', '2099-12-31', '99.00', '0.00', null, null, '0', '0', '10');
INSERT INTO `tb_goods` VALUES ('100009', '华为P30', '10001', '先有华为后有天', '99999', '2022-03-05 11:08:42', '2099-12-31', '59999.00', '0.00', null, null, '1', '0', '10');
INSERT INTO `tb_goods` VALUES ('100010', 'Mac pro', '10002', '办公神器,生产力', '99999', '2022-03-05 11:29:50', '2099-12-31', '9999.00', '0.00', null, null, '0', '1', '10');

-- ----------------------------
-- Table structure for tb_goodstype
-- ----------------------------
DROP TABLE IF EXISTS `tb_goodstype`;
CREATE TABLE `tb_goodstype` (
  `goodsTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(60) DEFAULT NULL,
  `parentId` varchar(60) DEFAULT NULL,
  `descp` varchar(255) DEFAULT NULL,
  `sortOrder` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`goodsTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goodstype
-- ----------------------------
INSERT INTO `tb_goodstype` VALUES ('10000', '预留数据', null, '预留数据', '0');
INSERT INTO `tb_goodstype` VALUES ('10001', '电子产品', null, '好玩的电子产品', '1');
INSERT INTO `tb_goodstype` VALUES ('10002', '食品', null, '特别好吃', '2');
INSERT INTO `tb_goodstype` VALUES ('10003', '生猛海鲜', '', '好吃又好玩', '3');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `status` smallint(6) DEFAULT '0' COMMENT '订单状态(0:未支付，1:已支付，2:已取消，3：已发货，4:已完成)',
  `value` decimal(10,2) DEFAULT NULL COMMENT '订单原价',
  `usePoints` smallint(1) DEFAULT '0' COMMENT '使用积分(0使用,1不使用)',
  `couponID` smallint(1) DEFAULT '0' COMMENT '优惠券ID(0使用 1使用)',
  `createTime` date DEFAULT '2020-01-01' COMMENT '订单产生时间',
  `cancelTime` date DEFAULT NULL COMMENT '取消时间',
  `deliverTime` date DEFAULT NULL COMMENT '发货时间',
  `finishTime` date DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('10000', '100000', '4', '100.00', '0', '0', '2021-01-29', '2021-01-29', '2021-01-29', '2021-01-30');
INSERT INTO `tb_order` VALUES ('10001', '100020', '3', '10.00', '0', '0', '2020-01-01', null, null, null);
INSERT INTO `tb_order` VALUES ('10002', '100020', '1', '500.00', '0', '0', '2020-01-01', null, null, null);

-- ----------------------------
-- Table structure for tb_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_goods`;
CREATE TABLE `tb_order_goods` (
  `orderId` int(11) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT '1' COMMENT '每一件产品的数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order_goods
-- ----------------------------
INSERT INTO `tb_order_goods` VALUES ('10000', '100000', '1');
INSERT INTO `tb_order_goods` VALUES ('10000', '100003', '1');
INSERT INTO `tb_order_goods` VALUES ('10001', '100010', '1');
INSERT INTO `tb_order_goods` VALUES ('10001', '100009', '1');

-- ----------------------------
-- Table structure for tb_shopcart_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_shopcart_goods`;
CREATE TABLE `tb_shopcart_goods` (
  `shopcartId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) DEFAULT NULL,
  `goodsNumber` int(11) DEFAULT NULL,
  `addTime` date DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`shopcartId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shopcart_goods
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `email` varchar(60) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `points` int(10) DEFAULT NULL COMMENT '积分',
  `phone` char(255) NOT NULL COMMENT '手机号',
  `typeId` int(3) DEFAULT '101' COMMENT '用户类型Id',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=100081 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('100000', 'AutoTrue', 'AutoTrue', '预留数据@qq.com', '男', '2021-01-30', '10000', '15888888888', '101');
INSERT INTO `tb_user` VALUES ('100013', 'dahei134', 'a123456', '111@qq.com', '', null, null, '15822222222', '101');
INSERT INTO `tb_user` VALUES ('100018', 'dilireba', 'a123456', '123@qq.com', null, null, null, '18755662233', '101');
INSERT INTO `tb_user` VALUES ('100020', 'xiaohei', 'a123456', '123@qq.com', null, null, null, '18755662234', '101');
INSERT INTO `tb_user` VALUES ('100022', 'xiaomei', 'a123456', '456@163.com', '男', null, null, '18656561234', '101');
INSERT INTO `tb_user` VALUES ('100023', 'xiaowu', 'a123456', '789@163.com', null, null, null, '18688995566', '101');
INSERT INTO `tb_user` VALUES ('100034', 'xiaohua', 'a123456', 'test@163.com', null, null, null, '18656034444', '101');
INSERT INTO `tb_user` VALUES ('100035', 'xiaohaa', 'a123456', '35555@2.com', null, null, null, '15223566852', '101');
INSERT INTO `tb_user` VALUES ('100052', 'xiaowang', 'a123456', '888@qqq.com', '', null, null, '18622331122', '101');
INSERT INTO `tb_user` VALUES ('100058', 'lijin33', 'abgdddw', '5878@163.com', '女', '1996-02-18', null, '18683570245', '101');
INSERT INTO `tb_user` VALUES ('100059', 'xujing', 'a123456', '11188@163.com', '女', '1996-02-18', null, '10125465589', '101');
INSERT INTO `tb_user` VALUES ('100062', 'lijing00', 'a123456', '2177708@163.com', '男', '2050-11-12', null, '13532458955', '101');
INSERT INTO `tb_user` VALUES ('100063', 'lijing11', 'a123456', '217770@163.com', '男', '1700-11-12', null, '13532458988', '101');
INSERT INTO `tb_user` VALUES ('100073', 'lijing', 'ab12345', '995@163.com', '男', '1995-02-18', null, '15899886542', '101');
INSERT INTO `tb_user` VALUES ('100074', 'lijing88', 'ab12345', '586@163.com', '男', '1996-02-18', null, '18599886522', '101');
INSERT INTO `tb_user` VALUES ('100075', 'lijin99', 'a3456789', '77858@163.com', '女', '1996-02-18', null, '18682886069', '101');
INSERT INTO `tb_user` VALUES ('100076', 'lijing5', 'a123456', '22788@163.com', '', '1996-02-18', null, '13535568944', '101');
INSERT INTO `tb_user` VALUES ('100077', 'lijing8', 'a123456', '2120788@163.com', '男', null, null, '13535568910', '101');
INSERT INTO `tb_user` VALUES ('100078', 'lijing02', 'a123456', '117770@163.com', '男', '1991-11-12', null, '15532458902', '101');
INSERT INTO `tb_user` VALUES ('100079', 'lijing04', 'a123456', '', '男', '1989-11-12', null, '15507895547', '101');
INSERT INTO `tb_user` VALUES ('100080', 'xiaoniu', 'a123456', 'tester24@163.com', null, null, null, '17788995566', '101');

-- ----------------------------
-- Table structure for tsd24_lee
-- ----------------------------
DROP TABLE IF EXISTS `tsd24_lee`;
CREATE TABLE `tsd24_lee` (
  `t_name` varchar(20) DEFAULT NULL,
  `t_age` varchar(3) DEFAULT NULL,
  `t_sex` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tsd24_lee
-- ----------------------------
