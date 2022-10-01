


DROP TABLE IF EXISTS `finance`;
CREATE TABLE `finance` (
  `id` BIGINT(20) auto_random PRIMARY KEY CLUSTERED,
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
  `bak` varchar(255) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记帐表';

INSERT INTO `finance` VALUES (1, '10700', 'onlycook 韩式304不锈钢筷子勺子环保便携餐具盒旅行', '1', '1', '25.00', '2016-03-15', '中午带饭', '0', '2016-03-15 22:52:34', null, null, null);
INSERT INTO `finance` VALUES (2, '10102', '锅巴', '1', '1', '4.20', '2016-03-15', '苏微快乐锅巴鸡排味', '0', '2016-03-15 22:54:40', null, null, null);
INSERT INTO `finance` VALUES (3, '10700', 'LOCKLOCK乐扣耐热玻璃饭盒', '1', '1', '119.00', '2016-03-15', '中午带饭', '0', '2016-03-15 22:51:07', null, null, null);
INSERT INTO `finance` VALUES (4, '10700', '公牛（BULL）插座', '1', '3', '47.70', '2016-03-15', '电脑、电动座椅', '0', '2016-03-15 22:53:49', null, null, null);
INSERT INTO `finance` VALUES (5, '10700', '便当袋保温袋子', '1', '1', '37.00', '2016-03-15', '中午带饭', '0', '2016-03-15 22:51:57', null, null, null);
INSERT INTO `finance` VALUES (6, '10902', '天猫魔盒', '1', '3', '249.00', '2016-03-15', '天猫魔盒，看电视用', '0', '2016-03-15 22:49:40', null, null, null);
INSERT INTO `finance` VALUES (7, '10300', '加油', '1', '12', '150.00', '2016-04-24', '汽车加油', '0', '2016-04-24 22:57:54', '2016-04-24 22:58:49', null, null);
