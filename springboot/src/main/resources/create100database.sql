create database test1;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test1.* to lee@"%";


use test1;
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

INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);


create database test2;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test2.* to lee@"%";


use test2;
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

INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);



create database test3;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test3.* to lee@"%";


use test3;
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

INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test4;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test4.* to lee@"%";


use test4;
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

INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);


create database test5;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test5.* to lee@"%";
use test5;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);





create database test6;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test6.* to lee@"%";
use test6;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);





create database test7;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test7.* to lee@"%";
use test7;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);





create database test8;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test8.* to lee@"%";
use test8;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);





create database test9;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test9.* to lee@"%";
use test9;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);





create database test10;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test10.* to lee@"%";
use test10;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);





create database test11;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test11.* to lee@"%";
use test11;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);







create database test12;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test12.* to lee@"%";
use test12;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test13;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test13.* to lee@"%";
use test13;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test14;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test14.* to lee@"%";
use test14;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test15;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test15.* to lee@"%";
use test15;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test16;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test16.* to lee@"%";
use test16;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test17;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test17.* to lee@"%";
use test17;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test18;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test18.* to lee@"%";
use test18;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test19;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test19.* to lee@"%";
use test19;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test20;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test20.* to lee@"%";
use test20;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);








create database test21;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test21.* to lee@"%";
use test21;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test22;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test22.* to lee@"%";
use test22;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test23;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test23.* to lee@"%";
use test23;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test24;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test24.* to lee@"%";
use test24;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test25;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test25.* to lee@"%";
use test25;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test26;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test26.* to lee@"%";
use test26;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test27;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test27.* to lee@"%";
use test27;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test28;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test28.* to lee@"%";
use test28;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test29;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test29.* to lee@"%";
use test29;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test30;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test30.* to lee@"%";
use test30;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test31;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test31.* to lee@"%";
use test31;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test32;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test32.* to lee@"%";
use test32;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test33;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test33.* to lee@"%";
use test33;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test34;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test34.* to lee@"%";
use test34;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test35;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test35.* to lee@"%";
use test35;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test36;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test36.* to lee@"%";
use test36;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test37;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test37.* to lee@"%";
use test37;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test38;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test38.* to lee@"%";
use test38;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test39;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test39.* to lee@"%";
use test39;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test40;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test40.* to lee@"%";
use test40;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test41;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test41.* to lee@"%";
use test41;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test42;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test42.* to lee@"%";
use test42;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test43;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test43.* to lee@"%";
use test43;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test44;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test44.* to lee@"%";
use test44;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test45;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test45.* to lee@"%";
use test45;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test46;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test46.* to lee@"%";
use test46;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test47;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test47* to lee@"%";
use test47;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test48;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test48.* to lee@"%";
use test48;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test49;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test49.* to lee@"%";
use test49;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test50;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test50.* to lee@"%";
use test50;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test51;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test51.* to lee@"%";
use test51;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test52;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test52.* to lee@"%";
use test52;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test53;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test53.* to lee@"%";
use test53;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test54;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test54.* to lee@"%";
use test54;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test55;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test55.* to lee@"%";
use test55;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test56;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test56.* to lee@"%";
use test56;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test57;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test57.* to lee@"%";
use test57;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test58;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test58.* to lee@"%";
use test58;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test59;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test59.* to lee@"%";
use test59;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test60;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test60.* to lee@"%";
use test60;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test61;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test61.* to lee@"%";
use test61;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test62;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test62.* to lee@"%";
use test62;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);


create database test63;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test63.* to lee@"%";
use test63;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test64;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test64.* to lee@"%";
use test64;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test65;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test65.* to lee@"%";
use test65;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test66;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test66.* to lee@"%";
use test66;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test67;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test67.* to lee@"%";
use test67;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test68;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test68.* to lee@"%";
use test68;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test69;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test69.* to lee@"%";
use test69;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test70;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test70.* to lee@"%";
use test70;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test71;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test71.* to lee@"%";
use test71;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test72;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test72.* to lee@"%";
use test72;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test73;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test73.* to lee@"%";
use test73;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test74;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test74.* to lee@"%";
use test74;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test75;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test75.* to lee@"%";
use test75;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test76;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test76.* to lee@"%";
use test76;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test77;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test77.* to lee@"%";
use test77;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test78;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test78.* to lee@"%";
use test78;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test79;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test79.* to lee@"%";
use test79;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test80;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test80.* to lee@"%";
use test80;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test81;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test81.* to lee@"%";
use test81;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test82;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test82.* to lee@"%";
use test82;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test83;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test83.* to lee@"%";
use test83;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test84;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test84.* to lee@"%";
use test84;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test85;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test85.* to lee@"%";
use test85;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test86;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test86.* to lee@"%";
use test86;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test87;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test87.* to lee@"%";
use test87;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test88;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test88.* to lee@"%";
use test88;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test89;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test89.* to lee@"%";
use test89;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test90;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test90.* to lee@"%";
use test90;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test91;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test91.* to lee@"%";
use test91;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test92;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test92.* to lee@"%";
use test92;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test93;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test93.* to lee@"%";
use test93;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test94;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test94.* to lee@"%";
use test94;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test95;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test95.* to lee@"%";
use test95;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test96;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test96.* to lee@"%";
use test96;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test97;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test97.* to lee@"%";
use test97;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);




create database test98;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test98.* to lee@"%";
use test98;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);

create database test99;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test99.* to lee@"%";
use test99;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);






create database test100;
grant select,insert,delete,update,create,drop, alter, index, create view, show view on test100.* to lee@"%";
use test100;
SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `finance` VALUES ('00cc47cd1e014f138d9a0704d21481b6', '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', now(), '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('15c00ceef76842a8a1fe22028f2b6502', '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('42e7f3fed6e748e197382ea86cd45087', '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('5c4b8944b74048fca834359079c7d89d', '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('82505bb0c4594733897f439d585a78d8', '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('9838c33926c3459291ea5fb1e2ac93a7', '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', now(), null, null, null);
INSERT INTO `finance` VALUES ('b5b8471acef049de9a32637ddce41c71', '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', now(), now(), null, null);



