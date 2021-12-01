DROP TABLE IF EXISTS `database_source`;
CREATE TABLE `database_source`  (
                                    id              bigint auto_increment
                                        primary key,
                                    `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '连接名称',
                                    `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '连接信息',
                                    `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '用户名',
                                    `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL  COMMENT '密码',
                                    `driver_class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'com.mysql.cj.jdbc.Driver' COMMENT '驱动',
                                    `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'com.zaxxer.hikari.HikariDataSource' COMMENT '数据库类型',
                                    `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
                                    UNIQUE KEY `name` (`name`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO lee.database_source (id, name, url, username, password, driver_class_name, type, `comment`) VALUES (1, 'test1', 'jdbc:mysql://localhost:3306/test1?useUnicode=true&characterEncoding=UTF-8&usessl=false&servertimezone=GMT%2B8', 'lee', 'eee', 'com.mysql.cj.jdbc.Driver', 'com.zaxxer.hikari.HikariDataSource', null);
INSERT INTO lee.database_source (id, name, url, username, password, driver_class_name, type, `comment`) VALUES (2, 'test2', 'jdbc:mysql://localhost:3306/test2?useUnicode=true&characterEncoding=UTF-8&usessl=false&servertimezone=GMT%2B8', 'lee', 'eee', 'com.mysql.cj.jdbc.Driver', 'com.zaxxer.hikari.HikariDataSource', null);
INSERT INTO lee.database_source (id, name, url, username, password, driver_class_name, type, `comment`) VALUES (3, 'test3', 'jdbc:mysql://localhost:3306/test3?useUnicode=true&characterEncoding=UTF-8&usessl=false&servertimezone=GMT%2B8', 'lee', 'eee', 'com.mysql.cj.jdbc.Driver', 'com.zaxxer.hikari.HikariDataSource', null);
INSERT INTO lee.database_source (id, name, url, username, password, driver_class_name, type, `comment`) VALUES (4, 'test4', 'jdbc:mysql://localhost:3306/test4?useUnicode=true&characterEncoding=UTF-8&usessl=false&servertimezone=GMT%2B8', 'lee', 'eee', 'com.mysql.cj.jdbc.Driver', 'com.zaxxer.hikari.HikariDataSource', null);

