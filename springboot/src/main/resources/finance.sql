/*
Navicat MySQL Data Transfer

Source Server         : lee
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : lee

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2017-07-09 23:12:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `finance`
-- ----------------------------
DROP TABLE IF EXISTS `finance`;
CREATE TABLE `finance` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `fid` int(11) DEFAULT NULL COMMENT '消费项目id',
  `consumerProject` varchar(255) DEFAULT NULL COMMENT '名称',
  `consumer` varchar(255) DEFAULT NULL COMMENT '消费者/买单人',
  `forwho` varchar(255) DEFAULT NULL COMMENT '钱花在谁身上',
  `fee` float(12,2) DEFAULT NULL COMMENT '钱花在谁身上',
  `consumerDate` date DEFAULT NULL COMMENT '消费时间',
  `comment` varchar(255) DEFAULT NULL COMMENT '花费描述',
  `deleteFlag` tinyint(1) NOT NULL DEFAULT '0',
  `createDate` datetime DEFAULT NULL COMMENT '花费描述',
  `modifyDate` datetime DEFAULT NULL COMMENT '花费描述',
  `creater` varchar(255) DEFAULT NULL COMMENT '填写人',
  `bak` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记帐表';

-- ----------------------------
-- Records of finance
-- ----------------------------
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now()', null, null);


CREATE TABLE `t_big_object` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `bak` varchar(255) DEFAULT NULL COMMENT '备注',
  `content` BLOB DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='大对象表';

