﻿SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `position_info`;
CREATE TABLE `position_info` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '岗位标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `position_name` varchar(32) DEFAULT NULL COMMENT '岗位名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `is_show` int(11) DEFAULT '0' COMMENT '是否为店长\\收银员(0,不是 1是)',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1247 DEFAULT CHARSET=utf8mb4 COMMENT='员工岗位信息表';

insert into `position_info`(`position_id`,`store_id`,`position_name`,`create_time`,`update_time`,`is_show`,`last_operator_id`) values
('887','1180','设计师','2016-07-16',null,'0',null),
('888','1180','技师','2016-07-16',null,'0',null),
('889','1180','助理','2016-07-16',null,'0',null),
('890','1180','店长','2016-07-16',null,'1',null),
('891','1180','收银员','2016-07-16',null,'1',null),
('892','1181','设计师','2016-07-17',null,'0',null),
('893','1181','技师','2016-07-17',null,'0',null),
('894','1181','助理','2016-07-17',null,'0',null),
('895','1181','店长','2016-07-17',null,'1',null),
('896','1181','收银员','2016-07-17',null,'1',null),
('897','1182','美发师','2016-07-17',null,'0',null),
('898','1182','技师','2016-07-17',null,'0',null),
('899','1182','助理','2016-07-17',null,'0',null),
('900','1182','店长','2016-07-17',null,'1',null),
('901','1182','收银员','2016-07-17',null,'1',null),
('902','1183','设计师','2016-07-23',null,'0',null),
('903','1183','技师','2016-07-23',null,'0',null),
('904','1183','助理','2016-07-23',null,'0',null),
('905','1183','店长','2016-07-23',null,'1',null),
('906','1183','收银员','2016-07-23',null,'1',null),
('1032','1209','美发师','2016-07-27',null,'0',null),
('1033','1209','技师','2016-07-27',null,'0',null),
('1034','1209','助理','2016-07-27',null,'0',null),
('1035','1209','店长','2016-07-27',null,'1',null),
('1036','1209','收银员','2016-07-27',null,'1',null),
('1217','1246','美发(容/甲)/手艺师','2016-07-27',null,'0',null),
('1218','1246','技师/(美容)经理','2016-07-27',null,'0',null),
('1219','1246','助理','2016-07-27',null,'0',null),
('1220','1246','店长','2016-07-27',null,'1',null),
('1221','1246','收银员','2016-07-27',null,'1',null),
('1222','1247','设计师','2016-07-27',null,'0',null),
('1223','1247','经理','2016-07-27',null,'0',null),
('1224','1247','助理','2016-07-27',null,'0',null),
('1225','1247','店长','2016-07-27',null,'1',null),
('1226','1247','收银员','2016-07-27',null,'1',null),
('1227','1248','美发部门','2016-07-30',null,'0',null),
('1228','1248','美容部','2016-07-30',null,'0',null),
('1229','1248','足疗SPA部门','2016-07-30',null,'0',null),
('1230','1248','店长','2016-07-30',null,'1',null),
('1231','1248','收银员','2016-07-30',null,'1',null),
('1232','1249','美发(容/甲)/手艺师','2016-07-30',null,'0',null),
('1233','1249','技师/(美容)经理','2016-07-30',null,'0',null),
('1234','1249','助理','2016-07-30',null,'0',null),
('1235','1249','店长','2016-07-30',null,'1',null),
('1236','1249','收银员','2016-07-30',null,'1',null),
('1237','1250','美发(容/甲)/手艺师','2016-07-30',null,'0',null),
('1238','1250','技师/(美容)经理','2016-07-30',null,'0',null),
('1239','1250','助理','2016-07-30',null,'0',null),
('1240','1250','店长','2016-07-30',null,'1',null),
('1241','1250','收银员','2016-07-30',null,'1',null),
('1242','1251','美发(容/甲)/手艺师','2016-07-30',null,'0',null),
('1243','1251','技师/(美容)经理','2016-07-30',null,'0',null),
('1244','1251','助理','2016-07-30',null,'0',null),
('1245','1251','店长','2016-07-30',null,'1',null),
('1246','1251','收银员','2016-07-30',null,'1',null);
DROP TABLE IF EXISTS  `wechat_member`;
CREATE TABLE `wechat_member` (
  `open_id` varchar(32) NOT NULL DEFAULT '' COMMENT '微信标识',
  `member_id` int(11) DEFAULT NULL COMMENT '会员标识',
  `is_subscribe` int(1) DEFAULT '0' COMMENT '是否关注(0:未关注,1:已关注)',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信用户表(会员数据)';

insert into `wechat_member`(`open_id`,`member_id`,`is_subscribe`,`create_time`,`update_time`) values
('opqSZwAfPUe_Wys7ddKh2bQg2rGg','56050','0','2016-07-30 11:59:44','2016-07-30 11:59:44'),
('opqSZwDMknTDUNN4yUYeRIXjRn70','56049','0','2016-07-29 16:42:00','2016-07-29 16:42:00'),
('opqSZwH-2FToaxFYuh9wlBlM80Tg','56039','0','2016-07-20 14:46:00','2016-07-20 14:46:00'),
('opqSZwHLjhGDjR6wo2fAIVmqlqAM','56044','0','2016-07-29 10:45:49','2016-07-29 10:45:49'),
('opqSZwL7DkYFdLLmITG_zIsZ6JXo','56045','0','2016-07-23 11:49:27','2016-07-23 11:49:27'),
('opqSZwP0DCpckbvGx1gB-mEVWi7s','56041','0','2016-08-03 18:51:32','2016-08-03 18:51:32');
DROP TABLE IF EXISTS  `salesman_recommend_record`;
CREATE TABLE `salesman_recommend_record` (
  `recommended_id` int(11) NOT NULL COMMENT '被推荐者id',
  `recommend_salesman_id` int(11) NOT NULL COMMENT '推荐者(业务员)id',
  `recommend_type` int(11) DEFAULT NULL COMMENT '保留字段，1为门店'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='业务员门店关联表';

DROP TABLE IF EXISTS  `member_appointment`;
CREATE TABLE `member_appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预约标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `member_id` int(11) DEFAULT NULL COMMENT '会员标识',
  `name` varchar(25) DEFAULT NULL COMMENT '预约姓名',
  `phone` varchar(11) DEFAULT NULL COMMENT '预约电话',
  `employee_id` int(11) DEFAULT NULL COMMENT '预约员工标识',
  `project_id` int(11) DEFAULT NULL COMMENT '预约项目标识',
  `project_step_order` int(11) DEFAULT NULL COMMENT '服务步骤序号',
  `shift_mahjong_id` int(11) DEFAULT NULL COMMENT '服务轮牌标识',
  `appointment_date` char(10) DEFAULT '' COMMENT '预约日期',
  `appointment_time` char(5) DEFAULT '' COMMENT '预约时间',
  `appointment_price` decimal(8,2) DEFAULT '0.00' COMMENT '预约价格',
  `service_time` char(19) DEFAULT '' COMMENT '服务时间',
  `appointment_status` int(11) DEFAULT '1' COMMENT '预约状态(1:预约中,2:已确认,3:已服务,4:已取消,5:已拒绝)',
  `appointment_way` int(11) DEFAULT NULL COMMENT '预约方式(1:电话预约)',
  `cancel_time` char(19) DEFAULT '' COMMENT '取消时间',
  `cancel_reason` varchar(50) DEFAULT '' COMMENT '取消原因',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COMMENT='会员预约记录表';

insert into `member_appointment`(`appointment_id`,`store_id`,`member_id`,`name`,`phone`,`employee_id`,`project_id`,`project_step_order`,`shift_mahjong_id`,`appointment_date`,`appointment_time`,`appointment_price`,`service_time`,`appointment_status`,`appointment_way`,`cancel_time`,`cancel_reason`,`create_time`,`update_time`,`is_deleted`,`last_operator_id`) values
('83','1180','56045','JOB','13587881321','2112','1119',null,null,'2016-07-25','09:00',0.00,'','2','2','','','2016-07-23 12:13:27','2016-07-23 12:14:02','0','0'),
('84','1180','56045','JOB','13587881321','2086','1120',null,null,'2016-07-23','15:30',0.00,'','5','2','','啦啦啦啦','2016-07-23 14:40:31','2016-07-27 13:03:46','0','0'),
('85','1180','56045','JOB','13587881321','2112','1123',null,null,'2016-07-23','15:30',0.00,'','5','2','','李金键','2016-07-23 14:41:03','2016-07-23 14:41:48','0','0'),
('86','1180','56045','JOB','13587881321','2112','1117',null,null,'2016-07-23','18:00',0.00,'','4','2','2016-07-23 14:42:41','临时有事','2016-07-23 14:42:33','2016-07-23 14:42:41','0','0'),
('87','1180','56045','JOB','13587881321','2112','1117',null,null,'2016-07-23','16:00',0.00,'','1','2','','','2016-07-23 14:43:18','2016-07-23 14:43:18','0','0'),
('88','1180','56044','高国藩','18734911338','2086','1117',null,null,'2016-07-23','16:30',0.00,'','4','2','2016-07-26 18:46:12','临时有事','2016-07-23 16:07:54','2016-07-26 18:46:12','0','0'),
('89','1180','56045','JOB','13587881321','2112','1120',null,null,'2016-07-24','13:30',0.00,'','2','2','','','2016-07-24 12:38:48','2016-07-31 10:44:57','0','0'),
('90','1180','56044','高国藩','18734911338','2112','1117',null,null,'2016-07-26','14:30',0.00,'','5','2','','有安排','2016-07-25 14:06:52','2016-07-28 11:57:16','0','0'),
('91','1180','56045','JOB','13587881321','2112','1120',null,null,'2016-07-26','10:30',0.00,'','2','2','','','2016-07-25 23:00:25','2016-07-25 23:01:08','0','0'),
('92','1180','56041','jasmine','18576670583','2086','1121',null,null,'2016-07-26','10:30',0.00,'','6','1','','','2016-07-26 10:04:49','','0','2085'),
('93','1180','56045','JOB','13587881321','2112','1120',null,null,'2016-07-26','11:00',0.00,'','2','2','','','2016-07-26 10:14:30','2016-07-26 10:15:56','0','0'),
('94','1180','56041','jasmine','18576670583','2086','1117',null,null,'2016-07-28','15:00',0.00,'','4','2','2016-07-27 10:52:52','临时有事','2016-07-26 11:52:08','2016-07-27 10:52:52','0','0'),
('95','1180','56045','JOB','13587881321','2112','1117',null,null,'2016-07-27','14:00',0.00,'','2','2','','','2016-07-27 12:37:07','2016-07-28 11:56:59','0','0'),
('96','1180','56045','JOB','13587881321','2112','1120',null,null,'2016-07-29','09:00',0.00,'','1','2','','','2016-07-28 13:22:01','2016-07-28 13:22:01','0','0'),
('97','1180','56045','JOB','13587881321','2112','1120',null,null,'2016-07-29','10:30',0.00,'','2','2','','','2016-07-28 21:34:02','2016-07-28 21:34:47','0','0'),
('98','1180','56045','JOB','13587881321','2112','1119',null,null,'2016-07-29','11:00',0.00,'','1','2','','','2016-07-29 10:38:12','2016-07-29 10:38:12','0','0'),
('99','1180','56044','高国藩','18734911338','2112','1117',null,null,'2016-07-29','11:30',0.00,'','1','2','','','2016-07-29 10:46:22','2016-07-29 10:46:22','0','0'),
('100','1180','56044','高国藩','18734911338','2112','1119',null,null,'2016-07-29','12:00',0.00,'','1','2','','','2016-07-29 11:02:43','2016-07-29 11:02:43','0','0'),
('101','1180','56038','11','15019431640','2112','1117',null,null,'2016-07-29','12:30',0.00,'','4','2','2016-07-29 11:38:07','临时有事','2016-07-29 11:37:53','2016-07-29 11:38:07','0','0'),
('102','1180','56038','11','15019431640','2112','1119',null,null,'2016-07-29','12:30',0.00,'','1','2','','','2016-07-29 11:38:21','2016-07-29 11:38:21','0','0'),
('103','1180','56045','JOB','13587881321','2112','1120',null,null,'2016-07-29','13:30',0.00,'','1','2','','','2016-07-29 12:20:41','2016-07-29 12:20:41','0','0'),
('104','1180','56045','JOB','13587881321','2112','1119',null,null,'2016-07-29','17:00',0.00,'','2','2','','','2016-07-29 16:34:14','2016-07-29 16:35:04','0','0'),
('105','1180','56045','JOB','13587881321','2112','1121',null,null,'2016-07-29','20:00',0.00,'','1','2','','','2016-07-29 18:36:43','2016-07-29 18:36:43','0','0'),
('106','1180','56045','JOB','13587881321','2112','1119',null,null,'2016-07-29','20:30',0.00,'','2','2','','','2016-07-29 19:08:23','2016-07-29 19:08:57','0','0'),
('107','1181','56039','魏尚质','13632916933','2100','1127',null,null,'2016-07-30','08:30',0.00,'','2','2','','','2016-07-29 22:16:17','2016-07-29 22:16:42','0','0'),
('108','1180','56045','JOB','13587881321','2112','1119',null,null,'2016-07-30','10:00',0.00,'','4','2','2016-07-30 12:16:31','客户电话通知取消预约','2016-07-30 09:33:41','2016-07-30 12:16:31','0','0'),
('109','1180','56050','王东东','18170809800','2112','1121',null,null,'2016-07-30','12:30',0.00,'','6','2','','','2016-07-30 12:08:13','2016-07-30 12:08:30','0','0'),
('110','1247','56051','leo','15112296745','2125','1156',null,null,'2016-08-02','20:30',0.00,'','4','2','2016-08-01 11:52:12','其他考虑','2016-08-01 11:38:53','2016-08-01 11:52:12','0','0'),
('111','1247','56051','leo','15112296745','2125','1156',null,null,'2016-08-02','20:30',0.00,'','4','2','2016-08-01 11:52:47','其他考虑','2016-08-01 11:38:55','2016-08-01 11:52:47','0','0'),
('112','1247','56051','leo','15112296745','2125','1155',null,null,'2016-08-02','20:30',0.00,'','4','2','2016-08-01 11:54:18','其他考虑','2016-08-01 11:39:00','2016-08-01 11:54:18','0','0'),
('113','1247','56051','leo','15112296745','2125','1156',null,null,'2016-08-02','20:30',0.00,'','4','2','2016-08-01 11:54:12','其他考虑','2016-08-01 11:39:03','2016-08-01 11:54:12','0','0'),
('114','1247','56051','leo','15112296745','2125','1156',null,null,'2016-08-02','20:30',0.00,'','4','2','2016-08-01 11:51:54','其他考虑','2016-08-01 11:39:05','2016-08-01 11:51:54','0','0'),
('115','1247','56051','leo','15112296745','2125','1155',null,null,'2016-08-03','14:00',0.00,'','4','2','2016-08-01 11:53:33','其他考虑','2016-08-01 11:39:41','2016-08-01 11:53:33','0','0'),
('116','1247','56051','leo','15112296745','2125','1155',null,null,'2016-08-03','14:00',0.00,'','4','2','2016-08-01 11:52:54','其他考虑','2016-08-01 11:39:43','2016-08-01 11:52:54','0','0'),
('117','1247','56051','leo','15112296745','2125','1155',null,null,'2016-08-03','14:00',0.00,'','4','2','2016-08-01 11:52:01','其他考虑','2016-08-01 11:39:45','2016-08-01 11:52:01','0','0'),
('118','1247','56051','leo','15112296745','2129','1156',null,null,'2016-08-01','12:30',0.00,'','1','2','','','2016-08-01 11:54:41','2016-08-01 11:54:41','0','0'),
('119','1247','56051','leo','15112296745','2125','1155',null,null,'2016-08-02','19:00',0.00,'','1','2','','','2016-08-01 11:56:23','2016-08-01 11:56:23','0','0'),
('120','1247','56051','leo','15112296745','2125','1155',null,null,'2016-08-03','15:30',0.00,'','1','2','','','2016-08-01 11:56:57','2016-08-01 11:56:57','0','0'),
('121','1247','56051','leo','15112296745','2124','1156',null,null,'2016-08-01','18:00',0.00,'','2','2','','','2016-08-01 12:06:39','2016-08-01 12:08:11','0','0'),
('122','1180','56041','jasmine','18576670583','2086','1117',null,null,'2016-08-01','16:30',0.00,'','5','2','','啦啦啦','2016-08-01 14:37:03','2016-08-01 14:37:20','0','0'),
('123','1180','56041','jasmine','18576670583','2086','1117',null,null,'2016-08-01','18:00',0.00,'','4','2','2016-08-01 14:38:39','临时有事','2016-08-01 14:38:35','2016-08-01 14:38:39','0','0'),
('124','1180','56045','JOB','13587881321','2112','1117',null,null,'2016-08-03','14:30',0.00,'','5','2','','有事','2016-08-03 13:32:45','2016-08-03 13:33:11','0','0');
DROP TABLE IF EXISTS  `salesman_info`;
CREATE TABLE `salesman_info` (
  `salesman_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '业务员id',
  `open_id` varchar(100) DEFAULT NULL COMMENT '业务员微信标识(微信标识为空表示渠道商刚刚新增了该业务员，等待业务员绑定openId；不为空表示业务员已经绑定openId)',
  `agent_id` int(11) DEFAULT NULL COMMENT '所属代理id',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0：正常，1：停用)',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `age` int(11) DEFAULT '0' COMMENT '年龄',
  `gender` char(1) DEFAULT '0' COMMENT '性别(0，男；1，女)',
  `create_time` char(19) NOT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `comment` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='业务员信息表';

DROP TABLE IF EXISTS  `conference_info`;
CREATE TABLE `conference_info` (
  `conference_id` int(11) NOT NULL AUTO_INCREMENT,
  `conference_name` varchar(25) DEFAULT NULL COMMENT '会议名称',
  `hold_time` char(16) DEFAULT NULL COMMENT '召开时间',
  `end_time` char(16) DEFAULT NULL COMMENT '会议结束时间',
  `registration_start_time` char(16) DEFAULT NULL COMMENT '报名开始',
  `registration_end_time` char(16) DEFAULT NULL COMMENT '报名结束',
  `address` varchar(120) DEFAULT NULL COMMENT '地址',
  `people_count` int(11) DEFAULT NULL COMMENT '人数上限',
  `registration_amount` int(11) DEFAULT NULL COMMENT '报名费用',
  `main_award` int(11) DEFAULT NULL COMMENT '一级奖励',
  `branch_award` int(11) DEFAULT NULL COMMENT '二级奖励',
  `link_name` varchar(32) DEFAULT NULL COMMENT '联系人名',
  `link_phone` char(11) DEFAULT NULL COMMENT '联系电话',
  `conference_desc` varchar(2400) DEFAULT NULL COMMENT '会议摘要',
  `agent_id` int(11) DEFAULT NULL COMMENT '渠道ID',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`conference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道会议表';

DROP TABLE IF EXISTS  `user_chat_info`;
CREATE TABLE `user_chat_info` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='客服聊天系统消息';

DROP TABLE IF EXISTS  `project_evaluate`;
CREATE TABLE `project_evaluate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评价标识',
  `member_id` int(11) DEFAULT NULL COMMENT '评价人标识',
  `order_id` int(11) DEFAULT NULL COMMENT '关联订单标识',
  `detail_id` int(11) DEFAULT NULL COMMENT '订单明细标识',
  `project_id` int(11) DEFAULT NULL COMMENT '项目标识',
  `evaluate_rate` int(11) DEFAULT NULL COMMENT '评价分数',
  `comment` varchar(255) DEFAULT '' COMMENT '评价内容',
  `time` char(19) DEFAULT '' COMMENT '评价时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

insert into `project_evaluate`(`id`,`member_id`,`order_id`,`detail_id`,`project_id`,`evaluate_rate`,`comment`,`time`) values
('1','56044','25181','39339','3214','5','','2016-07-27 10:40:30'),
('2','56044','25191','39351','3213','5','','2016-07-30 10:26:53'),
('3','56044','25192','39352','3214','5','','2016-07-30 10:43:38'),
('4','56050','25193','39353','3210','5','好了？？？？？','2016-07-30 12:22:36'),
('5','56044','25198','39363','3213','5','','2016-08-01 15:06:39'),
('6','56045','25206','39372','3213','5','','2016-08-01 15:34:40'),
('7','56045','25208','39376','3215','5','很不错，下次再来！！','2016-08-01 15:38:19');
DROP TABLE IF EXISTS  `employee_objective`;
CREATE TABLE `employee_objective` (
  `objective_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '目标标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `total_project_sales` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '总体项目目标',
  `assign_project_sales` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '指定项目目标',
  `combo_sales` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '疗程销售目标',
  `goods_sales` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品销售目标',
  `charge_sales` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '开卡/充值目标',
  `cash_performance` decimal(8,2) DEFAULT '0.00' COMMENT '现金业绩',
  `card_sales` int(11) NOT NULL DEFAULT '0' COMMENT '优惠卡销售目标',
  `objective_month` char(7) DEFAULT '' COMMENT '目标月份',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `actual_total_project_sales` decimal(8,2) NOT NULL DEFAULT '0.00',
  `actual_assign_project_sales` decimal(8,2) NOT NULL DEFAULT '0.00',
  `actual_combo_sales` decimal(8,2) NOT NULL DEFAULT '0.00',
  `actual_goods_sales` decimal(8,2) NOT NULL DEFAULT '0.00',
  `actual_charge_sales` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`objective_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4097 DEFAULT CHARSET=utf8mb4 COMMENT='员工业绩目标表';

insert into `employee_objective`(`objective_id`,`employee_id`,`total_project_sales`,`assign_project_sales`,`combo_sales`,`goods_sales`,`charge_sales`,`cash_performance`,`card_sales`,`objective_month`,`create_time`,`update_time`,`last_operator_id`,`actual_total_project_sales`,`actual_assign_project_sales`,`actual_combo_sales`,`actual_goods_sales`,`actual_charge_sales`) values
('4062','2086',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-17 12:42:08','',null,0.00,0.00,0.00,0.00,0.00),
('4063','2089',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-17 15:03:27','',null,0.00,0.00,0.00,0.00,0.00),
('4064','2091',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 13:43:51','',null,0.00,0.00,0.00,0.00,0.00),
('4065','2092',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 13:52:21','',null,0.00,0.00,0.00,0.00,0.00),
('4066','2093',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 14:06:10','',null,0.00,0.00,0.00,0.00,0.00),
('4067','2094',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 14:17:59','',null,0.00,0.00,0.00,0.00,0.00),
('4068','2095',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 14:28:46','',null,0.00,0.00,0.00,0.00,0.00),
('4069','2096',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 14:38:36','',null,0.00,0.00,0.00,0.00,0.00),
('4070','2097',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 14:41:59','',null,0.00,0.00,0.00,0.00,0.00),
('4071','2098',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 14:45:12','',null,0.00,0.00,0.00,0.00,0.00),
('4072','2099',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 14:49:52','',null,0.00,0.00,0.00,0.00,0.00),
('4073','2100',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-18 15:07:19','',null,0.00,0.00,0.00,0.00,0.00),
('4074','2102',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-20 10:42:13','',null,0.00,0.00,0.00,0.00,0.00),
('4075','2103',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-20 10:46:34','',null,0.00,0.00,0.00,0.00,0.00),
('4076','2104',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-20 11:51:28','',null,0.00,0.00,0.00,0.00,0.00),
('4077','2105',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-20 11:53:17','',null,0.00,0.00,0.00,0.00,0.00),
('4078','2106',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-20 11:54:26','',null,0.00,0.00,0.00,0.00,0.00),
('4079','2107',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-20 11:55:35','',null,0.00,0.00,0.00,0.00,0.00),
('4080','2108',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-20 11:57:16','',null,0.00,0.00,0.00,0.00,0.00),
('4081','2110',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-21 13:58:46','',null,0.00,0.00,0.00,0.00,0.00),
('4082','2112',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-21 16:25:39','',null,0.00,0.00,0.00,0.00,1000.00),
('4083','2113',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-21 16:36:16','',null,0.00,0.00,0.00,0.00,0.00),
('4084','2114',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-21 16:41:39','',null,0.00,0.00,0.00,0.00,0.00),
('4085','2117',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-23 19:11:40','',null,0.00,0.00,0.00,0.00,0.00),
('4086','2118',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-23 19:18:47','',null,0.00,0.00,0.00,0.00,0.00),
('4087','2124',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 10:30:16','',null,0.00,0.00,0.00,0.00,0.00),
('4088','2125',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 10:32:39','',null,0.00,0.00,0.00,0.00,10.00),
('4089','2126',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 10:34:16','',null,0.00,0.00,0.00,0.00,15.00),
('4090','2127',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 10:35:55','',null,0.00,0.00,0.00,0.00,5.00),
('4091','2128',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 10:37:12','',null,0.00,0.00,0.00,0.00,0.00),
('4092','2129',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 10:39:13','',null,0.00,0.00,0.00,0.00,0.00),
('4093','2130',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 11:24:14','',null,0.00,0.00,0.00,0.00,0.00),
('4094','2131',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 11:28:04','',null,0.00,0.00,0.00,0.00,0.00),
('4095','2132',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-07','2016-07-29 11:28:56','',null,0.00,0.00,0.00,0.00,0.00),
('4096','2142',0.00,0.00,0.00,0.00,0.00,0.00,'0','2016-08','2016-08-01 12:04:53','',null,0.00,0.00,0.00,0.00,0.00);
DROP TABLE IF EXISTS  `activity_info`;
CREATE TABLE `activity_info` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动标识',
  `activity_name` char(50) DEFAULT NULL COMMENT '活动名称',
  `activity_type` int(2) DEFAULT NULL COMMENT '活动类型（1折扣，2现金，3体验）',
  `activity_cl` decimal(8,2) DEFAULT NULL COMMENT '活动策略',
  `activity_discount` int(2) DEFAULT NULL COMMENT '是否允许会员打折(1是，2否)',
  `activity_position_one` int(11) DEFAULT NULL COMMENT '岗位标识',
  `activity_position_two` int(11) DEFAULT NULL COMMENT '岗位标识',
  `activity_position_three` int(11) DEFAULT NULL COMMENT '岗位标识',
  `position_one_type` int(2) DEFAULT NULL COMMENT '提成方式（1，固定，2比利）',
  `position_one_push` decimal(8,2) DEFAULT NULL COMMENT '提成',
  `position_one_result` decimal(8,2) DEFAULT NULL COMMENT '业绩',
  `position_two_type` int(2) DEFAULT NULL COMMENT '提成方式（1，固定，2比利）',
  `position_two_push` decimal(8,2) DEFAULT NULL COMMENT '提成',
  `position_two_result` decimal(8,2) DEFAULT NULL COMMENT '业绩',
  `position_three_type` int(2) DEFAULT NULL COMMENT '提成方式（1，固定，2比利）',
  `position_three_push` decimal(8,2) DEFAULT NULL COMMENT '提成',
  `position_three_result` decimal(8,2) DEFAULT NULL COMMENT '业绩',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `store_account` char(20) DEFAULT NULL COMMENT '企业',
  `create_time` char(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(20) DEFAULT NULL COMMENT '修改时间',
  `is_deleted` int(20) DEFAULT NULL COMMENT '是否删除（0正常，1删除）',
  PRIMARY KEY (`activity_id`),
  UNIQUE KEY `activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

insert into `activity_info`(`activity_id`,`activity_name`,`activity_type`,`activity_cl`,`activity_discount`,`activity_position_one`,`activity_position_two`,`activity_position_three`,`position_one_type`,`position_one_push`,`position_one_result`,`position_two_type`,`position_two_push`,`position_two_result`,`position_three_type`,`position_three_push`,`position_three_result`,`store_id`,`store_account`,`create_time`,`update_time`,`is_deleted`) values
('17','店庆','1',20.00,'2','887','888','889','1',20.00,100.00,'1',10.00,100.00,'1',5.00,100.00,'1180','wisdom','2016-07-18 12:18:43',null,'0'),
('18','店庆','1',20.00,'2','892','893','894','1',20.00,100.00,'1',10.00,100.00,'1',5.00,100.00,'1181','wisdom','2016-07-18 12:19:22',null,'0'),
('19','店庆','1',20.00,'2','897','898','899','1',20.00,100.00,'1',10.00,100.00,'1',5.00,100.00,'1182','wisdom','2016-07-18 12:19:44',null,'0'),
('20','老顾客大回馈','2',50.00,'2','887','888','889','1',30.00,200.00,'1',20.00,200.00,'1',10.00,200.00,'1180','wisdom','2016-07-18 12:20:52',null,'0'),
('21','老顾客大回馈','2',50.00,'2','892','893','894','1',30.00,200.00,'1',20.00,200.00,'1',10.00,200.00,'1181','wisdom','2016-07-18 12:21:22',null,'0'),
('22','老顾客大回馈','2',50.00,'2','897','898','899','1',30.00,200.00,'1',20.00,200.00,'1',10.00,200.00,'1182','wisdom','2016-07-18 12:21:45',null,'0');
DROP TABLE IF EXISTS  `copy_menu`;
CREATE TABLE `copy_menu` (
  `copy_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `store_id` int(11) DEFAULT NULL COMMENT '门店ID',
  `copy_status` int(11) DEFAULT NULL COMMENT '是否复制(0:未复制 1:已经复制)',
  PRIMARY KEY (`copy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='复制菜单信息表';

DROP TABLE IF EXISTS  `money_flow`;
CREATE TABLE `money_flow` (
  `flow_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水标识',
  `account_id` int(11) DEFAULT NULL COMMENT '账户标识',
  `flow_type` int(11) DEFAULT NULL COMMENT '流水类型(1:支出,2:收入)',
  `business_type` int(1) NOT NULL COMMENT '业务类型(1：消费、2：充值、3：转账、4：开卡、5：升级)',
  `flow_amount` decimal(8,2) DEFAULT NULL COMMENT '流水金额',
  `balance_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '当前余额',
  `order_id` int(11) DEFAULT NULL COMMENT '单号标识(资金变化的订单标识，或转入对象)',
  `business_desc` varchar(255) DEFAULT '' COMMENT '业务描述',
  `flow_time` char(19) DEFAULT '' COMMENT '流水时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `store_id` int(11) DEFAULT NULL COMMENT '流水发生门店标识',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COMMENT='资金流水表';

insert into `money_flow`(`flow_id`,`account_id`,`flow_type`,`business_type`,`flow_amount`,`balance_amount`,`order_id`,`business_desc`,`flow_time`,`is_deleted`,`store_id`,`last_operator_id`) values
('87','38677','2','4',970.00,0.00,'25168','开卡','2016-07-21 16:49:11','0','1180','2085'),
('90','38677','1','1',153.00,970.00,'25170','','2016-07-23 10:38:08','0','1180','2085'),
('91','38677','1','1',85.00,817.00,'25169','','2016-07-23 10:38:27','0','1180','2085'),
('92','38682','2','4',1000.00,0.00,'25186','开卡','2016-07-29 15:08:43','0','1247','2123'),
('93','38683','2','4',500.00,0.00,'25187','开卡','2016-07-29 15:10:01','0','1247','2123'),
('94','38686','2','2',1000.00,0.00,'25200','充值','2016-08-01 15:06:49','0','1247','2123');
DROP TABLE IF EXISTS  `employee_skill`;
CREATE TABLE `employee_skill` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '技能标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `category_name` varchar(10) DEFAULT NULL COMMENT '类别名称',
  `skill_name` varchar(10) DEFAULT NULL COMMENT '技能名称',
  `skill_desc` varchar(50) DEFAULT NULL COMMENT '技能描述',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工技能信息表';

DROP TABLE IF EXISTS  `member_error_gi`;
CREATE TABLE `member_error_gi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `level_name` varchar(60) DEFAULT NULL,
  `level_num` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT '0.00',
  `balance_giftmoney_amount` decimal(8,2) DEFAULT '0.00',
  `total_consume_amount` decimal(8,2) DEFAULT '0.00',
  `last_consume_time` varchar(120) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `member_error_xsl`;
CREATE TABLE `member_error_xsl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_num` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT '0.00',
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `shipment_record`;
CREATE TABLE `shipment_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录标识',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品标识',
  `goods_name` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `employee_id` int(11) DEFAULT NULL COMMENT '出货人员标示',
  `employee_name` varchar(64) DEFAULT NULL COMMENT '出货人姓名',
  `shipment_count` int(11) DEFAULT NULL COMMENT '出货数量',
  `shipment_time` char(19) DEFAULT NULL COMMENT '出货时间',
  `store_id` int(11) DEFAULT NULL COMMENT '店铺标识',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人标识',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品出货记录表';

DROP TABLE IF EXISTS  `msg_reply`;
CREATE TABLE `msg_reply` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `msg_type` varchar(30) DEFAULT NULL COMMENT '回复类型(text news)',
  `msg_text` varchar(1000) DEFAULT NULL COMMENT '回复文本',
  `media_id` varchar(240) DEFAULT NULL COMMENT '回复图文mediaId',
  `msg_status` int(11) DEFAULT NULL COMMENT '回复状态(1:关注回复 2:发送消息回复)',
  `store_id` int(11) DEFAULT NULL COMMENT '门店ID',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息自动回复';

DROP TABLE IF EXISTS  `giftmoney_flow`;
CREATE TABLE `giftmoney_flow` (
  `flow_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '礼金流水标识',
  `account_id` int(11) DEFAULT NULL COMMENT '礼金账户标识',
  `detail_id` int(11) DEFAULT NULL COMMENT '单号标识(资金变化的订单标识)',
  `flow_type` int(11) DEFAULT '1' COMMENT '礼金类型(1:支出,2:收入)',
  `flow_amount` decimal(8,2) DEFAULT NULL COMMENT '流水金额',
  `business_type` varchar(255) DEFAULT NULL COMMENT '业务类型',
  `business_desc` varchar(255) DEFAULT NULL COMMENT '业务描述',
  `residue_money_info` varchar(50) DEFAULT NULL COMMENT '抵扣礼金情况',
  `flow_time` char(19) DEFAULT NULL COMMENT '流水时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除（0：未删除，1：已删除）',
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='礼金流水表';

DROP TABLE IF EXISTS  `member_error_htmy`;
CREATE TABLE `member_error_htmy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `level_name` varchar(60) DEFAULT NULL,
  `level_num` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT '0.00',
  `balance_giftmoney_amount` decimal(8,2) DEFAULT '0.00',
  `balance_integral` decimal(8,2) DEFAULT '0.00',
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `rumors_course`;
CREATE TABLE `rumors_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(32) DEFAULT NULL COMMENT '电话号码',
  `level_num` varchar(32) DEFAULT NULL COMMENT '卡号',
  `level_name` varchar(32) DEFAULT NULL COMMENT '电话号码',
  `level_type` varchar(32) DEFAULT NULL COMMENT '卡类型',
  `course_desc` varchar(2400) DEFAULT NULL COMMENT '项目描述',
  `residue_degree` int(11) DEFAULT NULL COMMENT '剩余次数',
  `residue_amount` decimal(8,2) DEFAULT NULL COMMENT '剩余金额',
  `store_id` int(11) DEFAULT NULL COMMENT '门店',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  `create_time` char(19) DEFAULT NULL COMMENT '注册日期',
  `update_time` char(19) DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='盛传疗程项目表';

DROP TABLE IF EXISTS  `authority_request`;
CREATE TABLE `authority_request` (
  `authority_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `authority_name` varchar(32) DEFAULT NULL COMMENT '权限名称',
  `authority_url` varchar(100) DEFAULT NULL COMMENT '权限URL',
  `role_id` int(11) DEFAULT NULL COMMENT '角色引用',
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='接口权限信息表';

DROP TABLE IF EXISTS  `hairstyle_design`;
CREATE TABLE `hairstyle_design` (
  `hairstyle_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发型设置标识',
  `hairstyle_category_id` int(11) DEFAULT NULL COMMENT '发型类别标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `hairstyle_cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `hairstyle_title` varchar(255) DEFAULT NULL COMMENT '名称',
  `hairstyle_content` varchar(255) DEFAULT NULL COMMENT '描述',
  `hair` varchar(255) DEFAULT NULL COMMENT '头发',
  `hair_quality` varchar(255) DEFAULT NULL COMMENT '发质',
  `style` varchar(255) DEFAULT NULL COMMENT '样式',
  `scenario` varchar(255) DEFAULT NULL COMMENT '场景',
  `affiliated_img` varchar(255) DEFAULT NULL COMMENT '附属图片',
  `related_product` varchar(255) DEFAULT NULL COMMENT '发型相关的产品',
  `related_project` varchar(255) DEFAULT NULL COMMENT '发型相关的项目',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`hairstyle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='发型设计表';

DROP TABLE IF EXISTS  `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(60) DEFAULT NULL COMMENT '菜单名称',
  `menu_type` varchar(30) DEFAULT NULL COMMENT '菜单类型(view click)',
  `menu_url` varchar(1000) DEFAULT NULL COMMENT '菜单链接',
  `menu_ref_id` int(11) DEFAULT NULL COMMENT '菜单父级ID',
  `store_id` int(11) DEFAULT NULL COMMENT '门店ID',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COMMENT='自定义菜单表';

DROP TABLE IF EXISTS  `combo_project`;
CREATE TABLE `combo_project` (
  `combo_id` int(11) NOT NULL COMMENT '套餐标识',
  `project_id` int(11) NOT NULL COMMENT '项目标识',
  `project_name` varchar(10) DEFAULT NULL COMMENT '项目名称',
  `project_price` decimal(8,2) DEFAULT NULL COMMENT '项目价格',
  `project_image` varchar(255) DEFAULT NULL COMMENT '项目图片',
  `project_count` int(11) DEFAULT NULL COMMENT '项目数量',
  `combo_performance_cal` decimal(8,2) DEFAULT NULL COMMENT '套餐内业绩计算',
  `royalty_rate` decimal(8,2) DEFAULT NULL COMMENT '提成比例',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `is_count_limit` int(11) DEFAULT '1' COMMENT '是否次数限制(0:否,1:是)',
  PRIMARY KEY (`combo_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='套餐项目关联表';

insert into `combo_project`(`combo_id`,`project_id`,`project_name`,`project_price`,`project_image`,`project_count`,`combo_performance_cal`,`royalty_rate`,`create_time`,`update_time`,`last_operator_id`,`is_deleted`,`is_count_limit`) values
('13','3206','中式洗头',38.00,null,'5',10.00,null,null,null,null,'0','1'),
('13','3209','造型',68.00,null,'5',10.00,null,null,null,null,'0','1'),
('13','3213','面部全面护理',180.00,null,'5',5.00,null,null,null,null,'0','1'),
('14','3208','造型',38.00,null,'10',10.00,null,null,null,null,'0','1'),
('14','3216','炫彩美甲',100.00,null,'5',10.00,null,null,null,null,'0','1'),
('14','3217','手部护理',100.00,null,'5',10.00,null,null,null,null,'0','1');
DROP TABLE IF EXISTS  `activity_store`;
CREATE TABLE `activity_store` (
  `activity_store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '门店活动标识',
  `activity_store_name` char(30) DEFAULT NULL COMMENT '门店活动名称',
  `status_time` char(30) DEFAULT NULL COMMENT '活动开始时间',
  `sotp_time` char(30) DEFAULT NULL COMMENT '活动结束时间',
  `note` char(200) DEFAULT NULL COMMENT '简述',
  `store_id` char(100) DEFAULT NULL COMMENT '门店',
  `notes` char(200) DEFAULT NULL COMMENT '描述',
  `store_account` char(20) DEFAULT NULL COMMENT '企业标识',
  `is_deleted` int(2) DEFAULT NULL COMMENT '（0整除，1删除）',
  `create_time` char(50) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(50) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`activity_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

insert into `activity_store`(`activity_store_id`,`activity_store_name`,`status_time`,`sotp_time`,`note`,`store_id`,`notes`,`store_account`,`is_deleted`,`create_time`,`update_time`) values
('15','店庆','2016-07-20','2016-10-08','店庆大酬宾活动，免卡费办理会员卡','1180,1181,1182','','wisdom','0','2016-07-18 12:22:58',null),
('16','店庆','2016-08-01','2016-08-06','店庆大酬宾','1209','活动期间任意消费满500减80','xiaomin','1','2016-07-28 10:46:49',null),
('17','店庆','2016-07-29','2016-08-03','SAS阿SA','1209','SDSDSDC','xiaomin','0','2016-07-28 10:54:01',null),
('18','特惠','2016-08-03','2016-09-10','SASa','1209','是A','xiaomin','0','2016-07-28 11:53:06',null);
DROP TABLE IF EXISTS  `combo_info`;
CREATE TABLE `combo_info` (
  `combo_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套餐标识',
  `combo_parent_id` int(11) DEFAULT NULL COMMENT '上级套餐id',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `combo_name` varchar(10) DEFAULT NULL COMMENT '套餐名称',
  `combo_image` varchar(255) DEFAULT NULL COMMENT '套餐图片',
  `combo_desc` text COMMENT '套餐描述',
  `project_count` int(11) DEFAULT NULL COMMENT '项目数量',
  `project_amount` decimal(8,2) DEFAULT NULL COMMENT '项目总价',
  `combo_sale_price` decimal(8,2) DEFAULT NULL COMMENT '套餐销售价',
  `commission_type` int(11) DEFAULT '1' COMMENT '提成方式(1:按业绩比例,2:按固定金额)',
  `cash_commission` decimal(8,2) DEFAULT NULL COMMENT '现金提成',
  `card_commission` decimal(8,2) DEFAULT NULL COMMENT '卡金提成',
  `sales_count` int(11) DEFAULT '0' COMMENT '销售次数',
  `sales_people` int(11) DEFAULT '0' COMMENT '销售人数',
  `start_date` char(10) DEFAULT NULL COMMENT '开始日期',
  `end_date` char(10) DEFAULT NULL COMMENT '结束日期',
  `valid_date` int(11) DEFAULT NULL COMMENT '有效期',
  `is_count_limit` int(11) DEFAULT '1' COMMENT '是否次数限制(0:否,1:是)',
  `is_wechat_sell` int(11) DEFAULT '0' COMMENT '是否微信销售(0:否,1:是)',
  `is_disable` int(11) DEFAULT '0' COMMENT '是否禁用(0:未禁用,1:已禁用)',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `standard` int(1) DEFAULT NULL COMMENT '是否有时间限制(0:否,1:是)',
  `is_attestation` int(1) DEFAULT NULL COMMENT '是否进行身份认证(0:否,1:是)',
  `combo_performance` decimal(8,2) DEFAULT NULL COMMENT '套餐业绩计算',
  `combo_code_suffix` char(5) DEFAULT NULL COMMENT '套餐编号',
  PRIMARY KEY (`combo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='套餐信息表';

insert into `combo_info`(`combo_id`,`combo_parent_id`,`store_id`,`dept_id`,`combo_name`,`combo_image`,`combo_desc`,`project_count`,`project_amount`,`combo_sale_price`,`commission_type`,`cash_commission`,`card_commission`,`sales_count`,`sales_people`,`start_date`,`end_date`,`valid_date`,`is_count_limit`,`is_wechat_sell`,`is_disable`,`is_deleted`,`create_time`,`update_time`,`last_operator_id`,`standard`,`is_attestation`,`combo_performance`,`combo_code_suffix`) values
('13',null,'1180','481','造型美容','jobwisdom/project/1468837821775','',null,null,2500.00,'2',500.00,500.00,'0','0',null,null,'0','1','0','0','0',null,null,null,'0',null,2500.00,'01'),
('14',null,'1180','481','美妆美甲','jobwisdom/project/1469079950869','',null,null,1500.00,'2',200.00,250.00,'0','0',null,null,'0','1','0','0','0',null,null,null,'1',null,1500.00,'02'),
('15',null,'1181','485','卡诗护理套装','jobwisdom/project/1470017144736','',null,null,4680.00,'2',500.00,300.00,'0','0',null,null,'90','1','0','0','0',null,null,null,'1',null,182.00,'101'),
('16',null,'1181','485','卡诗修护精华套盒','jobwisdom/project/1470017323364','',null,null,6800.00,'2',500.00,300.00,'0','0',null,null,'120','1','0','0','0',null,null,null,'1',null,200.00,'102');
DROP TABLE IF EXISTS  `temp_project`;
CREATE TABLE `temp_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(100) DEFAULT NULL,
  `itemName` varchar(100) DEFAULT NULL,
  `maxPriceOri` varchar(11) DEFAULT NULL,
  `minPrice` varchar(11) DEFAULT NULL,
  `saleNum` varchar(11) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `shop_account_state`;
CREATE TABLE `shop_account_state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '对账状态id',
  `launch_store_id` int(11) NOT NULL COMMENT '发起对账门店id',
  `reconciliation_store_id` int(11) NOT NULL COMMENT '被对账门店',
  `reconciliation_amount` decimal(8,2) DEFAULT '0.00' COMMENT '对账金额',
  `reconciliation_date` char(10) DEFAULT NULL COMMENT '对账日期',
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='门店对账状态表';

DROP TABLE IF EXISTS  `enterprise_store_authority`;
CREATE TABLE `enterprise_store_authority` (
  `store_authority_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '授权标识',
  `enterprise_info_id` int(11) NOT NULL COMMENT '企业标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `store_name` varchar(50) DEFAULT NULL COMMENT '门店名称',
  `authority_value` varchar(50) NOT NULL COMMENT '授权码',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `employee_code` int(11) DEFAULT NULL COMMENT '员工编码',
  `name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`store_authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='企业门店授权表';

insert into `enterprise_store_authority`(`store_authority_id`,`enterprise_info_id`,`store_id`,`store_name`,`authority_value`,`employee_id`,`employee_code`,`name`,`update_time`,`create_time`,`last_operator_id`,`is_deleted`) values
('11','24','1180','中邦一号店','wx1234','2086','1','老王',null,'2016-07-22 11:24:22',null,'0');
DROP TABLE IF EXISTS  `activity_account`;
CREATE TABLE `activity_account` (
  `activity_account` char(50) DEFAULT NULL COMMENT '活动名称',
  `activity_Paper` char(130) DEFAULT NULL COMMENT '简述',
  `starts_time` char(30) DEFAULT NULL COMMENT '开始时间',
  `end_time` char(30) DEFAULT NULL COMMENT '结束时间',
  `Activity_note` char(255) DEFAULT NULL COMMENT '描述',
  `store_id` int(11) DEFAULT NULL COMMENT '门店ID',
  `store_account` char(50) DEFAULT NULL COMMENT '企业id',
  `activity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动标识',
  `create_time` char(30) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(30) DEFAULT NULL COMMENT '修改时间',
  `is_deleted` int(11) DEFAULT NULL COMMENT '时候删除（0整除，1删除）',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `hairstyle_category`;
CREATE TABLE `hairstyle_category` (
  `hairstyle_category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发型类别标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `hairstyle_category_name` varchar(255) DEFAULT NULL COMMENT '发型类别名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`hairstyle_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='发型类别表';

DROP TABLE IF EXISTS  `member_coupon`;
CREATE TABLE `member_coupon` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `coupon_id` int(11) DEFAULT NULL COMMENT '优惠劵',
  `member_info_id` int(11) DEFAULT NULL COMMENT '会员',
  `stop_time` char(19) DEFAULT NULL COMMENT '结束时间',
  `is_deleted` int(11) DEFAULT NULL COMMENT '是否使用了',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COMMENT='用户优惠券';

DROP TABLE IF EXISTS  `order_info`;
CREATE TABLE `order_info` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `order_type` int(11) DEFAULT '1' COMMENT '订单类型(1:服务类，2:充值类)',
  `member_id` int(11) DEFAULT NULL COMMENT '会员标识(散客为空)',
  `sex` char(2) DEFAULT NULL COMMENT '顾客性别',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `order_code` char(25) NOT NULL DEFAULT '' COMMENT '订单号',
  `hand_order_code` char(25) DEFAULT '' COMMENT '手牌号',
  `receivable_amount` decimal(8,2) DEFAULT '0.00' COMMENT '应收金额',
  `discount_amount` decimal(8,2) DEFAULT '0.00' COMMENT '折扣金额',
  `cash_amount` decimal(8,2) DEFAULT '0.00' COMMENT '现金支付',
  `unionpay_amount` decimal(8,2) DEFAULT '0.00' COMMENT '银联支付',
  `card_amount` decimal(8,2) DEFAULT '0.00' COMMENT '会员卡支付',
  `gift_amount` decimal(8,2) DEFAULT '0.00' COMMENT '礼金抵扣',
  `wechat_amount` decimal(8,2) DEFAULT '0.00' COMMENT '微信支付',
  `alipay_amount` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '支付宝支付',
  `group_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '团购支付',
  `combo_amount` decimal(8,2) DEFAULT '0.00' COMMENT '套餐抵扣',
  `coupon_amount` decimal(8,2) DEFAULT '0.00' COMMENT '优惠券抵扣',
  `appoint_off` decimal(11,0) DEFAULT '0' COMMENT '优惠金额',
  `free_amount` decimal(8,2) DEFAULT '0.00' COMMENT '签单金额',
  `debt_amount` decimal(8,2) DEFAULT '0.00' COMMENT '挂账金额',
  `real_amount` decimal(8,2) DEFAULT '0.00' COMMENT '实收金额',
  `order_status` int(11) DEFAULT NULL COMMENT '订单状态(1：进行中、2：待结账、3：待评价、4：已完成、5：已通知买单)',
  `option_employee_id` int(11) DEFAULT NULL COMMENT '订单操作员工标识',
  `is_order_option` int(2) DEFAULT '0' COMMENT '订单是否操作中（0：否，1：是）',
  `order_remark` varchar(100) DEFAULT NULL COMMENT '改价备注',
  `order_evaluate` varchar(255) DEFAULT NULL COMMENT '评价内容',
  `appointment_id` int(11) DEFAULT NULL COMMENT '预约标识(预约单才有)',
  `is_share` int(11) NOT NULL DEFAULT '0' COMMENT '是否分享(0:未分享，1:已分享)',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25222 DEFAULT CHARSET=utf8mb4 COMMENT='订单信息表';

insert into `order_info`(`order_id`,`store_id`,`order_type`,`member_id`,`sex`,`dept_id`,`order_code`,`hand_order_code`,`receivable_amount`,`discount_amount`,`cash_amount`,`unionpay_amount`,`card_amount`,`gift_amount`,`wechat_amount`,`alipay_amount`,`group_amount`,`combo_amount`,`coupon_amount`,`appoint_off`,`free_amount`,`debt_amount`,`real_amount`,`order_status`,`option_employee_id`,`is_order_option`,`order_remark`,`order_evaluate`,`appointment_id`,`is_share`,`is_deleted`,`create_time`,`update_time`,`last_operator_id`) values
('25151','1180','1','56036','男','0','201607170001','',20.00,0.20,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','1','2016-07-17 13:37:24',null,'2085'),
('25152','1180','1','56036','男','0','201607170002','',20.00,0.20,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','1','2016-07-17 16:24:41',null,'2085'),
('25153','1180','1',null,'男',null,'','103',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-17 16:26:59',null,'2085'),
('25157','1180','2','56038',null,null,'201607190004','',0.00,0.00,30.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,30.00,'4',null,'0',null,null,null,'0','0','2016-07-19 15:32:34',null,'2085'),
('25158','1180','1','56038',null,null,'','',0.20,0.00,0.00,0.00,0.00,0.00,0.20,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.20,'3',null,'0',null,null,null,'0','0','2016-07-19',null,null),
('25159','1180','1',null,'男','0','201607210001','100',180.00,180.00,180.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,180.00,'3',null,'0',null,null,null,'0','0','2016-07-21 14:21:03','2016-07-21 14:22:32','2085'),
('25160','1181','1',null,'男',null,'','101',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','0','2016-07-21 15:08:28',null,'2087'),
('25161','1181','1',null,'男',null,'201607210001','102',748.00,168.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','0','2016-07-21 15:13:36',null,'2087'),
('25162','1181','1',null,'男',null,'','103',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','0','2016-07-21 15:27:54',null,'2087'),
('25163','1181','1',null,'男',null,'','104',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','0','2016-07-21 15:48:06',null,'2087'),
('25164','1180','1',null,'男',null,'','101',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-21 16:29:48',null,'2085'),
('25165','1180','1',null,'男',null,'','101',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-21 16:33:16',null,'2085'),
('25166','1180','1',null,'男',null,'','102',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-21 16:34:40',null,'2085'),
('25167','1180','1','56037','男',null,'','101',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-21 16:38:56',null,'2085'),
('25168','1180','2','56037',null,null,'201607210002','',970.00,970.00,1000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,1000.00,'4',null,'0',null,null,null,'0','0','2016-07-21 16:49:11',null,'2085'),
('25169','1180','1','56037','男',null,'201607210003','101',100.00,85.00,0.00,0.00,85.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,85.00,'3',null,'0',null,null,null,'0','0','2016-07-21 17:00:33','2016-07-23 10:38:27','2085'),
('25170','1180','1','56037','男',null,'201607230002','101',180.00,153.00,0.00,0.00,153.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,153.00,'3',null,'0',null,null,null,'0','0','2016-07-23 10:35:11','2016-07-23 10:38:08','2085'),
('25171','1180','1',null,'',null,'','102',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-23 11:41:14',null,'2085'),
('25172','1181','1',null,'男','0','201607250001','',80.00,80.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','0','2016-07-25 16:58:32',null,'2087'),
('25173','1180','1',null,'男','0','201607250001','',436.00,436.00,0.00,436.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,436.00,'3',null,'0',null,null,null,'0','0','2016-07-25 17:53:06','2016-08-01 12:46:07','2139'),
('25174','1180','1','56041','男',null,'201607250003','104',100.00,95.00,95.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,95.00,'3',null,'0',null,null,null,'0','0','2016-07-25 17:55:37','2016-07-25 18:00:45','2085'),
('25176','1180','1','56041','男','0','201607250004','',100.00,95.00,95.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,95.00,'3',null,'0',null,null,null,'0','0','2016-07-25 18:08:54','2016-07-25 18:10:55','2085'),
('25178','1180','1','56045','男',null,'','101',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-25 23:17:28',null,'2085'),
('25180','1180','1',null,'男',null,'','101',180.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-26 11:06:28',null,'2085'),
('25181','1180','1','56044','男','0','201607270001','',100.00,95.00,95.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,95.00,'4',null,'0',null,null,null,'1','0','2016-07-27 10:39:36','2016-07-27 10:40:30','2085'),
('25182','1180','1',null,'男','0','201607280001','',180.00,180.00,100.00,0.00,0.00,0.00,80.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,180.00,'3',null,'0',null,null,null,'0','0','2016-07-28 21:25:21','2016-08-01 12:45:09','2139'),
('25183','1180','1','56043','男',null,'','102',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-28 21:26:32',null,'2085'),
('25184','1180','1',null,'男','0','201607290001','',180.00,180.00,180.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,180.00,'3',null,'0',null,null,null,'0','0','2016-07-29 10:33:25','2016-07-29 10:34:12','2085'),
('25185','1180','1',null,'男',null,'','101',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-07-29 10:35:22',null,'2085'),
('25186','1247','2','56047',null,null,'201607290001','',1000.00,1000.00,1000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,1000.00,'4',null,'0',null,null,null,'0','0','2016-07-29 15:08:43',null,'2123'),
('25187','1247','2','56048',null,null,'201607290002','',500.00,500.00,0.00,0.00,0.00,0.00,500.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,500.00,'4',null,'0',null,null,null,'0','0','2016-07-29 15:10:01',null,'2123'),
('25188','1180','1','56041','男','0','201607290002','',38.00,36.10,36.10,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,36.10,'3',null,'0',null,null,null,'0','0','2016-07-29 16:16:29','2016-08-01 14:24:46','2139'),
('25189','1180','1',null,'男',null,'','101',1000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1','2112','1',null,null,null,'0','1','2016-07-29 16:17:54',null,'2085'),
('25190','1180','1',null,'男','0','201607300001','',180.00,180.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','0','2016-07-30 09:58:55',null,'2085'),
('25191','1180','1','56044','男','0','201607300002','',180.00,171.00,171.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,171.00,'4',null,'0',null,null,null,'0','0','2016-07-30 10:25:43','2016-07-30 10:26:53','2085'),
('25192','1180','1','56044','男','0','201607300003','',100.00,95.00,95.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,95.00,'4',null,'0',null,null,null,'1','0','2016-07-30 10:42:45','2016-07-30 10:43:38','2085'),
('25193','1180','1','56050','男',null,'201607300004','102',500.00,475.00,0.00,0.00,0.00,0.00,475.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,475.00,'4',null,'0',null,null,null,'0','0','2016-07-30 12:11:08','2016-07-30 12:22:36','2085'),
('25194','1180','1',null,'男','0','201607300005','',38.00,38.00,38.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,38.00,'3',null,'0',null,null,null,'0','0','2016-07-30 12:18:12','2016-07-30 12:20:09','2085'),
('25195','1180','1',null,'男','0','201608010001','',180.00,180.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','0','2016-08-01 14:27:25',null,'2139'),
('25196','1180','1',null,'男',null,'','140',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1','2112','1',null,null,null,'0','1','2016-08-01 14:47:11',null,'2139'),
('25197','1180','1','56041','男',null,'201608010002','101',38.00,36.10,36.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,36.00,'3','2112','1',null,null,null,'0','0','2016-08-01 14:54:18','2016-08-01 14:59:55','2085'),
('25198','1180','1','56044','男','0','201608010003','',180.00,171.00,171.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,171.00,'4',null,'0',null,null,null,'1','0','2016-08-01 15:00:32','2016-08-01 15:06:39','2085'),
('25199','1180','1','56041','女',null,'','101',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1','2086','1',null,null,null,'0','1','2016-08-01 15:05:38',null,'2145'),
('25200','1247','2','56051',null,null,'112','',1000.00,1000.00,0.00,0.00,0.00,0.00,1000.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,1000.00,'4',null,'0',null,null,null,'0','0','2016-09-01',null,'2123'),
('25201','1181','1',null,'男',null,'','105',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1','2100','1',null,null,null,'0','0','2016-08-01 15:06:54',null,'2087'),
('25202','1180','1',null,'男',null,'','101',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1',null,'0',null,null,null,'0','1','2016-08-01 15:07:42',null,'2145'),
('25203','1180','1','56041','男',null,'201608010004','104',100.00,95.00,95.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,95.00,'3',null,'0',null,null,null,'0','0','2016-08-01 15:08:10','2016-08-01 16:36:48','2085'),
('25204','1180','1',null,'男','0','201608010005','',180.00,180.00,180.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,180.00,'3',null,'0',null,null,null,'0','0','2016-08-01 15:07:40','2016-08-01 16:36:57','2085'),
('25205','1180','1',null,'男',null,'','103',100.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'1','2113','1',null,null,null,'0','1','2016-08-01 15:09:56',null,'2145'),
('25206','1180','1','56045','男','0','201608010006','',180.00,171.00,171.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,171.00,'4',null,'0',null,null,null,'0','0','2016-08-01 15:08:55','2016-08-01 15:34:40','2085'),
('25207','1180','1','56045','男','0','201608010007','',1500.00,1500.00,1500.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,1500.00,'3',null,'0',null,null,null,'0','0','2016-08-01 15:10:03','2016-08-01 15:10:19','2085'),
('25208','1180','1','56045','男','0','201608010010','',100.00,95.00,95.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'10',0.00,0.00,85.00,'4',null,'0',null,null,null,'1','0','2016-08-01 15:36:46','2016-08-01 15:38:19','2085'),
('25209','1180','2','56053',null,null,'101','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'4',null,'0',null,null,null,'0','0','2016-08-01',null,'2145'),
('25210','1247','1',null,'男','0','201608010001','222',478.00,478.00,478.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,478.00,'3',null,'0',null,null,null,'0','0','2016-08-01 16:12:23','2016-08-01 18:14:34','2123'),
('25211','1247','1',null,'男',null,'201608010002','101',58.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','1','2016-08-01 16:39:05',null,'2123'),
('25212','1247','1',null,'男',null,'201608010003','103',156.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','1','2016-08-01 16:45:36',null,'2123'),
('25213','1247','1',null,'男',null,'201608010004','104',156.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','1','2016-08-01 16:50:02',null,'2123'),
('25214','1247','1',null,'男',null,'201608010005','104',98.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','1','2016-08-01 16:54:59',null,'2123'),
('25215','1247','1',null,'男','0','201608010006','',98.00,98.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','1','2016-08-01 16:56:44',null,'2123'),
('25216','1247','1',null,'男',null,'201608010007','105',98.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','1','2016-08-01 16:56:36',null,'2123'),
('25217','1180','1',null,'男','0','201608030001','',38.00,38.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','0','2016-08-03 13:44:36',null,'2145'),
('25218','1180','1','56041','男',null,'201608030002','101',38.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'2',null,'0',null,null,null,'0','0','2016-08-03 13:50:38',null,'2145'),
('25219','1180','1','56044','男','0','201608030003','',100.00,95.00,95.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,95.00,'3',null,'0',null,null,null,'0','0','2016-08-03 13:51:38','2016-08-03 14:02:11','2145'),
('25220','1247','1',null,'男','0','201608030001','',98.00,98.00,0.00,0.00,0.00,0.00,0.00,98.00,0.00,0.00,0.00,'0',0.00,0.00,98.00,'3',null,'0',null,null,null,'0','0','2016-08-03 13:56:51','2016-08-03 13:56:37','2123'),
('25221','1247','1',null,'男',null,'201608030002','101',156.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0',0.00,0.00,0.00,'3',null,'0',null,null,null,'0','0','2016-08-03 13:57:26','2016-08-03 13:59:05','2123');
DROP TABLE IF EXISTS  `enterprise_account_flow`;
CREATE TABLE `enterprise_account_flow` (
  `account_flow_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '账户标识',
  `enterprise_account_id` int(11) NOT NULL COMMENT '账户标识',
  `flow_type` int(2) DEFAULT NULL COMMENT '流水类型(1:支出,2:收入)',
  `flow_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '流水金额',
  `balance_amount` decimal(8,2) DEFAULT NULL COMMENT '当前余额',
  `business_type` varchar(50) DEFAULT NULL COMMENT '业务类型',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`account_flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='企业账户流水表';

insert into `enterprise_account_flow`(`account_flow_id`,`enterprise_account_id`,`flow_type`,`flow_amount`,`balance_amount`,`business_type`,`update_time`,`create_time`,`last_operator_id`,`is_deleted`) values
('10','24',null,1.00,1.00,'充值',null,null,null,'0'),
('11','24','2',2.00,3.00,'充值',null,'2016-07-29 16:07:56',null,'0');
DROP TABLE IF EXISTS  `goods_discount`;
CREATE TABLE `goods_discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '折扣标识',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品标识',
  `level_id` int(11) DEFAULT NULL COMMENT '会员卡标识',
  `discount_proportion` decimal(8,2) DEFAULT NULL COMMENT '折扣比例',
  `discount_amount` decimal(8,2) DEFAULT NULL COMMENT '会员门店价',
  `online_appointment_price` decimal(8,2) DEFAULT NULL COMMENT '在线预约价格      没用到',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='商品会员折扣表';

insert into `goods_discount`(`discount_id`,`goods_id`,`level_id`,`discount_proportion`,`discount_amount`,`online_appointment_price`,`create_time`,`update_time`,`last_operator_id`) values
('18','1944','716',90.00,90.00,90.00,'2016-07-26 18:56:24',null,null),
('19','1944','717',90.00,90.00,90.00,'2016-07-26 18:56:24',null,null),
('20','1944','718',90.00,90.00,90.00,'2016-07-26 18:56:24',null,null);
DROP TABLE IF EXISTS  `employee_experience`;
CREATE TABLE `employee_experience` (
  `experience_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '履历标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `start_date` char(10) DEFAULT NULL COMMENT '开始日期',
  `end_date` char(10) DEFAULT NULL COMMENT '结束日期',
  `company_name` varchar(25) DEFAULT NULL COMMENT '公司名称',
  `position_name` varchar(10) DEFAULT NULL COMMENT '岗位名称',
  `experience_desc` varchar(50) DEFAULT NULL COMMENT '履历描述',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工履历记录表';

DROP TABLE IF EXISTS  `cross_shop_account`;
CREATE TABLE `cross_shop_account` (
  `crossShop_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '跨店对账明细标识',
  `consumed_store_id` int(11) NOT NULL COMMENT '消费门店id',
  `belong_store_id` int(11) NOT NULL COMMENT '所属门店id',
  `reconciliation_amount` decimal(8,2) DEFAULT '0.00' COMMENT '对账金额',
  `check_state` char(1) DEFAULT '0' COMMENT '审核状态(0:未对账 未审核;1 本店已对账;2 本店已对账 他店未审核;3 他店审核未通过;4 他店审核通过)',
  `remark` text COMMENT '备注(如果审核未通过 则强制要输入理由)',
  `reference_detail_id` int(11) DEFAULT NULL,
  `series_id` char(25) DEFAULT NULL,
  PRIMARY KEY (`crossShop_id`),
  KEY `assign` (`crossShop_id`,`consumed_store_id`,`belong_store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='跨店对账明细表';

DROP TABLE IF EXISTS  `member_present_record`;
CREATE TABLE `member_present_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '赠送标识',
  `member_id` int(11) DEFAULT NULL COMMENT '会员标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '操作员工标识',
  `type` int(11) DEFAULT NULL COMMENT '赠送类型(1:积分，2:礼金，3:优惠券)',
  `gift` int(11) DEFAULT NULL COMMENT '关联标识/积分数量/礼金金额',
  `comment` varchar(100) DEFAULT NULL COMMENT '备注',
  `time` char(19) DEFAULT NULL COMMENT '赠送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='会员赠送记录表';

DROP TABLE IF EXISTS  `store_manage_rule`;
CREATE TABLE `store_manage_rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `rule_type` int(11) DEFAULT '1' COMMENT '规则类型(1:考勤，2:行为，3:服务)',
  `rule_name` varchar(10) DEFAULT '' COMMENT '规则名称',
  `rule_desc` varchar(50) DEFAULT '' COMMENT '规则描述',
  `target_type` int(11) DEFAULT '1' COMMENT '指标类型(1:分钟，2:小时，3:分数)',
  `target_value` int(11) DEFAULT '0' COMMENT '指标值',
  `process_type` int(11) DEFAULT '2' COMMENT '处理方式(1:奖励，2:惩罚)',
  `process_money` decimal(8,2) DEFAULT '0.00' COMMENT '奖惩金额',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `last_operator_time` char(19) DEFAULT '' COMMENT '最后操作时间',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COMMENT='门店管理规则表';

insert into `store_manage_rule`(`rule_id`,`store_id`,`rule_type`,`rule_name`,`rule_desc`,`target_type`,`target_value`,`process_type`,`process_money`,`last_operator_id`,`last_operator_time`) values
('1','0','1','迟到','比正常上班时间晚','1','0','2',0.00,'0','2015-12-01 12:00:00'),
('2','0','1','早退','比正常下班时间早','1','0','2',0.00,'0','2015-12-01 12:00:00'),
('3','0','1','请假','请假并经过领导审批','2','0','2',0.00,'0','2015-12-01 12:00:00'),
('4','0','1','旷工','迟到或早退超过','2','0','2',0.00,'0','2015-12-01 12:00:00'),
('5','0','1','全勤','当月无不良考勤记录	','0','0','1',0.00,'0','2015-12-01 12:00:00'),
('6','0','2','小过','上班玩手机','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('7','0','2','大过','跟客户吵架','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('8','0','2','警告','跟老板吵架','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('9','0','3','好评','顾客评价分数大于等于','3','4','1',0.00,'0','2015-12-01 12:00:00'),
('10','0','3','差评','顾客评价分数低于','3','3','2',0.00,'0','2015-12-01 12:00:00'),
('11','0','3','投诉','被顾客投诉','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('243','1180','1','迟到','比正常上班时间晚','1','10','2',10.00,'0','2015-12-01 12:00:00'),
('244','1180','1','早退','比正常下班时间早','1','10','2',10.00,'0','2015-12-01 12:00:00'),
('245','1180','1','请假','请假并经过领导审批','2','1','2',20.00,'0','2015-12-01 12:00:00'),
('246','1180','1','旷工','迟到或早退超过','2','2','2',100.00,'0','2015-12-01 12:00:00'),
('247','1180','1','全勤','当月无不良考勤记录	','0','0','1',100.00,'0','2015-12-01 12:00:00'),
('248','1180','2','小过','上班玩手机','0','0','2',10.00,'0','2015-12-01 12:00:00'),
('249','1180','2','大过','跟客户吵架','0','0','2',100.00,'0','2015-12-01 12:00:00'),
('250','1180','2','警告','跟老板吵架','0','0','2',500.00,'0','2015-12-01 12:00:00'),
('251','1180','3','好评','顾客评价分数大于等于','3','4','1',5.00,'0','2015-12-01 12:00:00'),
('252','1180','3','差评','顾客评价分数低于','3','3','2',2.00,'0','2015-12-01 12:00:00'),
('253','1180','3','投诉','被顾客投诉','0','0','2',100.00,'0','2015-12-01 12:00:00'),
('258','1181','1','迟到','比正常上班时间晚','1','0','2',0.00,'0','2015-12-01 12:00:00'),
('259','1181','1','早退','比正常下班时间早','1','0','2',0.00,'0','2015-12-01 12:00:00'),
('260','1181','1','请假','请假并经过领导审批','2','0','2',0.00,'0','2015-12-01 12:00:00'),
('261','1181','1','旷工','迟到或早退超过','2','0','2',0.00,'0','2015-12-01 12:00:00'),
('262','1181','1','全勤','当月无不良考勤记录	','0','0','1',0.00,'0','2015-12-01 12:00:00'),
('263','1181','2','小过','上班聊天','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('264','1181','2','大过','跟客户吵架','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('265','1181','2','警告','跟老板吵架','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('266','1181','3','好评','顾客评价分数大于等于','3','4','1',0.00,'0','2015-12-01 12:00:00'),
('267','1181','3','差评','顾客评价分数低于','3','3','2',0.00,'0','2015-12-01 12:00:00'),
('268','1181','3','投诉','被顾客投诉','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('273','1182','1','迟到','比正常上班时间晚','1','0','2',0.00,'0','2015-12-01 12:00:00'),
('274','1182','1','早退','比正常下班时间早','1','0','2',0.00,'0','2015-12-01 12:00:00'),
('275','1182','1','请假','请假并经过领导审批','2','0','2',0.00,'0','2015-12-01 12:00:00'),
('276','1182','1','旷工','迟到或早退超过','2','0','2',0.00,'0','2015-12-01 12:00:00'),
('277','1182','1','全勤','当月无不良考勤记录	','0','0','1',0.00,'0','2015-12-01 12:00:00'),
('278','1182','2','小过','上班玩手机','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('279','1182','2','大过','跟客户吵架','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('280','1182','2','警告','跟老板吵架','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('281','1182','3','好评','顾客评价分数大于等于','3','4','1',0.00,'0','2015-12-01 12:00:00'),
('282','1182','3','差评','顾客评价分数低于','3','3','2',0.00,'0','2015-12-01 12:00:00'),
('283','1182','3','投诉','被顾客投诉','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('288','1183','1','迟到','比正常上班时间晚','1','0','2',0.00,'0','2015-12-01 12:00:00'),
('289','1183','1','早退','比正常下班时间早','1','0','2',0.00,'0','2015-12-01 12:00:00'),
('290','1183','1','请假','请假并经过领导审批','2','0','2',0.00,'0','2015-12-01 12:00:00'),
('291','1183','1','旷工','迟到或早退超过','2','0','2',0.00,'0','2015-12-01 12:00:00'),
('292','1183','1','全勤','当月无不良考勤记录	','0','0','1',0.00,'0','2015-12-01 12:00:00'),
('293','1183','2','小过','上班玩手机','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('294','1183','2','大过','跟客户吵架','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('295','1183','2','警告','跟老板吵架','0','0','2',0.00,'0','2015-12-01 12:00:00'),
('296','1183','3','好评','顾客评价分数大于等于','3','4','1',0.00,'0','2015-12-01 12:00:00'),
('297','1183','3','差评','顾客评价分数低于','3','3','2',0.00,'0','2015-12-01 12:00:00'),
('298','1183','3','投诉','被顾客投诉','0','0','2',0.00,'0','2015-12-01 12:00:00');
DROP TABLE IF EXISTS  `employee_holiday`;
CREATE TABLE `employee_holiday` (
  `holiday_id` int(11) NOT NULL COMMENT '假期标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '人员标识',
  `week_holiday` varchar(15) DEFAULT NULL COMMENT '每周休假日(支持多天,逗号分割)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工假期信息表';

DROP TABLE IF EXISTS  `member_error_mb`;
CREATE TABLE `member_error_mb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_num` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT '0.00',
  `balance_giftmoney_amount` decimal(8,2) DEFAULT '0.00',
  `balance_integral` decimal(8,2) DEFAULT '0.00',
  `debt_amount` decimal(8,2) DEFAULT '0.00',
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `integral_flow`;
CREATE TABLE `integral_flow` (
  `flow_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水标识',
  `account_id` int(11) DEFAULT NULL COMMENT '账户标识',
  `flow_type` int(11) DEFAULT NULL COMMENT '流水类型(1:支出,2:收入)',
  `flow_amount` int(11) NOT NULL DEFAULT '0' COMMENT '流水金额',
  `balance_amount` int(11) DEFAULT NULL COMMENT '当前余额',
  `order_id` int(11) DEFAULT NULL COMMENT '单号标识(积分变化的订单标识)',
  `business_type` varchar(255) DEFAULT NULL COMMENT '业务类型',
  `business_desc` varchar(255) DEFAULT NULL COMMENT '业务描述',
  `flow_time` char(19) DEFAULT NULL COMMENT '流水时间',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '交易标识',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COMMENT='积分流水表';

insert into `integral_flow`(`flow_id`,`account_id`,`flow_type`,`flow_amount`,`balance_amount`,`order_id`,`business_type`,`business_desc`,`flow_time`,`transaction_id`,`is_deleted`) values
('25','56037','2','153','0','25170','消费得积分','','2016-07-23 10:38:08',null,'0'),
('26','56037','2','85','153','25169','消费得积分','','2016-07-23 10:38:27',null,'0'),
('27','56044','2','10','10',null,'好友分享奖励','好友分享奖励','2016-08-01 15:07:29',null,'0'),
('28','56052','2','20','20',null,'好友分享奖励','好友分享奖励','2016-08-01 15:21:01',null,'0'),
('29','56045','2','10','10',null,'好友分享奖励','好友分享奖励','2016-08-01 15:38:52',null,'0');
DROP TABLE IF EXISTS  `service_plan_temp`;
CREATE TABLE `service_plan_temp` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `temp_name` varchar(120) DEFAULT NULL COMMENT '模板名称',
  `theme` varchar(120) DEFAULT NULL COMMENT '主题',
  `topic_day` int(11) DEFAULT '0' COMMENT '推送在计划启动的天数',
  `topic_houre` int(11) DEFAULT '1' COMMENT '推送在计划启动的小时',
  `service_project_name` varchar(120) DEFAULT NULL COMMENT '服务的项目名称',
  `service_day` int(11) DEFAULT '0' COMMENT '服务的启动的天数',
  `service_houre` int(11) DEFAULT '1' COMMENT '服务的启动的小时',
  `store_id` int(11) DEFAULT NULL COMMENT '门店信息',
  `is_sms` int(11) DEFAULT '1' COMMENT '是否短信推送',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `ubox_machine_info`;
CREATE TABLE `ubox_machine_info` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '机器标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '机器名称',
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '所在地址',
  `distance` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '距离查询点距离',
  `is_shop` int(1) DEFAULT '0' COMMENT '是否便利店',
  `has_box` int(1) DEFAULT '0' COMMENT '是否存在柜子',
  `has_meal` int(1) DEFAULT '0' COMMENT '是否售卖快餐',
  `lat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '纬度',
  `lng` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '经度',
  `vm_connected` int(1) DEFAULT NULL COMMENT '是否在线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS  `combo_project_commission`;
CREATE TABLE `combo_project_commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `combo_id` int(11) DEFAULT NULL COMMENT '套餐标识',
  `project_id` int(11) DEFAULT NULL COMMENT '项目标识',
  `level_id` int(11) DEFAULT NULL COMMENT '职位标识',
  `assign_cash_type` int(11) DEFAULT NULL COMMENT '指定客现金方式(1:按业绩比例,2:按固定金额)',
  `assign_cash` decimal(8,2) DEFAULT NULL COMMENT '指定客现金',
  `assign_card_type` int(11) DEFAULT NULL COMMENT '指定客刷卡方式(1:按业绩比例,2:按固定金额)',
  `assign_card` decimal(8,2) DEFAULT NULL COMMENT '指定客刷卡',
  `non_assign_cash_type` int(11) DEFAULT NULL COMMENT '非指定客现金方式(1:按业绩比例,2:按固定金额)',
  `non_assign_cash` decimal(8,2) DEFAULT NULL COMMENT '非指定客现金',
  `non_assign_card_type` int(11) DEFAULT NULL COMMENT '非指定客刷卡方式(1:按业绩比例,2:按固定金额)',
  `non_assign_card` decimal(8,2) DEFAULT NULL COMMENT '非指定客刷卡',
  `appointment_reward_type` int(11) DEFAULT NULL COMMENT '预约奖励方式',
  `appointment_reward` decimal(8,2) DEFAULT NULL COMMENT '预约奖励',
  `is_deleted` int(11) DEFAULT NULL COMMENT '是否删除(0:未删除,1:已删除)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='套餐项目提成表';

DROP TABLE IF EXISTS  `revenue_categories`;
CREATE TABLE `revenue_categories` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `r_type` int(11) NOT NULL COMMENT '1:收入 2:支出',
  `r_name` varchar(36) NOT NULL COMMENT '类别名称',
  `create_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `personnel_id` int(11) DEFAULT NULL COMMENT '操作人标示',
  `store_id` int(11) DEFAULT NULL COMMENT '门店数据',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='开支记账类别管理表';

DROP TABLE IF EXISTS  `code_library`;
CREATE TABLE `code_library` (
  `type_no` int(11) NOT NULL COMMENT '类型编号',
  `type_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型名称',
  `code_no` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '代码编号',
  `code_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码名称',
  `sort_no` int(11) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`type_no`,`code_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `recharge_record`;
CREATE TABLE `recharge_record` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_account_id` int(11) DEFAULT NULL COMMENT '账户标识',
  `recharge_amount` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `open_id` varchar(255) DEFAULT NULL COMMENT '微信用户',
  `out_trade_no` varchar(32) DEFAULT NULL COMMENT '订单标示',
  `status` int(11) DEFAULT '0' COMMENT '未支付',
  `create_time` char(19) DEFAULT NULL COMMENT '充值时间',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=utf8mb4 COMMENT='微信支付流水表';

insert into `recharge_record`(`r_id`,`enterprise_account_id`,`recharge_amount`,`open_id`,`out_trade_no`,`status`,`create_time`) values
('340','24',300.00,null,'1468685421674766560','0','2016-07-17'),
('341','24',500.00,null,'1468685426229282480','0','2016-07-17'),
('342','24',1.00,null,'1468685461154578733','1','2016-07-17'),
('343','24',300.00,null,'1468733613159192831','0','2016-07-17'),
('344','24',300.00,null,'1468734703273265091','0','2016-07-17'),
('345','24',300.00,null,'1468735426460375689','0','2016-07-17'),
('346','24',300.00,null,'1468735433094787912','0','2016-07-17'),
('347','24',300.00,null,'1468735438209729954','0','2016-07-17'),
('348','24',300.00,null,'1468735486147499704','0','2016-07-17'),
('349','24',300.00,null,'1468735493677391788','0','2016-07-17'),
('350','24',300.00,null,'1468735498669572605','0','2016-07-17'),
('351','24',300.00,null,'1468735638917918389','0','2016-07-17'),
('352','24',300.00,null,'1468742410952826971','0','2016-07-17'),
('353','24',300.00,null,'1468742418263806634','0','2016-07-17'),
('354','24',300.00,null,'1468742431283150621','0','2016-07-17'),
('355','24',300.00,null,'1468807891578499730','0','2016-07-18'),
('356','24',300.00,null,'1468808679608078773','0','2016-07-18'),
('357','24',300.00,null,'1468809444532060563','0','2016-07-18'),
('358','24',300.00,null,'1468809616466417630','0','2016-07-18'),
('359','24',300.00,null,'1468826597803613038','0','2016-07-18'),
('360','24',300.00,null,'1468892710239356221','0','2016-07-19'),
('361','24',300.00,null,'1468917083080420241','0','2016-07-19'),
('362','24',300.00,null,'1468917102386360220','0','2016-07-19'),
('363','24',300.00,null,'1468917654010495753','0','2016-07-19'),
('364','24',300.00,null,'1468917987768509392','0','2016-07-19'),
('365','24',300.00,null,'1469081635269326995','0','2016-07-21'),
('366','24',300.00,null,'1469082646733452222','0','2016-07-21'),
('367','24',300.00,null,'1469157815788598812','0','2016-07-22'),
('368','24',300.00,null,'1469158102794572422','0','2016-07-22'),
('369','24',300.00,null,'1469185838638653992','0','2016-07-22'),
('370','24',300.00,null,'1469240422507954640','0','2016-07-23'),
('371','24',300.00,null,'1469240565042389369','0','2016-07-23'),
('372','24',300.00,null,'1469242863014247142','0','2016-07-23'),
('373','24',300.00,null,'1469243973461587467','0','2016-07-23'),
('374','24',300.00,null,'1469257795492078612','0','2016-07-23'),
('375','26',300.00,null,'1469261603941400156','0','2016-07-23'),
('376','26',300.00,null,'1469261867257550337','0','2016-07-23'),
('377','26',300.00,null,'1469264440493612304','0','2016-07-23'),
('378','24',300.00,null,'1469435279719421169','0','2016-07-25'),
('379','24',300.00,null,'1469435321526040869','0','2016-07-25'),
('380','24',300.00,null,'1469436644751377765','0','2016-07-25'),
('381','24',300.00,null,'1469436910231021772','0','2016-07-25'),
('382','24',300.00,null,'1469440205123439096','0','2016-07-25'),
('383','24',300.00,null,'1469459050869749404','0','2016-07-25'),
('384','24',300.00,null,'1469498924154289144','0','2016-07-26'),
('385','24',300.00,null,'1469499066083607881','0','2016-07-26'),
('386','24',300.00,null,'1469499788798753077','0','2016-07-26'),
('387','24',300.00,null,'1469501627604909056','0','2016-07-26'),
('388','24',300.00,null,'1469502232190635176','0','2016-07-26'),
('389','24',300.00,null,'1469502237411113390','0','2016-07-26'),
('390','24',300.00,null,'1469502933385622239','0','2016-07-26'),
('391','26',300.00,null,'1469519344904436405','0','2016-07-26'),
('392','26',300.00,null,'1469519462592104189','0','2016-07-26'),
('393','26',300.00,null,'1469519465206707957','0','2016-07-26'),
('394','26',300.00,null,'1469519479902627366','0','2016-07-26'),
('395','26',300.00,null,'1469519482987179550','0','2016-07-26'),
('396','26',300.00,null,'1469519490075692193','0','2016-07-26'),
('397','24',300.00,null,'1469533283446177641','0','2016-07-26'),
('398','24',300.00,null,'1469599322241696014','0','2016-07-27'),
('399','24',300.00,null,'1469603340787923933','0','2016-07-27'),
('400','24',300.00,null,'1469605996899658220','0','2016-07-27'),
('401','24',300.00,null,'1469609583787232905','0','2016-07-27'),
('402','24',300.00,null,'1469611314005988991','0','2016-07-27'),
('403','24',300.00,null,'1469613865425610959','0','2016-07-27'),
('404','24',300.00,null,'1469676387764203787','0','2016-07-28'),
('405','24',300.00,null,'1469682291000639450','0','2016-07-28'),
('406','28',300.00,null,'1469692466256213957','0','2016-07-28'),
('407','28',300.00,null,'1469695348347041708','0','2016-07-28'),
('408','28',300.00,null,'1469695463084116387','0','2016-07-28'),
('409','28',300.00,null,'1469706792292194850','0','2016-07-28'),
('410','28',300.00,null,'1469759450199957691','0','2016-07-29'),
('411','24',300.00,null,'1469760540333303414','0','2016-07-29'),
('412','24',300.00,null,'1469779107229689056','0','2016-07-29'),
('413','24',300.00,null,'1469779108637123700','0','2016-07-29'),
('414','24',300.00,null,'1469779650693672824','0','2016-07-29'),
('415','24',2.00,null,'1469779659135029987','1','2016-07-29'),
('416','28',300.00,null,'1469780306242421960','0','2016-07-29'),
('417','27',300.00,null,'1469843574908052196','0','2016-07-30'),
('418','27',300.00,null,'1469846684891120988','0','2016-07-30'),
('419','28',300.00,null,'1469846748282832520','0','2016-07-30'),
('420','27',300.00,null,'1469847359679098373','0','2016-07-30'),
('421','27',300.00,null,'1469847450386410835','0','2016-07-30'),
('422','27',300.00,null,'1469851251413399883','0','2016-07-30'),
('423','27',300.00,null,'1469851257258559727','0','2016-07-30'),
('424','27',300.00,null,'1469852104682865453','0','2016-07-30'),
('425','27',300.00,null,'1469852113448721184','0','2016-07-30'),
('426','27',300.00,null,'1469862051740564821','0','2016-07-30'),
('427','27',300.00,null,'1469862889237034769','0','2016-07-30'),
('428','27',300.00,null,'1469862952586792570','0','2016-07-30'),
('429','27',300.00,null,'1469863005634910035','0','2016-07-30'),
('430','27',300.00,null,'1469863105108235939','0','2016-07-30'),
('431','27',300.00,null,'1469863311152862689','0','2016-07-30'),
('432','27',300.00,null,'1469863326366392070','0','2016-07-30'),
('433','27',300.00,null,'1469863964574897815','0','2016-07-30'),
('434','27',300.00,null,'1469864025261130959','0','2016-07-30'),
('435','27',300.00,null,'1469864234189763585','0','2016-07-30'),
('436','27',300.00,null,'1469864459896373250','0','2016-07-30'),
('437','27',300.00,null,'1469864472330997762','0','2016-07-30'),
('438','27',300.00,null,'1469864780211141976','0','2016-07-30'),
('439','27',300.00,null,'1469864849352200346','0','2016-07-30'),
('440','24',300.00,null,'1470023921886930329','0','2016-08-01'),
('441','27',300.00,null,'1470026120285101773','0','2016-08-01'),
('442','27',500.00,null,'1470026125838493259','0','2016-08-01'),
('443','24',300.00,null,'1470029204695319041','0','2016-08-01'),
('444','24',300.00,null,'1470029294772944685','0','2016-08-01'),
('445','24',300.00,null,'1470030424967554757','0','2016-08-01'),
('446','24',300.00,null,'1470033653336837673','0','2016-08-01'),
('447','24',300.00,null,'1470048275206639891','0','2016-08-01'),
('448','24',300.00,null,'1470048590789946262','0','2016-08-01'),
('449','24',300.00,null,'1470048640838378888','0','2016-08-01'),
('450','27',300.00,null,'1470104348697562476','0','2016-08-02'),
('451','27',300.00,null,'1470104362435107209','0','2016-08-02'),
('452','27',300.00,null,'1470106361705014512','0','2016-08-02'),
('453','27',300.00,null,'1470106466909844918','0','2016-08-02'),
('454','27',300.00,null,'1470106583420588045','0','2016-08-02'),
('455','27',300.00,null,'1470106606961705008','0','2016-08-02'),
('456','27',300.00,null,'1470106857875216276','0','2016-08-02'),
('457','27',300.00,null,'1470118400229051671','0','2016-08-02'),
('458','27',300.00,null,'1470118751341929552','0','2016-08-02'),
('459','27',300.00,null,'1470118975553883010','0','2016-08-02'),
('460','27',300.00,null,'1470186914970249868','0','2016-08-03'),
('461','27',300.00,null,'1470187300821915761','0','2016-08-03'),
('462','27',300.00,null,'1470187723218109151','0','2016-08-03'),
('463','27',300.00,null,'1470189126841797956','0','2016-08-03'),
('464','27',300.00,null,'1470190222549873022','0','2016-08-03'),
('465','27',300.00,null,'1470190270504967468','0','2016-08-03'),
('466','27',300.00,null,'1470190953960541434','0','2016-08-03');
DROP TABLE IF EXISTS  `agent_recommend_record`;
CREATE TABLE `agent_recommend_record` (
  `agent_id` int(11) NOT NULL DEFAULT '0' COMMENT '代理标识',
  `recommended_id` int(11) NOT NULL DEFAULT '0' COMMENT '被推荐者id',
  `recommend_id` int(11) DEFAULT NULL COMMENT '推荐代理标识',
  `recommend_type` int(11) DEFAULT '1' COMMENT '1为门店, 2为渠道商',
  PRIMARY KEY (`agent_id`,`recommended_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道门店关联表';

DROP TABLE IF EXISTS  `store_info`;
CREATE TABLE `store_info` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '门店标识',
  `hq_store_id` int(11) DEFAULT NULL COMMENT '总店标识(如果是空表示为总店)(总店也不能为空，填写本身id--王大爷)作废',
  `store_type` int(11) DEFAULT '1' COMMENT '门店类型(2：总店，3：分店)',
  `store_name` varchar(25) DEFAULT NULL COMMENT '门店名称',
  `branch_name` varchar(25) DEFAULT NULL COMMENT '分店名称',
  `store_account` varchar(50) NOT NULL COMMENT '企业代号',
  `store_linkname` varchar(255) DEFAULT NULL COMMENT '门店联系人',
  `store_linkphone` varchar(255) DEFAULT NULL COMMENT '门店联系电话',
  `store_province` varchar(50) DEFAULT NULL COMMENT '门店所属省份',
  `store_address` varchar(255) DEFAULT NULL COMMENT '门店地址',
  `store_city` varchar(50) DEFAULT NULL COMMENT '门店所属城市',
  `store_tel` varchar(100) DEFAULT NULL COMMENT '门店电话',
  `total_sms` int(11) DEFAULT '0' COMMENT '累计短信数量',
  `balance_sms` int(11) DEFAULT '0' COMMENT '剩余短信数量',
  `store_logo` varchar(100) DEFAULT NULL COMMENT '店铺logo',
  `carousel_picture` varchar(1000) DEFAULT NULL COMMENT '店铺轮播图片',
  `store_desc` text COMMENT '门店介绍',
  `technical` text COMMENT '技术展示',
  `characteristic` text COMMENT '特色服务',
  `teacher_introduction` text COMMENT '名师介绍',
  `store_status` int(1) DEFAULT '1' COMMENT '门店状态(1:营业，2停业)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `latitude` varchar(36) DEFAULT NULL COMMENT '纬度',
  `longitude` varchar(36) DEFAULT NULL COMMENT '经度',
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1252 DEFAULT CHARSET=utf8mb4 COMMENT='门店信息表';

insert into `store_info`(`store_id`,`hq_store_id`,`store_type`,`store_name`,`branch_name`,`store_account`,`store_linkname`,`store_linkphone`,`store_province`,`store_address`,`store_city`,`store_tel`,`total_sms`,`balance_sms`,`store_logo`,`carousel_picture`,`store_desc`,`technical`,`characteristic`,`teacher_introduction`,`store_status`,`create_time`,`update_time`,`latitude`,`longitude`) values
('1180',null,'3','中邦一号店',null,'wisdom','吕明亮','13823218511','广东省','深圳市车公庙泰然科技园202栋302C','深圳市','13823218511','0','0','jobwisdom/project/1468825411683','jobwisdom/project/1468995293991,jobwisdom/project/1468995309714,jobwisdom/project/1468995400150,jobwisdom/project/1468995423597,jobwisdom/project/1468995368582,jobwisdom/project/1468995382835','<p>							</p><p><br/></p><p><span style="font-family: 楷体, 楷体_GB2312, SimKai;">&nbsp;“我道美容美发连锁”成立于2016年3月，引进国外先进烫染技术，坚持环保健康理念。同时也拥有一支一流的造型团队，旗下多位造型师在美发界享誉盛名，一站式造型服务，为您定制专属的美。</span></p><p><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468995800015"/><span style="text-align: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style="font-family: 楷体, 楷体_GB2312, SimKai;"><span style="text-align: center;">&nbsp;*&nbsp;</span><span style="text-align: center; font-size: 12px;">普通会员造型室</span></span></p><p><span style="text-align: center; font-size: 12px;"><br/></span></p><p><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468996248089"/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-family: 楷体, 楷体_GB2312, SimKai;">&nbsp;<span style="font-size: 12px;"><span style="font-size: 16px;">*</span> 专业造型室</span></span></p><p><span style="font-size: 12px;"><br/></span></p><p><span style="font-size: 12px;"><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468996490884"/></span></p><p><span style="font-size: 12px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 12px; font-family: 楷体, 楷体_GB2312, SimKai;"><span style="font-size: 16px;"> *</span> 养生会馆</span></span></p><p><span style="font-size: 16px; font-family: 楷体, 楷体_GB2312, SimKai;"><br/></span></p><p><span style="font-size: 16px; font-family: 楷体, 楷体_GB2312, SimKai;">名师介绍</span></p><p><span style="font-size: 12px; font-family: 楷体, 楷体_GB2312, SimKai;"><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469011515313"/></span></p><p style="text-align: center;"><span style="font-size: 12px;">Mack老师，国内知名造型师，多次担任大型造型比赛导师。</span></p><p><br/></p><p><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469011641093"/></p><p style="text-align: center;"><span style="font-size: 12px;">涛涛老师，国内首屈一指的美容专家，担任多个国际化妆品牌顾问</span></p><p>
							</p>',null,null,'2086,2089,2104,2105,2106,2107,2108','1','2016-07-16 20:17:21',null,null,null),
('1181',null,'3','中邦二号店',null,'wisdom','魏尚质','13713958999','广东省','深圳市车公庙泰然科技园202栋302C','深圳市','13713958999','0','0','jobwisdom/project/1470022286498','jobwisdom/project/1468826006662,jobwisdom/project/1468826031613,jobwisdom/project/1468826052524,jobwisdom/project/1468826083610,jobwisdom/project/1468826112365,jobwisdom/project/1468826146429','<p><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468996411137"/><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468996480898"/><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468996517550"/><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468996559030"/><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468996663910"/><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468996889627"/>							</p><p>中邦我道美业机构坐落于东海国际公寓底层商业中心,服务时尚名媛,为爱美人仕打造全新造型,为成功人仕服务高品质.</p><p>
							</p>',null,null,'2091,2092,2093,2094,2095,2100','1','2016-07-17 14:01:17',null,null,null),
('1182',null,'3','中邦三号店',null,'wisdom','中邦我道','23617921','广东省','深圳市车公庙泰然科技园202栋302C','深圳市','23617921','0','0','jobwisdom/project/1469081616139',null,null,null,null,null,'1','2016-07-17 14:02:01',null,null,null),
('1183',null,'3','Artist艺恩',null,'Artist','官先生','13510285573','广东省','地王信兴广场西座2203.','深圳市','0755-22308793','0','0','jobwisdom/project/1469271442185',null,'<p>Artist</p>',null,null,'2117,2118','1','2016-07-23 19:00:13',null,null,null),
('1209',null,'3','小敏一店',null,'xiaomin','小敏','65454545','北京市','话会ID胡搜爱','北京市','55555555','0','0','jobwisdom/project/1469610417949',null,null,null,null,null,'1','2016-07-27 17:07:25',null,null,null),
('1246',null,'3','中邦四号店',null,'wisdom','哈哈哈','135555555555','广东省','车公庙','深圳市','0755-23617921','0','0','jobwisdom/project/1469611199958',null,null,null,null,null,'1','2016-07-27 17:21:32',null,null,null),
('1247',null,'3','中邦五号店',null,'wisdom','陈坤朋','15112296745','广东省','福田区车公庙','深圳市','15112296745','0','0','jobwisdom/project/1469610253103',null,null,null,null,'2124,2126','1','2016-07-27 17:21:55',null,null,null),
('1248',null,'3','槐荫东岸店',null,'ymyk','汪梦萍','15171210483','湖北省','董永路槐荫东岸1期','孝感市','0712-2317468','0','0','jobwisdom/project/1469844717322',null,null,null,null,null,'1','2016-07-30 10:12:50',null,null,null),
('1249',null,'3','民生店',null,'ymyk','华秀珍','15335760777','湖北省','长征路民生嘉园46号','孝感市','0712-2329018','0','0','jobwisdom/project/1469846341333',null,null,null,null,null,'1','2016-07-30 10:41:08',null,null,null),
('1250',null,'3','乾坤店',null,'ymyk','黄舟舟','15272007216','湖北省','乾坤大道东苑小区商住楼','孝感市','0712-2464698','0','0','jobwisdom/project/1469846486290',null,null,null,null,null,'1','2016-07-30 10:42:38',null,null,null),
('1251',null,'3','孝昌店',null,'ymyk','周春芳','18120290008','湖北省','孝昌县花园镇桃源路（中百仓储旁）','孝感市','0712-4775688','0','0','jobwisdom/project/1469846572399',null,null,null,null,null,'1','2016-07-30 10:44:34',null,null,null);
DROP TABLE IF EXISTS  `account_goods`;
CREATE TABLE `account_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌',
  `goods_name` varchar(32) DEFAULT NULL COMMENT '商品名称',
  `goods_code_suffix` char(6) DEFAULT NULL COMMENT '编号',
  `is_sell_product` int(11) DEFAULT NULL COMMENT '是否卖品(0:否,1:是)',
  `cost_price` decimal(8,2) DEFAULT NULL COMMENT '成本价',
  `goods_desc` varchar(1024) DEFAULT NULL COMMENT '备注信息',
  `store_account` varchar(32) DEFAULT NULL COMMENT '企业代号',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否停止',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;

insert into `account_goods`(`goods_id`,`supplier_id`,`brand_id`,`goods_name`,`goods_code_suffix`,`is_sell_product`,`cost_price`,`goods_desc`,`store_account`,`is_deleted`) values
('42','146','1209','洗发水','11201','1',20.00,'20','laowang','0'),
('43','147','1219','欧莱雅精油护发素','0001','1',20.00,'欧莱雅系列','wisdom','0'),
('44','147','1211','欧莱雅透明洗发水','0002','1',20.00,'欧莱雅','wisdom','0'),
('45','147','1218','卡诗去屑精华乳','0003','1',80.00,'卡诗','wisdom','0'),
('46','147','1210','卡诗强化洗发水','0004','1',150.00,'卡诗','wisdom','0'),
('47','147','1221','美奇丝染炫彩发膏','0005','1',20.00,'欧莱雅','wisdom','0'),
('48','148','1214','COCO洗护套装','0006','1',20.00,'COCO','wisdom','0'),
('49','149','1216','陶丝去屑洗发乳','0007','1',80.00,'陶丝','wisdom','0'),
('50','149','1217','陶丝护理结构素','0008','1',80.00,'陶丝','wisdom','0'),
('51','149','1217','陶丝水晶修复喷雾','0009','1',80.00,'陶丝','wisdom','0'),
('52','149','1216','陶丝纯黑洗发露','0010','1',100.00,'陶丝','wisdom','0'),
('53','152','1224','玫丽盼','001','1',20.00,'染膏','Artist','0'),
('54','153','1232','AA','1','1',100.00,'打算打算学奥数','xiaomin','0'),
('55','154','1241','BB','2','1',20.00,'fdgfdgdfgfd','xiaomin','0'),
('56','147','1210','想打算','110','0',32.00,'水电费','wisdom','0'),
('57','156','1247','CC','3','1',1.00,'','xiaomin','0');
DROP TABLE IF EXISTS  `member_error_zy`;
CREATE TABLE `member_error_zy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(60) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `level_name` varchar(60) DEFAULT NULL,
  `level_num` varchar(120) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `order_detail`;
CREATE TABLE `order_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '明细标识',
  `detail_code` char(5) DEFAULT '' COMMENT '明细编号',
  `order_id` int(11) DEFAULT NULL COMMENT '订单标识',
  `order_type` int(11) DEFAULT NULL COMMENT '订单类型(1:项目,2:商品,3:套餐,4:开卡,5:充值,6:升级,7:赠送,8:还款)',
  `project_id` int(11) DEFAULT NULL COMMENT '项目标识',
  `is_appoint` int(11) NOT NULL DEFAULT '0' COMMENT '是否预约(0：否，1：是)',
  `appoint_off` int(11) NOT NULL DEFAULT '0' COMMENT '优惠金额',
  `is_assign` int(11) NOT NULL DEFAULT '0' COMMENT '是否指定(0：否，1：是)',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `project_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `project_price` decimal(8,2) DEFAULT '0.00' COMMENT '项目价格',
  `project_count` int(11) DEFAULT NULL COMMENT '项目数量',
  `project_image` varchar(255) DEFAULT NULL COMMENT '项目图片',
  `discount_amount` decimal(8,2) DEFAULT '0.00' COMMENT '折扣价格',
  `real_price` decimal(8,2) DEFAULT '0.00' COMMENT '项目实际金额',
  `off_type` int(11) DEFAULT '0' COMMENT '折扣类型(1:套餐，2:优惠券，3:礼金)',
  `gift_amount` decimal(8,2) DEFAULT '0.00' COMMENT '抵扣金额(套餐、优惠券、礼金)',
  `combo_id` int(11) DEFAULT NULL COMMENT '套餐标识',
  `coupon_id` int(11) DEFAULT NULL COMMENT '优惠券标识',
  `service_length` char(5) DEFAULT '0' COMMENT '服务时长',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `free_amount` varchar(100) DEFAULT '0' COMMENT '改单价格',
  `order_remark` varchar(250) DEFAULT NULL COMMENT '改单原因',
  `free_employee_id` int(11) DEFAULT NULL COMMENT '改单授权人',
  `order_status` int(11) DEFAULT NULL COMMENT '订单状态(1：等待中、2：服务中、3：已结束)',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `is_update` int(11) DEFAULT '0' COMMENT '是否修改(0:未修改,1:已修改)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`detail_id`),
  KEY `assign` (`order_id`,`detail_id`,`order_type`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=39399 DEFAULT CHARSET=utf8mb4 COMMENT='订单明细表';

insert into `order_detail`(`detail_id`,`detail_code`,`order_id`,`order_type`,`project_id`,`is_appoint`,`appoint_off`,`is_assign`,`dept_id`,`project_name`,`project_price`,`project_count`,`project_image`,`discount_amount`,`real_price`,`off_type`,`gift_amount`,`combo_id`,`coupon_id`,`service_length`,`store_id`,`free_amount`,`order_remark`,`free_employee_id`,`order_status`,`is_deleted`,`is_update`,`create_time`,`update_time`,`last_operator_id`) values
('39294','999','25151','1','3204','0','0','0','481','洗头',20.00,'1','jobwisdom/project/1468730688304',0.20,0.00,'0',0.00,null,null,'0','1180','0',null,null,'3','1','0','2016-07-17 13:37:24',null,'2085'),
('39295','999','25152','1','3204','1','0','0','481','洗头',20.00,'1','jobwisdom/project/1468730688304',0.20,0.00,'0',0.00,null,null,'0','1180','0',null,null,'3','1','0','2016-07-17 16:24:41',null,'2085'),
('39296','','25153','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-17 16:26:59',null,'2085'),
('39300','','25157','6',null,'0','0','0','0','升级',30.00,'1',null,30.00,30.00,'0',0.00,null,null,'0','1180','0',null,null,null,'0','0','2016-07-19 15:32:34',null,'2085'),
('39301','','25158','2','1913','0','0','0',null,'洗发水',0.20,null,'jobwisdom/goods/1468742672519',0.00,0.00,'0',0.00,null,null,'0',null,'0',null,null,'3','0','0','2016-07-19',null,null),
('39302','999','25159','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',180.00,180.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-21 14:21:03','2016-07-21 14:22:32','2085'),
('39303','','25160','1','3220','0','0','0',null,'洗吹造型',80.00,'1','jobwisdom/project/1468985565459',0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','0','0','2016-07-21 15:08:28',null,'2087'),
('39304','','25160','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','0','0','2016-07-21 15:09:09',null,'2100'),
('39305','','25161','1','3222','0','0','0',null,'欧莱雅染发',580.00,'1','jobwisdom/project/1468985868056',0.00,0.00,'0',0.00,null,null,'91','1181','0',null,null,'3','0','0','2016-07-21 15:13:36',null,'2087'),
('39306','','25161','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','1','0','2016-07-21 15:14:25',null,'2087'),
('39307','','25161','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','1','0','2016-07-21 15:14:54',null,'2087'),
('39308','','25162','1','3220','0','0','0',null,'洗吹造型',80.00,'1','jobwisdom/project/1468985565459',0.00,0.00,'0',0.00,null,null,'256','1181','0',null,null,'2','0','0','2016-07-21 15:27:54',null,'2087'),
('39309','','25162','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','0','0','2016-07-21 15:29:39',null,'2087'),
('39310','','25162','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','0','0','2016-07-21 15:29:42',null,'2087'),
('39311','','25162','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','0','0','2016-07-21 15:43:05',null,'2087'),
('39312','','25162','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','0','0','2016-07-21 15:43:09',null,'2087'),
('39313','','25161','2','1915','0','0','0','485','欧莱雅精油护发素',168.00,'1','jobwisdom/goods/1468989882366',168.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'3','0','0','2016-07-21 15:45:20',null,'2087'),
('39314','','25163','1','3220','0','0','0',null,'洗吹造型',80.00,'1','jobwisdom/project/1468985565459',0.00,0.00,'0',0.00,null,null,'2','1181','0',null,null,'2','0','0','2016-07-21 15:48:06',null,'2087'),
('39315','','25163','1','3227','0','0','0',null,'瑞士抗衰老',6800.00,'1','jobwisdom/project/1468986950844',0.00,0.00,'0',0.00,null,null,'65','1181','0',null,null,'2','0','0','2016-07-21 15:50:40',null,'2100'),
('39316','','25164','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-21 16:29:48',null,'2085'),
('39317','','25165','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-21 16:33:16',null,'2085'),
('39318','','25166','1','3213','0','0','0',null,'面部全面护理',180.00,'1','jobwisdom/project/1468837179992',0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-21 16:34:40',null,'2085'),
('39319','','25166','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-21 16:35:44',null,'2112'),
('39320','','25167','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-21 16:38:56',null,'2085'),
('39321','','25168','4',null,'0','0','0','0','开卡',1000.00,'1',null,1000.00,1000.00,'0',0.00,null,null,'0','1180','0',null,null,null,'0','0','2016-07-21 16:49:11',null,'2085'),
('39322','','25169','1','3214','0','0','0',null,'补水护理',100.00,'1','jobwisdom/project/1468837325786',85.00,85.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-21 17:00:33','2016-07-23 10:38:27','2085'),
('39323','','25170','1','3213','0','0','0',null,'面部全面护理',180.00,'1','jobwisdom/project/1468837179992',0.00,153.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-23 10:35:11','2016-07-23 10:38:08','2085'),
('39324','','25171','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-23 11:41:14',null,'2085'),
('39325','','25171','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-23 11:41:45',null,'2112'),
('39326','','25171','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-23 11:41:46',null,'2112'),
('39327','999','25172','1','3220','0','0','0','485','洗吹造型',80.00,'1','jobwisdom/project/1468985565459',80.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'3','0','0','2016-07-25 16:58:32',null,'2087'),
('39328','999','25173','1','3208','0','0','0','482','造型',38.00,'1','jobwisdom/project/1468830134991',38.00,38.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-25 17:53:06','2016-08-01 12:46:07','2085'),
('39329','','25174','1','3214','0','0','0',null,'补水护理',100.00,'1','jobwisdom/project/1468837325786',95.00,95.00,'0',0.00,null,null,'5544','1180','0',null,null,'3','0','0','2016-07-25 17:55:37','2016-07-25 18:00:45','2085'),
('39330','999','25173','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',180.00,180.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-25 17:55:19','2016-08-01 12:46:07','2085'),
('39331','999','25176','1','3217','0','0','0','481','手部护理',100.00,'1','jobwisdom/project/1468837716989',95.00,95.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-25 18:08:54','2016-07-25 18:10:55','2085'),
('39332','999','25173','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',180.00,180.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-25 23:16:27','2016-08-01 12:46:07','2085'),
('39333','','25178','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-25 23:17:28',null,'2085'),
('39334','','25178','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-25 23:19:49',null,'2085'),
('39335','','25178','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-25 23:29:10',null,'2112'),
('39336','999','25173','1','3206','1','35','0','482','中式洗头',38.00,'1','jobwisdom/project/1468829172932',38.00,38.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-26 11:02:36','2016-08-01 12:46:07','2085'),
('39337','','25180','1','3213','0','0','0',null,'面部全面护理',180.00,'1','jobwisdom/project/1468837179992',0.00,0.00,'0',0.00,null,null,'3612','1180','0',null,null,'2','1','0','2016-07-26 11:06:28',null,'2085'),
('39338','','25180','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-26 11:08:27',null,'2085'),
('39339','999','25181','1','3214','0','0','0','481','补水护理',100.00,'1','jobwisdom/project/1468837325786',95.00,95.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-27 10:39:36','2016-07-27 10:40:01','2085'),
('39340','','25180','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-28 13:13:35',null,'2085'),
('39341','999','25182','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',180.00,180.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-28 21:25:21','2016-08-01 12:45:09','2085'),
('39342','','25183','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-28 21:26:32',null,'2085'),
('39343','999','25184','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',180.00,180.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-29 10:33:25','2016-07-29 10:34:12','2085'),
('39344','','25185','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-29 10:35:22',null,'2085'),
('39345','','25186','4',null,'0','0','0','0','开卡',1000.00,'1',null,1000.00,1000.00,'0',0.00,null,null,'0','1247','0',null,null,null,'0','0','2016-07-29 15:08:43',null,'2123'),
('39346','','25187','4',null,'0','0','0','0','开卡',500.00,'1',null,500.00,500.00,'0',0.00,null,null,'0','1247','0',null,null,null,'0','0','2016-07-29 15:10:01',null,'2123'),
('39347','999','25188','1','3206','0','0','0','482','中式洗头',38.00,'1','jobwisdom/project/1468829172932',36.10,36.10,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-29 16:16:29','2016-08-01 14:24:46','2085'),
('39348','','25189','1','3210','0','0','0',null,'离子烫',500.00,'1','jobwisdom/project/1468830644587',0.00,0.00,'0',0.00,null,null,'425','1180','0',null,null,'2','1','0','2016-07-29 16:17:54',null,'2085'),
('39349','','25189','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-07-29 16:20:06',null,'2085'),
('39350','999','25190','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',180.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-30 09:58:55',null,'2085'),
('39351','999','25191','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',171.00,171.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-30 10:25:43','2016-07-30 10:26:38','2085'),
('39352','999','25192','1','3214','0','0','0','481','补水护理',100.00,'1','jobwisdom/project/1468837325786',95.00,95.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-30 10:42:45','2016-07-30 10:42:56','2085'),
('39353','','25193','1','3210','109','0','0',null,'离子烫',500.00,'1','jobwisdom/project/1468830644587',475.00,475.00,'0',0.00,null,null,'7','1180','0',null,null,'3','0','0','2016-07-30 12:11:08','2016-07-30 12:13:49','2085'),
('39354','999','25194','1','3206','0','0','0','482','中式洗头',38.00,'1','jobwisdom/project/1468829172932',38.00,38.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-07-30 12:18:12','2016-07-30 12:20:09','2085'),
('39355','','25189','1','3211','0','0','0',null,'冷烫',500.00,'1','jobwisdom/project/1468835127527',0.00,0.00,'0',0.00,null,null,'124','1180','0',null,null,'2','1','0','2016-08-01 12:39:18',null,'2139'),
('39356','','25189','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-01 12:39:21',null,'2139'),
('39357','','25189','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-01 12:53:54',null,'2139'),
('39358','999','25195','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',180.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-01 14:27:25',null,'2139'),
('39359','','25189','1','3213','0','0','0',null,'面部全面护理',180.00,'1','jobwisdom/project/1468837179992',0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-01 14:46:01',null,'2112'),
('39360','','25189','1','3217','0','0','0',null,'手部护理',100.00,'1','jobwisdom/project/1468837716989',0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-01 14:46:15',null,'2112'),
('39361','','25196','1','3214','0','0','0',null,'补水护理',100.00,'1','jobwisdom/project/1468837325786',0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-01 14:47:11',null,'2139'),
('39362','','25197','1','3206','0','0','0',null,'中式洗头',38.00,'1','jobwisdom/project/1468829172932',36.10,36.00,'0',0.00,null,null,'1','1180','-0.10','mo0','2086','3','0','0','2016-08-01 14:54:18','2016-08-01 14:59:55','2085'),
('39363','999','25198','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',171.00,171.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-01 15:00:32','2016-08-01 15:01:05','2085'),
('39364','','25199','1',null,'92','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-01 15:05:39',null,'2145'),
('39365','','25200','5',null,'0','0','0','0','充值',1000.00,'1',null,1000.00,1000.00,'0',0.00,null,null,'0','1247','0',null,null,null,'0','0','2016-08-01 15:06:49',null,'2123'),
('39366','','25201','1','3224','0','0','0',null,'欧莱雅冷烫造型',680.00,'1','jobwisdom/project/1468986470278',0.00,0.00,'0',0.00,null,null,'29','1181','0',null,null,'2','0','0','2016-08-01 15:06:54',null,'2087'),
('39367','','25201','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1181','0',null,null,'2','0','0','2016-08-01 15:07:09',null,'2087'),
('39368','','25202','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-01 15:07:42',null,'2145'),
('39369','','25203','1','3214','0','0','0',null,'补水护理',100.00,'1','jobwisdom/project/1468837325786',95.00,95.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-01 15:08:10','2016-08-01 16:36:48','2145'),
('39370','999','25204','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',180.00,180.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-01 15:07:40','2016-08-01 16:36:57','2145'),
('39371','','25205','1','3216','0','0','0',null,'炫彩美甲',100.00,'1','jobwisdom/project/1468837554510',0.00,0.00,'0',0.00,null,null,'38','1180','0',null,null,'2','1','0','2016-08-01 15:09:56',null,'2145'),
('39372','999','25206','1','3213','0','0','0','481','面部全面护理',180.00,'1','jobwisdom/project/1468837179992',171.00,171.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-01 15:08:55','2016-08-01 15:10:01','2085'),
('39373','','25207','3','14','0','0','0','481','美妆美甲',1500.00,'1','jobwisdom/project/1469079950869',1500.00,1500.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-01 15:10:03','2016-08-01 15:10:19','2085'),
('39376','999','25208','1','3215','1','10','0','481','美白护理',100.00,'1','jobwisdom/project/1468837392137',95.00,85.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-01 15:36:46','2016-08-01 15:37:42','2085'),
('39377','','25205','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-01 15:48:31',null,'2139'),
('39378','','25209','4',null,'0','0','0','0','开卡',0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,null,'0','0','2016-08-01 15:59:20',null,'2145'),
('39379','999','25210','1','3264','0','0','0','498','造型设计',98.00,'1','jobwisdom/project/1470017895455',98.00,98.00,'0',0.00,null,null,'0','1247','0',null,null,'3','0','0','2016-08-01 16:12:23','2016-08-01 18:14:34','2123'),
('39380','999','25210','1','3261','0','0','0','498','离子烫',380.00,'1','jobwisdom/project/1470017679955',380.00,380.00,'0',0.00,null,null,'0','1247','0',null,null,'3','0','0','2016-08-01 16:12:23','2016-08-01 18:14:34','2123'),
('39381','','25211','1','3262','0','0','0',null,'泰式洗头',58.00,'1','jobwisdom/project/1470017762169',0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','1','0','2016-08-01 16:39:05',null,'2123'),
('39382','','25212','1','3264','0','0','0',null,'造型设计',98.00,'1','jobwisdom/project/1470017895455',0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','1','0','2016-08-01 16:45:36',null,'2123'),
('39383','','25212','1','3262','0','0','0',null,'泰式洗头',58.00,'1','jobwisdom/project/1470017762169',0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','1','0','2016-08-01 16:46:14',null,'2123'),
('39384','','25213','1','3264','0','0','0',null,'造型设计',98.00,'1','jobwisdom/project/1470017895455',0.00,0.00,'0',0.00,null,null,'77','1247','0',null,null,'3','1','0','2016-08-01 16:50:02',null,'2123'),
('39385','','25213','1','3262','0','0','0',null,'泰式洗头',58.00,'1','jobwisdom/project/1470017762169',0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','1','0','2016-08-01 16:50:12',null,'2123'),
('39386','','25214','1','3264','0','0','0',null,'造型设计',98.00,'1','jobwisdom/project/1470017895455',0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','1','0','2016-08-01 16:54:59',null,'2123'),
('39387','999','25215','1','3264','0','0','0','498','造型设计',98.00,'1','jobwisdom/project/1470017895455',98.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','1','0','2016-08-01 16:56:44',null,'2123'),
('39388','','25216','1','3264','0','0','0',null,'造型设计',98.00,'1','jobwisdom/project/1470017895455',0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','1','0','2016-08-01 16:56:36',null,'2123'),
('39389','','25205','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-03 13:43:05',null,'2113'),
('39390','','25205','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-03 13:44:35',null,'2113'),
('39391','','25205','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'2','1','0','2016-08-03 13:44:51',null,'2113'),
('39392','999','25217','1','3206','0','0','0','482','中式洗头',38.00,'1','jobwisdom/project/1468829172932',38.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-03 13:44:36',null,'2145'),
('39393','','25218','1','3208','92','0','0',null,'造型',38.00,'1','jobwisdom/project/1468830134991',0.00,0.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-03 13:50:38',null,'2145'),
('39394','999','25219','1','3214','0','0','0','481','补水护理',100.00,'1','jobwisdom/project/1468837325786',95.00,95.00,'0',0.00,null,null,'0','1180','0',null,null,'3','0','0','2016-08-03 13:51:38','2016-08-03 14:02:11','2145'),
('39395','999','25220','1','3264','0','0','0','498','造型设计',98.00,'1','jobwisdom/project/1470017895455',98.00,98.00,'0',0.00,null,null,'0','1247','0',null,null,'3','0','0','2016-08-03 13:56:51','2016-08-03 13:56:37','2123'),
('39396','','25221','1','3264','0','0','0',null,'造型设计',98.00,'1','jobwisdom/project/1470017895455',0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','0','0','2016-08-03 13:57:26','2016-08-03 13:59:05','2123'),
('39397','','25221','1','3262','0','0','0',null,'泰式洗头',58.00,'1','jobwisdom/project/1470017762169',0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'3','0','0','2016-08-03 13:57:41','2016-08-03 13:59:05','2123'),
('39398','','25221','1',null,'0','0','0',null,null,0.00,'1',null,0.00,0.00,'0',0.00,null,null,'0','1247','0',null,null,'2','1','0','2016-08-03 13:57:41',null,'2123');
DROP TABLE IF EXISTS  `employee_commission`;
CREATE TABLE `employee_commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '提成标识',
  `detail_id` int(11) DEFAULT NULL COMMENT '订单明细标识',
  `shift_mahjong_step_id` int(11) DEFAULT NULL COMMENT '轮牌信息标识',
  `position_id` int(11) DEFAULT NULL COMMENT '岗位标识',
  `order_type` decimal(8,2) DEFAULT NULL COMMENT '订单类型(1:项目,2:商品,3:套餐,4、开卡充值)',
  `employee_id` int(11) DEFAULT NULL COMMENT '提成员工标识',
  `commission_calculate` decimal(8,2) DEFAULT NULL COMMENT '业绩计算',
  `commission_amount` decimal(8,2) DEFAULT NULL COMMENT '提成金额',
  `charge_time` char(19) DEFAULT NULL COMMENT '发生时间',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除(0:否，1:是)',
  PRIMARY KEY (`commission_id`),
  UNIQUE KEY `consumer_unique` (`detail_id`,`position_id`,`is_deleted`),
  KEY `commission_key` (`employee_id`,`detail_id`,`charge_time`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COMMENT='员工服务提成表';

insert into `employee_commission`(`commission_id`,`detail_id`,`shift_mahjong_step_id`,`position_id`,`order_type`,`employee_id`,`commission_calculate`,`commission_amount`,`charge_time`,`is_deleted`) values
('126','39302','448','887',1.00,'2086',360.00,0.00,'2016-07-21 14:22:32','0'),
('127','39302','449','888',1.00,'2105',0.00,54.00,'2016-07-21 14:22:32','0'),
('128','39302','450','889',1.00,'2108',0.00,0.00,'2016-07-21 14:22:32','0'),
('129','39321',null,null,4.00,'2112',1000.00,100.00,'2016-07-21 16:49:11','0'),
('136','39322','504','887',1.00,'2086',0.00,0.00,'2016-07-23 10:38:27','0'),
('137','39322','505','888',1.00,'2107',3.40,0.00,'2016-07-23 10:38:27','0'),
('138','39322','506','889',1.00,'2114',0.00,0.00,'2016-07-23 10:38:27','0'),
('139','39329','522','887',1.00,'2086',0.00,0.00,'2016-07-25 18:00:45','0'),
('140','39329','523','888',1.00,'2106',3.80,0.00,'2016-07-25 18:00:45','0'),
('141','39331','528','887',1.00,'2086',60.00,40.00,'2016-07-25 18:10:55','0'),
('142','39331','529','888',1.00,'2106',0.70,0.00,'2016-07-25 18:10:55','0'),
('143','39339','552','887',1.00,'2104',0.00,0.00,'2016-07-27 10:40:01','0'),
('144','39339','553','888',1.00,'2106',3.80,0.00,'2016-07-27 10:40:01','0'),
('145','39339','554','889',1.00,'2106',0.00,0.00,'2016-07-27 10:40:01','0'),
('146','39343','564','887',1.00,'2112',360.00,0.00,'2016-07-29 10:34:12','0'),
('147','39345',null,null,4.00,'2125',10.00,200.00,'2016-07-29 15:08:43','0'),
('148','39345',null,null,4.00,'2126',10.00,100.00,'2016-07-29 15:08:43','0'),
('149','39346',null,null,4.00,'2126',5.00,100.00,'2016-07-29 15:10:01','0'),
('150','39346',null,null,4.00,'2127',5.00,100.00,'2016-07-29 15:10:01','0'),
('151','39351','582','887',1.00,'2104',6.84,0.00,'2016-07-30 10:26:38','0'),
('152','39351','583','888',1.00,'2106',0.51,0.68,'2016-07-30 10:26:38','0'),
('153','39351','584','889',1.00,'2114',0.00,0.00,'2016-07-30 10:26:38','0'),
('154','39352','585','887',1.00,'2104',100.00,30.00,'2016-07-30 10:42:56','0'),
('155','39353','588','887',1.00,'2112',4.75,0.00,'2016-07-30 12:13:49','0'),
('156','39354','591','887',1.00,'2086',0.00,0.00,'2016-07-30 12:20:09','0'),
('157','39354','593','889',1.00,'2113',1.90,0.00,'2016-07-30 12:20:09','0'),
('158','39341','558','887',1.00,'2086',360.00,0.00,'2016-08-01 12:45:09','0'),
('159','39328','519','887',1.00,'2086',1.90,0.00,'2016-08-01 12:46:07','0'),
('160','39330','525','887',1.00,'2086',360.00,0.00,'2016-08-01 12:46:07','0'),
('161','39332','531','887',1.00,'2086',360.00,0.00,'2016-08-01 12:46:07','0'),
('162','39336','543','887',1.00,'2112',0.00,0.00,'2016-08-01 12:46:07','0'),
('163','39347','570','887',1.00,'2112',0.00,0.00,'2016-08-01 14:24:46','0'),
('164','39347','571','888',1.00,'2106',0.04,0.00,'2016-08-01 14:24:46','0'),
('165','39347','572','889',1.00,'2086',0.04,0.00,'2016-08-01 14:24:46','0'),
('166','39362','617','889',1.00,'2114',0.04,0.00,'2016-08-01 14:59:55','0'),
('167','39363','618','887',1.00,'2104',6.84,0.00,'2016-08-01 15:01:06','0'),
('168','39365',null,null,5.00,'2124',100.00,100.00,'2016-08-01 15:06:49','0'),
('169','39372','642','887',1.00,'2104',6.84,0.00,'2016-08-01 15:10:01','0'),
('170','39373',null,null,3.00,'2086',15.00,100.00,'2016-08-01 15:10:19','0'),
('171','39373',null,null,3.00,'2107',9.00,60.00,'2016-08-01 15:10:19','0'),
('172','39373',null,null,3.00,'2106',6.00,40.00,'2016-08-01 15:10:19','0'),
('173','39376','648','887',1.00,'2086',3.40,0.00,'2016-08-01 15:37:42','0'),
('174','39378',null,null,4.00,'2104',0.00,0.00,'2016-08-01 15:59:20','0'),
('175','39369','635','889',1.00,'2108',0.00,0.00,'2016-08-01 16:36:48','0'),
('176','39370','636','887',1.00,'2104',360.00,0.00,'2016-08-01 16:36:57','0'),
('177','39370','637','888',1.00,'2106',27.00,36.00,'2016-08-01 16:36:57','0'),
('178','39379','654','1222',1.00,'2124',12.00,0.00,'2016-08-01 18:14:34','0'),
('179','39379','656','1224',1.00,'2127',0.00,0.00,'2016-08-01 18:14:34','0'),
('180','39380','657','1222',1.00,'2124',54.00,0.00,'2016-08-01 18:14:34','0'),
('181','39380','659','1224',1.00,'2127',0.00,0.00,'2016-08-01 18:14:34','0'),
('182','39396','705','1222',1.00,'2125',0.00,0.00,'2016-08-03 13:59:05','0'),
('183','39396','707','1224',1.00,'2127',0.00,0.00,'2016-08-03 13:59:05','0'),
('184','39397','710','1224',1.00,'2127',0.00,0.00,'2016-08-03 13:59:05','0'),
('186','39394','699','887',1.00,'2086',100.00,30.00,'2016-08-03 14:02:11','0');
DROP TABLE IF EXISTS  `member_account`;
CREATE TABLE `member_account` (
  `account_id` int(11) NOT NULL COMMENT '账户标识',
  `pay_password` char(32) DEFAULT '' COMMENT '支付密码',
  `password_salt` varchar(32) DEFAULT '' COMMENT '密码盐值',
  `problem` varchar(255) DEFAULT '' COMMENT '安全问题',
  `answer` varchar(255) DEFAULT '' COMMENT '安全答案',
  `total_amount` decimal(8,2) DEFAULT '0.00' COMMENT '储值总额',
  `total_present_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '赠送总额',
  `balance_amount` decimal(8,2) DEFAULT '0.00' COMMENT '储值余额',
  `total_integral` int(11) DEFAULT '0' COMMENT '积分总额',
  `balance_integral` int(11) DEFAULT '0' COMMENT '积分余额',
  `total_giftmoney_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '礼金总额',
  `balance_giftmoney_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '礼金余额',
  `pastdata_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '过期礼金',
  `use_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '使用金额',
  `consume_count` int(11) DEFAULT '0' COMMENT '累计消费次数',
  `total_consume_amount` decimal(8,2) DEFAULT '0.00' COMMENT '累计消费总额',
  `avg_consume_amount` decimal(8,2) DEFAULT '0.00' COMMENT '单次消费均价',
  `last_consume_time` char(19) DEFAULT '' COMMENT '最后消费时间',
  `avg_consume_days` int(11) DEFAULT '0' COMMENT '平均消费频率(天)',
  `debt_amount` decimal(8,2) DEFAULT '0.00' COMMENT '欠款金额',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `wechat_count` int(11) NOT NULL DEFAULT '4' COMMENT '微信每月推送次数',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员账户表';

insert into `member_account`(`account_id`,`pay_password`,`password_salt`,`problem`,`answer`,`total_amount`,`total_present_amount`,`balance_amount`,`total_integral`,`balance_integral`,`total_giftmoney_amount`,`balance_giftmoney_amount`,`pastdata_money`,`use_money`,`consume_count`,`total_consume_amount`,`avg_consume_amount`,`last_consume_time`,`avg_consume_days`,`debt_amount`,`create_time`,`update_time`,`last_operator_id`,`wechat_count`) values
('56038','B904277AD3EBAED5CD4960E027F74DCD','[B@56bb1e59','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-19 15:26:52','','0','4'),
('56039','','','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-20 14:46:00','','0','4'),
('56040','','','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-20 17:39:34','','0','4'),
('56041','','','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-21 14:29:46','','0','4'),
('56042','E71B9180E0F95BE544667A6A992A02D2','[B@3c904e5b','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-21 16:21:05','','0','4'),
('56043','1C01207D612C8E6C56EEF344614F0320','[B@45be2f1c','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-22 17:51:39','','0','4'),
('56044','','','','',0.00,0.00,0.00,'10','10',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-22 18:34:25','','0','4'),
('56045','32F96D889169FFFBC0809A12987FB67B','[B@7359e6a1','','',0.00,0.00,0.00,'10','10',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-23 11:49:27','','0','4'),
('56047','47B5765C2ED1D615C35097961F3DAEB9','[B@6ab1d384','','',1000.00,0.00,1000.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-29 15:08:43','','2123','4'),
('56048','9726690B4A6DC5247AB7794289B7782B','[B@3bd48705','','',500.00,0.00,500.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-29 15:10:01','','2123','4'),
('56049','2A41A099E2B5AAD1BC1B9E16454EC45C','[B@5a329ddd','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-29 16:42:00','','0','4'),
('56050','97F2E8014CC86103926A3983F2AE9F96','[B@2ad64c6f','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-07-30 11:59:44','','0','4'),
('56051','E78CB9F032A6F601B5B1CF13555B4498','[B@60078abf','','',1000.00,0.00,1000.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-08-01 11:27:50','','0','4'),
('56052','','','','',0.00,0.00,0.00,'20','20',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-08-01 15:21:00','','0','4'),
('56053','BD985632837AB54AE5A4C36C776A3CD6','[B@4358b358','','',0.00,0.00,0.00,'0','0',0.00,0.00,0.00,0.00,'0',0.00,0.00,'','0',0.00,'2016-08-01 15:59:20','','2145','4');
DROP TABLE IF EXISTS  `member_level`;
CREATE TABLE `member_level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '等级标识',
  `store_account` varchar(50) DEFAULT NULL COMMENT '企业代号',
  `level_name` varchar(50) DEFAULT NULL COMMENT '等级名称',
  `level_type` varchar(10) DEFAULT NULL COMMENT '等级类型',
  `level_logo` varchar(100) DEFAULT NULL COMMENT '背景logo',
  `level_template` int(2) DEFAULT NULL COMMENT '图片模板',
  `level_notice` varchar(4000) DEFAULT NULL COMMENT '等级说明',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `is_default` int(1) DEFAULT '0' COMMENT '是否默认等级(0:否,1:是)',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT '0' COMMENT '最后操作人标识',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=727 DEFAULT CHARSET=utf8mb4 COMMENT='会员等级表';

insert into `member_level`(`level_id`,`store_account`,`level_name`,`level_type`,`level_logo`,`level_template`,`level_notice`,`is_deleted`,`is_default`,`create_time`,`update_time`,`last_operator_id`) values
('711','wisdom','高级铂金卡','等级卡','d3c6a6','1','高级铂金卡仅用于门店开业第一批高级铂金会员','0','0','2016-07-18 10:54:48','2016-07-18 11:00:32','2084'),
('712','wisdom','高级钻石卡','等级卡','f8b65b','1','高级会员卡仅限于高级铂金卡的老客户在店庆活动中升级获得，其他等级卡顾客或新顾客均无权限获得。','0','0','2016-07-18 10:58:02','2016-07-18 11:00:46','2084'),
('713','wisdom','知心卡','折扣卡','f05b72','1','知心卡针对老顾客推荐新顾客办理','0','1','2016-07-18 10:58:55','2016-07-18 11:00:54','2084'),
('714','Artist','默认会员卡','等级卡','65c294','1',null,'0','1','','2016-07-23 16:01:21','0'),
('715','ymyk','默认会员卡','等级卡','65c294','1','','0','1','','2016-08-02 11:04:21','2137'),
('716','Artist','黑金卡','折扣卡','0c212b','1','该卡会员须充值8000，则可享受烫染、剪发7折优惠；门店所有商品享受9折优惠。','0','0','2016-07-26 15:59:40','2016-07-26 15:59:40','2115'),
('717','Artist','金卡','折扣卡','c1a173','1','该卡会员须开卡时充值5000，则可享烫染护、剪发7.5折，店内所有商品享受9折优惠。','0','0','2016-07-26 16:02:20','2016-07-26 16:02:20','2115'),
('718','Artist','银卡','折扣卡','d3c6a6','1','该卡会员须开卡时充值3000，则可享受烫染护、洗剪吹8.5折优惠；店内所有商品享受9折优惠。','0','0','2016-07-26 16:04:59','2016-07-26 16:04:59','2115'),
('719','xiaomin','默认会员卡','等级卡','65c294','1','','0','1','','2016-07-29 14:25:39','2121'),
('720','wisdom','默认会员卡','等级卡','65c294','1',null,'0','1','','','0'),
('721','xiaomin','钻石卡','折扣卡','d3c6a6','1','开卡权限：新会员入会充值8000元','0','0','2016-07-28 09:55:59','2016-07-28 09:55:59','2121'),
('722','xiaomin','至尊金卡','等级卡','f8b65b','1','开卡权限：新会员入会充值5000元','0','0','2016-07-28 10:29:32','2016-07-28 10:29:32','2121'),
('723','xiaomin','至尊银卡','等级卡','65c294','1','开卡权限：新会员入会充值3000元','0','0','2016-07-28 10:32:04','2016-07-28 10:32:04','2121'),
('724','ymyk','储值疗程卡','折扣卡','65c294','1','','0','0','2016-08-03 09:26:01','2016-08-03 09:27:43','2119'),
('725','ymyk','疗程卡','折扣卡','65c294','1','','1','0','2016-08-03 10:15:19','2016-08-03 10:15:58','2119'),
('726','ymyk','疗程卡','等级卡','65c294','1','','0','0','2016-08-03 10:17:03','2016-08-03 10:17:03','2119');
DROP TABLE IF EXISTS  `member_recommend`;
CREATE TABLE `member_recommend` (
  `member_id` int(11) NOT NULL COMMENT '会员标识',
  `recommend_id` int(11) NOT NULL COMMENT '被推荐会员标识',
  `recommend_time` char(19) DEFAULT '' COMMENT '推荐时间',
  PRIMARY KEY (`member_id`,`recommend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员推荐信息表';

insert into `member_recommend`(`member_id`,`recommend_id`,`recommend_time`) values
('56044','56046','2016-07-27 14:45:06'),
('56044','56052','2016-08-01 15:21:01');
DROP TABLE IF EXISTS  `employee_shift`;
CREATE TABLE `employee_shift` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `shif_ida` int(11) DEFAULT NULL COMMENT '周一班次',
  `shif_idb` int(11) DEFAULT NULL COMMENT '周二班次',
  `shif_idc` int(11) DEFAULT NULL COMMENT '周三班次',
  `shif_idd` int(11) DEFAULT NULL COMMENT '周四班次',
  `shif_ide` int(11) DEFAULT NULL COMMENT '周五班次',
  `shif_idf` int(11) DEFAULT NULL COMMENT '周六班次',
  `shif_idg` int(11) DEFAULT NULL COMMENT '周日班次',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1262 DEFAULT CHARSET=utf8mb4 COMMENT='员工班次关联表';

insert into `employee_shift`(`data_id`,`employee_id`,`shif_ida`,`shif_idb`,`shif_idc`,`shif_idd`,`shif_ide`,`shif_idf`,`shif_idg`,`create_time`,`update_time`,`last_operator_id`) values
('1234','2086','1818','1818','1818','1818','1818','1818','1818','2016-07-17 12:42:37',null,'2085'),
('1235','2091','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1236','2092','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1237','2093','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1238','2094','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1239','2095','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1240','2096','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1241','2097','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1242','2098','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1243','2099','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1244','2100','1822','0','1822','1822','1822','1822','1822','2016-07-18 15:12:37',null,'2087'),
('1245','2102','1829','1829','1829','1829','0','1829','1829','2016-07-20 11:06:08',null,'2087'),
('1246','2103','1829','1829','1829','1829','0','1829','1829','2016-07-20 11:06:08',null,'2087'),
('1248','2106','1817','1817','1817','1817','1817','0','1818','2016-07-20 12:02:42',null,'2085'),
('1249','2105','1815','1815','1815','1815','1815','1818','0',null,null,null),
('1250','2089','1834','1834','1834','1834','1834','1834','0','2016-07-20 12:04:31',null,'2085'),
('1251','2104','1834','1834','1834','1834','1834','1834','0','2016-07-20 12:04:46',null,'2085'),
('1252','2107','0','1838','1838','1838','1838','1838','1838','2016-07-20 12:05:46',null,'2085'),
('1253','2108','1842','0','1842','1842','1842','1842','1842','2016-07-20 12:06:00',null,'2085'),
('1254','2110','1834','1834','1834','1834','1834','1834','1834','2016-07-21 13:59:17',null,'2085'),
('1255','2112','1834','1834','1834','1834','1834','1834','1834','2016-07-21 17:42:37',null,'2085'),
('1256','2117','1850','1850','1850','1850','1850','1850','1850','2016-07-26 19:02:14',null,'2116'),
('1257','2118','1850','1850','1850','1850','1850','1850','1850','2016-07-26 19:03:07',null,'2116'),
('1258','2125','1851','1853','1852','1854','1851','1854','1854','2016-08-01 11:37:02',null,'2123'),
('1259','2129','1851','1853','1852','1854','1851','1854','1854','2016-08-01 11:37:02',null,'2123'),
('1260','2126','1858','1858','1858','1857','1855','1858','1858','2016-08-01 11:37:39',null,'2123'),
('1261','2124','1854','1853','0','1854','1852','1854','1854','2016-08-01 12:06:17',null,'2123');
DROP TABLE IF EXISTS  `coupon_info`;
CREATE TABLE `coupon_info` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠劵标识',
  `coupon_name` varchar(60) DEFAULT NULL COMMENT '优惠劵名称',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `coupon_price` int(11) DEFAULT NULL COMMENT '优惠劵价格',
  `coupon_vantages` int(11) DEFAULT NULL COMMENT '兑换所需积分',
  `coupon_type` int(11) DEFAULT NULL COMMENT '优惠劵使用条件(0:通用 1:单笔订单)',
  `coupon_start_time` char(19) DEFAULT NULL COMMENT '有效时间',
  `coupon_stop_time` char(19) DEFAULT NULL COMMENT '优惠劵结束时间',
  `release_time` char(19) DEFAULT NULL COMMENT '发布日期',
  `coupon_is_use` int(11) DEFAULT NULL COMMENT '优惠劵使用量',
  `store_account` char(11) NOT NULL COMMENT '企业信息',
  `is_delete` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除，1:已删除)',
  `is_type` int(11) DEFAULT NULL COMMENT '是否上架（0：上架，1下架）',
  `price_sigle` int(11) DEFAULT NULL COMMENT '单笔订单满足多少钱使用',
  `coupon_number` int(11) DEFAULT NULL COMMENT '优惠卷发行量',
  `coupon_man` int(11) DEFAULT NULL COMMENT '每人限领',
  `coupon_colour` char(60) DEFAULT NULL COMMENT '模板颜色',
  `start_type` char(50) DEFAULT NULL COMMENT '发布方式（1积分，2门店）',
  `store_type` char(200) DEFAULT NULL COMMENT '门店ID标识',
  `coupon_num` int(11) DEFAULT '0' COMMENT '优惠卷使用量',
  `coupon_names` char(50) DEFAULT NULL COMMENT '优惠卷使用条件',
  `has_send_num` int(11) DEFAULT '0' COMMENT '已经送达或兑换的数量',
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COMMENT='优惠劵信息表';

insert into `coupon_info`(`coupon_id`,`coupon_name`,`store_id`,`coupon_price`,`coupon_vantages`,`coupon_type`,`coupon_start_time`,`coupon_stop_time`,`release_time`,`coupon_is_use`,`store_account`,`is_delete`,`is_type`,`price_sigle`,`coupon_number`,`coupon_man`,`coupon_colour`,`start_type`,`store_type`,`coupon_num`,`coupon_names`,`has_send_num`) values
('57','洗发',null,'20','0','0','10','2016-08-06','2016-07-24','0','wisdom','0','1','0','100','2',null,'2','1180,1181,1182','0','通用','0'),
('58','烫染优惠券',null,'50','0','0','30','2016-10-07','2016-10-01','0','Artist','1','1','0','50','1','0','2','1183','0','通用','0'),
('59','店庆',null,'100','0','0','10','2016-08-19','2016-07-30','0','xiaomin','1','1','0','100','1',null,'2','1209','0','通用','0'),
('60','周年庆',null,'100','0','0','30','2016-08-06','2016-08-05','0','xiaomin','0','1','0','100','1','0','1','1209','0','通用','0'),
('61','店庆',null,'100','0','0','10','2016-08-01','2016-07-28','0','xiaomin','0','1','0','100','1','0','2','1209','0','通用','0'),
('62','瞧瞧',null,'11','1','0','11','2016-07-31','2016-07-29','0','xiaomin','1','1','0','11','1',null,'1','1209','0','通用','0');
DROP TABLE IF EXISTS  `agent_account`;
CREATE TABLE `agent_account` (
  `agent_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '代理标识',
  `total_amount` int(11) DEFAULT '0' COMMENT '账户累计金额',
  `balance_amount` int(11) DEFAULT '0' COMMENT '账户余额',
  `total_account` int(11) DEFAULT '0' COMMENT '累计账号数量',
  `balance_account` int(11) DEFAULT '0' COMMENT '剩余账号数量',
  `agent_status` int(11) DEFAULT '1' COMMENT '代理状态(1:申请中，2:正常，3:停用)',
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道账户表';

DROP TABLE IF EXISTS  `commission_scheme`;
CREATE TABLE `commission_scheme` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '方案标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `commission_type` int(11) DEFAULT '1' COMMENT '方案类型（1：商品，2：疗程）',
  `cash_two_commission` char(50) DEFAULT '50:50,50:50' COMMENT '现金二人业绩提成（以50:50,50:50）',
  `cash_three_commission` char(50) DEFAULT '50:50,30:30,20:20' COMMENT '现金三人业绩提成（以50:50,50:50）',
  `card_two_commission` char(50) DEFAULT '50:50,50:50' COMMENT '卡金二人业绩提成（以50:50,50:50）',
  `card_three_commission` char(50) DEFAULT '50:50,30:30,20:20' COMMENT '卡金三人业绩提成（以50:50,50:50）',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:否，1:是)',
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='提成分配方案管理';

insert into `commission_scheme`(`commission_id`,`store_id`,`commission_type`,`cash_two_commission`,`cash_three_commission`,`card_two_commission`,`card_three_commission`,`create_time`,`last_operator_id`,`is_deleted`) values
('19','1180','1','50:50,50:50','50:50,30:30,20:20','50:50,50:50','50:50,30:30,20:20','2016-07-16 20:17:21',null,'0'),
('20','1180','2','50:50,50:50','50:50,30:30,20:20','50:50,50:50','50:50,30:30,20:20','2016-07-16 20:17:21',null,'0'),
('21','1181','1','30:30,10:10','30:30,10:10,10:10','25:25,8:8','30:30,10:10,10:10','2016-07-17 14:01:17',null,'0'),
('22','1181','2','50:50,50:50','50:50,30:30,20:20','50:50,50:50','50:50,30:30,20:20','2016-07-17 14:01:17',null,'0'),
('23','1182','1','50:50,50:50','50:50,30:30,20:20','50:50,50:50','50:50,30:30,20:20','2016-07-17 14:02:01',null,'0'),
('24','1182','2','50:50,50:50','50:50,30:30,20:20','50:50,50:50','50:50,30:30,20:20','2016-07-17 14:02:01',null,'0'),
('25','1183','1','50:50,50:50','50:50,30:30,20:20','50:50,50:50','50:50,30:30,20:20','2016-07-23 19:00:13',null,'0'),
('26','1183','2','50:50,50:50','50:50,30:30,20:20','50:50,50:50','50:50,30:30,20:20','2016-07-23 19:00:13',null,'0');
DROP TABLE IF EXISTS  `shift_mahjong_employee`;
CREATE TABLE `shift_mahjong_employee` (
  `shift_mahjong_employee_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮牌员工标识',
  `shift_mahjong_id` int(11) DEFAULT NULL COMMENT '轮牌信息标识',
  `level_id` int(11) DEFAULT NULL COMMENT '级别标识',
  `employees_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `employee_code` int(11) DEFAULT NULL COMMENT '员工编码',
  `name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `head_image` varchar(255) DEFAULT NULL COMMENT '头像',
  `state` int(11) DEFAULT '1' COMMENT '员工状态（0：工作中、1：空闲中、2：暂时离开、3：离开、4、指定服务）',
  `is_appoint` int(11) DEFAULT '0' COMMENT '是否指定（0：否、1：是）',
  `appoint_number` int(11) DEFAULT '0' COMMENT '指定人数',
  `shift_mahjong_order` int(11) DEFAULT NULL COMMENT '轮牌顺序',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人标识',
  PRIMARY KEY (`shift_mahjong_employee_id`),
  KEY `level_id` (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COMMENT='轮牌员工表';

insert into `shift_mahjong_employee`(`shift_mahjong_employee_id`,`shift_mahjong_id`,`level_id`,`employees_id`,`employee_code`,`name`,`head_image`,`state`,`is_appoint`,`appoint_number`,`shift_mahjong_order`,`create_time`,`operator_id`) values
('181','29','1483','2091','1','吴彦祖','jobwisdom/project/1468820055267','2','0','0','1','2016-07-18',null),
('182','29','1483','2092','2','徐凯','jobwisdom/project/1468820670455','1','0','0','5','2016-07-18',null),
('183','29','1483','2093','3','文章','jobwisdom/project/1468821186430','1','0','0','2','2016-07-18',null),
('184','29','1484','2094','4','梁朝伟','jobwisdom/project/1468822180333','1','0','0','3','2016-07-18',null),
('185','29','1484','2095','5','金城武','jobwisdom/project/1468822712286','1','0','0','4','2016-07-18',null),
('186','31','1488','2096','101','杨颖','jobwisdom/project/1468823743033','1','0','0','1','2016-07-18',null),
('187','31','1488','2097','102','李雨春','jobwisdom/project/1468823957541','0','0','0','3','2016-07-18',null),
('188','31','1488','2098','103','孙俪','jobwisdom/project/1468824144767','1','0','0','2','2016-07-18',null),
('202','26','1479','2104','3','Jake','jobwisdom/project/1468986602387','1','0','0','1','2016-07-20',null),
('212','29','1483','2100','8','老魏','jobwisdom/project/1468825470175','1','0','0','6','2016-07-21',null),
('220','28','1482','2114','10','阿妹','jobwisdom/project/1469090421348','1','0','0','6','2016-07-21',null),
('222','26','1478','2112','8','ray','jobwisdom/project/1469090769499','1','0','0','2','2016-07-21',null),
('223','28','1482','2113','9','linda','jobwisdom/project/1469090105029','1','0','0','2','2016-07-21',null),
('227','29','1499','2103','202','李冰冰','jobwisdom/project/1468982638015','3','0','0','999','2016-07-23',null),
('229','30','1483','2091','1','吴彦祖','jobwisdom/project/1468820055267','3','0','0','999','2016-07-23',null),
('230','30','1483','2092','2','徐凯','jobwisdom/project/1468820670455','3','0','0','999','2016-07-23',null),
('231','30','1483','2093','3','文章','jobwisdom/project/1468821186430','3','0','0','999','2016-07-23',null),
('232','30','1483','2100','8','老魏','jobwisdom/project/1468825470175','3','0','0','999','2016-07-23',null),
('233','30','1484','2094','4','梁朝伟','jobwisdom/project/1468822180333','3','0','0','999','2016-07-23',null),
('234','30','1484','2095','5','金城武','jobwisdom/project/1468822712286','3','0','0','999','2016-07-23',null),
('235','30','1499','2103','202','李冰冰','jobwisdom/project/1468982638015','1','0','0','1','2016-07-23',null),
('238','29','1499','2102','201','巩丽','jobwisdom/project/1468982334852','3','0','0','999','2016-07-23',null),
('239','30','1499','2102','201','巩丽','jobwisdom/project/1468982334852','1','0','0','2','2016-07-23',null),
('258','36','1488','2096','101','杨颖','jobwisdom/project/1468823743033','1','0','0','1','2016-07-23',null),
('259','36','1488','2097','102','李雨春','jobwisdom/project/1468823957541','1','0','0','2','2016-07-23',null),
('260','36','1488','2098','103','孙俪','jobwisdom/project/1468824144767','1','0','0','3','2016-07-23',null),
('261','37','1488','2096','101','杨颖','jobwisdom/project/1468823743033','1','0','0','1','2016-07-23',null),
('262','37','1488','2097','102','李雨春','jobwisdom/project/1468823957541','1','0','0','2','2016-07-23',null),
('263','37','1488','2098','103','孙俪','jobwisdom/project/1468824144767','1','0','0','3','2016-07-23',null),
('264','28','1480','2105','4','阿文','jobwisdom/project/1468986715226','1','0','0','3','2016-07-23',null),
('265','28','1481','2106','5','涛涛','jobwisdom/project/1468986806085','1','0','0','1','2016-07-23',null),
('266','28','1487','2107','6','诗诗','jobwisdom/project/1468986880372','1','0','0','4','2016-07-23',null),
('267','28','1496','2108','7','玛丽','jobwisdom/project/1468986965089','0','0','0','5','2016-07-23',null),
('274','26','1478','2086','1','老王','jobwisdom/project/1469428487035','1','0','0','3','2016-07-25',null),
('287','43','1512','2132','2','吃的啥','system/profile/employee.png','3','0','0','999','2016-07-29',null),
('289','44','1516','2131','0','的稳定','system/profile/employee.png','3','0','0','999','2016-07-29',null),
('291','49','1516','2131','0','的稳定','system/profile/employee.png','3','0','0','999','2016-07-29',null),
('292','44','1516','2130','1','员工1','jobwisdom/project/1469762527132','3','0','0','999','2016-07-29',null),
('293','49','1516','2130','1','员工1','jobwisdom/project/1469762527132','3','0','0','999','2016-07-29',null),
('296','27','1478','2086','1','老王','jobwisdom/project/1469428487035','1','0','0','1','2016-08-01',null),
('297','27','1478','2112','8','ray','jobwisdom/project/1469090769499','1','0','0','2','2016-08-01',null),
('298','27','1479','2104','3','Jake','jobwisdom/project/1468986602387','1','0','0','3','2016-08-01',null),
('299','32','1478','2086','1','老王','jobwisdom/project/1469428487035','1','0','0','1','2016-08-01',null),
('300','32','1478','2112','8','ray','jobwisdom/project/1469090769499','1','0','0','2','2016-08-01',null),
('301','32','1479','2104','3','Jake','jobwisdom/project/1468986602387','1','0','0','3','2016-08-01',null),
('307','26','1480','2105','4','阿文','jobwisdom/project/1468986715226','3','0','0','999','2016-08-01',null),
('308','26','1481','2106','5','涛涛','jobwisdom/project/1468986806085','3','0','0','999','2016-08-01',null),
('309','26','1482','2113','9','linda','jobwisdom/project/1469090105029','3','0','0','999','2016-08-01',null),
('310','26','1482','2114','10','阿妹','jobwisdom/project/1469090421348','3','0','0','999','2016-08-01',null),
('311','26','1487','2107','6','诗诗','jobwisdom/project/1468986880372','3','0','0','999','2016-08-01',null),
('312','26','1496','2108','7','玛丽','jobwisdom/project/1468986965089','3','0','0','999','2016-08-01',null),
('313','74','1520','2124','1','leochen','system/profile/employee.png','1','0','0','2','2016-08-01',null),
('314','74','1520','2125','2','小李','system/profile/employee.png','0','0','0','4','2016-08-01',null),
('315','74','1521','2129','6','kensun','system/profile/employee.png','1','0','0','1','2016-08-01',null),
('316','74','1526','2126','3','诗诗','system/profile/employee.png','1','0','0','3','2016-08-01',null),
('317','75','1520','2124','1','leochen','system/profile/employee.png','3','0','0','999','2016-08-01',null),
('318','75','1520','2125','2','小李','system/profile/employee.png','3','0','0','999','2016-08-01',null),
('319','75','1521','2129','6','kensun','system/profile/employee.png','1','0','0','2','2016-08-01',null),
('320','75','1526','2126','3','诗诗','system/profile/employee.png','1','0','0','1','2016-08-01',null),
('321','76','1520','2124','1','leochen','system/profile/employee.png','3','0','0','999','2016-08-01',null),
('322','76','1520','2125','2','小李','system/profile/employee.png','3','0','0','999','2016-08-01',null),
('323','76','1521','2129','6','kensun','system/profile/employee.png','3','0','0','999','2016-08-01',null),
('324','76','1526','2126','3','诗诗','system/profile/employee.png','1','0','0','1','2016-08-01',null),
('325','77','1525','2127','4','mona','system/profile/employee.png','0','0','0','1','2016-08-01',null);
DROP TABLE IF EXISTS  `goods_category`;
CREATE TABLE `goods_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `category_name` varchar(10) DEFAULT NULL COMMENT '类别名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:否，1:是)',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COMMENT='商品类别表';

insert into `goods_category`(`category_id`,`store_id`,`dept_id`,`category_name`,`create_time`,`update_time`,`last_operator_id`,`is_deleted`) values
('385','1180','481','面部护理',null,null,null,'0'),
('386','1180','481','护发素',null,null,null,'1'),
('387','1180','481','精油',null,null,null,'1'),
('388','1180','483','甲油胶',null,null,null,'0'),
('389','1180','483','甲油',null,null,null,'0'),
('390','1180','483','手足护理',null,null,null,'0'),
('391','1180','482','洗发水',null,null,null,'0'),
('392','1180','482','护发素/膜',null,null,null,'0'),
('393','1180','482','护发精油',null,null,null,'0'),
('394','1180','481','手足部护理',null,null,null,'0'),
('395','1181','485','洗发水',null,null,null,'0'),
('396','1181','485','护发素/膜',null,null,null,'0'),
('397','1181','485','护发精油',null,null,null,'0'),
('398','1181','486','面部护理',null,null,null,'0'),
('399','1181','486','手足部护理',null,null,null,'0'),
('400','1182','490','甲油胶',null,null,null,'0'),
('401','1182','490','甲油',null,null,null,'0'),
('402','1182','490','手足护理',null,null,null,'0'),
('403','1181','487','甲油胶',null,null,null,'0'),
('404','1181','487','甲油',null,null,null,'0'),
('405','1181','487','手足护理',null,null,null,'0'),
('406','1182','488','洗发水',null,null,null,'0'),
('407','1182','488','护发素/膜',null,null,null,'0'),
('408','1182','488','护发精油',null,null,null,'0'),
('409','1182','489','面部护理',null,null,null,'0'),
('410','1182','489','手足部护理',null,null,null,'0'),
('411','1183','491','造型系列',null,null,null,'0'),
('412','1183','491','BK',null,null,null,'1'),
('413','1183','491','洗护产品',null,null,null,'0'),
('414','1209',null,'搭车出 答案',null,null,null,'0'),
('415','1209',null,'。，，；',null,null,null,'0'),
('416','1209',null,'安顺达杀手',null,null,null,'0'),
('417','1209',null,'9009-=',null,null,null,'0'),
('418','1247','498','洗发水',null,null,null,'0'),
('419','1247','498','护发素',null,null,null,'0'),
('420','1247','498','',null,null,null,'1'),
('421','1247','499','面部护理',null,null,null,'0'),
('422','1247','499','手足护理',null,null,null,'0'),
('423','1247','500','指甲油',null,null,null,'0'),
('424','1248','504','洗护类',null,null,null,'0'),
('425','1248','504','护理类',null,null,null,'0'),
('426','1248','504','烫染类',null,null,null,'0'),
('427','1248','504','黑油类',null,null,null,'0');
DROP TABLE IF EXISTS  `combo_goods`;
CREATE TABLE `combo_goods` (
  `combo_id` int(11) NOT NULL COMMENT '套餐标识',
  `goods_id` int(11) NOT NULL COMMENT '商品标识',
  `goods_name` varchar(10) DEFAULT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) DEFAULT NULL COMMENT '商品价格',
  `goods_image` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `goods_counts` int(11) DEFAULT NULL COMMENT '商品数量',
  `combo_performance_cal` decimal(8,2) DEFAULT NULL COMMENT '套餐内业绩计算',
  `commission_type` int(11) DEFAULT NULL COMMENT '提成方式(1:按业绩比例,2:按固定金额)',
  `commission_amount` int(11) DEFAULT NULL COMMENT '提成金额',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`combo_id`,`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='套餐商品关联表';

insert into `combo_goods`(`combo_id`,`goods_id`,`goods_name`,`goods_price`,`goods_image`,`goods_counts`,`combo_performance_cal`,`commission_type`,`commission_amount`,`create_time`,`update_time`,`last_operator_id`,`is_deleted`) values
('13','1920','卡诗去屑精华乳',260.00,null,'5',20.00,null,null,null,null,null,'0'),
('13','1929','COCO洗护套装',200.00,null,'2',20.00,null,null,null,null,null,'0'),
('14','1926','美奇丝染炫彩发膏',150.00,null,'5',10.00,null,null,null,null,null,'0');
DROP TABLE IF EXISTS  `member_error_ld`;
CREATE TABLE `member_error_ld` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `level_num` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT '0.00',
  `balance_integral` decimal(8,2) DEFAULT '0.00',
  `debt_amount` decimal(8,2) DEFAULT '0.00',
  `last_consume_time` varchar(120) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `item_census`;
CREATE TABLE `item_census` (
  `census_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `media_id` varchar(480) DEFAULT NULL COMMENT '图文消息ID',
  `msg_id` varchar(480) DEFAULT NULL COMMENT '图文发送微信返回ID',
  `msg_status` varchar(480) DEFAULT NULL COMMENT '图文发送状态',
  `has_group` varchar(480) DEFAULT NULL COMMENT '已发送对象群组',
  `sent_count` varchar(480) DEFAULT NULL COMMENT '发送成功人数',
  `error_count` varchar(480) DEFAULT NULL COMMENT '发送失败人数',
  `has_read` varchar(480) DEFAULT NULL COMMENT '图文被阅读次数',
  `msg_time` varchar(30) DEFAULT NULL COMMENT '发送图文的时间',
  `store_id` int(11) DEFAULT NULL COMMENT '门店信息',
  PRIMARY KEY (`census_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='图文状态统计表';

DROP TABLE IF EXISTS  `store_flow`;
CREATE TABLE `store_flow` (
  `flow_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水标识',
  `store_id` int(11) DEFAULT NULL COMMENT '店铺标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `flow_num` int(11) DEFAULT '0' COMMENT '分期月数',
  `flow_type` int(11) DEFAULT NULL COMMENT '流水类型(1:支出,2:收入)',
  `flow_amount` decimal(8,2) DEFAULT NULL COMMENT '流水金额',
  `balance_amount` decimal(8,2) DEFAULT NULL COMMENT '当前余额',
  `business_type` varchar(10) DEFAULT NULL COMMENT '业务类别',
  `business_project` varchar(25) DEFAULT NULL COMMENT '业务项目',
  `business_desc` varchar(255) DEFAULT NULL COMMENT '业务内容',
  `flow_source` varchar(10) DEFAULT NULL COMMENT '资金来源',
  `flow_time` char(19) DEFAULT NULL COMMENT '流水时间',
  `principal_id` int(11) DEFAULT NULL COMMENT '负责人标识',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人标识',
  `is_deleted` int(11) DEFAULT NULL COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='店铺资金流水表';

DROP TABLE IF EXISTS  `objective_rule`;
CREATE TABLE `objective_rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `objective_project` int(11) DEFAULT NULL COMMENT '目标项目 1劳动业绩目标 2指定业绩目标 3 套餐销售目标 4 商品销售目标 5 开卡充值目标',
  `choice_type` int(11) DEFAULT NULL COMMENT '类型   1  按金额   2 按比例',
  `contrast_type` int(11) DEFAULT NULL COMMENT '对比大小 1大于 2等于 3小于',
  `section` decimal(8,2) DEFAULT NULL COMMENT '区间',
  `rewards` int(11) DEFAULT NULL COMMENT '奖惩类型',
  `type` int(11) DEFAULT NULL COMMENT '奖惩方式',
  `money` decimal(8,2) DEFAULT NULL COMMENT '金额',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后创建人',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='目标奖惩规则';

DROP TABLE IF EXISTS  `shift_info`;
CREATE TABLE `shift_info` (
  `shif_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '班次标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `shif_name` varchar(20) DEFAULT NULL COMMENT '班次名称 ',
  `start_time` char(5) DEFAULT NULL COMMENT '开始时间',
  `end_time` char(5) DEFAULT NULL COMMENT '结束时间',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`shif_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1863 DEFAULT CHARSET=utf8mb4 COMMENT='班次信息表';

insert into `shift_info`(`shif_id`,`store_id`,`dept_id`,`shif_name`,`start_time`,`end_time`,`create_time`,`update_time`,`last_operator_id`) values
('1815','1180','481','早班','08:00','12:00','2016-07-17 12:42:20',null,null),
('1816','1180','481','中班','13:00','18:00','2016-07-17 12:42:20',null,null),
('1817','1180','481','晚班','18:00','22:00','2016-07-17 12:42:20',null,null),
('1818','1180','481','全班','08:00','22:00','2016-07-17 12:42:20',null,null),
('1819','1181','485','早班','08:00','12:00','2016-07-18 15:10:58',null,null),
('1820','1181','485','中班','13:00','18:00','2016-07-18 15:10:58',null,null),
('1821','1181','485','晚班','18:00','22:00','2016-07-18 15:10:58',null,null),
('1822','1181','485','全班','08:00','22:00','2016-07-18 15:10:58',null,null),
('1823','1182','488','早班','08:00','12:00','2016-07-19 16:39:35',null,null),
('1824','1182','488','中班','13:00','18:00','2016-07-19 16:39:35',null,null),
('1825','1182','488','晚班','18:00','22:00','2016-07-19 16:39:35',null,null),
('1826','1182','488','全班','08:00','22:00','2016-07-19 16:39:35',null,null),
('1827','1181','486','早班','08:00','12:00','2016-07-20 10:51:33',null,null),
('1828','1181','486','中班','13:00','18:00','2016-07-20 10:51:33',null,null),
('1829','1181','486','晚班','18:00','22:00','2016-07-20 10:51:33',null,null),
('1830','1181','486','全班','08:00','22:00','2016-07-20 10:51:33',null,null),
('1831','1180','482','早班','08:00','12:00','2016-07-20 12:03:57',null,null),
('1832','1180','482','中班','13:00','18:00','2016-07-20 12:03:57',null,null),
('1833','1180','482','晚班','18:00','22:00','2016-07-20 12:03:57',null,null),
('1834','1180','482','全班','08:00','22:00','2016-07-20 12:03:57',null,null),
('1835','1180','483','早班','08:00','12:00','2016-07-20 12:04:08',null,null),
('1836','1180','483','中班','13:00','18:00','2016-07-20 12:04:08',null,null),
('1837','1180','483','晚班','18:00','22:00','2016-07-20 12:04:08',null,null),
('1838','1180','483','全班','08:00','22:00','2016-07-20 12:04:08',null,null),
('1839','1180','484','早班','08:00','12:00','2016-07-20 12:04:13',null,null),
('1840','1180','484','中班','13:00','18:00','2016-07-20 12:04:13',null,null),
('1841','1180','484','晚班','18:00','22:00','2016-07-20 12:04:13',null,null),
('1842','1180','484','全班','08:00','22:00','2016-07-20 12:04:13',null,null),
('1843','1181','487','早班','08:00','12:00','2016-07-21 11:45:31',null,null),
('1844','1181','487','中班','13:00','18:00','2016-07-21 11:45:31',null,null),
('1845','1181','487','晚班','18:00','22:00','2016-07-21 11:45:31',null,null),
('1846','1181','487','全班','08:00','22:00','2016-07-21 11:45:31',null,null),
('1847','1183','491','早班','08:00','12:00','2016-07-26 19:01:54',null,null),
('1848','1183','491','中班','13:00','18:00','2016-07-26 19:01:54',null,null),
('1849','1183','491','晚班','18:00','22:00','2016-07-26 19:01:54',null,null),
('1850','1183','491','全班','08:00','22:00','2016-07-26 19:01:54',null,null),
('1851','1247','498','早班','09:00','13:00','2016-08-01 11:34:51',null,null),
('1852','1247','498','中班','13:00','18:00','2016-08-01 11:34:51',null,null),
('1853','1247','498','晚班','18:00','22:00','2016-08-01 11:34:51',null,null),
('1854','1247','498','全班','09:00','22:00','2016-08-01 11:34:51',null,null),
('1855','1247','499','早班','08:00','12:00','2016-08-01 11:37:18',null,null),
('1856','1247','499','中班','13:00','18:00','2016-08-01 11:37:18',null,null),
('1857','1247','499','晚班','18:00','22:00','2016-08-01 11:37:18',null,null),
('1858','1247','499','全班','08:00','22:00','2016-08-01 11:37:18',null,null),
('1859','1247','500','早班','08:00','12:00','2016-08-01 11:37:49',null,null),
('1860','1247','500','中班','13:00','18:00','2016-08-01 11:37:49',null,null),
('1861','1247','500','晚班','18:00','22:00','2016-08-01 11:37:49',null,null),
('1862','1247','500','全班','08:00','22:00','2016-08-01 11:37:49',null,null);
DROP TABLE IF EXISTS  `enterprise_info`;
CREATE TABLE `enterprise_info` (
  `enterprise_info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '账户标识',
  `store_account` varchar(50) NOT NULL COMMENT '企业代号',
  `enterprise_linkname` varchar(255) DEFAULT NULL COMMENT '企业联系人',
  `enterprise_linkphone` varchar(255) DEFAULT NULL COMMENT '企业联系电话',
  `enterprise_name` varchar(25) DEFAULT NULL COMMENT '企业名称',
  `enterprise_province` varchar(50) DEFAULT NULL COMMENT '企业所属省份',
  `enterprise_address` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `enterprise_city` varchar(50) DEFAULT NULL COMMENT '企业所属城市',
  `enterprise_tel` varchar(100) DEFAULT NULL COMMENT '企业电话',
  `enterprise_status` int(1) DEFAULT '1' COMMENT '企业状态(1:正常，2:欠费，3：停用)',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`enterprise_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='企业信息表';

insert into `enterprise_info`(`enterprise_info_id`,`store_account`,`enterprise_linkname`,`enterprise_linkphone`,`enterprise_name`,`enterprise_province`,`enterprise_address`,`enterprise_city`,`enterprise_tel`,`enterprise_status`,`update_time`,`create_time`,`last_operator_id`) values
('24','wisdom','老王','15576078687','老王公司',null,null,null,null,'1',null,null,null),
('25','wei','魏总','222222222','魏总',null,null,null,null,'3',null,null,null),
('26','Artist','官崇庆','13510285573','艺恩',null,null,null,null,'1',null,null,null),
('27','ymyk','李明先','15171210483','亿美亿康',null,null,null,null,'1',null,null,null),
('28','xiaomin','小敏','13555555555','小敏公司',null,null,null,null,'1',null,null,null);
DROP TABLE IF EXISTS  `dept_objective`;
CREATE TABLE `dept_objective` (
  `objective_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门业绩分布标识',
  `order_id` int(11) DEFAULT NULL COMMENT '订单标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `dept_calculate` decimal(8,2) DEFAULT NULL COMMENT '部门业绩值',
  `calculate_type` int(1) DEFAULT NULL COMMENT '业绩类型（1:开卡，2：充值，3：升级）',
  `is_deleted` int(1) DEFAULT '0' COMMENT '0正常1删除',
  `create_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`objective_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门业绩分布表';

insert into `dept_objective`(`objective_id`,`order_id`,`dept_id`,`dept_calculate`,`calculate_type`,`is_deleted`,`create_time`,`update_time`) values
('58','25157','481',1.00,'3',null,'2016-07-19 15:32:34',null),
('59','25168','482',100.00,'1',null,'2016-07-21 16:49:11',null),
('60','25186','498',10.00,'1',null,'2016-07-29 15:08:43',null),
('61','25187','499',20.00,'1',null,'2016-07-29 15:10:01',null),
('62','25200','498',30.00,'2',null,'2016-08-01 15:06:49',null),
('63','25209','482',0.00,'1',null,'2016-08-01 15:59:20',null);
DROP TABLE IF EXISTS  `giftmoney_detail`;
CREATE TABLE `giftmoney_detail` (
  `detail` int(11) NOT NULL AUTO_INCREMENT COMMENT '礼金明细标识',
  `account_id` int(11) DEFAULT NULL COMMENT '礼金账户标识',
  `detail_id` int(11) DEFAULT NULL COMMENT '单号标识(资金变化的订单标识)',
  `total_amount` decimal(8,2) DEFAULT NULL COMMENT '礼金总金额',
  `now_money` decimal(8,2) DEFAULT NULL COMMENT '当期礼金金额',
  `residue_now_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '当期剩余礼金',
  `part_number` int(2) DEFAULT NULL COMMENT '剩余分期数量',
  `part_type` int(11) DEFAULT '1' COMMENT '分期类型',
  `start_date` char(19) DEFAULT NULL COMMENT '当期赠送时间',
  `end_date` char(19) DEFAULT NULL COMMENT '当期过期时间',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `is_present` int(1) NOT NULL DEFAULT '0' COMMENT '是否赠送(0:未赠送,1:已赠送, 2：已过期)',
  `is_deleted` int(11) DEFAULT NULL COMMENT '是否删除(0:未删除,1:已删除)',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`detail`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COMMENT='礼金明细表';

DROP TABLE IF EXISTS  `goods_info`;
CREATE TABLE `goods_info` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `category_id` int(11) DEFAULT NULL COMMENT '类别标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `goods_price` decimal(8,2) DEFAULT NULL COMMENT '商品价格',
  `calculation_type` int(11) DEFAULT '2' COMMENT '业绩计算方式(1:比例,2:固定)',
  `online_shopping_price` decimal(8,2) DEFAULT NULL COMMENT '员工销售业绩值',
  `goods_image` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `goods_desc` text COMMENT '商品描述',
  `warn_stock` int(11) DEFAULT '0' COMMENT '告警库存',
  `commission_type` int(11) DEFAULT NULL COMMENT '提成方式(1:按业绩比例,2:按固定金额)',
  `commission_amount` decimal(8,2) DEFAULT NULL COMMENT '提成金额',
  `card_amount` decimal(8,2) DEFAULT NULL COMMENT '刷卡提成金额',
  `commission_card_type` int(11) DEFAULT NULL COMMENT '刷卡提成方式(1:按业绩比例,2:按固定金额)作废',
  `integral_exchange` int(11) DEFAULT NULL COMMENT '积分兑换',
  `sales_count` int(11) DEFAULT '0' COMMENT '销售次数',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `is_cash_deduction` int(11) DEFAULT NULL COMMENT '是否礼金抵扣',
  `affiliated_image` varchar(480) DEFAULT NULL COMMENT '附属图片',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `highest_discount` decimal(8,2) DEFAULT '0.00' COMMENT '礼金最大抵扣金额',
  `project_step` int(11) DEFAULT '1' COMMENT '书写步骤',
  `a_id` int(11) DEFAULT NULL COMMENT '企业商品id',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2583 DEFAULT CHARSET=utf8mb4 COMMENT='商品信息表';

insert into `goods_info`(`goods_id`,`store_id`,`category_id`,`dept_id`,`goods_price`,`calculation_type`,`online_shopping_price`,`goods_image`,`goods_desc`,`warn_stock`,`commission_type`,`commission_amount`,`card_amount`,`commission_card_type`,`integral_exchange`,`sales_count`,`is_deleted`,`is_cash_deduction`,`affiliated_image`,`create_time`,`update_time`,`last_operator_id`,`highest_discount`,`project_step`,`a_id`) values
('1913','1180','392','482',20.00,'2',20.00,'jobwisdom/goods/1469158040408','','0','2',2.00,2.00,null,null,'1','2','1','jobwisdom/goods/1469158049492,jobwisdom/goods/1469158056611,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,20.00,'1','42'),
('1914','1180','385','481',100.00,'2',100.00,'jobwisdom/goods/1468994478287','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468994501146,jobwisdom/goods/1468994524362,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,100.00,'1','43'),
('1915','1181','395','485',168.00,'1',10.00,'jobwisdom/goods/1468989882366','','0','1',10.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,10.00,'1','43'),
('1916','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','43'),
('1917','1180','385','481',80.00,'2',80.00,'jobwisdom/goods/1468994855134','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468994872976,jobwisdom/goods/1468994887835,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,80.00,'1','44'),
('1918','1181','395','485',268.00,'1',15.00,'jobwisdom/goods/1468989777127','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','44'),
('1919','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','44'),
('1920','1180','391','482',260.00,'2',260.00,'jobwisdom/goods/1468994912777','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468994174486,jobwisdom/goods/1468994229934,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,260.00,'1','45'),
('1921','1181','395','485',368.00,'1',15.00,'jobwisdom/goods/1468989665387','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','45'),
('1922','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','45'),
('1923','1180','385','481',200.00,'2',200.00,'jobwisdom/goods/1468994065034','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468994076698,jobwisdom/goods/1468994086634,jobwisdom/goods/1468994100633,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,200.00,'1','46'),
('1924','1181','395','485',268.00,'1',15.00,'jobwisdom/goods/1468989604924','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','46'),
('1925','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','46'),
('1926','1180','385','481',150.00,'2',150.00,'jobwisdom/goods/1468993723618','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468993747255,jobwisdom/goods/1468993757955,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,150.00,'1','47'),
('1927','1181','396','485',580.00,'1',15.00,'jobwisdom/goods/1468989379417','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','47'),
('1928','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','47'),
('1929','1180','391','482',200.00,'2',200.00,'jobwisdom/goods/1468993481979','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468993499800,jobwisdom/goods/1468993520804,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,200.00,'1','48'),
('1930','1181','395','485',180.00,'1',15.00,'jobwisdom/goods/1468987942831','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','48'),
('1931','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','48'),
('1932','1180','391','482',240.00,'2',240.00,'jobwisdom/goods/1468982131692','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468982145556,jobwisdom/goods/1468982158406,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,240.00,'1','49'),
('1933','1181','395','485',268.00,'1',15.00,'jobwisdom/goods/1468987502121','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','49'),
('1934','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','49'),
('1935','1180','392','482',240.00,'2',240.00,'jobwisdom/goods/1468982048490','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468982057760,jobwisdom/goods/1468982071455,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,240.00,'1','50'),
('1936','1181','396','485',980.00,'1',15.00,'jobwisdom/goods/1468987388173','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','50'),
('1937','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','50'),
('1938','1180','393','482',240.00,'2',240.00,'jobwisdom/goods/1468981988759','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468981999456,jobwisdom/goods/1468982009424,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,240.00,'1','51'),
('1939','1181','396','485',260.00,'1',15.00,'jobwisdom/goods/1468987290167','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','51'),
('1940','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','51'),
('1941','1180','391','482',260.00,'2',260.00,'jobwisdom/goods/1468994668368','','0','2',10.00,15.00,null,null,'0','2','1','jobwisdom/goods/1468994681202,jobwisdom/goods/1468994696337,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,260.00,'1','52'),
('1942','1181','395','485',168.00,'1',15.00,'jobwisdom/goods/1468987164514','','0','1',15.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,15.00,'1','52'),
('1943','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','52'),
('1944','1183','411','491',100.00,'1',100.00,'jobwisdom/goods/1469530460668','','0','1',10.00,10.00,null,null,'0','2','1','jobwisdom/goods/1469530466481,jobwisdom/goods/1469530478619,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,100.00,'1','53'),
('2555','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','43'),
('2556','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','44'),
('2557','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','45'),
('2558','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','46'),
('2559','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','47'),
('2560','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','48'),
('2561','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','49'),
('2562','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','50'),
('2563','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','51'),
('2564','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','52'),
('2565','1247',null,'498',180.00,'2',10.00,null,null,'0','2',10.00,10.00,null,null,'0','2','1',null,null,null,null,10.00,'1','43'),
('2566','1247',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','44'),
('2567','1247',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','45'),
('2568','1247',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','46'),
('2569','1247',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','47'),
('2570','1247',null,'498',200.00,'2',10.00,'jobwisdom/goods/1470016883467','','0','2',10.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,10.00,'1','48'),
('2571','1247',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','49'),
('2572','1247',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','50'),
('2573','1247',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','51'),
('2574','1247',null,'498',150.00,'2',10.00,'jobwisdom/goods/1470016611395','','0','2',10.00,10.00,null,null,'0','2','1','system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,10.00,'1','52'),
('2575','1209',null,'494',null,'2',null,'jobwisdom/goods/1469762472819','','0',null,null,null,null,null,'0','2',null,'system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,0.00,'1','54'),
('2576','1209',null,'494',100.00,'2',null,'jobwisdom/goods/1469762442062','','0','2',null,null,null,null,'0','2','1','jobwisdom/goods/1469762448138,jobwisdom/goods/1469762454224,system/profile/add_img2.png,system/profile/add_img2.png,system/profile/add_img2.png',null,null,null,0.00,'1','55'),
('2577','1180',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','56'),
('2578','1181',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','56'),
('2579','1182',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','56'),
('2580','1246',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','56'),
('2581','1247',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','56'),
('2582','1209',null,null,null,'2',null,null,null,'0',null,null,null,null,null,'0','0',null,null,null,null,null,0.00,'1','57');
DROP TABLE IF EXISTS  `store_flow_category`;
CREATE TABLE `store_flow_category` (
  `category_id` int(11) NOT NULL COMMENT '类别标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `category_name` varchar(10) DEFAULT NULL COMMENT '类别名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='店铺收支类别表';

DROP TABLE IF EXISTS  `store_account`;
CREATE TABLE `store_account` (
  `store_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '门店标识',
  `total_days` int(11) DEFAULT '0' COMMENT '累计获得天数',
  `balance_days` int(11) DEFAULT '0' COMMENT '剩余使用天数',
  `total_sms` int(11) DEFAULT '0' COMMENT '累计短信数量',
  `balance_sms` int(11) DEFAULT '0' COMMENT '剩余短信数量',
  `store_status` int(11) DEFAULT '1' COMMENT '门店状态(1:申请中，2:试运营，3:正常营业，4:已过期，5:已删除)',
  `open_time` char(19) DEFAULT NULL COMMENT '开通时间',
  `charge_time` char(19) DEFAULT NULL COMMENT '续费时间',
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='门店账户表';

DROP TABLE IF EXISTS  `enterprise_account`;
CREATE TABLE `enterprise_account` (
  `enterprise_account_id` int(11) NOT NULL COMMENT '账户标识',
  `begin_time` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上线时间',
  `finish_time` char(19) DEFAULT NULL COMMENT '到期时间',
  `total_amount` decimal(8,2) DEFAULT '0.00' COMMENT '累计充值',
  `balance_amount` decimal(8,2) DEFAULT '0.00' COMMENT '当前余额',
  `total_msn_num` int(11) NOT NULL DEFAULT '0' COMMENT '累计充值短信',
  `balance_msn_num` int(11) NOT NULL DEFAULT '0' COMMENT '短信余额',
  `enterprise_edition` varchar(50) DEFAULT NULL COMMENT '当前使用版本',
  `total_store_num` int(11) DEFAULT '1' COMMENT '总创建门店数',
  `already_store_num` int(11) DEFAULT '0' COMMENT '已创建门店数',
  `balance_store_num` int(11) DEFAULT '0' COMMENT '剩余创建门店数',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`enterprise_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='企业账户表';

insert into `enterprise_account`(`enterprise_account_id`,`begin_time`,`finish_time`,`total_amount`,`balance_amount`,`total_msn_num`,`balance_msn_num`,`enterprise_edition`,`total_store_num`,`already_store_num`,`balance_store_num`,`update_time`,`create_time`,`last_operator_id`) values
('24','2016-07-16','2017-07-16',3.00,3.00,'0','0','5店版','5','5','0',null,null,null),
('25','2016-07-18','2017-07-18',0.00,0.00,'0','0','5店版','5','0','5',null,null,null),
('26','2016-07-23','2017-07-23',0.00,0.00,'0','0','单店版','1','1','0',null,null,null),
('27','2016-07-26','2017-07-26',0.00,0.00,'0','0','5店版','5','4','1',null,null,null),
('28','2016-07-27','2017-07-27',0.00,0.00,'0','0','10店版','10','1','11',null,null,null);
DROP TABLE IF EXISTS  `ubox_store_goods`;
CREATE TABLE `ubox_store_goods` (
  `store_goods_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `ubox_goods_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '友宝商品标识',
  `store_goods_price` int(11) DEFAULT '0' COMMENT '门店商品销售价格',
  `store_goods_integral` int(11) DEFAULT '0' COMMENT '门店商品销售所需积分',
  `store_goods_stock` int(11) DEFAULT '0' COMMENT '门店商品库存',
  `store_goods_sales` int(11) DEFAULT '0' COMMENT '门店商品销量',
  `rewards_coupon_id` int(11) DEFAULT '0' COMMENT '购买奖励优惠券标识',
  `rewards_gift_amount` int(11) DEFAULT '0' COMMENT '购买奖励礼金金额',
  PRIMARY KEY (`store_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='友宝门店商品关联表';

DROP TABLE IF EXISTS  `project_share`;
CREATE TABLE `project_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分享标识',
  `order_id` int(11) DEFAULT NULL COMMENT '订单标识',
  `member_id` int(11) DEFAULT NULL COMMENT '会员标识',
  `project_id` int(11) DEFAULT NULL COMMENT '项目标识',
  `content` varchar(100) DEFAULT '' COMMENT '分享内容',
  `img_url` varchar(100) DEFAULT '' COMMENT '分享照片',
  `time` char(19) DEFAULT '' COMMENT '分享时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

insert into `project_share`(`id`,`order_id`,`member_id`,`project_id`,`content`,`img_url`,`time`) values
('1','25181','56044','3214','无内容','userhead/share/1469587258941','2016-07-27 10:41:11'),
('2','25192','56044','3214','无内容','userhead/share/1469846645730','2016-07-30 10:44:07'),
('3','25198','56044','3213','无内容','userhead/share/1470035222993','2016-08-01 15:07:29'),
('4','25208','56045','3215','无内容','userhead/share/1470037124788','2016-08-01 15:38:52');
DROP TABLE IF EXISTS  `project_discount`;
CREATE TABLE `project_discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '折扣标识',
  `project_id` int(11) DEFAULT NULL COMMENT '项目标识',
  `level_id` int(11) DEFAULT NULL COMMENT '会员卡标识',
  `discount_proportion` decimal(8,2) DEFAULT NULL COMMENT '折扣比例',
  `discount_amount` decimal(8,2) DEFAULT NULL COMMENT '会员门店价',
  `member_cost_price` decimal(8,2) DEFAULT NULL COMMENT '会员成本价格',
  `online_appointment_price` decimal(8,2) DEFAULT NULL COMMENT '在线预约价格',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COMMENT='项目会员折扣表';

insert into `project_discount`(`discount_id`,`project_id`,`level_id`,`discount_proportion`,`discount_amount`,`member_cost_price`,`online_appointment_price`,`is_deleted`,`create_time`,`update_time`,`last_operator_id`) values
('39','3206','712',null,25.00,null,null,'1',null,null,null),
('40','3206','712',null,25.00,null,null,'0',null,null,null),
('41','3207','710',null,45.00,null,null,'1',null,null,null),
('42','3207','710',null,45.00,null,null,'0',null,null,null),
('43','3209','712',null,78.00,null,null,'1',null,null,null),
('44','3209','712',null,78.00,null,null,'1',null,null,null),
('45','3209','712',null,78.00,null,null,'1',null,null,null),
('46','3209','712',null,78.00,null,null,'1',null,null,null),
('47','3209','712',null,78.00,null,null,'0',null,null,null),
('48','3230','716',null,1750.00,null,null,'1',null,null,null),
('49','3230','716',null,1750.00,null,null,'1',null,null,null),
('50','3230','717',null,1875.00,null,null,'1',null,null,null),
('51','3230','718',null,2125.00,null,null,'1',null,null,null),
('52','3230','716',null,1750.00,null,null,'1',null,null,null),
('53','3230','717',null,1875.00,null,null,'1',null,null,null),
('54','3230','718',null,2125.00,null,null,'1',null,null,null),
('55','3230','716',null,1750.00,null,null,'1',null,null,null),
('56','3230','717',null,1875.00,null,null,'1',null,null,null),
('57','3230','718',null,2125.00,null,null,'1',null,null,null),
('58','3230','716',null,1750.00,null,null,'1',null,null,null),
('59','3230','717',null,1875.00,null,null,'1',null,null,null),
('60','3230','718',null,2125.00,null,null,'1',null,null,null),
('61','3230','716',null,1750.00,null,null,'1',null,null,null),
('62','3230','717',null,1875.00,null,null,'1',null,null,null),
('63','3230','718',null,2125.00,null,null,'1',null,null,null),
('64','3229','716',null,1400.00,null,null,'1',null,null,null),
('65','3229','717',null,1500.00,null,null,'1',null,null,null),
('66','3229','718',null,1700.00,null,null,'1',null,null,null),
('67','3229','716',null,1400.00,null,null,'1',null,null,null),
('68','3229','717',null,1500.00,null,null,'1',null,null,null),
('69','3229','718',null,1700.00,null,null,'1',null,null,null),
('70','3229','716',null,1400.00,null,null,'1',null,null,null),
('71','3229','717',null,1500.00,null,null,'1',null,null,null),
('72','3229','718',null,1700.00,null,null,'1',null,null,null),
('73','3229','716',null,1400.00,null,null,'1',null,null,null),
('74','3229','717',null,1500.00,null,null,'1',null,null,null),
('75','3229','718',null,1700.00,null,null,'1',null,null,null),
('76','3229','716',null,1400.00,null,null,'1',null,null,null),
('77','3229','717',null,1500.00,null,null,'1',null,null,null),
('78','3229','718',null,1700.00,null,null,'1',null,null,null),
('79','3229','716',null,1400.00,null,null,'1',null,null,null),
('80','3229','717',null,1500.00,null,null,'1',null,null,null),
('81','3229','718',null,1700.00,null,null,'1',null,null,null),
('82','3229','716',null,1400.00,null,null,'0',null,null,null),
('83','3229','717',null,1500.00,null,null,'0',null,null,null),
('84','3229','718',null,1700.00,null,null,'0',null,null,null),
('85','3232','716',null,1050.00,null,null,'0',null,null,null),
('86','3232','717',null,1125.00,null,null,'0',null,null,null),
('87','3232','718',null,1275.00,null,null,'0',null,null,null),
('88','3230','716',null,1750.00,null,null,'1',null,null,null),
('89','3230','717',null,1875.00,null,null,'1',null,null,null),
('90','3230','718',null,2125.00,null,null,'1',null,null,null),
('91','3230','716',null,1750.00,null,null,'0',null,null,null),
('92','3230','717',null,1875.00,null,null,'0',null,null,null),
('93','3230','718',null,2125.00,null,null,'0',null,null,null),
('94','3233','716',null,840.00,null,null,'1',null,null,null),
('95','3233','717',null,900.00,null,null,'1',null,null,null),
('96','3233','718',null,1020.00,null,null,'1',null,null,null),
('97','3233','716',null,840.00,null,null,'0',null,null,null),
('98','3233','717',null,900.00,null,null,'0',null,null,null),
('99','3233','718',null,1020.00,null,null,'0',null,null,null),
('100','3234','716',null,700.00,null,null,'1',null,null,null),
('101','3234','717',null,750.00,null,null,'1',null,null,null),
('102','3234','718',null,800.00,null,null,'1',null,null,null),
('103','3235','716',null,560.00,null,null,'1',null,null,null),
('104','3235','717',null,600.00,null,null,'1',null,null,null),
('105','3235','718',null,680.00,null,null,'1',null,null,null),
('106','3235','716',null,560.00,null,null,'1',null,null,null),
('107','3235','717',null,600.00,null,null,'1',null,null,null),
('108','3235','718',null,680.00,null,null,'1',null,null,null),
('109','3235','716',null,560.00,null,null,'0',null,null,null),
('110','3235','717',null,600.00,null,null,'0',null,null,null),
('111','3235','718',null,680.00,null,null,'0',null,null,null),
('112','3234','716',null,700.00,null,null,'0',null,null,null),
('113','3234','717',null,750.00,null,null,'0',null,null,null),
('114','3234','718',null,850.00,null,null,'0',null,null,null),
('115','3236','716',null,1190.00,null,null,'1',null,null,null),
('116','3236','717',null,1275.00,null,null,'1',null,null,null),
('117','3236','718',null,1445.00,null,null,'1',null,null,null),
('118','3236','716',null,1190.00,null,null,'1',null,null,null),
('119','3236','717',null,1275.00,null,null,'1',null,null,null),
('120','3236','718',null,1445.00,null,null,'1',null,null,null),
('121','3236','716',null,1190.00,null,null,'0',null,null,null),
('122','3236','717',null,1275.00,null,null,'0',null,null,null),
('123','3236','718',null,1445.00,null,null,'0',null,null,null),
('124','3237','716',null,945.00,null,null,'1',null,null,null),
('125','3237','717',null,1012.50,null,null,'1',null,null,null),
('126','3237','718',null,1147.50,null,null,'1',null,null,null),
('127','3237','716',null,945.00,null,null,'1',null,null,null),
('128','3237','717',null,1012.50,null,null,'1',null,null,null),
('129','3237','718',null,1147.50,null,null,'1',null,null,null),
('130','3237','716',null,945.00,null,null,'1',null,null,null),
('131','3237','717',null,1012.50,null,null,'1',null,null,null),
('132','3237','718',null,1147.50,null,null,'1',null,null,null),
('133','3238','716',null,700.00,null,null,'1',null,null,null),
('134','3238','717',null,750.00,null,null,'1',null,null,null),
('135','3238','718',null,850.00,null,null,'1',null,null,null),
('136','3238','716',null,700.00,null,null,'1',null,null,null),
('137','3238','717',null,750.00,null,null,'1',null,null,null),
('138','3238','718',null,850.00,null,null,'1',null,null,null),
('139','3238','716',null,700.00,null,null,'0',null,null,null),
('140','3238','717',null,750.00,null,null,'0',null,null,null),
('141','3238','718',null,850.00,null,null,'0',null,null,null),
('142','3237','716',null,945.00,null,null,'1',null,null,null),
('143','3237','717',null,1012.50,null,null,'1',null,null,null),
('144','3237','718',null,1147.50,null,null,'1',null,null,null),
('145','3237','716',null,945.00,null,null,'0',null,null,null),
('146','3237','717',null,1012.50,null,null,'0',null,null,null),
('147','3237','718',null,1147.50,null,null,'0',null,null,null),
('148','3239','716',null,1190.00,null,null,'1',null,null,null),
('149','3239','717',null,1275.00,null,null,'1',null,null,null),
('150','3239','718',null,1145.00,null,null,'1',null,null,null),
('151','3239','716',null,1190.00,null,null,'1',null,null,null),
('152','3239','717',null,1275.00,null,null,'1',null,null,null),
('153','3239','718',null,1145.00,null,null,'1',null,null,null),
('154','3239','716',null,1190.00,null,null,'1',null,null,null),
('155','3239','717',null,1275.00,null,null,'1',null,null,null),
('156','3239','718',null,1145.00,null,null,'1',null,null,null),
('157','3239','716',null,1190.00,null,null,'0',null,null,null),
('158','3239','717',null,1275.00,null,null,'0',null,null,null),
('159','3239','718',null,1145.00,null,null,'0',null,null,null),
('160','3240','716',null,945.00,null,null,'1',null,null,null),
('161','3240','717',null,1012.50,null,null,'1',null,null,null),
('162','3240','718',null,1147.50,null,null,'1',null,null,null),
('163','3240','716',null,945.00,null,null,'1',null,null,null),
('164','3240','717',null,1012.50,null,null,'1',null,null,null),
('165','3240','718',null,1147.50,null,null,'1',null,null,null),
('166','3240','716',null,945.00,null,null,'0',null,null,null),
('167','3240','717',null,1012.50,null,null,'0',null,null,null),
('168','3240','718',null,1147.50,null,null,'0',null,null,null),
('169','3241','716',null,700.00,null,null,'1',null,null,null),
('170','3241','717',null,750.00,null,null,'1',null,null,null),
('171','3241','718',null,850.00,null,null,'1',null,null,null),
('172','3241','716',null,700.00,null,null,'1',null,null,null),
('173','3241','717',null,750.00,null,null,'1',null,null,null),
('174','3241','718',null,850.00,null,null,'1',null,null,null),
('175','3241','716',null,700.00,null,null,'1',null,null,null),
('176','3241','717',null,750.00,null,null,'1',null,null,null),
('177','3241','718',null,850.00,null,null,'1',null,null,null),
('178','3241','716',null,700.00,null,null,'1',null,null,null),
('179','3241','717',null,750.00,null,null,'1',null,null,null),
('180','3241','718',null,850.00,null,null,'1',null,null,null),
('181','3241','716',null,700.00,null,null,'1',null,null,null),
('182','3241','717',null,750.00,null,null,'1',null,null,null),
('183','3241','718',null,850.00,null,null,'1',null,null,null),
('184','3241','716',null,700.00,null,null,'0',null,null,null),
('185','3241','717',null,750.00,null,null,'0',null,null,null),
('186','3241','718',null,850.00,null,null,'0',null,null,null),
('187','3242','716',null,630.00,null,null,'1',null,null,null),
('188','3242','717',null,675.00,null,null,'1',null,null,null),
('189','3242','718',null,765.00,null,null,'1',null,null,null),
('190','3242','716',null,630.00,null,null,'1',null,null,null),
('191','3242','717',null,675.00,null,null,'1',null,null,null),
('192','3242','718',null,765.00,null,null,'1',null,null,null),
('193','3242','716',null,630.00,null,null,'1',null,null,null),
('194','3242','717',null,675.00,null,null,'1',null,null,null),
('195','3242','718',null,765.00,null,null,'1',null,null,null),
('196','3242','716',null,630.00,null,null,'0',null,null,null),
('197','3242','717',null,675.00,null,null,'0',null,null,null),
('198','3242','718',null,765.00,null,null,'0',null,null,null),
('199','3243','716',null,560.00,null,null,'1',null,null,null),
('200','3243','717',null,600.00,null,null,'1',null,null,null),
('201','3243','718',null,680.00,null,null,'1',null,null,null),
('202','3243','716',null,560.00,null,null,'1',null,null,null),
('203','3243','717',null,600.00,null,null,'1',null,null,null),
('204','3243','718',null,680.00,null,null,'1',null,null,null),
('205','3243','716',null,560.00,null,null,'1',null,null,null),
('206','3243','717',null,600.00,null,null,'1',null,null,null),
('207','3243','718',null,680.00,null,null,'1',null,null,null),
('208','3243','716',null,560.00,null,null,'0',null,null,null),
('209','3243','717',null,600.00,null,null,'0',null,null,null),
('210','3243','718',null,680.00,null,null,'0',null,null,null),
('211','3244','716',null,490.00,null,null,'1',null,null,null),
('212','3244','717',null,525.00,null,null,'1',null,null,null),
('213','3244','718',null,595.00,null,null,'1',null,null,null),
('214','3244','716',null,490.00,null,null,'1',null,null,null),
('215','3244','717',null,525.00,null,null,'1',null,null,null),
('216','3244','718',null,595.00,null,null,'1',null,null,null),
('217','3244','716',null,490.00,null,null,'1',null,null,null),
('218','3244','717',null,525.00,null,null,'1',null,null,null),
('219','3244','718',null,595.00,null,null,'1',null,null,null),
('220','3244','716',null,490.00,null,null,'0',null,null,null),
('221','3244','717',null,525.00,null,null,'0',null,null,null),
('222','3244','718',null,595.00,null,null,'0',null,null,null),
('223','3245','716',null,630.00,null,null,'1',null,null,null),
('224','3245','717',null,675.00,null,null,'1',null,null,null),
('225','3245','718',null,765.00,null,null,'1',null,null,null),
('226','3245','716',null,630.00,null,null,'1',null,null,null),
('227','3245','717',null,675.00,null,null,'1',null,null,null),
('228','3245','718',null,765.00,null,null,'1',null,null,null),
('229','3245','716',null,630.00,null,null,'1',null,null,null),
('230','3245','717',null,675.00,null,null,'1',null,null,null),
('231','3245','718',null,765.00,null,null,'1',null,null,null),
('232','3245','716',null,630.00,null,null,'0',null,null,null),
('233','3245','717',null,675.00,null,null,'0',null,null,null),
('234','3245','718',null,765.00,null,null,'0',null,null,null),
('235','3246','716',null,560.00,null,null,'1',null,null,null),
('236','3246','717',null,600.00,null,null,'1',null,null,null),
('237','3246','718',null,680.00,null,null,'1',null,null,null),
('238','3246','716',null,560.00,null,null,'1',null,null,null),
('239','3246','717',null,600.00,null,null,'1',null,null,null),
('240','3246','718',null,680.00,null,null,'1',null,null,null),
('241','3246','716',null,560.00,null,null,'0',null,null,null),
('242','3246','717',null,600.00,null,null,'0',null,null,null),
('243','3246','718',null,680.00,null,null,'0',null,null,null),
('244','3247','716',null,490.00,null,null,'1',null,null,null),
('245','3247','717',null,525.00,null,null,'1',null,null,null),
('246','3247','718',null,595.00,null,null,'1',null,null,null),
('247','3247','716',null,490.00,null,null,'1',null,null,null),
('248','3247','717',null,525.00,null,null,'1',null,null,null),
('249','3247','718',null,595.00,null,null,'1',null,null,null),
('250','3247','716',null,490.00,null,null,'1',null,null,null),
('251','3247','717',null,525.00,null,null,'1',null,null,null),
('252','3247','718',null,595.00,null,null,'1',null,null,null),
('253','3247','716',null,490.00,null,null,'0',null,null,null),
('254','3247','717',null,525.00,null,null,'0',null,null,null),
('255','3247','718',null,595.00,null,null,'0',null,null,null),
('256','3248','716',null,910.00,null,null,'1',null,null,null),
('257','3248','717',null,975.00,null,null,'1',null,null,null),
('258','3248','718',null,1105.00,null,null,'1',null,null,null),
('259','3248','716',null,910.00,null,null,'1',null,null,null),
('260','3248','717',null,975.00,null,null,'1',null,null,null),
('261','3248','718',null,1105.00,null,null,'1',null,null,null),
('262','3248','716',null,910.00,null,null,'0',null,null,null),
('263','3248','717',null,975.00,null,null,'0',null,null,null),
('264','3248','718',null,1105.00,null,null,'0',null,null,null),
('265','3249','716',null,770.00,null,null,'1',null,null,null),
('266','3249','717',null,825.00,null,null,'1',null,null,null),
('267','3249','718',null,935.00,null,null,'1',null,null,null),
('268','3249','716',null,770.00,null,null,'1',null,null,null),
('269','3249','717',null,825.00,null,null,'1',null,null,null),
('270','3249','718',null,935.00,null,null,'1',null,null,null),
('271','3249','716',null,770.00,null,null,'1',null,null,null),
('272','3249','717',null,825.00,null,null,'1',null,null,null),
('273','3249','718',null,935.00,null,null,'1',null,null,null),
('274','3249','716',null,770.00,null,null,'1',null,null,null),
('275','3249','717',null,825.00,null,null,'1',null,null,null),
('276','3249','718',null,935.00,null,null,'1',null,null,null),
('277','3249','716',null,770.00,null,null,'0',null,null,null),
('278','3249','717',null,825.00,null,null,'0',null,null,null),
('279','3249','718',null,935.00,null,null,'0',null,null,null),
('280','3250','716',null,560.00,null,null,'1',null,null,null),
('281','3250','717',null,600.00,null,null,'1',null,null,null),
('282','3250','718',null,680.00,null,null,'1',null,null,null),
('283','3250','716',null,560.00,null,null,'1',null,null,null),
('284','3250','717',null,600.00,null,null,'1',null,null,null),
('285','3250','718',null,680.00,null,null,'1',null,null,null),
('286','3250','716',null,560.00,null,null,'1',null,null,null),
('287','3250','717',null,600.00,null,null,'1',null,null,null),
('288','3250','718',null,680.00,null,null,'1',null,null,null),
('289','3250','716',null,560.00,null,null,'0',null,null,null),
('290','3250','717',null,600.00,null,null,'0',null,null,null),
('291','3250','718',null,680.00,null,null,'0',null,null,null),
('292','3251','716',null,266.00,null,null,'1',null,null,null),
('293','3251','717',null,285.00,null,null,'1',null,null,null),
('294','3251','718',null,323.00,null,null,'1',null,null,null),
('295','3251','716',null,266.00,null,null,'1',null,null,null),
('296','3251','717',null,285.00,null,null,'1',null,null,null),
('297','3251','718',null,323.00,null,null,'1',null,null,null),
('298','3251','716',null,266.00,null,null,'1',null,null,null),
('299','3251','717',null,285.00,null,null,'1',null,null,null),
('300','3251','718',null,323.00,null,null,'1',null,null,null),
('301','3251','716',null,266.00,null,null,'0',null,null,null),
('302','3251','717',null,285.00,null,null,'0',null,null,null),
('303','3251','718',null,323.00,null,null,'0',null,null,null),
('304','3252','716',null,252.00,null,null,'1',null,null,null),
('305','3252','717',null,270.00,null,null,'1',null,null,null),
('306','3252','718',null,306.00,null,null,'1',null,null,null),
('307','3252','716',null,252.00,null,null,'0',null,null,null),
('308','3252','717',null,270.00,null,null,'0',null,null,null),
('309','3252','718',null,306.00,null,null,'0',null,null,null),
('310','3253','716',null,182.00,null,null,'1',null,null,null),
('311','3253','717',null,195.00,null,null,'1',null,null,null),
('312','3253','718',null,221.00,null,null,'1',null,null,null),
('313','3253','716',null,182.00,null,null,'1',null,null,null),
('314','3253','717',null,195.00,null,null,'1',null,null,null),
('315','3253','718',null,221.00,null,null,'1',null,null,null),
('316','3253','716',null,182.00,null,null,'1',null,null,null),
('317','3253','717',null,195.00,null,null,'1',null,null,null),
('318','3253','718',null,221.00,null,null,'1',null,null,null),
('319','3253','716',null,182.00,null,null,'0',null,null,null),
('320','3253','717',null,195.00,null,null,'0',null,null,null),
('321','3253','718',null,221.00,null,null,'0',null,null,null),
('322','3254','716',null,112.00,null,null,'1',null,null,null),
('323','3254','717',null,120.00,null,null,'1',null,null,null),
('324','3254','718',null,136.00,null,null,'1',null,null,null),
('325','3254','716',null,112.00,null,null,'0',null,null,null),
('326','3254','717',null,120.00,null,null,'0',null,null,null),
('327','3254','718',null,136.00,null,null,'0',null,null,null),
('328','3255','716',null,70.00,null,null,'1',null,null,null),
('329','3255','717',null,75.00,null,null,'1',null,null,null),
('330','3255','718',null,85.00,null,null,'1',null,null,null),
('331','3255','716',null,70.00,null,null,'1',null,null,null),
('332','3255','717',null,75.00,null,null,'1',null,null,null),
('333','3255','718',null,85.00,null,null,'1',null,null,null),
('334','3255','716',null,70.00,null,null,'1',null,null,null),
('335','3255','717',null,75.00,null,null,'1',null,null,null),
('336','3255','718',null,85.00,null,null,'1',null,null,null),
('337','3255','716',null,70.00,null,null,'0',null,null,null),
('338','3255','717',null,75.00,null,null,'0',null,null,null),
('339','3255','718',null,85.00,null,null,'0',null,null,null),
('340','3256','716',null,42.00,null,null,'1',null,null,null),
('341','3256','717',null,45.00,null,null,'1',null,null,null),
('342','3256','718',null,51.00,null,null,'1',null,null,null),
('343','3256','716',null,42.00,null,null,'0',null,null,null),
('344','3256','717',null,45.00,null,null,'0',null,null,null),
('345','3256','718',null,51.00,null,null,'0',null,null,null);
DROP TABLE IF EXISTS  `debt_flow`;
CREATE TABLE `debt_flow` (
  `debt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(11) DEFAULT NULL COMMENT '单号',
  `flow_type` int(11) DEFAULT NULL COMMENT '流水类型(1:欠款,2:还款)',
  `flow_desc` varchar(32) DEFAULT NULL COMMENT '流水描述(1:开卡充值,2:会员消费,3:会员导入)',
  `account_id` int(11) DEFAULT NULL COMMENT '会员标识',
  `in_amount` decimal(8,2) DEFAULT NULL COMMENT '流水金额',
  `flow_debt_time` char(19) DEFAULT NULL COMMENT '挂账/欠款日期',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '操作人标示',
  `is_deleted` int(11) DEFAULT NULL COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`debt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='挂账记录表';

DROP TABLE IF EXISTS  `service_plan_info`;
CREATE TABLE `service_plan_info` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `send_member_type` int(11) DEFAULT NULL COMMENT '发送对象方式(1:等级 2:会员分组)',
  `member_id` int(11) DEFAULT NULL COMMENT '等级或分组的ID',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工ID',
  `theme` varchar(32) DEFAULT NULL COMMENT '主题名称',
  `service_time` char(19) DEFAULT NULL COMMENT '服务时间',
  `service_project_name` char(10) DEFAULT NULL COMMENT '服务项目名称',
  `topic_time` char(13) DEFAULT NULL COMMENT '推送时间',
  `store_id` int(11) DEFAULT NULL COMMENT '门店ID',
  `is_sms` int(11) DEFAULT '1' COMMENT '是否短信(0不推送, 1推送)',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否已经推送(0:未推送 1:已推送)',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

insert into `service_plan_info`(`s_id`,`send_member_type`,`member_id`,`employee_id`,`theme`,`service_time`,`service_project_name`,`topic_time`,`store_id`,`is_sms`,`is_deleted`) values
('7','1','719','2130','dsads','2016-10-08','ssasa','2016-09-08 18','1209','1','0');
DROP TABLE IF EXISTS  `member_menu`;
CREATE TABLE `member_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `first_menu` text COMMENT '一级菜单',
  `secont_menu` text COMMENT '二级菜单',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

insert into `member_menu`(`menu_id`,`role_id`,`first_menu`,`secont_menu`) values
('1','1','	<ul class="left_nav">
		<li class="active_8_1" index="8" url="<%=menuBasePath%>storeinfo/view/showStoreList">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_8_1.png"/></p>
			   企业
			</div> 
		</li>
		<li class="active_2_1" index="2" url="<%=menuBasePath%>memberLevel/view/enterpriseMemberLevelList">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_2_1.png"/></p>
			     会员
			</div> 
		</li>
		<li class="active_6_1" index="6" url="<%=menuBasePath%>view/storeAccount/suplier">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_6_1.png"/></p>
			    商品
			</div> 
		</li>
		<li class="active_3_1" index="3" url="<%=menuBasePath%>marketing/view/showMinBargain">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_3_1.png"/></p>
			    营销
			</div> 
		</li>
		<li class="active_9_1" index="9" url="<%=menuBasePath%>system/view/storeWechat">
			<div class="nav_img">
		     <p><img src="<%=menuBasePath%>images/left_9_1.png"/></p>
			   微信
			</div> 
		</li>
		<li class="active_10_1" index="10" url="<%=menuBasePath%>system/view/person">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_10_1.png"/></p>
			   设置
			</div> 
		</li>
	</ul>
','<div class="left_nav_2" style="height: 840px;">
		<ul index="7">
			<a href="<%=menuBasePath%>storeinfo/view/showStoreList"><li class="active"><span>门店管理</span></li></a>
			<a href="<%=menuBasePath%>app/pay/qr"><li class="active"><span>企业充值</span></li></a>
			<a href="<%=menuBasePath%>employee/account/positon"><li class=""><span>组织架构</span></li></a>
                        <a href="<%=menuBasePath%>KeepAccounts/initializeEnterpriseShiftMahjong"><li class=""><span>轮牌管理</span></li></a>
		</ul>
		<ul index="1">
			<a href="<%=menuBasePath%>memberLevel/view/enterpriseMemberLevelList"><li class="active"><span>企业会员卡</span></li></a>
			<a href="<%=menuBasePath%>memberLevel/view/list"><li class="active"><span>门店会员卡</span></li></a>
		</ul>
		
		<ul index="5">
                        <a href="<%=menuBasePath%>view/storeAccount/suplier"><li><span>供应商管理</span></li></a>
			<a href="<%=menuBasePath%>goodsInfo/view/setting"><li><span>商品库管理</span></li></a>
			<a href="<%=menuBasePath%>stock/view"><li><span>商品调遣单</span></li></a>
			<a href="<%=menuBasePath%>project/view/categorys"><li><span>系列管理</span></li></a>
		</ul>
		<ul index="2">
			<a href="<%=menuBasePath%>marketing/view/showMinBargain"><li><span>微砍价</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showBigTurntable"><li><span>大转盘</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showLantern"><li><span>点灯笼</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showMinVote"><li><span>微投票</span></li></a>
			<a href="<%=menuBasePath%>coupons/couponslist"><li><span>优惠券</span></li></a>
			<a href="<%=menuBasePath%>activity/view/showactivitysign"><li><span>门店活动</span></li></a>
		</ul>
		<ul index="8">
			<a href="<%=menuBasePath%>system/view/storeWechat"><li class="active"><span>微信设置</span></li></a>
		</ul>
		<ul index="9">
			<a href="<%=menuBasePath%>system/view/person"><li class=""><span>账户设置</span></li></a>
		</ul>
	</div>'),
('2','2','	 <ul class="left_nav">
		<li class="active_1_2 border" index="1" url="<%=menuBasePath%>selfcashier/view/list">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_1_2.png"/></p>
			     业务
			</div>
			
		</li>
		<li class="active_2_1" index="2" url="<%=menuBasePath%>appoint/view/list">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_2_1.png"/></p>
			     会员
			</div> 
			
		</li>
		<li class="active_3_1" index="3" url="<%=menuBasePath%>marketing/view/showMinBargain">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_3_1.png"/></p>
			    营销
			</div> 
			 
		</li>
		<li class="active_4_1" index="4" url="<%=menuBasePath%>summary/view/summary">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_4_1.png"/></p>
			      统计
			</div>
			
		</li>
		<li class="active_5_1" index="5" url="<%=menuBasePath%>project/view/projects">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_5_1.png"/></p>
			     服务
			</div>
			
		</li>
		<li class="active_6_1" index="6" url="<%=menuBasePath%>goodsInfo/view/goodsInfoList">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_6_1.png"/></p>
			    商品
			</div> 
			
		</li>
		<li class="active_7_1" index="7" url="<%=menuBasePath%>employee/view/employee">
			<div class="nav_img">
		     <p><img src="<%=menuBasePath%>images/left_7_1.png"/></p>
			  员工
			</div>
			
		</li>
		<li class="active_9_1" index="9" url="<%=menuBasePath%>storeinfo/view/storeSetting">
			<div class="nav_img">
		     <p><img src="<%=menuBasePath%>images/left_9_1.png"/></p>
			   微信
			</div> 
		</li>
		<li class="active_10_1" index="10" url="<%=menuBasePath%>system/view/person">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_10_1.png"/></p>
			   设置
			</div> 
		</li>
	</ul>','<div class="left_nav_2" style="height: 840px;">
		<ul index="0">
			<a href="<%=menuBasePath%>KeepAccounts/initializeManuallyOpenOrder"><li><span>快速开单</span></li></a>
                                                <a href="<%=menuBasePath%>KeepAccounts/initializeNoPaperOpenOrder"><li><span>无纸开单</span></li></a>
			<a href="<%=menuBasePath%>selfcashier/view/list"><li><span>待结账</span></li></a>
			<a href="<%=menuBasePath%>KeepAccounts/initializeOpenCard"><li><span>开卡充值</span></li></a>
			<a href="<%=menuBasePath%>KeepAccounts/initializeStoreFlow"><li><span>收支记账</span></li></a>
			<a href="<%=menuBasePath%>daybook/view/index"><li><span>流水查询</span></li></a>
			<a href="<%=menuBasePath%>KeepAccounts/initializeShiftMahjong"><li><span>电子轮牌</span></li></a>
		</ul>
		<ul index="1"> 
			<a href="<%=menuBasePath%>appoint/view/list"><li><span>预约中心</span></li></a>
			<a href="<%=menuBasePath%>member/view/list"><li class=""><span>会员数据</span></li></a>
			<a href="<%=menuBasePath%>member/view/census/list"><li class=""><span>会员分组</span></li></a>
			<a href="<%=menuBasePath%>memberLevel/view/list"><li class="active"><span>门店会员卡</span></li></a>
		</ul>
		<ul index="2">	
			<a href="<%=menuBasePath%>marketing/view/showMinBargain"><li><span>微砍价</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showBigTurntable"><li><span>大转盘</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showLantern"><li><span>点灯笼</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showMinVote"><li><span>微投票</span></li></a>
			<a href="<%=menuBasePath%>coupons/couponslist"><li><span>优惠券</span></li></a>
			<a href="<%=menuBasePath%>service/view/view"><li><span>服务助手</span></li></a>
		</ul>
		<ul index="3">
			<a href="<%=menuBasePath%>summary/view/summary"><li class=""><span>营业汇总</span></li></a>
			<a href="<%=menuBasePath%>cashreceipts/view/cashreceipts"><li><span>现金收入</span></li></a>
			<a href="<%=menuBasePath%>cardsales/view/cardsales"><li class=""><span>卡项销售</span></li></a>
			<a href="<%=menuBasePath%>laborperformance/view/laborperformance"><li class="active"><span>劳动业绩</span></li></a>
			<a href="<%=menuBasePath%>packagesales/view/packagesales"><li><span>疗程销售</span></li></a>
			<a href="<%=menuBasePath%>commoditysales/view/commoditysales"><li><span>商品销售</span></li></a>
			<a href="<%=menuBasePath%>reconciliation/view/crossReconciliation"><li><span>跨店对账</span></li></a>
			<a href="<%=menuBasePath%>businessAnalysis/view/payroll"><li><span>工资单</span></li></a>
		</ul>
		<ul index="4">
			<a href="<%=menuBasePath%>project/view/projects"><li class=""><span>项目列表</span></li></a>
			<a href="<%=menuBasePath%>comboInfo/view/comboInfoList"><li><span>疗程列表</span></li></a>
		</ul>
		<ul index="5">
			<a href="<%=menuBasePath%>goodsInfo/view/goodsInfoList"><li class=""><span>商品列表</span></li></a>
			<a href="<%=menuBasePath%>goodsInfo/view/setting"><li><span>商品库管理</span></li></a>
			<a href="<%=menuBasePath%>stock/view"><li><span>商品调遣单</span></li></a>
			
		</ul>
		<ul index="6">
			<a href="<%=menuBasePath%>employee/view/employee"><li><span>员工资料</span></li></a>
			<a href="<%=menuBasePath%>storeManageRule/view/home"><li class=""><span>管理制度</span></li></a>
			<a href="<%=menuBasePath%>shift/view/shift"><li class="active"><span>排班设置</span></li></a>
			<a href="<%=menuBasePath%>attendance/view/attendance"><li><span>考勤记录</span></li></a>
		</ul>
		<ul index="8">
			<a href="<%=menuBasePath%>storeinfo/view/storeSetting"><li><span>微网站</span></li></a>
			<a href="<%=menuBasePath%>memberCenter/view/store/shop"><li><span>在线商城</span></li></a>
			<a href="<%=menuBasePath%>wechat/items/manage"><li><span>营销中心</span></li></a>
		</ul>
		<ul index="9">
			<a href="<%=menuBasePath%>system/view/person"><li class=""><span>账户设置</span></li></a>
			<a href="<%=menuBasePath%>system/view/baseSetting"><li class=""><span>基础设置</span></li></a>
			<a href="<%=menuBasePath%>system/view/share"><li class=""><span>分享拓客</span></li></a>
                        <a href="<%=menuBasePath%>commissionScheme/view/view_show_commission_scheme"><li class=""><span>业绩提成分配</span></li></a>
		</ul>
	</div>'),
('3','3','<ul class="left_nav">
		<li class="active_1_2 border" index="1" url="<%=menuBasePath%>selfcashier/view/list">
			<div class="nav_img">
				
			</div>
			
		</li>
		<li class="active_2_1" index="2" url="<%=menuBasePath%>appoint/view/list">
			<div class="nav_img">
				
			</div> 
			
		</li>
		<li class="active_10_1" index="10" url="<%=menuBasePath%>system/view/person">
			<div class="nav_img">
				
			</div> 
		</li>
	</ul>
	
	<ul class="left_title">
	   <li style="top:20px"><span></span>业务中心</li>
	   <li style="top:90px"><span></span>会员管理</li>
	   <li style="top:160px"><span></span>系统设置</li>
	</ul>','<div class="left_nav_2" style="height: 840px;">
		<ul index="0">
			<a href="<%=menuBasePath%>KeepAccounts/initializeManuallyOpenOrder"><li><span>快速开单</span></li></a>
                                                <a href="<%=menuBasePath%>KeepAccounts/initializeNoPaperOpenOrder"><li><span>无纸开单</span></li></a>
			<a href="<%=menuBasePath%>selfcashier/view/list"><li><span>待结账</span></li></a>
			<a href="<%=menuBasePath%>KeepAccounts/initializeOpenCard"><li><span>开卡充值</span></li></a>
			<a href="<%=menuBasePath%>daybook/view/index"><li><span>流水查询</span></li></a>
			<a href="<%=menuBasePath%>KeepAccounts/initializeShiftMahjong"><li><span>电子轮牌</span></li></a>
		</ul>
		<ul index="1">
			<a href="<%=menuBasePath%>appoint/view/list"><li><span>预约中心</span></li></a>
			<a href="<%=menuBasePath%>member/view/list"><li class=""><span>会员数据</span></li></a>
			<a href="<%=menuBasePath%>member/view/error/member/info"><li><span>异常会员数据</span></li></a>
		</ul>
		<ul index="9">
			<a href="<%=menuBasePath%>system/view/person"><li class=""><span>账户设置</span></li></a>
		</ul>
	</div>'),
('4','4','<ul class="left_nav">
		<li class="active_10_1" index="10" url="<%=menuBasePath%>system/view/person">
			<div class="nav_img">
				
			</div> 
		</li>
	</ul>
	
	<ul class="left_title">
	   <li style="top:20px"><span></span>系统设置</li>
	</ul>','<div class="left_nav_2" style="height: 840px;">
		<ul index="9">
			<a href="<%=menuBasePath%>system/view/person"><li class=""><span>账户设置</span></li></a>
		</ul>
	</div>'),
('5','5','<ul class="left_nav">
		<li class="active_1_2 border" index="1" url="<%=menuBasePath%>selfcashier/view/list">
			<div class="nav_img">
				
			</div>
			
		</li>
		<li class="active_2_1" index="2" url="<%=menuBasePath%>appoint/view/list">
			<div class="nav_img">
				
			</div> 
			
		</li>
		<li class="active_10_1" index="10" url="<%=menuBasePath%>system/view/person">
			<div class="nav_img">
				
			</div> 
		</li>
	</ul>
	
	<ul class="left_title">
	   <li style="top:20px"><span></span>业务中心</li>
	   <li style="top:90px"><span></span>会员管理</li>
	   <li style="top:160px"><span></span>系统设置</li>
	</ul>','<div class="left_nav_2" style="height: 840px;">
		<ul index="0">
			<a href="<%=menuBasePath%>KeepAccounts/initializeManuallyOpenOrder"><li><span>快速开单</span></li></a>
                                                <a href="<%=menuBasePath%>KeepAccounts/initializeNoPaperOpenOrder"><li><span>无纸开单</span></li></a>
			<a href="<%=menuBasePath%>selfcashier/view/list"><li><span>待结账</span></li></a>
			<a href="<%=menuBasePath%>KeepAccounts/initializeOpenCard"><li><span>开卡充值</span></li></a>
			<a href="<%=menuBasePath%>KeepAccounts/initializeStoreFlow"><li><span>收支记账</span></li></a>
			<a href="<%=menuBasePath%>daybook/view/index"><li><span>流水查询</span></li></a>
			<a href="<%=menuBasePath%>KeepAccounts/initializeShiftMahjong"><li><span>电子轮牌</span></li></a>
		</ul>
		<ul index="1">
			<a href="<%=menuBasePath%>appoint/view/list"><li><span>预约中心</span></li></a>
			<a href="<%=menuBasePath%>member/view/list"><li class=""><span>会员数据</span></li></a>
			<a href="<%=menuBasePath%>member/view/error/member/info"><li><span>异常会员数据</span></li></a>
			<a href="<%=menuBasePath%>member/view/census/list"><li class=""><span>会员分组</span></li></a>
			<a href="<%=menuBasePath%>memberLevel/view/list"><li class="active"><span>门店会员卡</span></li></a>
		</ul>
		<ul index="2">
			
			<a href="<%=menuBasePath%>marketing/view/showMinBargain"><li><span>微砍价</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showBigTurntable"><li><span>大转盘</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showLantern"><li><span>点灯笼</span></li></a>
			<a href="<%=menuBasePath%>marketing/view/showMinVote"><li><span>微投票</span></li></a>
			<a href="<%=menuBasePath%>coupons/couponslist"><li><span>优惠券</span></li></a>
		</ul>
		<ul index="3">
			<a href="<%=menuBasePath%>summary/view/summary"><li class=""><span>营业汇总</span></li></a>
			<a href="<%=menuBasePath%>cashreceipts/view/cashreceipts"><li><span>现金收入</span></li></a>
			<a href="<%=menuBasePath%>cardsales/view/cardsales"><li class=""><span>卡项销售</span></li></a>
			<a href="<%=menuBasePath%>laborperformance/view/laborperformance"><li class="active"><span>劳动业绩</span></li></a>
			<a href="<%=menuBasePath%>packagesales/view/packagesales"><li><span>疗程销售</span></li></a>
			<a href="<%=menuBasePath%>commoditysales/view/commoditysales"><li><span>商品销售</span></li></a>
			<a href="<%=menuBasePath%>reconciliation/view/crossReconciliation"><li><span>跨店对账</span></li></a>
			<a href="<%=menuBasePath%>businessAnalysis/view/payroll"><li><span>工资单</span></li></a>
		</ul>
		<ul index="4">
			<a href="<%=menuBasePath%>project/view/categorys"><li class=""><span>新增系列</span></li></a>
			<a href="<%=menuBasePath%>project/view/projects"><li class=""><span>项目列表</span></li></a>
			<a href="<%=menuBasePath%>comboInfo/view/comboInfoList"><li><span>疗程列表</span></li></a>
		</ul>
		<ul index="5">
			<a href="<%=menuBasePath%>goodsInfo/view/goodsInfoList"><li class=""><span>商品列表</span></li></a>
			<a href="<%=menuBasePath%>goodsInfo/view/setting"><li><span>商品库管理</span></li></a>
			<a href="<%=menuBasePath%>stock/view"><li><span>商品调遣单</span></li></a>
			
		</ul>
		<ul index="6">
			<a href="<%=menuBasePath%>employee/view/employee"><li><span>员工资料</span></li></a>
			<a href="<%=menuBasePath%>storeManageRule/view/home"><li class=""><span>管理制度</span></li></a>
			<a href="<%=menuBasePath%>shift/view/shift"><li class="active"><span>排班设置</span></li></a>
			<a href="<%=menuBasePath%>attendance/view/attendance"><li><span>考勤记录</span></li></a>
		</ul>
		<ul index="8">
			<a href="<%=menuBasePath%>storeinfo/view/storeSetting"><li><span>微网站</span></li></a>
			<a href="<%=menuBasePath%>memberCenter/view/store/shop"><li><span>在线商城</span></li></a>
			<a href="<%=menuBasePath%>wechat/items/manage"><li><span>营销中心</span></li></a>
		</ul>
		<ul index="9">
			<a href="<%=menuBasePath%>system/view/person"><li class=""><span>账户设置</span></li></a>
			<a href="<%=menuBasePath%>system/view/baseSetting"><li class=""><span>基础设置</span></li></a>
			<a href="<%=menuBasePath%>system/view/share"><li class=""><span>分享拓客</span></li></a>
			<a href="<%=menuBasePath%>commissionScheme/view/view_show_commission_scheme"><li class=""><span>业绩提成分配</span></li></a>
		</ul>
	</div>'),
('6','100','	<ul class="left_nav">
		<li class="active_8_1" index="8" url="<%=menuBasePath%>storeinfo/view/showStoreList">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_8_1.png"/></p>
			   企业
			</div> 
		</li>
	</ul>
','<div class="left_nav_2" style="height: 840px;">
		<ul index="7">
			<a href="<%=menuBasePath%>enterprise/view/showEnterprise"><li class="active"><span>新增企业</span></li></a>
		</ul>
	</div>');
DROP TABLE IF EXISTS  `project_commission`;
CREATE TABLE `project_commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '提成标识',
  `project_id` int(11) DEFAULT NULL COMMENT '项目标识',
  `position_id` int(11) DEFAULT NULL COMMENT '岗位标识',
  `level_id` int(11) DEFAULT NULL COMMENT '职位标识',
  `assign_cash_type` int(11) DEFAULT '1' COMMENT '指定客现金方式(1:按业绩比例,2:按固定金额)',
  `assign_cash` decimal(8,2) DEFAULT NULL COMMENT '指定客现金',
  `assign_card` decimal(8,2) DEFAULT NULL COMMENT '指定客刷卡',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `commission_price` int(11) DEFAULT NULL COMMENT '指定提成',
  `commission_no_price` int(11) DEFAULT NULL COMMENT '非指定提成',
  `commission_card` int(11) DEFAULT '0' COMMENT '预约奖励',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `commission_cash` int(11) DEFAULT '0' COMMENT '现金',
  `commission_no_cash` int(11) DEFAULT '0' COMMENT '非指定现金',
  `commission_course` int(11) DEFAULT '0' COMMENT '疗程消费',
  `commission_no_course` int(11) DEFAULT '0' COMMENT '非指定疗程消费',
  `commission_gold` int(11) DEFAULT '0' COMMENT '指定卡金',
  `commission_no_gold` int(11) DEFAULT '0' COMMENT '非指定卡金',
  PRIMARY KEY (`commission_id`),
  KEY `level_id` (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29321 DEFAULT CHARSET=utf8mb4 COMMENT='项目职位提成表';

insert into `project_commission`(`commission_id`,`project_id`,`position_id`,`level_id`,`assign_cash_type`,`assign_cash`,`assign_card`,`create_time`,`update_time`,`last_operator_id`,`commission_price`,`commission_no_price`,`commission_card`,`is_deleted`,`commission_cash`,`commission_no_cash`,`commission_course`,`commission_no_course`,`commission_gold`,`commission_no_gold`) values
('29001','3204','887','1478','1',null,null,null,null,null,null,null,'1','1','1','1','1','1','1','1'),
('29002','3211','887','1478','1',null,null,null,null,null,null,null,'20','1','80','80','80','80','100','100'),
('29003','3211','887','1478','1',null,null,null,null,null,null,null,'20','1','80','80','80','80','100','100'),
('29004','3211','887','1478','1',null,null,null,null,null,null,null,'20','1','80','80','80','80','100','100'),
('29005','3211','887','1478','1',null,null,null,null,null,null,null,'20','0','80','80','80','80','100','100'),
('29006','3213','888','1480','1',null,null,null,null,null,null,null,null,'1','30','30','30','30','30','30'),
('29007','3213','888','1481','1',null,null,null,null,null,null,null,null,'1','20','20','20','20','20','20'),
('29008','3213','888','1480','1',null,null,null,null,null,null,null,null,'1','30','30','30','30','30','30'),
('29009','3213','888','1481','1',null,null,null,null,null,null,null,null,'1','20','20','20','20','20','20'),
('29010','3216','888','1487','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29011','3216','888','1487','1',null,null,null,null,null,null,null,null,'0','20','20','10','10','10','20'),
('29012','3217','888','1487','1',null,null,null,null,null,null,null,null,'1','10','10','10','10','10','10'),
('29013','3217','888','1487','1',null,null,null,null,null,null,null,null,'1','10','10','10','10','10','10'),
('29014','3213','888','1480','1',null,null,null,null,null,null,null,null,'0','30','30','30','30','30','30'),
('29015','3213','888','1481','1',null,null,null,null,null,null,null,null,'0','20','20','20','20','20','20'),
('29016','3217','887','1478','2',null,null,null,null,null,null,null,'5','1','45','40','45','40','45','40'),
('29017','3217','888','1487','1',null,null,null,null,null,null,null,'5','1','10','10','10','10','10','10'),
('29018','3217','887','1478','2',null,null,null,null,null,null,null,'5','1','45','40','45','40','45','40'),
('29019','3217','888','1487','1',null,null,null,null,null,null,null,'5','1','10','10','10','10','10','10'),
('29020','3217','887','1478','2',null,null,null,null,null,null,null,'5','1','45','40','45','40','45','40'),
('29021','3217','888','1487','1',null,null,null,null,null,null,null,'5','1','10','10','10','10','10','10'),
('29022','3217','887','1478','2',null,null,null,null,null,null,null,'5','1','45','40','45','40','45','40'),
('29023','3217','888','1487','1',null,null,null,null,null,null,null,'5','1','10','10','10','10','10','10'),
('29024','3217','887','1478','2',null,null,null,null,null,null,null,'5','1','45','40','45','40','45','40'),
('29025','3217','888','1487','1',null,null,null,null,null,null,null,'5','1','10','10','10','10','10','10'),
('29026','3217','887','1478','2',null,null,null,null,null,null,null,'5','0','45','40','45','40','45','40'),
('29027','3217','888','1487','1',null,null,null,null,null,null,null,'5','0','10','10','10','10','10','10'),
('29028','3230','902','1508','2',null,null,null,null,null,null,null,null,'1','36','25','0','0','36','25'),
('29029','3230','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29030','3230','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29031','3230','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29032','3230','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29033','3230','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29034','3230','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29035','3230','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29036','3230','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29037','3229','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29038','3229','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29039','3229','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29040','3229','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29041','3229','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29042','3229','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29043','3229','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29044','3229','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29045','3229','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29046','3229','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29047','3229','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29048','3229','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29049','3229','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29050','3229','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29051','3229','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29052','3229','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29053','3229','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29054','3229','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29055','3229','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29056','3229','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29057','3229','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29058','3229','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29059','3229','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29060','3229','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29061','3232','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29062','3232','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29063','3232','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29064','3232','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29065','3230','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29066','3230','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29067','3230','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29068','3230','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29069','3230','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29070','3230','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29071','3230','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29072','3230','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29073','3233','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29074','3233','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29075','3233','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29076','3233','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29077','3234','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29078','3234','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29079','3234','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29080','3234','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29081','3234','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29082','3234','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29083','3234','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29084','3234','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29085','3236','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29086','3236','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29087','3236','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29088','3236','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29089','3236','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29090','3236','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29091','3236','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29092','3236','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29093','3236','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29094','3236','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29095','3236','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29096','3236','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29097','3237','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29098','3237','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29099','3237','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29100','3237','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29101','3237','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29102','3237','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29103','3237','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29104','3238','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29105','3238','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29106','3238','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29107','3238','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29108','3238','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29109','3238','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29110','3238','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29111','3238','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29112','3237','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29113','3237','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29114','3237','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29115','3237','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29116','3237','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29117','3237','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29118','3237','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29119','3237','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29120','3239','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29121','3239','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29122','3239','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29123','3239','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29124','3239','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29125','3239','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29126','3239','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29127','3239','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29128','3240','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29129','3240','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29130','3240','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29131','3240','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29132','3240','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29133','3240','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29134','3240','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29135','3240','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29136','3241','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29137','3241','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29138','3241','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29139','3241','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29140','3241','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29141','3241','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29142','3241','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29143','3241','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29144','3241','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29145','3241','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29146','3241','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29147','3241','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29148','3241','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29149','3241','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29150','3241','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29151','3241','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29152','3241','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29153','3241','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29154','3241','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29155','3241','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29156','3242','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29157','3242','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29158','3242','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29159','3242','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29160','3242','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29161','3242','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29162','3242','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29163','3242','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29164','3242','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29165','3242','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29166','3242','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29167','3242','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29168','3243','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29169','3243','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29170','3243','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29171','3243','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29172','3243','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29173','3243','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29174','3243','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29175','3243','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29176','3243','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29177','3243','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29178','3243','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29179','3243','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29180','3244','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29181','3244','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29182','3244','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29183','3244','904','1504','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29184','3244','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29185','3244','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29186','3244','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29187','3244','904','1504','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29188','3244','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29189','3244','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29190','3244','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29191','3244','904','1504','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29192','3245','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29193','3245','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29194','3245','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29195','3245','904','1504','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29196','3245','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29197','3245','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29198','3245','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29199','3245','904','1504','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29200','3245','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29201','3245','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29202','3245','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29203','3245','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29204','3246','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29205','3246','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29206','3246','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29207','3246','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29208','3246','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29209','3246','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29210','3246','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29211','3247','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29212','3247','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29213','3247','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29214','3247','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29215','3247','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29216','3247','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29217','3247','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29218','3247','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29219','3247','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29220','3247','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29221','3247','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29222','3247','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29223','3248','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29224','3248','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29225','3248','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29226','3248','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29227','3248','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29228','3248','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29229','3248','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29230','3248','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29231','3249','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29232','3249','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29233','3249','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29234','3249','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29235','3249','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29236','3249','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29237','3249','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29238','3249','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29239','3249','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29240','3249','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29241','3249','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29242','3249','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29243','3249','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29244','3249','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29245','3250','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29246','3250','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29247','3250','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29248','3250','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29249','3250','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29250','3250','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29251','3250','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29252','3250','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29253','3250','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29254','3250','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29255','3250','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29256','3250','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29257','3251','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29258','3251','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29259','3251','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29260','3251','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29261','3251','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29262','3251','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29263','3251','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29264','3251','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29265','3251','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29266','3251','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29267','3251','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29268','3251','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29269','3252','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29270','3252','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29271','3252','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29272','3252','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29273','3253','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29274','3253','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29275','3253','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29276','3253','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29277','3253','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29278','3253','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29279','3253','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29280','3253','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29281','3253','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29282','3253','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29283','3253','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29284','3253','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29285','3254','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29286','3254','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29287','3254','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29288','3254','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29289','3255','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29290','3255','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29291','3255','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29292','3255','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29293','3255','902','1508','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29294','3255','902','1509','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29295','3255','902','1510','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29296','3255','904','1504','2',null,null,null,null,null,null,null,null,'1','7','7','7','7','7','7'),
('29297','3255','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29298','3255','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29299','3255','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29300','3255','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29301','3256','902','1508','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29302','3256','902','1509','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29303','3256','902','1510','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29304','3256','904','1504','2',null,null,null,null,null,null,null,null,'0','7','7','7','7','7','7'),
('29305','3214','887','1479','2',null,null,null,null,null,null,null,'30','1','30','30','30','30','30','30'),
('29306','3214','887','1497','2',null,null,null,null,null,null,null,'30','1','30','30','30','30','30','30'),
('29307','3214','887','1498','2',null,null,null,null,null,null,null,'30','1','30','30','30','30','30','30'),
('29308','3214','887','1478','2',null,null,null,null,null,null,null,'30','1','30','30','30','30','30','30'),
('29309','3214','887','1479','2',null,null,null,null,null,null,null,'30','1','30','30','30','30','30','30'),
('29310','3214','887','1497','2',null,null,null,null,null,null,null,'30','1','30','30','30','30','30','30'),
('29311','3214','887','1498','2',null,null,null,null,null,null,null,'30','1','30','30','30','30','30','30'),
('29312','3214','887','1478','2',null,null,null,null,null,null,null,'30','1','30','30','30','30','30','30'),
('29313','3214','887','1479','2',null,null,null,null,null,null,null,'30','0','30','30','30','30','30','30'),
('29314','3214','887','1497','2',null,null,null,null,null,null,null,'30','0','30','30','30','30','30','30'),
('29315','3214','887','1498','2',null,null,null,null,null,null,null,'30','0','30','30','30','30','30','30'),
('29316','3214','887','1478','2',null,null,null,null,null,null,null,'30','0','30','30','30','30','30','30'),
('29317','3257','1032','1515','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29318','3257','1032','1515','1',null,null,null,null,null,null,null,null,'1','0','0','0','0','0','0'),
('29319','3257','1032','1515','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0'),
('29320','3257','1032','1512','1',null,null,null,null,null,null,null,null,'0','0','0','0','0','0','0');
DROP TABLE IF EXISTS  `favourable_account`;
CREATE TABLE `favourable_account` (
  `favourable_namber` char(50) DEFAULT NULL COMMENT '编号',
  `favourable_name` int(11) DEFAULT NULL COMMENT '优惠名称',
  `favourable_type` int(11) DEFAULT NULL COMMENT '优惠类型 （0折扣，1现金，2体验）',
  `favourable_strategy` int(11) DEFAULT NULL COMMENT '优惠策略',
  `favourable_allow` int(11) DEFAULT NULL COMMENT '是否允许会员折扣（0允许，1不允许）',
  `favourable_part` char(50) DEFAULT NULL COMMENT '业绩折扣（0优惠部分，1总价）',
  `favourable_hair` char(50) DEFAULT NULL COMMENT '美发/手艺师 ',
  `favourable_tech` char(50) DEFAULT NULL COMMENT '技师',
  `favourable_ assistant` char(50) DEFAULT NULL COMMENT '助理',
  `store_account` char(50) DEFAULT NULL COMMENT '企业id',
  `store_id` int(11) DEFAULT NULL COMMENT '门店id',
  `fullstop` int(11) DEFAULT NULL COMMENT '是否停用（0整除，1停用）',
  `favourable_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠类型标识',
  `is_deleted` int(11) DEFAULT NULL COMMENT '（0整除，1删除）',
  `create_time` char(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(20) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`favourable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `employee_education`;
CREATE TABLE `employee_education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '培训标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `start_date` char(10) DEFAULT NULL COMMENT '开始日期',
  `end_date` char(10) DEFAULT NULL COMMENT '结束日期',
  `education_institution` varchar(25) DEFAULT NULL COMMENT '培训机构',
  `education_content` varchar(100) DEFAULT NULL COMMENT '培训内容',
  `education_performance` varchar(50) DEFAULT NULL COMMENT '培训成绩',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工培训记录表';

DROP TABLE IF EXISTS  `wechat_group_info`;
CREATE TABLE `wechat_group_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分组标识',
  `store_account` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业代号',
  `group_type` int(11) DEFAULT NULL COMMENT '分组类型(1:无身份，2:会员，3:员工，4:老板)',
  `group_id` int(11) DEFAULT NULL COMMENT '微信分组ID',
  `group_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '微信分组名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='微信分组信息表';

insert into `wechat_group_info`(`id`,`store_account`,`group_type`,`group_id`,`group_name`) values
('157','laowang','1','124','会员_我道系统创建'),
('158','laowang','2','125','员工_我道系统创建'),
('159','laowang','3','126','老板_我道系统创建'),
('160','laowang','4','127','未绑定_我道系统创建'),
('161','wisdom','1','128','会员_我道系统创建'),
('162','wisdom','2','129','员工_我道系统创建'),
('163','wisdom','3','130','老板_我道系统创建'),
('164','wisdom','4','131','未绑定_我道系统创建'),
('165','Artist','1','100','会员_我道系统创建'),
('166','Artist','2','101','员工_我道系统创建'),
('167','Artist','3','102','老板_我道系统创建'),
('168','Artist','4','103','未绑定_我道系统创建');
DROP TABLE IF EXISTS  `wechat_agent`;
CREATE TABLE `wechat_agent` (
  `open_id` varchar(32) NOT NULL DEFAULT '' COMMENT '微信标识',
  `agent_id` int(11) DEFAULT NULL COMMENT '代理标识',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `automatic_reply`;
CREATE TABLE `automatic_reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `media_id` varchar(240) DEFAULT NULL COMMENT '图文消息MediaId',
  `title` varchar(240) DEFAULT NULL COMMENT '图文消息的标题',
  `author` varchar(240) DEFAULT NULL COMMENT '作者',
  `url` varchar(240) DEFAULT NULL COMMENT '图文页的URL',
  `description` varchar(240) DEFAULT NULL COMMENT '图文消息的描述',
  `picUrl` varchar(240) DEFAULT NULL COMMENT '图片链接',
  `qiniu_img` varchar(240) DEFAULT NULL COMMENT '七牛图片链接',
  `thumb_media_id` varchar(480) DEFAULT NULL COMMENT '永久图片id',
  `content` longtext COMMENT '图文内容',
  `content_source_url` varchar(480) DEFAULT NULL COMMENT '原文地址',
  `create_time` varchar(240) DEFAULT NULL COMMENT '创建时间',
  `store_id` int(11) DEFAULT NULL COMMENT '门店ID',
  `father_media_id` varchar(240) DEFAULT NULL COMMENT '复制的图文媒体id',
  `praise` int(11) DEFAULT NULL COMMENT '图文点赞次数',
  `has_praise_store` varchar(100) DEFAULT NULL COMMENT '已赞门店',
  `media_count` int(11) DEFAULT NULL COMMENT '活跃度',
  `has_send_store` varchar(255) DEFAULT NULL COMMENT '该图文已经发送的门店',
  `downloads` int(11) DEFAULT NULL COMMENT '下载次数',
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='图文消息表';

insert into `automatic_reply`(`reply_id`,`media_id`,`title`,`author`,`url`,`description`,`picUrl`,`qiniu_img`,`thumb_media_id`,`content`,`content_source_url`,`create_time`,`store_id`,`father_media_id`,`praise`,`has_praise_store`,`media_count`,`has_send_store`,`downloads`) values
('14','gaamtDGdR3EWq7xACDyRYZWTxscBHkChIwsPAhPz2LQ','【干货篇】美容美发企业实战全攻略系列一','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000238&idx=1&sn=13e3bc04c1a1459240a1594f12fcd2f3#rd','”促销“是美容美发企业营销工作中必不可少的一部分，随着市场竞争日益激烈，有限的顾客资源都必须更努力、更快的争取，在与竞争对手服务质量和价格不分上下的情况下，”促销“成了与竞争对手拉开差距的重要手段。','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49BiaGoKibAgWWXFZKM4HIffq2eQZr6nTHQ23dsWmXPPiagkKWRHib4aibfiartA/0','http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/wechat/1469069759431','gaamtDGdR3EWq7xACDyRYfYoi8Lj68vQrG5jEtCdTNU','<section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 5px auto; padding: 0px; border: none; width: 456.296875px; background-image: none;"><img class="96wx-img" data-ratio="1" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 30px; display: inline-block; vertical-align: middle;"/><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;">点击上面的蓝字关注我们哦！</section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHJWz0Jia0Tpia8WEoibc3lDvQJqBpD3jjGsC3NA2rHLm82iae8kojFF2Mlw/0?wx_fmt=jpeg" data-ratio="0.7446043165467626" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/>&nbsp;<br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 2em auto 1em; padding: 0px;"><section style="margin: 0px auto; padding: 0px; text-align: center;"><section class="96wx-bdtc 96wx-bdbc" style="margin: 10px auto -14px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(27, 174, 229); border-top-width: 2px; border-top-style: solid; border-top-color: rgb(27, 174, 229); height: 5px;"></section><section style="margin: -7px 0px 0px; padding: 5px; display: inline-block; border-top-color: rgb(223, 2, 75); border-bottom-color: rgb(30, 180, 223); background-color: rgb(254, 254, 254);"><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; font-size: 20px; line-height: 32px;">促销的本质</p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; “促销” 英文简称SP（Sales Promotion）是指企业向消费者传递商品信息和企业信息，刺激和诱导消费者购买的过程。</p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 2em auto 1em; padding: 0px;"><section style="margin: 0px auto; padding: 0px; text-align: center;"><section style="margin: -7px 0px 0px; padding: 5px; display: inline-block; border-top-color: rgb(223, 2, 75); border-bottom-color: rgb(30, 180, 223); background-color: rgb(254, 254, 254);"><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="wx96Diy" style="margin: 0px; padding: 0px; border: 0px none;"><section style="margin: 0.5em 0px; padding: 0px; border: medium none;"><section class="96wx-bdc" style="margin: 0px; padding: 10px 15px; border: 1px solid rgb(30, 178, 225); font-size: 1em; font-family: inherit; text-decoration: inherit;"><section class="96wx-bdbc" style="margin: 0px; padding: 0px 0px 10px; width: 514px; border-bottom-width: 1px; border-bottom-style: solid; border-color: rgb(30, 178, 225); font-size: 1.2em; font-family: inherit; text-decoration: inherit;"><section style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 213, 255);">世界上最早的促销活动</span></section></section><section style="margin: -3px 0px 0px; padding: 0px; width: 514px;"><section class="96wx-bgc" style="margin: 0px 0px 0px -3px; padding: 0px; width: 6px; height: 6px; float: left; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; color: rgb(255, 255, 238); background-color: rgb(30, 178, 225);"></section><section class="96wx-bgc" style="margin: 0px -3px 0px 0px; padding: 0px; width: 6px; height: 6px; float: right; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; color: rgb(255, 255, 238); background-color: rgb(30, 178, 225);"></section></section><section style="margin: 0px; padding: 10px 0px 0px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;">&nbsp; &nbsp; &nbsp;&nbsp;早在1853年，美国有一家专门售卖帽子的门店，为了扩大商店的影响，加快商品的销售，曾做过这样一个促销活动：凡在该店购买帽子的顾客，都可以免费拍一张戴帽子的照片，留作纪念。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WiarnADib0TVElB8nBOiap4x7opr7px9oLSP9Q67OYiaIl4q42yM43fDTUPyj0gKCMkxM1uibNQtW6uBHw/0?wx_fmt=jpeg" data-ratio="0.6673151750972762" data-w="514" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 514px;"/><br style="margin: 0px; padding: 0px;"/> &nbsp; &nbsp;<span style="margin: 0px; padding: 0px; font-family: inherit; font-size: 1em; text-decoration: inherit; line-height: 1.6;">&nbsp; &nbsp;由于当时照相还没有普及，也并不是每一个人都舍得花钱给自己拍一张照片，因此这一促销广告打出来之后，立即吸引了许多顾客。他们都被这家商店的促销方式所打动，纷纷掏钱购买帽子，然后摆好姿势坐在照相机前，给自己留下一张照片。照片出来后，他们都将自己戴帽子的照片出示给自己的亲友欣赏，并且感到非常自豪。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;">&nbsp; &nbsp; &nbsp; &nbsp;从此，这家商店名声大振，甚至住在几十里之外的人家也赶来购买帽子，有的人甚至还带来了全家老小，但只有其中一个人购买帽子，而全家人却集中在一起拍摄全家福。因此，当时就有人说去了自己内心的真实感受：“ 我来帽子是假的，其实是想来这里拍照片。”</p></section></section></section></section></section><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;">&nbsp; &nbsp; &nbsp;</p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;">&nbsp; &nbsp; &nbsp; &nbsp; 据说这就是世界上最早采取促销的方式提升商店销售额的例子。可以说，在我们生活的这个时代，不论什么国家、什么地区，所有的行业企业都在尽其所能开展形式各异促销活动，商品促销已经成了现代商品营销的一个重要组成部分。</p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 546px; overflow: hidden;"><section style="margin: 2em auto 1em; padding: 0px;"><section style="margin: 0px auto; padding: 0px;"><section class="96wx-bdtc 96wx-bdbc" style="margin: 10px auto -14px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(27, 174, 229); border-top-width: 2px; border-top-style: solid; border-top-color: rgb(27, 174, 229); height: 5px;"></section><section style="margin: -7px 0px 0px; padding: 5px; display: inline-block; border-top-color: rgb(223, 2, 75); border-bottom-color: rgb(30, 180, 223);"><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; font-size: 20px;">促销与营销的关系</span></p></section></section></section></section></section><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;">&nbsp;<img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaBkA78sOBLnZUDicsORCYhJhRsr6PzdTdT7JpAicCFeTjAywJJ12MHqibQ/0?wx_fmt=jpeg" data-ratio="0.8809523809523809" data-w="546" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 546px;"/>&nbsp; &nbsp;&nbsp;</p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;">促销是企业营销活动的一部分，市场营销学中将企业的营销行为概括成四部分，即营销组合4P模式。营销组合4P是指产品 &nbsp;(product)、价格 (Price)、渠(Place)和促销(Promotion)，这就是营销学中最基本的4P理论。美容美发企业属于服务业，售卖的是一种不同于—般的商品。4P组合也可以让经营者们知道你的营销工作就是为顾客提供什么样的产品是最好的？制定什么价格是最合适的？选择什么样的店址是最适合消费者去消费？制定什么样的营销策略才能刺激顾客消费？同时帮助经营者理清思路，明白自己的主要工作就是营销。促销是4P营销中最终端的一个环节，也是针对顾客消费最有效的一个过程。</p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><span style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0);">范 例</span></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; border: 1px solid rgb(204, 204, 204); font-size: 1em; font-family: inherit; font-weight: inherit; text-decoration: inherit; box-sizing: border-box;"><section class="96wx-color" style="margin: -0.8em 16px 0px; padding: 0px; border: none; line-height: 1.4; text-shadow: rgb(204, 204, 204) 4px 3px; font-size: 1em; font-family: inherit; font-weight: bolder; text-align: inherit; text-decoration: inherit; color: rgb(0, 187, 236);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box;"><br style="margin: 0px; padding: 0px;"/></section></section><section class="96wx-color" style="margin: 0px; padding: 13px 16px 16px; font-size: 1em; line-height: 1.4; font-family: inherit; box-sizing: border-box;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-family: inherit; font-size: 1em; line-height: 1.4; font-weight: inherit; text-decoration: inherit;">星期二特惠日促销活动</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;">&nbsp; &nbsp; &nbsp; &nbsp;上海市一家发型机构，每个星期二为特惠日，凡是进 店消费的顾客均能获得一个精美的发夹，为烫染的顾客提 供免费的护发服务，这对发型机构来说，是非常好的一个以 品牌价值为中心的促销方案’其它还有“三八妇女节”为女 性赠送化妆品、成本价销售的饰发品和抽奖券，该店的经理 王先生说：“促销就是要时时观察维持顾客的兴趣，而且不 松懈。”大概每过45天的时间，顾客就会对促销活动失去注 意力，这时他就变换促销方式。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p></section><section style="margin: 0px; padding: 0px; width: 0px; height: 0px; clear: both;"></section></section></section><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqH50ta0FqpDhwlT4Zib6KnDUj6N7FOScrCEZpIMjnbOW1YibGaHG623Xtg/0?wx_fmt=jpeg" data-ratio="0.4432234432234432" data-w="546" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;">&nbsp; &nbsp; &nbsp; &nbsp;大家经常可以看到一些美容美发企业，他们的员工很积极,服务也不错，但是促销做的却并没有吸引力，这反映出些企业促销中 深层次的东西，对于顾客而言，美容美发店要创新，要给顾客好的和不断消费的理由。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 546px; overflow: hidden;"><section style="margin: 2em auto 1em; padding: 0px;"><section style="margin: 0px auto; padding: 0px;"><section class="96wx-bdtc 96wx-bdbc" style="margin: 10px auto -14px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(27, 174, 229); border-top-width: 2px; border-top-style: solid; border-top-color: rgb(27, 174, 229); height: 5px;"></section><section style="margin: -7px 0px 0px; padding: 5px; display: inline-block; border-top-color: rgb(223, 2, 75); border-bottom-color: rgb(30, 180, 223);"><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; font-size: 20px;">促销的功能与价值</span></p></section></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;">&nbsp;<img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLza6AOgYh1mKA9vfTXcL7fBYJJ3QoUibicHzIjSZ9Z7JXEibmHnwZwHwunZQ/0?wx_fmt=jpeg" data-ratio="0.6648351648351648" data-w="546" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 546px;"/> &nbsp; &nbsp; &nbsp;<span style="margin: 0px; padding: 0px; line-height: 1.6;">促销作为企业的经营策略之一，对于有效地提升企业的营业额、促进企业知名度等，都具有明显的效果。具体到美容美发企业来说，促销具有下述儿个方面的功能和价值：</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border: 0px none;"><section style="margin: 5px 0px; padding: 0px; display: inline-block; width: 546px;"><section style="margin: 0px; padding: 0px; float: left;"><section class="96wx-bgc 96wx-bgpic" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/CItRLtZlHnBExeLNlmbM7Gdfg4xNcmXR3DQFDTiayf52f6aQcpTY3QQZry2wZrJM1XQQ94kaC8D1hXziavyjEo6A/0?wx_fmt=png" style="margin: 0px 0px 0px 1em; padding: 0px; width: 3em; line-height: 2.6em; -webkit-transform: rotate(0deg); color: rgb(255, 255, 238); background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHOMkV73PEAwYvicXA3lXfttYHG3l1CMwgF7z9UBrF9ibbgYeBocDawrKg/0?wx_fmt=png); background-color: rgb(30, 178, 225); background-size: 100%; background-repeat: no-repeat;"><span class="96wx-bdtc" style="margin: 0px; padding: 0px; color: rgb(60, 60, 60);">1</span></section><section class="96wx-bdbc" style="margin: -1.3em 0px 0px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(30, 178, 225); width: 5em;"></section></section><section style="margin: 8px 0px 0px; padding: 0px 0.5em; float: left; color: rgb(30, 178, 225);"><span style="margin: 0px; padding: 0px; color: inherit;">有效传递企业信息</span></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;美容美发在开展促销活动时，促销产品的广告通通常会以各种形式张贴在墙壁上、橱窗里、天花板下等处，传达着促销产品的各种信息，有利于消费者了解企业服务项目的内容、价格以及优惠方式等方面信息。因此，促销能够起到推销员的作用，甚至被誉为“无声推销员”、“最忠诚的推销员”。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border: 0px none;"><section style="margin: 5px 0px; padding: 0px; display: inline-block; width: 546px;"><section style="margin: 0px; padding: 0px; float: left;"><section class="96wx-bgc 96wx-bgpic" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/CItRLtZlHnBExeLNlmbM7Gdfg4xNcmXR3DQFDTiayf52f6aQcpTY3QQZry2wZrJM1XQQ94kaC8D1hXziavyjEo6A/0?wx_fmt=png" style="margin: 0px 0px 0px 1em; padding: 0px; width: 3em; line-height: 2.6em; -webkit-transform: rotate(0deg); background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHD0pvRpOLnUicM55PSxlFv1ZVPmNa6m7gZH9oYymltIL8KQCEgtyEjibw/0?wx_fmt=png); background-color: rgb(30, 178, 225); background-size: 100%; background-repeat: no-repeat;"><span style="margin: 0px; padding: 0px; color: rgb(60, 60, 60);">2</span></section><section class="96wx-bdbc" style="margin: -1.3em 0px 0px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(30, 178, 225); width: 5em;"></section></section><section style="margin: 8px 0px 0px; padding: 0px 0.5em; float: left; color: rgb(30, 178, 225);"><span style="margin: 0px; padding: 0px; color: inherit;">加速新服务项目进入市场的程度</span></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp;&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;与美容美发企业相比，消费者对于新技术、新产品的认知程度总是要落后一些，当消费者对刚进入市场的新技术、新产品还没有足够的了解和做出积极反应时，如果美容美发企业通过一些必要的促销措施，可以在短期内迅速为新技术、新产品开辟道路。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"></span></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border: 0px none;"><section style="margin: 5px 0px; padding: 0px; display: inline-block; width: 546px;"><section style="margin: 0px; padding: 0px; float: left;"><section class="96wx-bgc 96wx-bgpic" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/CItRLtZlHnBExeLNlmbM7Gdfg4xNcmXR3DQFDTiayf52f6aQcpTY3QQZry2wZrJM1XQQ94kaC8D1hXziavyjEo6A/0?wx_fmt=png" style="margin: 0px 0px 0px 1em; padding: 0px; width: 3em; line-height: 2.6em; -webkit-transform: rotate(0deg); background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqH0oAbNKibz98DzprbBFRyA7Sz9YPsx5yRFKAhApTdD7FaP3icEpVV2HOA/0?wx_fmt=png); background-color: rgb(30, 178, 225); background-size: 100%; background-repeat: no-repeat;"><span style="margin: 0px; padding: 0px; color: rgb(60, 60, 60);">3</span></section><section class="96wx-bdbc" style="margin: -1.3em 0px 0px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(30, 178, 225); width: 5em;"></section></section><section style="margin: 8px 0px 0px; padding: 0px 0.5em; float: left; color: rgb(30, 178, 225);"><span style="margin: 0px; padding: 0px; color: inherit;">唤起消费者的购买欲望</span></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"></span></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border: 0px none; text-align: left;"><section style="margin: 5px 0px; padding: 0px; display: inline-block; width: 546px;"><p style="margin-top: 8px; margin-bottom: 0px; padding: 0px 0.5em; clear: both; white-space: pre-wrap; float: left; color: rgb(30, 178, 225);"><span style="margin: 0px; padding: 0px; line-height: 1.6; color: rgb(0, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;促销可以凭借各促销工具，例如新颖的宣传图案、绚丽的色彩、别致的商品造型等形式来吸引消费者，使他们停留下来，对店内的各种促销广告仔细地观看，进而对促销内容产生兴趣，形成购买动机。 &nbsp;</span></p><p style="margin-top: 8px; margin-bottom: 0px; padding: 0px 0.5em; clear: both; white-space: pre-wrap; float: left; color: rgb(30, 178, 225);"><span style="margin: 0px; padding: 0px; line-height: 1.6; color: rgb(0, 0, 0);"><br style="margin: 0px; padding: 0px;"/></span></p></section></section></section><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border: 0px none;"><section style="margin: 5px 0px; padding: 0px; display: inline-block; width: 546px;"><section style="margin: 0px; padding: 0px; float: left;"><section class="96wx-bgc 96wx-bgpic" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/CItRLtZlHnBExeLNlmbM7Gdfg4xNcmXR3DQFDTiayf52f6aQcpTY3QQZry2wZrJM1XQQ94kaC8D1hXziavyjEo6A/0?wx_fmt=png" style="margin: 0px 0px 0px 1em; padding: 0px; width: 3em; line-height: 2.6em; -webkit-transform: rotate(0deg); background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHzmeHnX4GNs9DHiaBfocdStPibPm7jlKwquv6ABiaHibSCNs9UYKTkcBHBQ/0?wx_fmt=png); background-color: rgb(30, 178, 225); background-size: 100%; background-repeat: no-repeat;"><span style="margin: 0px; padding: 0px; color: rgb(60, 60, 60);">4</span></section><section class="96wx-bdbc" style="margin: -1.3em 0px 0px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(30, 178, 225); width: 5em;"></section></section><section style="margin: 8px 0px 0px; padding: 0px 0.5em; float: left; color: rgb(30, 178, 225);"><span style="margin: 0px; padding: 0px; color: inherit;">促使消费者建立消费习惯</span></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;">&nbsp; &nbsp; &nbsp; &nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;顾客在享受了促销的服务项目之后，如果他们觉得比较满意，就会再次消费促销的项目。这时，即使该项目不再进行促销活动，但由于顾客已经有了满意的心理感受，经过顾客的重复消费，建立对这种 项目的消费习惯。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border: 0px none;"><section style="margin: 5px 0px; padding: 0px; display: inline-block; width: 546px;"><section style="margin: 0px; padding: 0px; float: left;"><section class="96wx-bgc 96wx-bgpic" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/CItRLtZlHnBExeLNlmbM7Gdfg4xNcmXR3DQFDTiayf52f6aQcpTY3QQZry2wZrJM1XQQ94kaC8D1hXziavyjEo6A/0?wx_fmt=png" style="margin: 0px 0px 0px 1em; padding: 0px; width: 3em; line-height: 2.6em; -webkit-transform: rotate(0deg); background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHtV8GLqHib9eKdZv8fzFAV6rMugLf1pACjRhcm8iamvDk3kJfmPXxUu1g/0?wx_fmt=png); background-color: rgb(30, 178, 225); background-size: 100%; background-repeat: no-repeat;"><span style="margin: 0px; padding: 0px; color: rgb(60, 60, 60);">5</span></section><section class="96wx-bdbc" style="margin: -1.3em 0px 0px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(30, 178, 225); width: 5em;"></section></section><section style="margin: 8px 0px 0px; padding: 0px 0.5em; float: left; color: rgb(30, 178, 225);"><span style="margin: 0px; padding: 0px; color: inherit;">有效抵制竞争对手的促销</span></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp;&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;如果竞争对手制定了一个有效的促销计划，美容美发企业就要策划出一个以保持现有顾客为目的的促销计划，来抵消对方促销活动的效果，从而抑制竞争对手，从而更加有效地在消费者心中塑造良好的企业形象。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;除以上所述，促销手段还有很多其他价值，比如激励士气，创造团队价值、员工技能增加、建立领导者魅力及创造业绩等等，本文不再一 一赘述。</span><br style="margin: 0px; padding: 0px;"/></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 546px; overflow: hidden;"><section style="margin: 2em auto 1em; padding: 0px;"><section style="margin: 0px auto; padding: 0px;"><section class="96wx-bdtc 96wx-bdbc" style="margin: 10px auto -14px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(27, 174, 229); border-top-width: 2px; border-top-style: solid; border-top-color: rgb(27, 174, 229); height: 5px;"></section><section style="margin: -7px 0px 0px; padding: 5px; display: inline-block; border-top-color: rgb(223, 2, 75); border-bottom-color: rgb(30, 180, 223);"><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; font-size: 20px; line-height: 6.40000009536743px;">促销的目标</span></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; font-size: 4px;"></span><br style="margin: 0px; padding: 0px;"/></p></section></section></section></section></section><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52RScNariazlDia4whB7AZgQaNfpoQQpaD2TzyCwjRskAebWSJLiaibBBbhQ/0?wx_fmt=jpeg" data-ratio="0.782051282051282" data-w="546" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 546px;"/><br style="margin: 0px; padding: 0px;"/></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;美容美发企业进行促销活动必须有明确的目标，只有这样才能有的放矢，提高促销的效果。促销目标可以是短期，也可以是长期的。短期促销目标是指在一 定时间内实现的目标。短期促销是对行动的召唤，可以从顾客那里得到立即的反应。每种促销手段都会在顾客心中产生一种特定的反应，但并不是所有的促销手段都可以创造销售。一般来说，可以通过促销实现以下目标：增加客户的消费量、吸引新顾客、留住老顾客、扩大企业的知名度。</p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 546px; overflow: hidden;"><section style="margin: 2em auto 1em; padding: 0px;"><section style="margin: 0px auto; padding: 0px;"><section class="96wx-bdtc 96wx-bdbc" style="margin: 10px auto -14px; padding: 0px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(27, 174, 229); border-top-width: 2px; border-top-style: solid; border-top-color: rgb(27, 174, 229); height: 5px;"></section><section style="margin: -7px 0px 0px; padding: 5px; display: inline-block; border-top-color: rgb(223, 2, 75); border-bottom-color: rgb(30, 180, 223);"><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px; font-size: 20px;">美容美发企业促销的必要性</span></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><br style="margin: 0px; padding: 0px;"/></p></section></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;随着美容美发企业的不断进步和发展，使各个企业所提供的服 务差距越来越小，服务质量差异化也越来越小，在这种情况下，美容美发企业已无法保证完全依靠服务的质量取胜，它们所能做出的选择，除了管理体制和服务制度上进一步完善自身之外，同时也因为的市场竞争越来越激烈、美容美发企业需要重新认识企业与顾客的关系、美容美发企业短期收益不稳定等状况，促销就显得越来越重要了。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;本文述了促销的定义以及与市场营销之间的关系，并说明了美容美发发企业促销的重要意义。许多人认为好的促销只是一个好点子这种观念是不正确的，促销活动必须依托于营销观念，才能成为经营利器。</span><span style="margin: 0px; padding: 0px; line-height: 1.6;">美容美发行业是一个比较特殊的服务行业，经营者必须本着“以人为本”的营销理念，并将促销策略贯穿其中，给顾客创造不断消费的好理由。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: left;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaiaxRyJFk6f8sgh0Z7a4L34C2Uu19UPmtuYzJxHc4qwMTHQ3rj5AwjibA/0?wx_fmt=jpeg" data-ratio="0.5531135531135531" data-w="546" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 546px;"/><br style="margin: 0px; padding: 0px;"/></span></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section style="margin: 5px 0px 0px; padding: 10px; border: none; text-align: left; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img class="96wx-img" data-ratio="0.03802281368821293" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-w="526" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 526px; display: block;"/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p></section></section><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit; text-align: left;"><br style="margin: 0px; padding: 0px;"/><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.608058608058608" data-w="546" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/></p></section></section></section></section></section></p><p><br/></p>','','1469069994457','1180','1180',null,null,null,null,null),
('15','gaamtDGdR3EWq7xACDyRYZWTxscBHkChIwsPAhPz2LQ','（一）促销实战全攻略之折扣促销','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000238&idx=2&sn=6571dd6934a652541c583cbbb1b6810a#rd','"折扣促销" 是美容美发企业最常用的这种促销方法，因为“折扣促销”简单易行，几乎所有的美容美发企业都曾运用过折扣促销，三十怎样进行折扣促销才会有效果呢？本文将对折扣促销进行全面的分析，以帮助经营者正确运用“折扣促销”的方法','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49BiaG0YicNPbY31QsF6hZPT4LCga1aZ3ibNlpL0B5iahme3dwibNrY0InRdRvQ/0','http://7xss26.com1.z0.glb.clouddn.com/zefun/wechat/1469069809430','gaamtDGdR3EWq7xACDyRYXj2tfVgmV_fTEFJLe07Nbk','<section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 5px auto; padding: 0px; border: none; width: 500.390625px; background-image: none;"><img class="96wx-img" data-ratio="1" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 30px; display: inline-block; vertical-align: middle;"/><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;">点击上面的蓝字关注我们哦！</section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52DgO1aIWbica8icKvlKRc4whxLO47rZBW6IfKEhwVa5ibeAh9J8xx70f4Q/0?wx_fmt=jpeg" data-ratio="0.7392086330935251" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0.5em 1.5em; padding: 0px; max-width: 100%; border: 0px; box-sizing: border-box !important; word-wrap: break-word !important;"><section class="96wx-bdc" style="margin: 0em 0px 0px; padding: 0px; max-width: 100%; border: 2px solid rgb(0, 176, 80); border-top-left-radius: 0.8em; border-top-right-radius: 0.8em; border-bottom-right-radius: 0.8em; border-bottom-left-radius: 0.8em; color: rgb(51, 51, 51); font-size: 1em; box-shadow: rgb(189, 189, 189) 0px 3px 5px; box-sizing: border-box !important; word-wrap: break-word !important;"><section style="margin: 0px; padding: 1.4em 5em 1em 1em; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><section style="margin: 0px; padding: 0px; max-width: 100%; line-height: 1.4; text-decoration: inherit; box-sizing: border-box !important; word-wrap: break-word !important;"><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp; &nbsp; “折扣促销” 是美容美发企业最常用的一种促销方法，因为“折扣促销” 简单易行，几乎所有的美容美发企业都曾运用过折扣促销，但怎样进行折扣促销才能有效果呢？本文将对折扣促销进行全面的分析，以帮助经营者正确运用 “折扣促销” 的方法。 &nbsp; &nbsp; &nbsp;<span style="margin: 0px; padding: 0px; line-height: 1.4; text-decoration: inherit; font-size: 1em;">&nbsp;“折扣促销”就像一把双刃剑，运用得当能起到增加业绩的作用，无计划的 “折扣” 促销队美容美发的品牌有着极大的伤害。</span></p></section></section></section><section style="margin: -4em 10px 0px 0px; padding: 0px; max-width: 100%; line-height: 1.4; text-align: right; box-sizing: border-box !important; word-wrap: break-word !important;"><img class="96wx-img" data-ratio="0.92" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHr9EmbOEicSyhggB98jyeX7bFba0bdWicjia5sw7Zr6IHyjskwFRcFlMTQ/0?wx_fmt=png" data-type="png" data-w="50" height="50" width="50" style="margin: 0px; padding: 0px; max-width: 100%; height: 50px; width: 50px; box-sizing: border-box !important; word-wrap: break-word !important;"/></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;美容美发的折扣促销，可以使顾客以低于正常水平的价格获得消费利益。在各种促销手段中，用金钱直接促销的有这一条途径。折扣促销的核心内涵是：企业让利，双方共赢。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 10px 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 0px 0px 0px 0.8em; padding: 0px; float: left; box-sizing: border-box;"><img class="96wx-img" data-ratio="0.925" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHJ8OYNbXNnSYKMGBmSIfOs1UzHwveIRwnj7mV6Y3NQrvwia83HcicIiaKA/0?wx_fmt=png" data-type="png" data-w="40" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 2.5em; display: inline-block; vertical-align: bottom; box-sizing: border-box;"/><section class="96wxDiy" style="margin: 0.5em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; font-size: 24px; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; box-sizing: border-box;">直接折扣策略</section></section></section><img class="96wx-bgc 96wx-img" data-ratio="0.00539568345323741" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHSicoJib2e9IN2JDDs2L2Sq9vCU31X9trEFx0LDxQZI7TntlbRicK0DHSw/0?wx_fmt=png" data-type="png" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 556px; float: left; display: inline-block; vertical-align: middle; box-sizing: border-box; background-color: rgb(0, 187, 236);"/></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;“直接折扣” 是企业采取直接降价的方 式，给予顾客折扣优惠，吸引顾客消费。<span style="margin: 0px; padding: 0px; line-height: 1.6;">“直接折扣” 最大的特点是一目了然，易于被顾客接受，“直接折扣”同时也是经营者最难运用得当的促销方法。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;折扣手段中常用的有“明折”和“暗折”例如“全场6.8折”或“五折优惠券”此类无明显价格标示的称为“暗折”。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52N5qK5heaDn2MA6nEeyAkc8WSuU4FQmicibzndAgPS6W4oBF7icHOeGwow/0?wx_fmt=jpeg" data-ratio="0.5233812949640287" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px;">“直接折扣”中“暗折”</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;而“明折”又叫特价折扣，例如“原价1000,现价380”或者“特惠价380”等诸如此类有明确价格标示的。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52MxZFQNGCUd1Y2vbzneH6fJdR7xqpnkSoq7X8Mcz9viaNDx6fibbbKVAQ/0?wx_fmt=jpeg" data-ratio="0.6348920863309353" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px;">“直接折扣”明示价格更能吸引顾客关注</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;两种相比较，哪种更有效呢？在当前美容美发行业，打“暗折”成为了一种风气，随处可见“全场X折酬宾”的字样。这种促销只能称之为“傻瓜式打折”，因为这种方式谁都会用，缺乏新意又不能明示价格，虽然焉打折了，可顾客却不知道原价是多少，很多企业故意定高价长期打“暗折”，这种把顾客当作傻瓜的“打折促销”是不可取的。企业应尽量避免使用直接暗折，这绝对不是好的促销方法。<span style="margin: 0px; padding: 0px; line-height: 1.6;">“明折” 即 “特价优惠”，因为明码标价，能让顾客一目了然的知道商品的价格究竞是便宜了多少，这种“特价优惠”最易引起消费者的注意。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; border-width: 2px; border-style: solid dotted; border-color: rgb(67, 189, 235);"><section style="margin: 0px; padding: 20px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; color: rgb(255, 127, 170); font-size: 18px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">注意</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&quot;直接折扣&quot;虽然可取，但是在实际运用当中也有很多需要注意！ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">1、美容美发企业品牌的大小决定折扣促销的效果；如果美容美发企业的专业形象或品牌知名度不高，哪怕你是最低 廉的价格，顾客也不一定会去消费。 &nbsp; &nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">2、直接折扣对顾客关注不高的低值项目意义不大 。&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">3、重心放在通过直接折扣提高价值较高项目的成交量。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="margin: 0px; padding: 0px; line-height: 1.6;">4、直接折扣促销时间应控制在一定时间内。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 10px 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 0px 0px 0px 0.8em; padding: 0px; float: left; box-sizing: border-box;"><img class="96wx-img" data-ratio="0.925" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ525jcr3RkYsyPJy7CuicNtO4IVgSSgjYQMNMMzmdiadia5cPS5DxNrWMA4w/0?wx_fmt=png" data-type="png" data-w="40" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 2.5em; display: inline-block; vertical-align: bottom; box-sizing: border-box;"/><section class="96wxDiy" style="margin: 0.5em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; font-size: 24px; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; box-sizing: border-box;">间接折扣策略</section></section></section><img class="96wx-bgc 96wx-img" data-ratio="0.00539568345323741" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52ibRQ5AbSgb44a7PL9Tt4OylCbGHqdxNkia06n3ROYriaL9GQexpKRKjaw/0?wx_fmt=png" data-type="png" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 556px; float: left; display: inline-block; vertical-align: middle; box-sizing: border-box; background-color: rgb(0, 187, 236);"/><section class="96wxDiy" style="margin: 0px; padding: 0px; clear: both; box-sizing: border-box;"></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><br style="margin: 0px; padding: 0px;"/></span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;“间接折扣”也是美容美发服务消费折价的另一形式，即顾客消费一定数量的金额后，就按其比例附加赠送同类服务或消费券。“间接折扣”对于美容美发企业而言，是一种能短时间保证企业销售额和留住顾客的手段，对于顾客而言，花一分钱可以得到更多服务或额外的消费，相当于享受了折价优惠，例如：“买X赠X”、消费100送30”此类均属间接折扣促销。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 18px; background-color: rgb(0, 0, 0);">&nbsp; &nbsp; 案 例 &nbsp; &nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52qypYGCic3Uvm7ia5neaClWmIUdnK18BVKS7dtcyyVd8rRMbBIsib9nqyw/0?wx_fmt=jpeg" data-ratio="0.4550359712230216" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52Qx1RgpYKuU4JU46kS8TMwY0YqZLDGKOrYjB20g1r2Zy2iah54QWQGLA/0?wx_fmt=jpeg" data-ratio="0.37589928057553956" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 12px;">促销活动以商品券代替了折扣，推动了产品外卖</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0);">案例分析</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"> &nbsp; &nbsp; &nbsp; &nbsp;1、这个间接折扣的促销案例，明示了 “全年护扶卡”的价格，同时赠送价值较高的商品券，在一定程度上增加了对顾客的吸引力。折扣促销本来是成本很高的一种促销方法，但本例中美容院通过将折扣分解，来降低促销中的成本。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; 2、顾客购买1500元的“全年护肤卡”，送价值200元的商品券，给顾客感觉相当于便宜了200元，即打了 8.5折，不仅如此，每月还赠送100元的商品券，全年下来，相当于送了1300元的商品券，相当于是打了5折，美容师如果给顾客算这样一笔帐，顾客的确会感到很值，而对美容院而言，分期送给顾客商品券压力也小。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; 3、此例成功最关键的一点就是，美容院规定了 “商品券仅在当月有效”。顾客购买护肤年卡，虽然美容院送了价值颇高的商品券，每月100元其实根本买不了较好的化妆品，当然这张商品券也不能浪费，在美容师的劝导下，加上一些钱就可以购买自己满意的化妆品了，一年下来，顾客消费的金额已经远远抵消了促销中的折扣成本，案例美容院的这次促销，不仅提高了 “护肤年卡”的销量，而且还通过赠送商品券的方式增加了产品的外卖，绝对是个一举两得的好方法。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; border-width: 2px; border-style: solid dotted; border-color: rgb(67, 189, 235);"><section style="margin: 0px; padding: 20px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><strong style="margin: 0px; padding: 0px; color: rgb(255, 127, 170); font-size: 18px; line-height: 28.7999992370605px; text-align: center; white-space: normal;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">注意</span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">1、间接折扣促销应控制合理成本</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">在举行间接折扣活动中，送的价值一定不能超过商品本身的价值，否则容易让消费者觉得赠品价值过高而不切实际，担心是否会利用廉次产品，同时也会对企业的服务缺乏价值感，甚至会怀疑其中是不是有一切其他什么目的。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">2、要考虑折惠与本身服务相关联性 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">因为折扣促销成本较高或过低的折扣可能导致企业无利可图，在赠送折扣时，应注意折惠与促销的关联性，上述的两个案例，不仅让顾客能感受到实实在在的折扣优惠，企业同时也因为促销而获得源 源不断的后期利润，因此在策划间接折扣促销时一定要考虑到企业与 顾客之间必须双赢。</span></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"></span></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 10px 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 0px 0px 0px 0.8em; padding: 0px; float: left; box-sizing: border-box;"><img class="96wx-img" data-ratio="0.925" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ525jcr3RkYsyPJy7CuicNtO4IVgSSgjYQMNMMzmdiadia5cPS5DxNrWMA4w/0?wx_fmt=png" data-type="png" data-w="40" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 2.5em; display: inline-block; vertical-align: bottom; box-sizing: border-box;"/><section class="96wxDiy" style="margin: 0.5em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; font-size: 24px; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; box-sizing: border-box;">套餐折扣策略</section></section></section><img class="96wx-bgc 96wx-img" data-ratio="0.00539568345323741" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52ibRQ5AbSgb44a7PL9Tt4OylCbGHqdxNkia06n3ROYriaL9GQexpKRKjaw/0?wx_fmt=png" data-type="png" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 556px; float: left; display: inline-block; vertical-align: middle; box-sizing: border-box; background-color: rgb(0, 187, 236);"/><section class="96wxDiy" style="margin: 0px; padding: 0px; clear: both; box-sizing: border-box;"></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp;套餐折扣是指美容美发企业通过组合几个服务项目，形成一个套餐组合，然后给予顾客一定的折扣，“烫发+护发+修剪=198元” “美白护理+手部护理+背部护理=160元”等此类。</span><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;套餐折扣对企业来讲，这种方式可以鼓励顾客单次消费较多的金额，对顾客而言，花一定的钱能得到更多的服务。在套餐折扣中，只要组合得当，能使业绩有较高的提升，同时增加顾客单次消费的营业额。因此美容院有更多的服务项目，可以经常采用这种“套餐式”的折价促销法，通过“套餐折扣”还能带动一些不经常消费的项目，例如染发可以带动挑染，相当于“消费X送X”的折扣促销，由于“套餐式促销”组合品种丰富，可以让顾客消费一次感受多种服务，也会有效的带动其它服务项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><br style="margin: 0px; padding: 0px;"/></span><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 18px; line-height: 28.7999992370605px; background-color: rgb(0, 0, 0);">&nbsp; &nbsp; 案 例 &nbsp; &nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52FibPBufTVnJJzriavKHjjq0WlAtB7D4EmtKCOIrdMic5ic0Yz7yBNgrLPw/0?wx_fmt=jpeg" data-ratio="1.2859712230215827" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 12px;">完美的套餐组合，使顾客以较少的花费就能满足各种需求</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 18px; line-height: 28.7999992370605px; background-color: rgb(0, 0, 0);">案例分析</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">1、在“五一”节日期间，消费者的社交活动增加，美发捫 费的需求量会增多，该发型沙龙适时推出套餐折扣，目的是为推r tj 产品，并且提高顾客单次消费的金额。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">2、在这个促销活动中，“极致色彩大套餐”突出发型色彩，将桃 染结合在染发中，往往能创造出比较完整的头发色彩效果，顾客会发 现自己改变了很多，因此充分体现出发型店的专业性。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">3、上面的套餐折扣设计的非常合理，烫发套餐送护发和造型文 出“头发造型”的意义，烫发因头发受损送烫后护理，染发为了雕叩 色彩组合了挑染并针对染后受损组合染后护发，这些套餐均能被顾^ 直接认同，同时也是站在顾客的角度进行设计的。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; border-width: 2px; border-style: solid dotted; border-color: rgb(67, 189, 235);"><section style="margin: 0px; padding: 20px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><strong style="margin: 0px; padding: 0px; text-align: center; white-space: normal; color: rgb(255, 127, 170); font-size: 18px; line-height: 28.7999992370605px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">注意</span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">1、套餐折扣应合理组合服务项目</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">2、分考虑套餐组合中的价值感&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"></span></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 10px 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 0px 0px 0px 0.8em; padding: 0px; float: left; box-sizing: border-box;"><img class="96wx-img" data-ratio="0.925" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ525jcr3RkYsyPJy7CuicNtO4IVgSSgjYQMNMMzmdiadia5cPS5DxNrWMA4w/0?wx_fmt=png" data-type="png" data-w="40" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 2.5em; display: inline-block; vertical-align: bottom; box-sizing: border-box;"/><section class="96wxDiy" style="margin: 0.5em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; font-size: 24px; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; box-sizing: border-box;">指定折扣策略</section></section></section><img class="96wx-bgc 96wx-img" data-ratio="0.00539568345323741" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52ibRQ5AbSgb44a7PL9Tt4OylCbGHqdxNkia06n3ROYriaL9GQexpKRKjaw/0?wx_fmt=png" data-type="png" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 556px; float: left; display: inline-block; vertical-align: middle; box-sizing: border-box; background-color: rgb(0, 187, 236);"/><section class="96wxDiy" style="margin: 0px; padding: 0px; clear: both; box-sizing: border-box;"></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;指定折扣是指容美发企业指定某部份顾客群休，并给予此客群折扣优惠，这种方式多用于公益活动，主要目的是为了提高企业的品牌。<span style="margin: 0px; padding: 0px; line-height: 1.6;">例如：“某发型店洗剪吹原价30元，指定老人和小孩剪发10元，学生剪发15元”此类属于指定折扣，指定折扣也可用來创造新生顾客群，变通运用对美容美发品牌和口碑影响均能起到极大的推动作用。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ522FwJgzXKKJSKQfscO4U6C9tGGr4ycWvxGMmek4EW3nVGZDiaBosDwew/0?wx_fmt=jpeg" data-ratio="0.4244604316546763" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; border-width: 2px; border-style: solid dotted; border-color: rgb(67, 189, 235);"><section style="margin: 0px; padding: 20px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp;<strong style="margin: 0px; padding: 0px; white-space: normal; text-align: center; color: rgb(255, 127, 170); font-size: 18px; line-height: 28.7999992370605px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">注意</span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">1、指定折扣应长期实施</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">2、指定折扣促销应注重口碑影响</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">3、指定式促销商业气息不能太重</p></section></section></section></section></section><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 10px 0px; padding: 0px; box-sizing: border-box;"><section class="96wxDiy" style="margin: 0px 0px 0px 0.8em; padding: 0px; float: left; box-sizing: border-box;"><img class="96wx-img" data-ratio="0.925" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ525jcr3RkYsyPJy7CuicNtO4IVgSSgjYQMNMMzmdiadia5cPS5DxNrWMA4w/0?wx_fmt=png" data-type="png" data-w="40" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 2.5em; display: inline-block; vertical-align: bottom; box-sizing: border-box;"/><section class="96wxDiy" style="margin: 0.5em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; font-size: 24px; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; box-sizing: border-box;">时段折扣策略</section></section></section><img class="96wx-bgc 96wx-img" data-ratio="0.00539568345323741" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52ibRQ5AbSgb44a7PL9Tt4OylCbGHqdxNkia06n3ROYriaL9GQexpKRKjaw/0?wx_fmt=png" data-type="png" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important; width: 556px; float: left; display: inline-block; vertical-align: middle; box-sizing: border-box; background-color: rgb(0, 187, 236);"/><section class="96wxDiy" style="margin: 0px; padding: 0px; clear: both; box-sizing: border-box;"></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp; 段扣是指在某一时间段内给予顾客一定的折扣，由于美容美发行业的特殊性，大部份的顾客会集中在下午或晚上才会来光顾，针对这种情况，美容美发企业可以在一天的某时段内给予折扣。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; 这种促销方法可让美容美发店产生一部份新生客源，即那些时充裕又讲究实惠的顾客群体，例如：“某发型店，中午12: 00以前洗剪吹15元（原价30元）” &nbsp;“某美容院下午14:00前，护肤项目5折等此类的方式均属于时段折扣。<span style="margin: 0px; padding: 0px; line-height: 1.6;">时段折扣促销使一些消费能力低的顾客也可以享受较高规格的服务，长期实施，甚至可因此创造一个顾客群体，同时时段折扣也降低美容美发企业空闲时段成本，时段折胡可以指定一天内的某时段，也可以指定一周内的哪些天享受折扣。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52PhiauRulq9uhOctzkMRXrS4Jh9dT2DspcdZuiceblSyDictHaETTzjVYQ/0?wx_fmt=jpeg" data-ratio="0.4262589928057554" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; border-width: 2px; border-style: solid dotted; border-color: rgb(67, 189, 235);"><section style="margin: 0px; padding: 20px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><strong style="margin: 0px; padding: 0px; white-space: normal; text-align: center; color: rgb(255, 127, 170); font-size: 18px; line-height: 28.7999992370605px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">注意</span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">1、时段折扣主要针对新顾客</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">2、时段折扣应只针对单一项目进行</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><br style="margin: 0px; padding: 0px;"/></span>&nbsp; &nbsp; &nbsp; &nbsp; 美容美发企业一旦决定应用“折扣”促销活动这一工具，最本质的目的就是为了增加营业额。因此，如何使活动有效，在于你必须把握好其中的分寸，无论是“折扣”的比率、拆扣”促销的活动时间还是宣传设计等等，都应该面面俱到。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; 总而言之，“折扣”手段对短期营业额提升的确有所帮助，但在运用“折扣”方式时，除折扣促销的成本因素外，更应注重品牌形 象的维护，如果折扣促销举行得过多，顾客习惯了企业经常减价，其促销效果自然就会微乎其微了，要维护品牌形象还需要通过品牌广告或公关活动等来减少折扣促销的负面作用。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px;"></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; text-align: center;"><section style="margin: 5px 0px 0px; padding: 10px; border: none; text-align: left; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img class="96wx-img" data-ratio="0.03802281368821293" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-w="526" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 526px; display: block;"/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p></section></section></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; color: inherit; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.6079136690647482" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/></p><p><br/></p>','','1469069994458','1180','1180',null,null,null,null,null),
('16','gaamtDGdR3EWq7xACDyRYZWTxscBHkChIwsPAhPz2LQ','（二）促销实战全攻略之赠品促销','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000238&idx=3&sn=0296960c2a00cfad31fd451ea056e205#rd','赠品促销的分寸把握得当才能起到促销效果','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49Bia0dTLZDt6Ia0zBppw6ibWxyaEPNo9atFFxr7NyNZ1Nn2FEf7WDYgwDzQ/0','http://7xss26.com1.z0.glb.clouddn.com/zefun/wechat/1469069821372','gaamtDGdR3EWq7xACDyRYf7lhr6zRerAwt3c4eDWiQ0','<section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 5px auto; padding: 0px; border: none; width: 500.390625px; background-image: none;"><img class="96wx-img" data-ratio="1" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 30px; display: inline-block; vertical-align: middle;"/><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;">点击上面的蓝字关注我们哦！</section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52w05vfOcq0IBBWKl4N3PClNBDvayfuVZibDGQSulJkB97Gibbo4V6yHkw/0?wx_fmt=jpeg" data-ratio="0.6672661870503597" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bgc" data-src="https://mmbiz.qlogo.cn/mmbiz/QKDxrVYehicfckkmBlMQJXIw53MINbgibiaqibpYsZp7Yfich7ybmrmRvIR9clWXbgvjVuCRDXxnFPKQpUlzMNPYA6Q/0?wx_fmt=png" style="margin: 10px 0px; padding: 1px; background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ526qGOqjAD13t5oKYFJ5bUZqDPWvib33g7AHZF7zRXRWxibPv93HdN0HIg/0?wx_fmt=png); background-color: rgb(237, 151, 49); background-size: 100%; background-repeat: no-repeat;"></section><section style="margin: -12px 0px 0px; padding: 0px; text-align: center; color: inherit;"><section class="96wx-bdlc 96wx-bdrc 96wx-bdbc" style="margin: 0px; padding: 10px 5px; display: inline-block; border-left-width: 2px; border-left-style: solid; border-left-color: rgb(237, 151, 49); border-right-width: 2px; border-right-style: solid; border-right-color: rgb(237, 151, 49); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(237, 151, 49); background-color: rgb(254, 254, 254);"><section class="96wx-color" style="margin: 0px; padding: 0px; box-sizing: border-box; line-height: 10px; border-color: rgb(173, 105, 206); color: rgb(237, 151, 49);"><span style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(0, 0, 0);">赠品促销</span></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; “赠品促销”足商品促销中使用较多的一种形式，在赠品促销活动中，顾客最关心的是赠品是否是自己想要的，企心则关心的是：送什么是最合适的。因此，赠品促销的分寸把握得当才能起到促销效果。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp;&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; “赠品促销” 同时还必须符合两个基本特点：</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; 1、顾客在消费的当时能立即获得回馈；</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; 2、所赠的物品可以是同类商品，也可以是其他礼品。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; 这也是“赠品促销”与“折扣促销”中的“买X送X ”方式似最本质的区别。“赠品促销”可以应用于多种场合，针对各种营销状况，对美容美发企业而言，可以通过精美的赠品吸引顾客消费新项目，或鼓励老顾客进行重复消费。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;“赠品促销” 的目的是使消费者记住企业和产品的名称，增强品牌影响力，激发顾客消费欲望，最终使消费者形成固定的消费习惯。因此，赠品促销策略最直接目的就是激发消费者的消费动机，提升美容 企业的销售额。<span style="margin: 0px; padding: 0px; line-height: 1.6;">下面本文也将分别讲述“赠品促销的各种策略”。（<span style="margin: 0px; padding: 0px; line-height: 1.6; font-size: 12px;">都是干货，不要眨眼</span>）</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bgc" data-src="https://mmbiz.qlogo.cn/mmbiz/QKDxrVYehicfckkmBlMQJXIw53MINbgibiaqibpYsZp7Yfich7ybmrmRvIR9clWXbgvjVuCRDXxnFPKQpUlzMNPYA6Q/0?wx_fmt=png" style="margin: 10px 0px; padding: 1px; background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ526qGOqjAD13t5oKYFJ5bUZqDPWvib33g7AHZF7zRXRWxibPv93HdN0HIg/0?wx_fmt=png); background-color: rgb(241, 151, 63); background-size: 100%; background-repeat: no-repeat;"></section><section style="margin: -12px 0px 0px; padding: 0px; text-align: center; color: inherit;"><section class="96wx-bdlc 96wx-bdrc 96wx-bdbc" style="margin: 0px; padding: 10px 5px; display: inline-block; border-left-width: 2px; border-left-style: solid; border-left-color: rgb(241, 151, 63); border-right-width: 2px; border-right-style: solid; border-right-color: rgb(241, 151, 63); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(241, 151, 63); background-color: rgb(254, 254, 254);"><section class="96wx-color" style="margin: 0px; padding: 0px; box-sizing: border-box; line-height: 10px; border-color: rgb(173, 105, 206); color: rgb(241, 151, 63);"><span style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(0, 0, 0);">同类商品赠品策略</span></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; 同类商品的赠品促销是指顾客消费某项目时，美容美发企业在促销活动中赠与顾客同类形的服务或商品。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">例如：“烫后送造型啫喱”；“护肤送护手霜”；“染后送固色护发”等此类都属于同类商品的赠品促销。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-left-width: 15px; border-left-style: solid; border-color: rgb(17, 159, 82) rgb(11, 181, 89) rgb(15, 191, 96) rgb(62, 165, 237);"><section style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; line-height: 25px; word-wrap: break-word !important;"><section style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; line-height: 1.4; word-wrap: break-word !important;"><section style="margin: 10px 0px 0px; padding: 0px; box-sizing: border-box; color: inherit; float: left;"><section class="96wx-bgc" style="margin: 0px; padding: 0px 5px; display: inline-block; color: rgb(255, 255, 255); font-size: 14px; font-weight: bold; line-height: 32px; vertical-align: top; float: inherit; box-sizing: border-box !important; background-color: rgb(62, 165, 237);">注意重点</section><section class="96wx-bdlc" style="margin: 0px; padding: 0px; display: inline-block; vertical-align: top; border-left-width: 18px; border-left-style: solid; border-left-color: rgb(62, 165, 237); color: inherit; box-sizing: border-box !important; border-top-width: 15px !important; border-top-style: solid !important; border-top-color: transparent !important; border-bottom-width: 16px !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;"></section></section></section><section style="margin: 0px; padding: 48px 20px 5px; max-width: 100%; box-sizing: border-box; font-size: 14px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;">赠送的同类商品应与本身项目具有一定关联性；</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;">赠送知名品牌产品，效果会更好；</span></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bgc" data-src="https://mmbiz.qlogo.cn/mmbiz/QKDxrVYehicfckkmBlMQJXIw53MINbgibiaqibpYsZp7Yfich7ybmrmRvIR9clWXbgvjVuCRDXxnFPKQpUlzMNPYA6Q/0?wx_fmt=png" style="margin: 10px 0px; padding: 1px; background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ526qGOqjAD13t5oKYFJ5bUZqDPWvib33g7AHZF7zRXRWxibPv93HdN0HIg/0?wx_fmt=png); background-color: rgb(239, 147, 38); background-size: 100%; background-repeat: no-repeat;"></section><section style="margin: -12px 0px 0px; padding: 0px; text-align: center; color: inherit;"><section class="96wx-bdlc 96wx-bdrc 96wx-bdbc" style="margin: 0px; padding: 10px 5px; display: inline-block; border-left-width: 2px; border-left-style: solid; border-left-color: rgb(239, 147, 38); border-right-width: 2px; border-right-style: solid; border-right-color: rgb(239, 147, 38); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(239, 147, 38); background-color: rgb(254, 254, 254);"><section class="96wx-color" style="margin: 0px; padding: 0px; box-sizing: border-box; line-height: 10px; border-color: rgb(173, 105, 206); color: rgb(239, 147, 38);"><span style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(0, 0, 0);">赠品促销策略</span></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">“赠品促销”中除了赠送同类商品的促销，还有赠送礼品的促销也是大家经常见到的。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0.5em 1.5em; padding: 0px; max-width: 100%; border: 0px; box-sizing: border-box !important; word-wrap: break-word !important;"><section class="96wx-bdc" style="margin: 0em 0px 0px; padding: 0px; max-width: 100%; border: 2px solid rgb(0, 0, 0); border-top-left-radius: 0.8em; border-top-right-radius: 0.8em; border-bottom-right-radius: 0.8em; border-bottom-left-radius: 0.8em; color: rgb(51, 51, 51); font-size: 1em; box-shadow: rgb(189, 189, 189) 0px 3px 5px; box-sizing: border-box !important; word-wrap: break-word !important;"><section style="margin: 0px; padding: 1.4em 5em 1em 1em; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><section style="margin: 0px; padding: 0px; max-width: 100%; line-height: 1.4; text-decoration: inherit; box-sizing: border-box !important; word-wrap: break-word !important;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: center;"><strong style="margin: 0px; padding: 0px;">礼品的“赠品促销”由来已久</strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: center;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp;早在100年前，外国商人来中国推销煤油，但中国百 姓用惯了菜油，嫌煤油贵，不愿买。于是洋人采用买煤油送煤油灯的办法来获得好名声，老百姓在白捡了一盏煤油灯的同时，从此都得买洋人的煤油。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">又如，深谙赠品促销魅力的洋人们在向喝惯了白酒的 中国人推销葡萄酒的时候，附加赠送一个精美的开瓶器，消费者喝完了萄萄酒舍不得把那个精美的开瓶器扔掉，有些人又会去买葡萄酒了。</p></section></section></section><section style="margin: -4em 10px 0px 0px; padding: 0px; max-width: 100%; line-height: 1.4; text-align: right; box-sizing: border-box !important; word-wrap: break-word !important;"><img class="96wx-img" data-ratio="0.92" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52VAPAFME8AYW9j3aicQ2TOoVwH6EaPAGhWhe5Ijsetc8KnDg3CbIIC6g/0?wx_fmt=png" data-type="png" data-w="50" height="50" width="50" style="margin: 0px; padding: 0px; max-width: 100%; height: 50px; width: 50px; box-sizing: border-box !important; word-wrap: break-word !important;"/></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;礼品赠送相对商品赠送促销更具吸引力，因为许多礼品更实用、更能被顾客认同。尽管“赠品促销”对消费者具有一定的吸引力，但如果赠品选择不当，对促销就会产生不利影响。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52xq7LHGsZtCDKZL8cy3ArufdlwbD3UyJMbGicJmG63qMM8NRG7eeibwMQ/0?wx_fmt=jpeg" data-ratio="0.7086330935251799" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">那么，我们究竟送什么样的赠品才是理想的促销礼品呢<span style="margin: 0px; padding: 0px; font-size: 24px;">？</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">有人认为，三“R”策略，是“赠品促销”中赠品成功运用的关键，即：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><strong style="margin: 0px; padding: 0px;">Relevance</strong> (相关性）：赠品须与产品相关，须符合品牌形象，须与产品的目标消费者相关。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><strong style="margin: 0px; padding: 0px;">Opetition</strong>(重复性）：赠品可供重复使用，重复出现在消费者的服前，令他回想起品牌及其种种好处。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><strong style="margin: 0px; padding: 0px;">Reward </strong>(获益感）：赠品须有价值感，令人想获得。那么哪些因素有助于提升赠品的获益感呢？根据研究发现，消费者对赠品促消中赠品的重视度依次为：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52nZNibJK44gUYtmRzlwszgic5PosibNCpPjExzvQD2zBtDJUD4xKYBZibhA/0?wx_fmt=png" data-ratio="0.771117166212534" data-w="367" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: auto;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;从上可知，实用的、质量好的、美观雅致的赠品才能打动消者，而有的企业以质次价廉的商品作为赠品，顾客不嗤之以鼻也就不足为怪了。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bgc" data-src="https://mmbiz.qlogo.cn/mmbiz/QKDxrVYehicfckkmBlMQJXIw53MINbgibiaqibpYsZp7Yfich7ybmrmRvIR9clWXbgvjVuCRDXxnFPKQpUlzMNPYA6Q/0?wx_fmt=png" style="margin: 10px 0px; padding: 1px; background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ526qGOqjAD13t5oKYFJ5bUZqDPWvib33g7AHZF7zRXRWxibPv93HdN0HIg/0?wx_fmt=png); background-color: rgb(239, 166, 38); background-size: 100%; background-repeat: no-repeat;"></section><section style="margin: -12px 0px 0px; padding: 0px; text-align: center; color: inherit;"><section class="96wx-bdlc 96wx-bdrc 96wx-bdbc" style="margin: 0px; padding: 10px 5px; display: inline-block; border-left-width: 2px; border-left-style: solid; border-left-color: rgb(239, 166, 38); border-right-width: 2px; border-right-style: solid; border-right-color: rgb(239, 166, 38); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(239, 166, 38); background-color: rgb(254, 254, 254);"><section class="96wx-color" style="margin: 0px; padding: 0px; box-sizing: border-box; line-height: 10px; border-color: rgb(173, 105, 206); color: rgb(239, 166, 38);"><span style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(0, 0, 0);">节日的赠品策略</span></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; 中国的节日很多，五千年文化造就众多的节日，随着改革开放，传统节日和西方节日都成了商家做促销的重头戏。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; “节日赠品”促销是指美容美发企业在特定的节日里为进店消费的顾客给予礼品。节日赠品促销是赠品策略中一种非常好的形式，因为在平时给予顾客馈赠，会让顾客感到有推销之嫌，节日送赠品做到名正言顺，顾客比较容易接受也更愿意参与。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ52WFIiay4zJicrQ0GhgN5vkZEJib0tyhY2twAbxZUt87Kkm7jntSUV5C1RA/0?wx_fmt=jpeg" data-ratio="0.6115107913669064" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-left-width: 15px; border-left-style: solid; border-color: rgb(17, 159, 82) rgb(11, 181, 89) rgb(15, 191, 96) rgb(38, 166, 239);"><section style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; line-height: 25px; word-wrap: break-word !important;"><section style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; line-height: 1.4; word-wrap: break-word !important;"><section style="margin: 10px 0px 0px; padding: 0px; box-sizing: border-box; color: inherit; float: left;"><section class="96wx-bgc" style="margin: 0px; padding: 0px 5px; display: inline-block; color: rgb(255, 255, 255); font-size: 14px; font-weight: bold; line-height: 32px; vertical-align: top; float: inherit; box-sizing: border-box !important; background-color: rgb(38, 166, 239);">注意重点</section><section class="96wx-bdlc" style="margin: 0px; padding: 0px; display: inline-block; vertical-align: top; border-left-width: 18px; border-left-style: solid; border-left-color: rgb(38, 166, 239); color: inherit; box-sizing: border-box !important; border-top-width: 15px !important; border-top-style: solid !important; border-top-color: transparent !important; border-bottom-width: 16px !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;"></section></section></section><section style="margin: 0px; padding: 48px 20px 5px; max-width: 100%; box-sizing: border-box; font-size: 14px;"><p class="gsText" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; line-height: 24px; box-sizing: border-box; text-align: justify; color: inherit;"><span style="margin: 0px; padding: 0px; font-size: 16px; color: inherit;">抓住节日的特定人群<br style="margin: 0px; padding: 0px;"/></span></p><p class="gsText" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; line-height: 24px; box-sizing: border-box; text-align: justify; color: inherit;"><br style="margin: 0px; padding: 0px;"/></p><p class="gsText" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; line-height: 24px; box-sizing: border-box; text-align: justify; color: inherit;"><span style="margin: 0px; padding: 0px; font-size: 16px;">充分营造气氛</span></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bgc" data-src="https://mmbiz.qlogo.cn/mmbiz/QKDxrVYehicfckkmBlMQJXIw53MINbgibiaqibpYsZp7Yfich7ybmrmRvIR9clWXbgvjVuCRDXxnFPKQpUlzMNPYA6Q/0?wx_fmt=png" style="margin: 10px 0px; padding: 1px; background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgJficPTicicfa7AvBYcGtJJ526qGOqjAD13t5oKYFJ5bUZqDPWvib33g7AHZF7zRXRWxibPv93HdN0HIg/0?wx_fmt=png); background-color: rgb(239, 147, 38); background-size: 100%; background-repeat: no-repeat;"></section><section style="margin: -12px 0px 0px; padding: 0px; text-align: center; color: inherit;"><section class="96wx-bdlc 96wx-bdrc 96wx-bdbc" style="margin: 0px; padding: 10px 5px; display: inline-block; border-left-width: 2px; border-left-style: solid; border-left-color: rgb(239, 147, 38); border-right-width: 2px; border-right-style: solid; border-right-color: rgb(239, 147, 38); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(239, 147, 38); background-color: rgb(254, 254, 254);"><section class="96wx-color" style="margin: 0px; padding: 0px; box-sizing: border-box; line-height: 10px; border-color: rgb(173, 105, 206); color: rgb(239, 147, 38);"><span style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(0, 0, 0);">如何把握赠品促销</span></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; 如何使所赠送的赠品产生最大的附加价值？关键是美容美发企业必须把握好分寸。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">1、成本的费用</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;选择赠品时除了应该考虑其吸引力，还须顾及其成本是否能为促销项目所负担。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">2、赠品展示的配合</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;在促销现场，赠品需要较好的进行陈列，周围进行装点一下，并标注“赠品”的字样，更能引起顾客对赠品的渴望。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">3、广告宣传的配合</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;POP是一祌较好的宣传形式，如海报、吊旗、宣传单张等，事先都需专门设计和制作，并安排好张贴工作。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">4、活动时间</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;一般来说，活动刚推出时，消费者会因新鲜而感兴趣，随着时间的推移到赠品的顾客都已经消费过了，效果也就随之减退。赠品活动时间不宜过长，一般为3-4周为宜。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHh3TyIl7j7I7TtCrwbicUT6fM7CgqE516pnsVqfCnrewjDpXundJ8Zbw/0?wx_fmt=jpeg" data-ratio="0.685251798561151" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(239, 147, 38); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section class="96wx-bdlc" style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(239, 147, 38); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section></section><section style="margin: 0px; padding: 5px 0px 0px; box-sizing: border-box; float: left; clear: none;"><p class="96wx-color" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap; font-size: 18px; color: rgb(239, 147, 38);">总而言之</p></section><section style="margin: 0px 0px 0px 15px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(239, 147, 38) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section class="96wx-bdrc" style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(239, 147, 38) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp; &nbsp;&quot;赠从促销”活动的确是收效不错的工具之一，然而要获得成功，实属不易。赠品促销投资不菲，单是赠品本身就是一笔较大的开支，再加上广告宣传等费用，而且一旦组织不当，极会好事变成坏事。其中最关键要素是赠品的选择以及宣传的力度，所以，有无经验会使活动成效截然不同。</span><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; text-align: center;"><section style="margin: 5px 0px 0px; padding: 10px; border: none; text-align: left; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img class="96wx-img" data-ratio="0.03802281368821293" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-w="526" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 526px; display: block;"/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.6082089552238806" data-w="536" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/></p></section></section></p><p><br/></p>','','1469069994459','1180','1180',null,null,null,null,null),
('17','gaamtDGdR3EWq7xACDyRYZWTxscBHkChIwsPAhPz2LQ','（三）促销实战全攻略之优惠卡促销','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000238&idx=4&sn=ccdd731fbbbefd408f45b4bef20e0d13#rd','本文将会讲述如何使用优惠卡进行促销，并介绍儿种较为特殊的优惠卡促销。','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49BiazjupmIrtjUZN9rPibXbNeibWWdeoAmwbaGnrK765rSgeiayFNTAHvHq2A/0','http://7xss26.com1.z0.glb.clouddn.com/zefun/wechat/1469069853040','gaamtDGdR3EWq7xACDyRYV6ZXx-15qio41DSKn6cY-4','<section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 5px auto; padding: 0px; border: none; width: 500.390625px; background-image: none;"><img class="96wx-img" data-ratio="1" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 30px; display: inline-block; vertical-align: middle;"/><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;">点击上面的蓝字关注我们哦！</section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WiarnADib0TVElB8nBOiap4x7o8Va7ZPtS71fEauzUDHrJE3S7Gaer4Q1cCkw3FvICy145sIUgzn0Usw/0?wx_fmt=jpeg" data-ratio="0.6187050359712231" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">“优惠促销”是美容美发企业使用较多的促销方式，优惠卡往往是锁定顾客的绝佳工具。目前大部分美容美发企业通过售卖会员卡来增加业绩和留住顾客。本文将会讲述如何使用优惠卡进行促销，并介绍儿种较为特殊的优惠卡促销。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0.5em 0px; padding: 0px; border: none; text-align: center; box-sizing: border-box;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; display: inline-block; text-align: left; font-size: 1.5em; font-family: inherit; font-weight: inherit; text-decoration: inherit; border-color: rgb(212, 84, 231) rgb(255, 255, 255) rgb(255, 255, 255); box-sizing: border-box;"><section class="96wx-bdtc 96wx-bdlc" style="margin: 0.2em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; width: 0px; border-left-width: 0.6em; border-left-style: solid; border-left-color: rgb(212, 84, 231); border-top-width: 0.6em; border-top-style: solid; border-top-color: rgb(212, 84, 231); box-sizing: border-box; border-right-width: 0.6em !important; border-right-style: solid !important; border-right-color: transparent !important; border-bottom-width: 0.6em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; display: inline-block; vertical-align: top; box-sizing: border-box; border-top-color: rgb(212, 84, 231); max-width: 80%;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(212, 84, 231);"><span style="margin: 0px; padding: 0px; font-size: 20px;">优惠卡促销的特性</span></section></section><section class="96wx-bdrc 96wx-bdbc" style="margin: 0px 0px 0.2em; padding: 0px; display: inline-block; vertical-align: bottom; width: 0px; border-right-width: 0.6em; border-right-style: solid; border-right-color: rgb(212, 84, 231); border-bottom-width: 0.6em; border-bottom-style: solid; border-bottom-color: rgb(212, 84, 231); box-sizing: border-box; border-left-width: 0.6em !important; border-left-style: solid !important; border-left-color: transparent !important; border-top-width: 0.6em !important; border-top-style: solid !important; border-top-color: transparent !important;"></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">优惠卡，是许多行业用来吸引顾客上门的促销活动，美容美发行业也不例外，只是在运用的过程中，有许多的经营者并不是很清楚优惠卡的使用目的，结果非但无法达到预期的效果，甚至造成相反效果，伤害到原有的经营方式。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">优惠卡类型的促销活动，有几个特性：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">优惠卡，是许多行业用来吸引顾客上门的促销活动，美容美发行业也不例外，只是在运用的过程中，有许多的经营者并不是很清楚优惠卡的使用目的，结果非但无法达到预期的效果，甚至造成相反效果，伤害到原有的经营方式。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">优惠卡类型的促销活动，有几个特性：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(241, 154, 207);"><section style="margin: 0px auto; padding: 0px 1em; border: none; display: inline-block; width: 556px;"><section style="margin: 0px; padding: 0px; font-size: 18px; letter-spacing: -2px; float: left;"><span style="margin: 0px; padding: 0px;"><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.7; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.5; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.3; font-family: 宋体;">&gt;</span></span></section><section class="96wx-color" style="margin: 0px 0px 0px 5px; padding: 0px; color: rgb(241, 154, 207); float: left;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; color: inherit; font-size: 18px;">促销期限较长</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">优惠卡的使用期限，一般短则三个月，长则一年，优惠卡的目的多在稳定现有的顾客，而非用来增加新的顾客。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(241, 154, 207);"><section style="margin: 0px auto; padding: 0px 1em; border: none; display: inline-block; width: 556px;"><section style="margin: 0px; padding: 0px; font-size: 18px; letter-spacing: -2px; float: left;"><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.7; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.5; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.3; font-family: 宋体;">&gt;</span></section><section class="96wx-color" style="margin: 0px 0px 0px 5px; padding: 0px; color: rgb(241, 154, 207); float: left;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; color: inherit;">与其他的促销活动产生排斥</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">一但美容院推行优惠卡后，在以后举办任何的促销活时，都必须将持卡人的利益考虑在内，否则两相抵触，便是美容院与顾客两败俱伤。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(241, 154, 207);"><section style="margin: 0px auto; padding: 0px 1em; border: none; display: inline-block; width: 556px;"><section style="margin: 0px; padding: 0px; font-size: 18px; letter-spacing: -2px; float: left;"><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.7; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.5; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.3; font-family: 宋体;">&gt;</span></section><section class="96wx-color" style="margin: 0px 0px 0px 5px; padding: 0px; color: rgb(241, 154, 207); float: left;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; color: inherit;">业绩是以稳定方式成长</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">在推行优惠卡时不可完全依赖优惠卡锁定顾客或者想通过优惠卡迅速回收资金，这种急功近利的思想将会起到相反的作用。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(241, 154, 207);"><section style="margin: 0px auto; padding: 0px 1em; border: none; display: inline-block; width: 556px;"><section style="margin: 0px; padding: 0px; font-size: 18px; letter-spacing: -2px; float: left;"><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.7; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.5; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.3; font-family: 宋体;">&gt;</span></section><section class="96wx-color" style="margin: 0px 0px 0px 5px; padding: 0px; color: rgb(241, 154, 207); float: left;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; color: inherit;">延续性强</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">在推广各式优惠卡时，最大的好处就是可以不断延续下去，尤其是会员卡，到了卡上储值用完时，不须多花脑筋思考别的花样，顾客也能续卡，可以持续稳定下去。<br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(241, 154, 207);"><section style="margin: 0px auto; padding: 0px 1em; border: none; display: inline-block; width: 556px;"><section style="margin: 0px; padding: 0px; font-size: 18px; letter-spacing: -2px; float: left;"><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.7; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.5; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.3; font-family: 宋体;">&gt;</span></section><section class="96wx-color" style="margin: 0px 0px 0px 5px; padding: 0px; color: rgb(241, 154, 207); float: left;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; color: inherit;">了解顾客的动向</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">所有的优惠卡，都必须加以编号，建立顾客档案，用来了解顾客留存状况及顾客的消费习惯。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(241, 154, 207);"><section style="margin: 0px auto; padding: 0px 1em; border: none; display: inline-block; width: 556px;"><section style="margin: 0px; padding: 0px; font-size: 18px; letter-spacing: -2px; float: left;"><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.7; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.5; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.3; font-family: 宋体;">&gt;</span></section><section class="96wx-color" style="margin: 0px 0px 0px 5px; padding: 0px; color: rgb(241, 154, 207); float: left;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; color: inherit;">与顾客沟通的桥梁</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">持优惠卡的顾客多为老顾客，与他们沟通可以从他们那得到宝贵的意见，对企业发展起到极大的推动作用。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0.5em 0px; padding: 0px; border: none; text-align: center; box-sizing: border-box;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; display: inline-block; text-align: left; font-size: 1.5em; font-family: inherit; font-weight: inherit; text-decoration: inherit; border-color: rgb(212, 84, 231) rgb(255, 255, 255) rgb(255, 255, 255); box-sizing: border-box;"><section class="96wx-bdtc 96wx-bdlc" style="margin: 0.2em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; width: 0px; border-left-width: 0.6em; border-left-style: solid; border-left-color: rgb(212, 84, 231); border-top-width: 0.6em; border-top-style: solid; border-top-color: rgb(212, 84, 231); box-sizing: border-box; border-right-width: 0.6em !important; border-right-style: solid !important; border-right-color: transparent !important; border-bottom-width: 0.6em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; display: inline-block; vertical-align: top; box-sizing: border-box; border-top-color: rgb(212, 84, 231); max-width: 80%;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(212, 84, 231);"><span style="margin: 0px; padding: 0px; font-size: 20px;">会员卡促销</span></section></section><section class="96wx-bdrc 96wx-bdbc" style="margin: 0px 0px 0.2em; padding: 0px; display: inline-block; vertical-align: bottom; width: 0px; border-right-width: 0.6em; border-right-style: solid; border-right-color: rgb(212, 84, 231); border-bottom-width: 0.6em; border-bottom-style: solid; border-bottom-color: rgb(212, 84, 231); box-sizing: border-box; border-left-width: 0.6em !important; border-left-style: solid !important; border-left-color: transparent !important; border-top-width: 0.6em !important; border-top-style: solid !important; border-top-color: transparent !important;"></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><br style="margin: 0px; padding: 0px;"/><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WiarnADib0TVElB8nBOiap4x7oGYvlFsd8EcaMA1ibjcw4D8BSblweewH8wx3JEdjJu2QV9tRibkQ5errg/0?wx_fmt=jpeg" data-ratio="0.6134122287968442" data-w="507" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: auto;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">这里的会员卡，是指目前美容美发企使用较多的可储值的优惠卡，例如：“会员金卡”、“会员银卡”等不同称谓，但其性质都是一样的，顾客须先购买会员卡，店家给今一定折扣，顾客每次消费后从卡上扣掉消费金额。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(241, 154, 207);"><section style="margin: 0px auto; padding: 0px 1em; border: none; display: inline-block; width: 556px;"><section style="margin: 0px; padding: 0px; font-size: 18px; letter-spacing: -2px; float: left;"><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.7; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.5; font-family: 宋体;">&gt;</span><span class="96wx-color" style="margin: 0px; padding: 0px; color: rgb(241, 154, 207); font-weight: bold; opacity: 0.3; font-family: 宋体;">&gt;</span></section><section class="96wx-color" style="margin: 0px 0px 0px 5px; padding: 0px; color: rgb(241, 154, 207); float: left;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; color: inherit;"><span style="margin: 0px; padding: 0px; color: inherit;">如何销售会员卡</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">会员卡从本质上对美容美发企业的利益是有损的，甚至是赔本的，因为持会员卡来消费的顾客，都必须打折扣，有人也许会问为什么还要卖会员卡呢？因为会员卡可以帮助发型师或美容师稳定顾客，减少流失。减少顾客流失就等于创造业绩的机会。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">大部分顾客购买会员卡是基于对某个发型师或是美容师的信任，同时也能享受优惠折扣，而美容院售卖会员卡目的是为了留住顾客，对本身就没什么利润可言的会员卡，用什么方式售卖最好呢？以下是案例分析：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 18px; background-color: rgb(0, 0, 0);"><strong style="margin: 0px; padding: 0px;">&nbsp;&nbsp;</strong></span><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px;"></span><span style="margin: 0px; padding: 0px; font-size: 18px;">案 &nbsp;例 &nbsp;</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; border-width: 2px; border-style: solid dotted; border-color: rgb(75, 69, 73);"><section style="margin: 0px; padding: 20px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: center;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">&nbsp; &nbsp; &nbsp;<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 1.6; font-size: 18px;">维纳斯发型设计中心&nbsp;</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: center;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 1.6; font-size: 18px;">“会员招募中……”会员卡促销活动</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp; 维纳斯发型设计中心为推广会员卡，策划了一个限时7日的“会员招募中……”会员卡促销活动，在活动期间，“凡购买会员卡的顾客，可获得价值680元的意大利原装燕麦营养发膜1桶”。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp; 虽然赠送了营养发膜，顾客在家里无法自行完成护发 工作.那么购卡的会员在店内进护发仅收10元的手工费’1桶发膜大约可以做10次以上的护发，顾客只需花一百多元就能享受高档护发品的服务。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WiarnADib0TVElB8nBOiap4x7o1JyGZbgHibhwYT3IaahooV0dwEMRnrhMibTnCOyAejRCJibPFhjAVGNVw/0?wx_fmt=jpeg" data-ratio="0.5035971223021583" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 12px;">售卖会员卡的同时又能推动护法，一举两得</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0);">案例分析</span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">1、在这个案例中，这个POP广告处抨于店堂内的，因为购买会员卡的顾客多是老顾客，因此POP贴在橱窗上不会有任何效少，案例中没有明示会员卡的价格，会让感兴趣的顾客主动问理发师，由此产生话题，发型师也就有了发挥的空间。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">2、此例中购会员卡即可获得“原装进口的营养发膜1桶”，相对顾客而言是价值较高的产品，能引起顾客兴趣，限时优惠让顾客感到机会难得。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">3、明知会员卡无利可言，发型中心为什么会送这么贵的呢？因为店家虽然送了产品，但护发的过程在家中较难完成，那么“会员护发仅收10元手工费”亦足够让店家收回产品成本，同时因护法发周期较短，会增加顾客来店的频率，当然发型店也就创造更多的顾客消费机会。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em auto; padding: 0px;"><section style="margin: -5px 5px 0px 0px; padding: 0px; width: 16px; float: left; height: auto !important;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-size: 24px; letter-spacing: -1px; display: inline-block;"><span style="margin: 0px; padding: 0px; color: rgb(255, 172, 213);">推卡重点</span></p></section><section class="96wx-bdlc" style="margin: 2px 0px 0px 30px; padding: 0px 0px 0px 8px; width: auto; border-left-width: 2px; border-left-style: solid; border-left-color: rgb(241, 146, 209); line-height: 1.3em;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.3em;">1、设计会员卡，应与美容美发企业自身的定位相匹配，价格不能太高，否则因客群的承受能力限制，售卖就会出现难度，一旦会员售山较少，店内的经营就不会稳定，客量也极不稳定。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.3em;">2、会员卡促销的同时，应做好会员档案，并定期进行分析，对顾客每次消费的取向、喜好等进行分析，便于向顾客推荐其它服务项目，同时留意会员卡的消费余额，及时建议顾客续卡。</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0.5em 0px; padding: 0px; border: none; text-align: center; box-sizing: border-box;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; display: inline-block; text-align: left; font-size: 1.5em; font-family: inherit; font-weight: inherit; text-decoration: inherit; border-color: rgb(212, 84, 231) rgb(255, 255, 255) rgb(255, 255, 255); box-sizing: border-box;"><section class="96wx-bdtc 96wx-bdlc" style="margin: 0.2em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; width: 0px; border-left-width: 0.6em; border-left-style: solid; border-left-color: rgb(212, 84, 231); border-top-width: 0.6em; border-top-style: solid; border-top-color: rgb(212, 84, 231); box-sizing: border-box; border-right-width: 0.6em !important; border-right-style: solid !important; border-right-color: transparent !important; border-bottom-width: 0.6em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; display: inline-block; vertical-align: top; box-sizing: border-box; border-top-color: rgb(212, 84, 231); max-width: 80%;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(212, 84, 231);"><span style="margin: 0px; padding: 0px; font-size: 20px;">推荐款促销</span></section></section><section class="96wx-bdrc 96wx-bdbc" style="margin: 0px 0px 0.2em; padding: 0px; display: inline-block; vertical-align: bottom; width: 0px; border-right-width: 0.6em; border-right-style: solid; border-right-color: rgb(212, 84, 231); border-bottom-width: 0.6em; border-bottom-style: solid; border-bottom-color: rgb(212, 84, 231); box-sizing: border-box; border-left-width: 0.6em !important; border-left-style: solid !important; border-left-color: transparent !important; border-top-width: 0.6em !important; border-top-style: solid !important; border-top-color: transparent !important;"></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">顾客推荐卡是拓新客源的一种有效方法。这种介绍卡，是通 过店内诚顺客的传播，介绍亲朋好友来自己信赖的美容美发店消费，顾客推荐卡运用得当，能起到意想不到的效果。<br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WiarnADib0TVElB8nBOiap4x7osqIIXDbv4RniaKty8rGAybVrZDKfABPrDCuRia3VcorbpSfribDnBkg7w/0?wx_fmt=jpeg" data-ratio="1.3811074918566775" data-w="307" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: auto;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">顾客给自己的朋友推荐“会员介绍卡”，在朋友那里不仅觉得自己有面子，同时把技术和服务好的发型店介绍给朋友，她的朋友会感激她，而且去消费时还能获得种种好处，这就是“会员介绍卡”之所以能成功的关键。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em auto; padding: 0px;"><section class="96wx-bgc" style="margin: 0px; padding: 5px 0px; width: 30px; float: right; height: auto !important; background-color: rgb(241, 146, 209);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-size: 24px; letter-spacing: -1px; display: inline-block;">重点</p></section><section class="96wx-bdc" style="margin: 0px 30px 0px 0px; padding: 0px 0px 0px 8px; width: auto; line-height: 1.3em; border: 1px solid rgb(241, 146, 209);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 5px 0px; clear: none; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; line-height: 1.3em;">在使用顾客推荐卡时，应给予帮助推荐新顾客的忠实顾客进行奖励，只有这样，顾客才更乐意帮助店家推荐，才可以达到一传十、十传百的口碑效应。</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0.5em 0px; padding: 0px; border: none; text-align: center; box-sizing: border-box;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; display: inline-block; text-align: left; font-size: 1.5em; font-family: inherit; font-weight: inherit; text-decoration: inherit; border-color: rgb(204, 66, 233) rgb(255, 255, 255) rgb(255, 255, 255); box-sizing: border-box;"><section class="96wx-bdtc 96wx-bdlc" style="margin: 0.2em 0px 0px; padding: 0px; display: inline-block; vertical-align: top; width: 0px; border-left-width: 0.6em; border-left-style: solid; border-left-color: rgb(204, 66, 233); border-top-width: 0.6em; border-top-style: solid; border-top-color: rgb(204, 66, 233); box-sizing: border-box; border-right-width: 0.6em !important; border-right-style: solid !important; border-right-color: transparent !important; border-bottom-width: 0.6em !important; border-bottom-style: solid !important; border-bottom-color: transparent !important;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; display: inline-block; vertical-align: top; box-sizing: border-box; border-top-color: rgb(204, 66, 233); max-width: 80%;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(204, 66, 233);"><span style="margin: 0px; padding: 0px; font-size: 20px;">把握优惠卡促销的分寸</span></section></section><section class="96wx-bdrc 96wx-bdbc" style="margin: 0px 0px 0.2em; padding: 0px; display: inline-block; vertical-align: bottom; width: 0px; border-right-width: 0.6em; border-right-style: solid; border-right-color: rgb(204, 66, 233); border-bottom-width: 0.6em; border-bottom-style: solid; border-bottom-color: rgb(204, 66, 233); box-sizing: border-box; border-left-width: 0.6em !important; border-left-style: solid !important; border-left-color: transparent !important; border-top-width: 0.6em !important; border-top-style: solid !important; border-top-color: transparent !important;"></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WiarnADib0TVElB8nBOiap4x7onMLolhmpOUgMlQqAwsRLREibsNLJGSdC7laxxUXMYicCNPc0OkabOk0g/0?wx_fmt=jpeg" data-ratio="0.5935251798561151" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; border: 0px none;"><section style="margin: 10px auto; padding: 0px; width: 556px; display: inline-block; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; display: inline-block;"><section class="96wx-bgc" style="margin: 0px; padding: 0px; width: 40px; height: 40px; text-align: center; border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; line-height: 40px; background-color: rgb(221, 139, 220);"><span class="wx96Diy" style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(255, 255, 255);">1</span></section></section><section style="margin: -30px 50px 0px; padding: 0px; text-align: justify;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; line-height: 1.5em; color: inherit; word-wrap: break-word;"><span style="margin: 0px; padding: 0px; text-decoration: underline;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px;">优惠卡本身就是一种广告</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; line-height: 1.5em; color: inherit; word-wrap: break-word;"><span style="margin: 0px; padding: 0px; color: inherit;">优惠卡是顾客自愿购买的，使用时间长，顾客一般都会随身携带，因此，优惠卡的制作应该选用较好的材质，在设计上也应该充分体现美容美发企业的品牌形象，不仅能给顾客一个好印象，同时能使偶然见到此卡的人有想拥有一张的感觉，其实优惠卡本身就是一种很好的广告媒介。</span></p></section></section></section><section class="wx96Diy cur" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; border: 0px none;"><section style="margin: 10px auto; padding: 0px; width: 556px; display: inline-block; box-sizing: border-box; text-align: right;"><section style="margin: 0px; padding: 0px; display: inline-block;"><section class="96wx-bgc" style="margin: 0px; padding: 0px; width: 40px; height: 40px; text-align: center; border-top-left-radius: 40px; border-top-right-radius: 40px; border-bottom-right-radius: 40px; border-bottom-left-radius: 40px; line-height: 40px; background-color: rgb(221, 139, 220);"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 4px;"><span style="margin: 0px; padding: 0px; font-size: 18px;">2</span></span></section></section><section style="margin: -30px 50px 0px; padding: 0px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; line-height: 1.5em;"><span style="margin: 0px; padding: 0px; color: inherit;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; text-decoration: underline;">&nbsp;<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px;">优惠卡应注意折扣成本</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">美容美发企业在设计优惠卡时应仔细核算成本，以免造成进退两 难的局面。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p></section></section></section><section class="wx96Diy cur" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; border: 0px none;"><section style="margin: 10px auto; padding: 0px; width: 556px; display: inline-block; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; display: inline-block;"><section class="96wx-bgc" style="margin: 0px; padding: 0px; width: 40px; height: 40px; text-align: center; border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; line-height: 40px; background-color: rgb(221, 139, 220);"><span class="wx96Diy" style="margin: 0px; padding: 0px; font-size: 18px; color: rgb(255, 255, 255);">3</span></section></section><section style="margin: -30px 50px 0px; padding: 0px; text-align: justify;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; line-height: 1.5em; color: inherit; word-wrap: break-word;"><span style="margin: 0px; padding: 0px; color: inherit;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; text-decoration: underline;"><strong style="margin: 0px; padding: 0px;">制定完善的优惠卡顾客档案</strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">要将售后服务做到尽善尽美，必须建立完善的顾客档案，通过顾客消费记录将顾客群体分为不同的消费群，针对不同的顾客群采取不同的营销手段，保持与顾客间的双向沟通<span style="margin: 0px; padding: 0px; color: inherit; line-height: 1.5em;">。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; color: inherit; line-height: 1.5em;"><br style="margin: 0px; padding: 0px;"/></span></p></section></section></section><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(219, 41, 217); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section class="96wx-bdlc" style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(219, 41, 217); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section></section><section style="margin: 0px; padding: 5px 0px 0px; box-sizing: border-box; float: left; clear: none;"><p class="96wx-color" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap; font-size: 18px; color: rgb(219, 41, 217);"><span style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(0, 0, 0);">总而言之</span></p></section><section style="margin: 0px 0px 0px 15px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(219, 41, 217) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section class="96wx-bdrc" style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(219, 41, 217) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">优惠卡促销对于企业经营来讲，是提高营业额和留住顾客的好方法，对顾客各而言能以更优惠的价格享受更好的服务，因此优惠卡促销是一种双赢的促销方法。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">本文讲述了美容美发企业常用的会员卡促销，及会员卡售卖的促销方式，并讲解了推荐卡这种较特殊优惠卡，目的是为了抛砖引玉，企业可以根据自身情况，设计适合自己的优惠卡。&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WiarnADib0TVElB8nBOiap4x7obxNK9voia2pXX955Ufe5PvHegc0DsMuq87e5wv7LXKdLUWS42LQ36TQ/0?wx_fmt=jpeg" data-ratio="0.6636690647482014" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img class="96wx-img" data-ratio="0.03802281368821293" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-w="526" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; line-height: 25.6000003814697px; white-space: normal; width: 526px; display: block;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.6079136690647482" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/></p><p><br/></p>','','1469069994460','1180','1180',null,null,null,null,null),
('18','gaamtDGdR3EWq7xACDyRYfcCZh72eExDcO1hFBmboq4','（四）促销实战全攻略之积分促销','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000245&idx=1&sn=c4097d4693c306133edbaf5beb7b6b50#rd','“积分促销”是另一种先消费后获赠的促销活动，与其它促销活动相比，“枳分促促销”主要目的是鼓励顾各持续消费，培奍顾客忠诚度。','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49BiaBBJiakbfibrfib011SzC7OicWDVquFVF4RUib6S263sDqyCkdxjjLZrjS8A/0','http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/wechat/1469072013429','gaamtDGdR3EWq7xACDyRYdCReJytYjaRwNNB-f17at0','<section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 5px auto; padding: 0px; border: none; width: 456.296875px; background-image: none;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf4Mm0CFWFnXy6KtFpy8UlvNybKSHlfqrs57ia4mBLvyO6V4S9vkNwDUhNFcLS82zT6fws4iaw8tyZicQ/0?wx_fmt=gif" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-ratio="1" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 30px; display: inline-block; vertical-align: middle;"/><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;">点击上面的蓝字关注我们哦！</section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgqOhjsNIW6HazOQqpia8qYGU3u15rszzhLonIn1muptFiaVHQicaQrMuhXBXic3yMNt9tJFH6Vn5oibtg/0?wx_fmt=jpeg" data-ratio="0.5014084507042254" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">“积分促销”是另一种先消费后获赠的促销活动，与其它促销活动相比，“枳分促促销”主要目的是鼓励顾各持续消费，培奍顾客忠诚度。对于美容美发消费，本身就是一种持续性消费的服务，“积分促销”是比较容易操作的。&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">“积分促销”也称集点促销，是顾客在消费后得到分数成数，累计到一定分数或点数时，即可获赠相应的奖励。与之前的“赠品促销”相比，“赠品促销”主要是为了吸引顾客来消费，而“积分促销”则是为了达到客持续消费的目的。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">本文接下来将结合具体案例，分别介绍不同的积分促销：</p><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></section><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em auto; padding: 0px;"><section style="margin: 10px 0px; padding: 0px 3px; box-sizing: border-box; text-align: center;"><section class="96wx-bdtc 96wx-bdrc" style="margin: -2px 0px 0px 2em; padding: 0px; height: 3em; border-right-width: 1px; border-right-style: solid; border-right-color: rgb(75, 190, 233); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(75, 190, 233); box-sizing: border-box;"></section><section style="margin: -2.5em 0px 0px; padding: 5px 15px 0px; display: inline-block; vertical-align: top; font-weight: bold;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-size: 20px;"><span style="margin: 0px; padding: 0px;">无时间限制的积分促销</span></p></section><section style="margin: -3.5em 0px 0px; padding: 0px; box-sizing: border-box;"><section class="96wx-bdbc 96wx-bdlc" style="margin: 0px 2em 0px 0px; padding: 0px; height: 3em; border-left-width: 1px; border-left-style: solid; border-left-color: rgb(75, 190, 233); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(75, 190, 233); box-sizing: border-box;"></section></section></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">这种方式指的是无论何时，顾客消费后都可得到积分，积分只要积累到一定数量，就可兑换规定的相应礼品或折惠。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgqOhjsNIW6HazOQqpia8qYGI6tRrvlC0ovmWqn3v4KtNoVVgiaEtBe4ufQRwNBpJauSribHNG670C7g/0?wx_fmt=jpeg" data-ratio="1" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px;">KOKO发型设计中心印制了200份会员资料册，专门准备一个资料架，将会员资料册进行编号放置在资料架上，让顾客感觉到本店的会员众多，参加活动的顾客也就会更踊跃了。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">“积分促销” 活动需要建立完善的会员资料，这样可以对参与的顾客消费进行详细记录，同时也需记录积分。<br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">KOKO发型设计中心因注重服务品质、定价合理，所以平时没有顾客消费打折。但因为市场原因，虽然价格合理，但许多顾客已经习惯打折，对时尚无忧没有折扣颇有微辞，因此在本案的设计目的是为了给予老客优惠，而且没有限制时间。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">本案中顾客消费的次数越多，积分就越高，而且价格高的服务项目分数也相应较高，这样老顾客除了能享受折扣，还能获得商品券（购买商品用的代币券），商品券的赠送，在一定程度上推动了店内产品的的外卖业绩。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section weixinid="19" class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(71, 187, 231); box-sizing: border-box; font-family: 微软雅黑;"><section data-width="100%" style="margin: 0px; padding: 0px; width: 556px; box-sizing: border-box;"><section data-width="100%" class="96wx-bdtc 96wx-bdbc" style="margin: 15px 0px; padding: 0px; width: 556px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(71, 187, 231); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(71, 187, 231); color: inherit; font-size: 14px; display: inline-block; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section class="96wx-bdrc 96wx-bdlc" data-style="line-height:24px;color:rgb(89, 89, 89); font-size:20px;" style="margin: -15px 15px; padding: 15px; border-right-width: 2px; border-right-style: solid; border-right-color: rgb(71, 187, 231); border-left-width: 2px; border-left-style: solid; border-left-color: rgb(71, 187, 231); color: inherit; box-sizing: border-box;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 24px; color: rgb(12, 12, 12); border-color: rgb(12, 12, 12);"><span style="margin: 0px; padding: 0px; font-size: 20px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 213, 255); line-height: 32px;">重点关注</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;">1、无间限制的“积分促销”，最大的好处是可以提供较 低的折扣或更高额的奖励来吸引顾客，不限时间本身也可让顾客放心参加。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;">2、没有时间限制的不利之处在于，活动一经宣布，美容美发企业就不得不常年做下去，即使效果不佳或企业经营发生变化，都不能轻易中止，以免使信誉蒙受不利影响。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 24px; color: rgb(12, 12, 12); border-color: rgb(12, 12, 12);"><span style="margin: 0px; padding: 0px; font-size: 16px;"></span><br style="margin: 0px; padding: 0px;"/></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4vorQojPglEpaFe22LQJEL0wt1V4CgiazWSFYDibh5SiaicuyGP3Ovh56Wg/0?wx_fmt=jpeg" data-ratio="0.27605633802816903" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em auto; padding: 0px;"><section style="margin: 10px 0px; padding: 0px 3px; box-sizing: border-box; text-align: center;"><section class="96wx-bdtc 96wx-bdrc" style="margin: -2px 0px 0px 2em; padding: 0px; height: 3em; border-right-width: 1px; border-right-style: solid; border-right-color: rgb(75, 190, 233); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(75, 190, 233); box-sizing: border-box;"></section><section style="margin: -2.5em 0px 0px; padding: 5px 15px 0px; display: inline-block; vertical-align: top; font-weight: bold;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-size: 20px;">有时间限制的积分促销</p></section><section style="margin: -3.5em 0px 0px; padding: 0px; box-sizing: border-box;"><section class="96wx-bdbc 96wx-bdlc" style="margin: 0px 2em 0px 0px; padding: 0px; height: 3em; border-left-width: 1px; border-left-style: solid; border-left-color: rgb(75, 190, 233); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(75, 190, 233); box-sizing: border-box;"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">大多数“积分促销”活动都会规定一个时限，即在规定的促销时间内顾客消费才能得到积分，并且只有在规定的促销期内顾客达规的积分数才能兑换礼品。如果超过了规定的促销极限，顾客不但消费得不到积分，以前的消费积分也就作废了。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4earSD3ibSTqj05FShEBaWKZIwRaulR5TlRDiaNtRZJQnF3B7YEuxovVw/0?wx_fmt=png" data-ratio="0.8338028169014085" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 12px;">*此为巴黎欧莱雅护肤品有时间限制的积分兑换规则</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section weixinid="19" class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(71, 187, 231); box-sizing: border-box; font-family: 微软雅黑;"><section data-width="100%" style="margin: 0px; padding: 0px; width: 556px; box-sizing: border-box;"><section data-width="100%" class="96wx-bdtc 96wx-bdbc" style="margin: 15px 0px; padding: 0px; width: 556px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(71, 187, 231); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(71, 187, 231); color: inherit; font-size: 14px; display: inline-block; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section class="96wx-bdrc 96wx-bdlc" data-style="line-height:24px;color:rgb(89, 89, 89); font-size:20px;" style="margin: -15px 15px; padding: 15px; border-right-width: 2px; border-right-style: solid; border-right-color: rgb(71, 187, 231); border-left-width: 2px; border-left-style: solid; border-left-color: rgb(71, 187, 231); color: inherit; box-sizing: border-box;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; line-height: 24px; color: rgb(12, 12, 12); border-color: rgb(12, 12, 12);"><span style="margin: 0px; padding: 0px; font-size: 20px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 213, 255); line-height: 32px;">重点关注</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;">1、有时间限制的“积分促销”活动，是期望顾客在短期内增加消费次数或消费金额，而且，对企业而言更易于控制活动的预算，这比无时间限制的积分促销更为企业乐于采用。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;">2、限定时间内参加活动的人不多，就违背了企业的促销本意。因此，限定时间的“积分促销”，要注意事先有效的宣传，并且，参加活动的难度不能太大，毕竟顾客为此准备的时间有限。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 16px;">3、企业举办“积分促销”活动还应注意洞悉竞争对手的动向。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 16px;"></span></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0em 0px 1em; padding: 0px;"><section style="margin: 0px; padding: 0px; width: 1em; display: inline-block; vertical-align: middle;"><span class="96wx-bgc" style="margin: 0px; padding: 0px; width: 1em; height: 1em; display: block; opacity: 0.2; color: rgb(255, 255, 255); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; background-color: rgb(211, 173, 108);"></span><span class="96wx-bgc" style="margin: 2px 0px; padding: 0px; width: 1em; height: 1em; display: block; opacity: 0.6; color: rgb(255, 255, 255); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; background-color: rgb(211, 173, 108);"></span><span class="96wx-bgc" style="margin: 0px; padding: 0px; width: 1em; height: 1em; display: block; opacity: 1; color: rgb(255, 255, 255); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; background-color: rgb(211, 173, 108);"></span></section><section style="margin: -2.2em 0px 0px; padding: 0px 0px 0px 1.5em; vertical-align: middle;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 20px;">如何掌握积分促销的分寸</span></p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">1、奖励的方式</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">“积分促销”折算方式要简单可行，一目了然。在兑换积分的设计上，一定要顾及到“轻轻松松即可换得”的原则，设计几个只需少量的积分就可得到的赠品。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">2、活动的时间</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">活动时间不宜过短，以留给顾客足够的时间获得积分。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">3、操作的原则</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">积分也应该是顾客方便得到的，如洗头、剪发等这些低值项目也能获得积分，也只有这样，顾客才会乐于参加积分活动。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(211, 173, 108); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section class="96wx-bdlc" style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(211, 173, 108); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section></section><section style="margin: 0px; padding: 5px 0px 0px; box-sizing: border-box; float: left; clear: none;"><p class="96wx-color" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap; font-size: 18px; color: rgb(211, 173, 108);"><span style="margin: 0px; padding: 0px; font-size: 20px; color: rgb(0, 0, 0);">总的来说</span></p></section><section style="margin: 0px 0px 0px 15px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(211, 173, 108) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section class="96wx-bdrc" style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(211, 173, 108) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">积分促销的最大作用在于鼓励顾客重复消费，建立本企业稳定的顾客群，由于该活动对顾客的吸引有限，因此老顾客较多，有一定知名度的企业开展次活动较佳，而对于吸引新顾客尝试或推介新服务，则作用不甚明显。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">当然，积分促销活动成效如何与赠品的吸引力、广告宣传力度等因素是息息相关。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4qfOxNT5w1LTKzzKWbZAeNf1ib6BXX1iciaq6EzbZMeiaIuPrq0M38K2LGw/0?wx_fmt=jpeg" data-ratio="0.4563380281690141" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; text-align: center;"><section style="margin: 5px 0px 0px; padding: 10px; border: none; text-align: left; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf5geQK3gu2FUugjB8iaSGpjOakn10ODqnnrL85qpRbIIf0pKGdCjfYf9tHBwlPiaAXs0BO2ib6W54p2Q/0?wx_fmt=png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-ratio="0.03582089552238806" data-w="335" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 526px; display: block;"/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p></section></section></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; color: inherit; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.6084507042253521" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/></p><p><br/></p>','','1469072298017','1180','1180',null,null,null,null,null),
('19','gaamtDGdR3EWq7xACDyRYfcCZh72eExDcO1hFBmboq4','（五）促销实战全攻略之联合促销','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000245&idx=2&sn=06faee8f1f2a670ea02f3dd6cbeb06e5#rd','“职合促销”在消费品促销中应用较为广泛，它是不同企业之间的一种合作促销形式“联合促销”能共同分摊促销成本，可以给顾客提供史丰富的礼品，似在笑容美发行业中应用较少，因为“职合促销”操作起来并非易事。','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49BiasNVt43Qs43NXY7QtEhx86oZjKq58cFwtgU3UetB8c3OznxBHgHKOdg/0','http://7xss26.com1.z0.glb.clouddn.com/zefun/wechat/1469072101967','gaamtDGdR3EWq7xACDyRYbKmB98JlIHXMo-Q09EieuY','<section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 5px auto; padding: 0px; border: none; width: 456.296875px; background-image: none;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf4Mm0CFWFnXy6KtFpy8UlvNybKSHlfqrs57ia4mBLvyO6V4S9vkNwDUhNFcLS82zT6fws4iaw8tyZicQ/0?wx_fmt=gif" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-ratio="1" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 30px; display: inline-block; vertical-align: middle;"/><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;">点击上面的蓝字关注我们哦！</section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4v430NeNZlXK0kYJd8gGeL9JbqvBcH8ZUdJ8wUVuhHGtB09cWEiaINRg/0?wx_fmt=jpeg" data-ratio="0.5323741007194245" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">“职合促销”在消费品促销中应用较为广泛，它是不同企业之间的一种合作促销形式“联合促销”能共同分摊促销成本，可以给顾客提供史丰富的礼品，似在笑容美发行业中应用较少，因为“职合促销”操作起来并非易事。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(70, 161, 239);"><section style="margin: 10px 0px; padding: 0px; box-sizing: border-box; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section class="96wx-bgc" style="margin: 0px 0px -4px; padding: 10px; box-sizing: border-box; color: rgb(255, 255, 238); background-color: rgb(70, 161, 239);"><section style="margin: 0px; padding: 10px; box-sizing: border-box; border: 1px solid rgb(255, 255, 255);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-size: 18px; color: rgb(255, 255, 255); word-wrap: break-word;"><span style="margin: 0px; padding: 0px; font-size: 20px;"><strong style="margin: 0px; padding: 0px;">什么是联合促销<span style="margin: 0px; padding: 0px; color: rgb(216, 79, 169);"><em style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 36px;">？</span></em></span></strong></span></p></section></section><section style="margin: 0px; padding: 0px; opacity: 0.8; display: inline-block;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; width: 0px; box-sizing: border-box; float: left; border-top-width: 8px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 18px; border-left-style: solid; border-left-color: transparent; border-right-width: 18px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 12px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 22px; border-left-style: solid; border-left-color: transparent; border-right-width: 22px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 15px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 25px; border-left-style: solid; border-left-color: transparent; border-right-width: 25px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 12px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 22px; border-left-style: solid; border-left-color: transparent; border-right-width: 22px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 8px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 18px; border-left-style: solid; border-left-color: transparent; border-right-width: 18px; border-right-style: solid; border-right-color: transparent;"></section></section></section></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">“联合促销”，是指两个或两个以上的品牌或公司合作开展销活动，推动他们的产品和服务，以扩大活动的影响力。这种方式的最大好处在于可以使联合体内的各成员以较少的促销费用取得较大的促销效果。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">美容美发企业的“联合促销”要求联合双方的目标消费群是一致的，而且联合双方不能相距太远，都能方便顾客消费。相对来说,目标标消费群一致，能为推广宣传带来一致的主题，否则，不同行业之间的联合难免有牵强附会之嫌。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">在美容美发这个特殊的行业里，联合促销方式可分为同业结盟联合促销和异业结盟联合促销两种形式。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4fDWsxPLZHW7iaPWqVoDhBjUEVWaK882SH2IsOJ2BSkw7GWzKEPQj1DQ/0?wx_fmt=jpeg" data-ratio="0.6654676258992805" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(70, 161, 239);"><section style="margin: 10px 0px; padding: 0px; box-sizing: border-box; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section class="96wx-bgc" style="margin: 0px 0px -4px; padding: 10px; box-sizing: border-box; color: rgb(255, 255, 238); background-color: rgb(70, 161, 239);"><section style="margin: 0px; padding: 10px; box-sizing: border-box; border: 1px solid rgb(255, 255, 255);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-size: 18px; color: rgb(255, 255, 255); word-wrap: break-word;"><span style="margin: 0px; padding: 0px; font-size: 20px;"><strong style="margin: 0px; padding: 0px;">同业结盟的联合促销</strong></span></p></section></section><section style="margin: 0px; padding: 0px; opacity: 0.8; display: inline-block;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; width: 0px; box-sizing: border-box; float: left; border-top-width: 8px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 18px; border-left-style: solid; border-left-color: transparent; border-right-width: 18px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 12px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 22px; border-left-style: solid; border-left-color: transparent; border-right-width: 22px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 15px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 25px; border-left-style: solid; border-left-color: transparent; border-right-width: 25px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 12px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 22px; border-left-style: solid; border-left-color: transparent; border-right-width: 22px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 8px; border-top-style: solid; border-top-color: rgb(70, 161, 239); border-left-width: 18px; border-left-style: solid; border-left-color: transparent; border-right-width: 18px; border-right-style: solid; border-right-color: transparent;"></section></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">同业结盟”的联合促销是指两个美容美发企业联合起来做促销活动，大家不禁会问：同行是冤家，同业怎么可能结盟呢？在竞争日益激烈的市场环境中，为抢顾客打价格战，虽然顾客得利了，但企业却因此经营困难，这已经是一个不争的事实了，那么大家是否还能抱着一种保守的观念去经营呢？同行不仅能合作，还能合作的很好。在一个固定的区域市场内，如果几家美容美发企业联合起来，达成共识，不仅能更好的服务顾客，更能规范市场，避免不良竞争。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4icDdAItZNLkHrK2SMgScco9vHTibwyEURCGEWD8T51ZxicHS5CiaqXdgVQ/0?wx_fmt=jpeg" data-ratio="0.697841726618705" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px;">兄弟联盟，扩大促销范围</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; border-width: 2px; border-style: solid dotted; border-color: rgb(64, 137, 227);"><section style="margin: 0px; padding: 20px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 20px;">彩丝与无忧发型设计中心</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 20px;">&quot;兄弟联盟，打造魅力”促销<span style="margin: 0px; padding: 0px; line-height: 1.6;">活动</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px;"> &nbsp; &nbsp; &nbsp; &nbsp;彩丝与无忧都是发型设计中心，两家发型店规模，顾<span style="margin: 0px; padding: 0px; line-height: 1.6;">客定位几乎—样，为了把促销活动做到更大的影响力，在秋冬季联合雅芳化妆品共同推出“秋冬补水总动员，精致好礼大派送”活动。活动期间，顾客消费不同项目送价值不等的头发补&nbsp;水护理或护发用品，同时还赠送雅芳秋冬皮肤补水产</span></span><span style="margin: 0px; padding: 0px; line-height: 1.6;">品片以此突出补水主题。</span><span style="margin: 0px; padding: 0px; font-size: 18px; line-height: 1.6;">为了提高客量，在活动期间，凭宣传单还可以参加&nbsp;“免费也能抽大奖”活动，奖品都是护发卡，整个活动完贯穿“秋冬补水总动员”的活动主题。&nbsp;</span></p></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px;">秋冬补水是被女性关注的话题，送上头发和皮肤的补水产品，设想周到</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0);"><br style="margin: 0px; padding: 0px;"/></span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0);">案例分析</span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">彩丝与无忧拥有一样的顾客群，在当地区域内都是较受顾客欢迎的专业发型店，这样的合作尚属首次，同时他们还联合了雅芳化妆品做为奖品。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">联合促销不仅节约双方的促销成本，还能造成较大的影响，当然，促销效果也是不错的，这样的同业同盟是值得美容美发同行借鉴的。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq44OIK5UQbWqNk0dHfERZeVcB2VMOctIASEfQqU4HwqBno440tT2AV6g/0?wx_fmt=jpeg" data-ratio="0.6241007194244604" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(64, 137, 227);"><section style="margin: 10px 0px; padding: 0px; box-sizing: border-box; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section class="96wx-bgc" style="margin: 0px 0px -4px; padding: 10px; box-sizing: border-box; color: rgb(255, 255, 238); background-color: rgb(64, 137, 227);"><section style="margin: 0px; padding: 10px; box-sizing: border-box; border: 1px solid rgb(255, 255, 255);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-size: 18px; color: rgb(255, 255, 255); word-wrap: break-word;"><strong style="margin: 0px; padding: 0px;">异业结盟的联合促销</strong></p></section></section><section style="margin: 0px; padding: 0px; opacity: 0.8; display: inline-block;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; width: 0px; box-sizing: border-box; float: left; border-top-width: 8px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 18px; border-left-style: solid; border-left-color: transparent; border-right-width: 18px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 12px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 22px; border-left-style: solid; border-left-color: transparent; border-right-width: 22px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 15px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 25px; border-left-style: solid; border-left-color: transparent; border-right-width: 25px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 12px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 22px; border-left-style: solid; border-left-color: transparent; border-right-width: 22px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 8px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 18px; border-left-style: solid; border-left-color: transparent; border-right-width: 18px; border-right-style: solid; border-right-color: transparent;"></section></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">“异业结盟”的联合促销是指两个或两个以上不同的企业联合起来做促销，这是联合促销应用最为广泛的一种形式。异业结盟企业一般是备互补性的，也就是说商品项目不是竞争性的，是可以互相补充的。例如：化妆品与时装可以是互补的，美容院与健身馆是互补的、发型店和化妆品也可以是互补的。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">联合促销可以把属于不同市场，但拥有同一顾客群的企业联结在一起，给参与者带来实际的商业利益，但这种利益要通过合作双方的协作才能实现。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4EyHDXcPtCJNiawNrFR1prw4xcMstJO64sJXFBvoGYLFj7seTapkbjMQ/0?wx_fmt=jpeg" data-ratio="1.1978417266187051" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 12px;">联合促销的POP广告，内容丰富更具吸引力</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">这个联合促销的案例，是发型店与音像店携手促销，因为发型店的目标群体较为广泛，音像店也是年轻人经常光顾的地方，两者在一起目标顾客群上基本一致的。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(64, 137, 227);"><section style="margin: 10px 0px; padding: 0px; box-sizing: border-box; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section class="96wx-bgc" style="margin: 0px 0px -4px; padding: 10px; box-sizing: border-box; color: rgb(255, 255, 238); background-color: rgb(64, 137, 227);"><section style="margin: 0px; padding: 10px; box-sizing: border-box; border: 1px solid rgb(255, 255, 255);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-size: 18px; color: rgb(255, 255, 255); word-wrap: break-word;"><strong style="margin: 0px; padding: 0px;">联合促销的优缺点</strong></p></section></section><section style="margin: 0px; padding: 0px; opacity: 0.8; display: inline-block;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; width: 0px; box-sizing: border-box; float: left; border-top-width: 8px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 18px; border-left-style: solid; border-left-color: transparent; border-right-width: 18px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 12px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 22px; border-left-style: solid; border-left-color: transparent; border-right-width: 22px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 15px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 25px; border-left-style: solid; border-left-color: transparent; border-right-width: 25px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 12px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 22px; border-left-style: solid; border-left-color: transparent; border-right-width: 22px; border-right-style: solid; border-right-color: transparent;"></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; float: left; border-top-width: 8px; border-top-style: solid; border-top-color: rgb(64, 137, 227); border-left-width: 18px; border-left-style: solid; border-left-color: transparent; border-right-width: 18px; border-right-style: solid; border-right-color: transparent;"></section></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4pib0qAyNuDp5zu69yicN8ATzE10uF2rLvON88nYq03uXXuSgeNUB9YQQ/0?wx_fmt=jpeg" data-ratio="0.75" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(213, 189, 30); box-sizing: border-box; font-family: 微软雅黑;"><section class="96wx-bgc" data-width="5em" style="margin: 0px 10px 0px 0px; padding: 12px 5px; width: 5em; height: 5em; border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; float: left; border-color: rgb(194, 229, 246); color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(213, 189, 30);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; text-align: center; border-color: rgb(89, 195, 249); color: inherit;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: inherit; line-height: 24px; font-size: 20px;">优</span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; text-align: center; border-color: rgb(89, 195, 249); color: inherit;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: inherit; line-height: 24px; font-size: 20px;">点</span></strong><br style="margin: 0px; padding: 0px;"/></p></section><section class="96wx-bdtc" data-style="clear: none; line-height: 1.75em;" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(213, 189, 30);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; color: inherit; line-height: 1.75em;"><span style="margin: 0px; padding: 0px; color: rgb(127, 127, 127);">通过联合促销能够降低相应的促销成本；联合促销还可以快速接近</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; color: inherit; line-height: 1.75em;"><span style="margin: 0px; padding: 0px; color: rgb(127, 127, 127);"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; color: inherit; line-height: 1.75em;"><span style="margin: 0px; padding: 0px; color: rgb(127, 127, 127);">目标消费者；增加对消费者的吸引力；能扩大促销影响的范围。</span></p></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(75, 141, 239); box-sizing: border-box; font-family: 微软雅黑;"><section class="96wx-bgc" data-width="5em" style="margin: 0px 10px 0px 0px; padding: 12px 5px; width: 5em; height: 5em; border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; float: left; border-color: rgb(194, 229, 246); color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(75, 141, 239);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 1.5em; text-align: center; border-color: rgb(89, 195, 249); color: inherit;"><span style="margin: 0px; padding: 0px; font-size: 20px;"><strong style="margin: 0px; padding: 0px;">缺</strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 1.5em; text-align: center; border-color: rgb(89, 195, 249); color: inherit;"><span style="margin: 0px; padding: 0px; font-size: 20px;"><strong style="margin: 0px; padding: 0px;">点</strong></span></p></section><section class="96wx-bdtc" data-style="clear: none; line-height: 1.75em;" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(75, 141, 239);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; color: inherit; line-height: 1.75em;"><span style="margin: 0px; padding: 0px; color: rgb(127, 127, 127);">1、由于联合促销的广告宣传需顾及到合作方的利益，品牌之间的形象难免会相互影响，且无法特别突出自身品牌的优点。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; color: inherit; line-height: 1.75em;"><span style="margin: 0px; padding: 0px; color: rgb(127, 127, 127);">2、由于竞争规律的客观存在，在联合开展促销活动期间，各合作企业也有可能互相成为竞争对手，为把顾客吸引到自己周围或扩大自己的销售额，甚至会互相排斥，这种摩擦的结果，往往使合作双方偏离其促销计划和宗旨行事，从而殃及顾客对品牌的信任。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; color: inherit; line-height: 1.75em;"><span style="margin: 0px; padding: 0px; color: rgb(127, 127, 127);">3、对于美容美发企业而言，大多数规模较小，品牌影响的范围有限，可供选择的合作伙伴只能局限在店铺周围较近的企业。</span></p></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(229, 203, 81); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section class="96wx-bdlc" style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(229, 203, 81); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section></section><section style="margin: 0px; padding: 5px 0px 0px; box-sizing: border-box; float: left; clear: none;"><p class="96wx-color" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap; font-size: 18px; color: rgb(229, 203, 81);"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 20px;">本文总结</span></strong></span></p></section><section style="margin: 0px 0px 0px 15px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(229, 203, 81) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section class="96wx-bdrc" style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(229, 203, 81) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">本文讲述了“联合促销”的基本形式，由于美容美发企业实行“联合促销”虽然难度大，但如果找到良好的合作伙伴，悉心创意设计促销内容，特别对活动中的各个细节事项都能运筹帷幄，遵循目标市场系统或相近原则及联合各方互惠原则，注意联合双方的光环影响，将能产出一加一大于二的合力效果，堪为效果卓越的促销术。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4VbmcerfyZou4Mvt1ANwiaMNtXJFTpr9nabVnFkoKGdsdWdj0yicTxIhA/0?wx_fmt=jpeg" data-ratio="0.5629496402877698" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; text-align: center;"><section style="margin: 5px 0px 0px; padding: 10px; border: none; text-align: left; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf5geQK3gu2FUugjB8iaSGpjOakn10ODqnnrL85qpRbIIf0pKGdCjfYf9tHBwlPiaAXs0BO2ib6W54p2Q/0?wx_fmt=png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-ratio="0.03802281368821293" data-w="526" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 526px; display: block;"/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p></section></section></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; color: inherit; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.6079136690647482" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/></p><p><br/></p>','','1469072298018','1180','1180',null,null,null,null,null),
('20','gaamtDGdR3EWq7xACDyRYfcCZh72eExDcO1hFBmboq4','（六）促销实战全攻略之游戏促销','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000245&idx=3&sn=ed0fe5ea717548ba226341aed6053090#rd','人类天生就有喜好游戏的心理倾倾向，许多人对那些构思新颖、趣味无穷的游戏活动更为热衷。在美容美发行业，好象很少出现 “游戏促销”的案例，可能美容美发行业的人们不知如何应用？','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49BiaaL2ic9voxAAeoFOvYFKpRwJoEdKm2sWXayGP7V89mxVlIbXKCHpekOQ/0','http://7xss26.com1.z0.glb.clouddn.com/zefun/wechat/1469072125938','gaamtDGdR3EWq7xACDyRYVEVig2y-F8vkD5SLs8E3Ps','<section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 5px auto; padding: 0px; border: none; width: 456.296875px; background-image: none;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf4Mm0CFWFnXy6KtFpy8UlvNybKSHlfqrs57ia4mBLvyO6V4S9vkNwDUhNFcLS82zT6fws4iaw8tyZicQ/0?wx_fmt=gif" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-ratio="1" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 30px; display: inline-block; vertical-align: middle;"/><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;">点击上面的蓝字关注我们哦！</section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4kaKNu1UH6yWEGMBP04d7TCNkjbpAfuujPM3XcHicwMibN7XTrxbd5mwQ/0?wx_fmt=jpeg" data-ratio="0.9408450704225352" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></section><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section style="margin: 0px auto; padding: 0px; width: 556px; height: auto; overflow: hidden;"><section class="96wx-bdbc 96wx-color" style="margin: 0px 15px; padding: 5px 0px 15px; width: auto; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(237, 50, 13); text-align: center; font-weight: 700; color: rgb(237, 50, 13);"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 20px;">游戏促销</span></section><section style="margin: -2px 0px 0px 233.515625px; padding: 0px; width: 88.953125px; height: 2px; top: 48px; background: rgb(255, 255, 255);"></section><section class="96wx-bgc" style="margin: -11px auto 0px; padding: 0px; width: 20px; height: 20px; top: 38px; transform: rotate(45deg); -webkit-transform: rotate(45deg); background: rgb(237, 50, 13);"></section><section style="margin: 10px 15px; padding: 0px 10px; word-break: break-all; width: auto; height: auto; text-align: center; font-size: 14px;"><br style="margin: 0px; padding: 0px;"/></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">人类天生就有喜好游戏的心理倾倾向，许多人对那些构思新颖、趣味无穷的游戏活动更为热衷。在美容美发行业，好象很少出现 “游戏促销”的案例，可能美容美发行业的人们不知如何应用？本章抛砖引玉，揭示“游戏促销”的魅力。</p></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">我们知道，随着社会生活水平的提高，现在人们对传统的打折、赠送礼品等方式反应没有像以往那么的强烈，特别是美容美发的主力消费群多为年轻时尚的人群，他们对那些新鲜、潮流的信息级为敏感，美容美发企业如果了解这一点，利用新鲜、刺激的游戏方式作为促销方法，其效果当然也会不同一般。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px auto; padding: 0px; width: 556px; height: auto; overflow: hidden;"><section class="96wx-bdbc 96wx-color" style="margin: 0px 15px; padding: 5px 0px 15px; width: auto; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(237, 50, 13); text-align: center; font-weight: 700; color: rgb(237, 50, 13);"><span style="margin: 0px; padding: 0px; color: inherit; font-size: 20px;">什么是游戏促销<em style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: inherit; font-size: 24px;">？</span></em></span></section><section style="margin: -2px 0px 0px 233.515625px; padding: 0px; width: 88.953125px; height: 2px; top: 48px; background: rgb(255, 255, 255);"></section><section class="96wx-bgc" style="margin: -11px auto 0px; padding: 0px; width: 20px; height: 20px; top: 38px; transform: rotate(45deg); -webkit-transform: rotate(45deg); background: rgb(237, 50, 13);"></section><section style="margin: 10px 15px; padding: 0px 10px; word-break: break-all; width: auto; height: auto; text-align: center; font-size: 14px;"><br style="margin: 0px; padding: 0px;"/></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">人类天生就有喜好游戏的心理倾向，许多人对那些构思新颖、乐趣无穷的游戏活动更是来者不拒。在促销表现形式上，“促销游戏”不拘一格，具有非常大的创作余地，很容易兼收并蓄，把其他促销形式的某些方面吸收进来。因此，能否激发人们的热情与兴趣，是游戏活动的关键,一旦某项游戏活动不再能产生这种效力，它的特殊魅力也随之消失。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 20px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0);">&nbsp; 案 &nbsp; 例 &nbsp;</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4as7VXEbYMhuQp3kR0aEoFZmk691XkyEGjsHibD5K9b9AMGvgzey9sTg/0?wx_fmt=jpeg" data-ratio="0.7492957746478873" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 12px;">“你想几折就几折”店内促销活动说明</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4M8GHPCaQTRrUB3xmibOsUebTwJKOUE3HRCu0fIiaqAsqGkwmYdVQdQ6w/0?wx_fmt=png" data-ratio="0.7154929577464789" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 12px;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;“你想几折就几折”标靶落点折扣说明书</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">这个案例是在“折扣促销”的基础上，将固定折扣变成一个游戏，顾客完全要凭自己的运气获得折扣，这个活动主题比较朴活动也充满了趣味性，但用打折作为游戏的重点，似乎有点不妥。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">因为顾客如果有打折的愿望，虽然投掷了飞镖，如果没介达到自己想要的折扣，很可能造成抱怨甚至不会消费，对企业促销活动的初衷就背道而驰了，如果这个活动换成顾客在一个固定折扣下，进行掷飞镖获得奖品，可能要比前者好一些。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(237, 50, 13);"><section style="margin: 10px 0px; padding: 0px; display: inline-block; width: 556px; box-sizing: border-box !important;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; transform: rotate(0deg); -webkit-transform: rotate(0deg);"><section style="margin: 0px; padding: 0px; display: inline-block; box-sizing: border-box !important;"><section style="margin: 0px; padding: 0px; border-top-width: 20px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 20px; border-bottom-style: solid; border-bottom-color: transparent; border-left-width: 40px; border-left-style: solid; border-left-color: rgb(255, 202, 166); float: right; height: 0px; width: 0px;"><section data-width="0px" style="margin: -8px 0px 0px -15px; padding: 0px; border-top-width: 8px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 8px; border-bottom-style: solid; border-bottom-color: transparent; border-left-width: 16px; border-left-style: solid; border-left-color: rgb(0, 0, 0); height: 0px; width: 0px;"></section></section><section class="96wx-bgc" style="margin: 0px 0px 0px -1px; padding: 0px 30px; line-height: 40px; height: 40px; float: left; background-color: rgb(237, 50, 13);"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 20px;">游戏促销注意重点</span></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">1、“游戏促销”不能为了游戏而一味的追求趣味性，在设计游戏时，一定要考虑到游戏与企业木身品牌的贴切，要在顾参与游戏的同时能想到企业给她带来的快乐与好处。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">2、“游戏促销” 中须设计出让顾客感兴趣、新奇的游戏，否则游戏促销则失去了意义。富有冲击力促销主题本身就是一种广告，能吸引顾客的眼球。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4UPiabH15KOckf1UCLxjtXunQxSsXgQJBUemhw65s2WcgXC89RkVvWjw/0?wx_fmt=jpeg" data-ratio="0.2028169014084507" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: 20px;">本文总结</span></strong><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(237, 50, 13);"><section style="margin: 10px 0px; padding: 0px; box-sizing: border-box; text-align: center;"><section class="96wx-bgc" style="margin: 0px; padding: 0px; width: 30px; height: 30px; border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; box-sizing: border-box; display: inline-block; color: rgb(255, 255, 238); background-color: rgb(237, 50, 13);"><section style="margin: 6px auto 0px; padding: 0px; width: 13px; height: 13px; border-width: 0px 0px 2px 2px; border-style: solid; border-color: rgb(255, 255, 255); transform: rotate(-45deg); -webkit-transform: rotate(-45deg);"></section><section style="margin: 0px; padding: 0px; box-sizing: border-box; opacity: 0; line-height: 0;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255);">.</span></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">“游戏促销”适用范围较广，在美容美发企业里，对于新项目或老项目进一步扩大经营业绩均有所帮助，它的最大特色在于能同时面对众多消费者展开促销攻势，这一点对于经营项目较、目标消费群广泛的企业尤为适宜。游戏活动设计应与目标消费群一致，游戏的方式应尽量从简并举可操作性。然而，“抽奖活动”的设计能否足以吸引尽量多的人参加，是活动成败的关键。</p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; text-align: center;"><section style="margin: 5px 0px 0px; padding: 10px; border: none; text-align: left; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf5geQK3gu2FUugjB8iaSGpjOakn10ODqnnrL85qpRbIIf0pKGdCjfYf9tHBwlPiaAXs0BO2ib6W54p2Q/0?wx_fmt=png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-ratio="0.03582089552238806" data-w="335" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 526px; display: block;"/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p></section></section></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; color: inherit; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.6084507042253521" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/></p><p><br/></p>','','1469072298019','1180','1180',null,null,null,null,null),
('21','gaamtDGdR3EWq7xACDyRYfcCZh72eExDcO1hFBmboq4','（七）促销实战全攻略之促销策划与实施','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000245&idx=4&sn=db8801af6d356b0b7cef5188c4aca5e4#rd','商场如战场！美容关发企业的促销活动要取得百分之百的成功，离不开促销的策划与实施，整个促销过程的策划与实施需要做到严谨而又有序.','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49BiagS6FdK12U0uLLem9Xc1RIiaS1It4oCEH5lGBVAWPFEH6rK8wvicW8Qgg/0','http://7xss26.com1.z0.glb.clouddn.com/zefun/wechat/1469072190724','gaamtDGdR3EWq7xACDyRYadlR1LHBpqyARjijQ-gX08','<section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 5px auto; padding: 0px; border: none; width: 456.296875px; background-image: none;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf4Mm0CFWFnXy6KtFpy8UlvNybKSHlfqrs57ia4mBLvyO6V4S9vkNwDUhNFcLS82zT6fws4iaw8tyZicQ/0?wx_fmt=gif" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-ratio="1" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 30px; display: inline-block; vertical-align: middle;"/><section style="margin: 0px 0px 0px 5px; padding: 0px; display: inline-block; vertical-align: middle; font-size: 12px;">点击上面的蓝字关注我们哦！</section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgcEhicjTrTRYYvtHA2fUzq4EJBX0xWkogdYBJgqhOjX4o8EJ7BpLOPiaicwYy2WTQehoKfkZ1qOjTGQ/0?wx_fmt=jpeg" data-ratio="0.3435251798561151" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wxDiy" style="margin: 0px; padding: 0px; border: 0px none;"><section style="margin: 0.5em 0px; padding: 0px; box-sizing: border-box;"><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wxDiy" style="margin: 0px; padding: 0px; border: 0px none;"><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px;"><section class="96wxDiy" style="margin: 1em auto; padding: 0px;"><section class="96wx-color" style="margin: 0px auto; padding: 0px; width: 556px; color: rgb(237, 149, 63); font-size: 18px; line-height: 45px; height: 45px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 20px;">促销策划与实施</span></section><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(237, 149, 63); height: 2px; width: 556px;"></section><section style="margin: -5px auto 0px; padding: 0px; width: 100.078125px; height: 8px; background: rgb(255, 255, 255);"><section style="margin: 0px auto; padding: 0px; width: 25.015625px; float: left; text-align: center; display: inline-block;"><section class="96wx-bgc" style="margin: 0px auto; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(237, 149, 63);"></section></section><section style="margin: 0px auto; padding: 0px; width: 25.015625px; float: left; text-align: center; display: inline-block;"><section class="96wx-bgc" style="margin: 0px auto; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(237, 149, 63);"></section></section><section style="margin: 0px auto; padding: 0px; width: 25.015625px; float: left; text-align: center; display: inline-block;"><section class="96wx-bgc" style="margin: 0px auto; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(237, 149, 63);"></section></section><section style="margin: 0px auto; padding: 0px; width: 25.015625px; float: left; text-align: center; display: inline-block;"><section class="96wx-bgc" style="margin: 0px auto; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(237, 149, 63);"></section></section><section style="margin: 0px; padding: 0px; height: 0px; clear: both;"></section></section></section></section></section></section></section></section></section></section><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">商场如战场！美容关发企业的促销活动要取得百分之百的成功，离不开促销的策划与实施，整个促销过程的策划与实施需要做到严谨而又有序，一场组织好的促销，能为企业带来丰厚的利润和源源不断的顾客，促销是市场营销的一个重要组成部分，是美容美发企业不可忽视的营销利器。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdlc" style="margin: 0px auto; padding: 4px; max-width: 100%; box-sizing: border-box; border-width: 6px; border-color: rgba(33, 33, 33, 0.0980392) rgba(33, 33, 33, 0.0980392) rgba(33, 33, 33, 0.0980392) rgb(63, 124, 237); border-style: solid; width: 150px; clear: both; height: 150px; border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; color: inherit; word-wrap: break-word !important;"><section class="96wx-bgc" style="margin: 0px; padding: 10px; max-width: 100%; box-sizing: border-box; width: 130px; border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; border-color: rgb(234, 159, 184); color: rgb(255, 255, 255); word-wrap: break-word !important; height: 130px !important; background-color: rgb(63, 124, 237);"><p class="96wx-bdc" style="margin-top: 0px; margin-bottom: 0px; padding: 40px 0px 0px; clear: both; white-space: pre-wrap; max-width: 100%; min-height: 1em; color: inherit; border-color: rgb(63, 124, 237); text-align: center; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; line-height: 28.7999992370605px; font-size: 20px;">促销活动的运作流程</span></p></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">一个促销活动由以下五个环节形成，每一步都会对促销活动的最终效果起到决定性的影响，我们将对每一个步骤进行详细的讲解，美容美发企业的经营者只有掌握了促销中的每一个要素，才能设计出具有实效的促销活动。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">下图所示，促销活动由五个步骤组成：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7Wjsictock7HDyZOcJfzCbANIF9ibAxJSmt91wfrINGd7HjL55S7iaUlyQJgPucg/0?wx_fmt=png" data-ratio="0.7535971223021583" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-top-color: rgb(63, 124, 237);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(63, 124, 237); box-sizing: border-box; font-family: 微软雅黑;"><section style="margin: 0.8em 0px 0.5em; padding: 0px; line-height: 32px; font-weight: bold; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; display: inline-block; float: left; min-width: 32px; height: 32px; vertical-align: top; text-align: center; box-sizing: border-box;"><section data-width="100%" style="margin: 0px; padding: 0px; display: table; width: 35px; color: inherit; border-color: rgb(72, 192, 163); box-sizing: border-box;"><section style="margin: 0px; padding: 0px; display: table-cell; vertical-align: middle; color: rgb(255, 255, 255); border-color: rgb(72, 192, 163); box-sizing: border-box;"><span class="96wxDiy" style="margin: 0px; padding: 0px; color: rgb(198, 198, 199); font-size: 50px;">1</span></section><section class="96wx-bdlc" style="margin: 5px 0px 0px -6px; padding: 0px; width: 10px; height: 70px; border-left-width: 1px; border-left-style: solid; border-left-color: rgb(63, 124, 237); box-sizing: border-box; -webkit-transform: rotate(35deg); background-color: rgb(254, 254, 254);"></section></section></section><section style="margin: 0px 0px 0px 40px; padding: 18px 0px 0px; font-size: 30px; color: rgb(115, 115, 115); border-color: rgb(72, 192, 163); box-sizing: border-box;"><span class="96wx-bdtc" data-brushtype="text" style="margin: 0px; padding: 0px; font-size: 20px; border-color: rgb(63, 124, 237) rgb(84, 32, 195) rgb(65, 23, 155) rgb(86, 41, 181);">促销调研</span></section></section><section style="margin: 0px; padding: 0px; width: 0px; height: 0px; clear: both; box-sizing: border-box;"></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">对于美容美发企业来说，要开展促销活动，就必须事先进行充分的市场调研工作，只有这样才能够抢得先机，可以使企业在连接解顾客需求的基础上实施有效的促销活动。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictoJG1wrC162Orqpl7PxjcVc0hIYiciaC9hPtQxYXloibib16ooibtzZplN8Pg/0?wx_fmt=jpeg" data-ratio="0.6654676258992805" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(63, 124, 237);"><section style="margin: 20px 0px 5px; padding: 0px; display: inline-block; width: 556px;"><section class="96wx-bdbc" style="margin: 0px; padding: 0px 35px 0px 5px; box-sizing: border-box; display: inline-block; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(63, 124, 237);"><section style="margin: 0px; padding: 0px; box-sizing: border-box; transform: rotate(45deg); -webkit-transform: rotate(-45deg); display: inline-block; float: left;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; width: 0px; height: 0px; border-right-width: 6px; border-right-style: solid; border-right-color: rgb(63, 124, 237); border-bottom-width: 3px; border-bottom-style: solid; border-bottom-color: transparent; border-top-width: 3px; border-top-style: solid; border-top-color: transparent; float: left;"></section><section class="96wx-bgc" style="margin: 0px 0px 0px 1px; padding: 0px; width: 23px; height: 6px; float: left; clear: none; color: rgb(255, 255, 238); background-color: rgb(63, 124, 237);"></section></section><section style="margin: -0.7em 0px 0px 10px; padding: 0px; box-sizing: border-box; float: left; clear: none;"><section style="margin: 0px; padding: 0px; font-size: 18px; word-wrap: break-word;"><span style="margin: 0px; padding: 0px; color: inherit;">促销调研的具体内容</span></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">美容美发企业促销调研的内容是企业开展促销调研中最关键部分，只有对调研的内容进行全面仔细的考虑，才能够做到胸有成竹胜券在握。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">对于美容美发企业而言，在促销调研中主要调查以下项目：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictoKkjmBAiaiaJ9s4n4K3VibdY5sqZ5oLvkCkWSLm5F40GVEQwmPMfSyaXow/0?wx_fmt=png" data-ratio="0.6115107913669064" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/><span style="margin: 0px; padding: 0px; font-size: 14px;">*<span style="margin: 0px; padding: 0px; line-height: 1.6;">女性消费者的消费心理比较复杂，她们既具有强烈的情感特征，又注重商品的内在品质；既喜欢模仿别人，又具有强烈的自我意识。因此，美容美容美发企业要针对女性消费者的心理特征，采取一些适宜的促销措施。</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 14px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><blockquote class="96wx-bdc 96wx-bgpic" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/iaGswicCbWm6ib4sQwRuoty4m9wFibZ7KDaXy793TRJ0ic6jbkPGRheJMdAdXWjwnAicRj0mW9ukYgNl2zhQ4G6EOVIA/0?wx_fmt=gif" style="margin: 0px; padding: 20px 15px 15px 48px; border: 1px solid rgb(237, 165, 63); border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; line-height: 1.5; background-image: url(https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictozvGZBiccMe1JzlCeNoa6OpSAddHDMiapyLXMpQN2icCDBBXVRsAzPSp6Q/0?wx_fmt=jpeg); background-position: 10px 11px; background-repeat: no-repeat;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; text-align: center;">促销活动应满足以下女性心理</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">1、促销商品讲究美观，质量要求高档，色彩富有个性，在促销活动中应注重商品的陈列效果。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">2、美容美发店橱窗要非常讲究，光线非常柔和；橱窗明亮，富有吸引力。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">3、促销宣传就符合女性心理，满足女性自尊心和自 我魅力展现的心理特征。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">4、宣传品应该精美，具有个性，能吸引女性消费者 的注目。</p></blockquote></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 14px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"></span></span><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(63, 124, 237);"><section style="margin: 20px 0px 5px; padding: 0px; display: inline-block; width: 556px;"><section class="96wx-bdbc" style="margin: 0px; padding: 0px 35px 0px 5px; box-sizing: border-box; display: inline-block; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(63, 124, 237);"><section style="margin: 0px; padding: 0px; box-sizing: border-box; transform: rotate(45deg); -webkit-transform: rotate(-45deg); display: inline-block; float: left;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; width: 0px; height: 0px; border-right-width: 6px; border-right-style: solid; border-right-color: rgb(63, 124, 237); border-bottom-width: 3px; border-bottom-style: solid; border-bottom-color: transparent; border-top-width: 3px; border-top-style: solid; border-top-color: transparent; float: left;"></section><section class="96wx-bgc" style="margin: 0px 0px 0px 1px; padding: 0px; width: 23px; height: 6px; float: left; clear: none; color: rgb(255, 255, 238); background-color: rgb(63, 124, 237);"></section></section><section style="margin: -0.7em 0px 0px 10px; padding: 0px; box-sizing: border-box; float: left; clear: none;"><section style="margin: 0px; padding: 0px; font-size: 18px; word-wrap: break-word;"><span style="margin: 0px; padding: 0px; color: inherit;">选择目标顾客群</span></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">对于美容美发企业而言，顾客群细分的目的就是使企业选择和确定促销的目标市场，实施有效的促销组合，从而以最少、最省的促销费用取得最佳的促销成果。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">美容美发企业促销市场细分的标准和方法很多，凡是能影响顾客需要的因素都可以成为市场细分的标准。但根据美容美发行业的特征，可以在实际操作中按以下几个方面进行细分：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictodTJgIaE8yVpicVLuFIApSBiaF88UxhJf0ZvA2WLbqxnCsUIq5spuIszA/0?wx_fmt=png" data-ratio="0.6061151079136691" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictoMBCTE5UX3Pge3gRMlZmRShMpzJxcU4eqDhHPCEQeJZH7DhUjO99ltg/0?wx_fmt=jpeg" data-ratio="0.6276978417266187" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(63, 124, 237);"><section style="margin: 20px 0px 5px; padding: 0px; display: inline-block; width: 556px;"><section class="96wx-bdbc" style="margin: 0px; padding: 0px 35px 0px 5px; box-sizing: border-box; display: inline-block; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(63, 124, 237);"><section style="margin: 0px; padding: 0px; box-sizing: border-box; transform: rotate(45deg); -webkit-transform: rotate(-45deg); display: inline-block; float: left;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; width: 0px; height: 0px; border-right-width: 6px; border-right-style: solid; border-right-color: rgb(63, 124, 237); border-bottom-width: 3px; border-bottom-style: solid; border-bottom-color: transparent; border-top-width: 3px; border-top-style: solid; border-top-color: transparent; float: left;"></section><section class="96wx-bgc" style="margin: 0px 0px 0px 1px; padding: 0px; width: 23px; height: 6px; float: left; clear: none; color: rgb(255, 255, 238); background-color: rgb(63, 124, 237);"></section></section><section style="margin: -0.7em 0px 0px 10px; padding: 0px; box-sizing: border-box; float: left; clear: none;"><section style="margin: 0px; padding: 0px; font-size: 18px; word-wrap: break-word;"><span style="margin: 0px; padding: 0px; color: inherit;">选择促销的时机</span></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">美国营销专家曾指出：“在店铺商业活动中，有两句话是从业者应该牢记在心的，那就是“有好商品不如有好地址、有好地址还要有好时机”。前一句是指店铺的选址，后一句是指商品促销的时机，二者缺一不可。</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictoIuzrsibzhRos1mgabr1pSUsKHlduAqN1goJrTLIpYgibzjafPhgHyqgw/0?wx_fmt=jpeg" data-ratio="1.0323741007194245" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">美容美发企业的促销时机显然很多，我们对其可以做一大致的分类，即主动促销时机和被动促销时机两大类。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictocOZmndzk5Gt7gRiczBKQt5CpBeVicE5IqhsLz0QOSqc3JUbzR9wIoZzQ/0?wx_fmt=png" data-ratio="0.6151079136690647" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/>总之，商场犹如战场，美容美发企业应该尽可能利用各种促销机会，既增加营业收入，又扩大本企业的社会知名度，提高本企业在顾客心目中的地位，充分发挥促销的多种功能和效用。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(63, 124, 237);"><section style="margin: 20px 0px 5px; padding: 0px; display: inline-block; width: 556px;"><section class="96wx-bdbc" style="margin: 0px; padding: 0px 35px 0px 5px; box-sizing: border-box; display: inline-block; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(63, 124, 237);"><section style="margin: 0px; padding: 0px; box-sizing: border-box; transform: rotate(45deg); -webkit-transform: rotate(-45deg); display: inline-block; float: left;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; width: 0px; height: 0px; border-right-width: 6px; border-right-style: solid; border-right-color: rgb(63, 124, 237); border-bottom-width: 3px; border-bottom-style: solid; border-bottom-color: transparent; border-top-width: 3px; border-top-style: solid; border-top-color: transparent; float: left;"></section><section class="96wx-bgc" style="margin: 0px 0px 0px 1px; padding: 0px; width: 23px; height: 6px; float: left; clear: none; color: rgb(255, 255, 238); background-color: rgb(63, 124, 237);"></section></section><section style="margin: -0.7em 0px 0px 10px; padding: 0px; box-sizing: border-box; float: left; clear: none;"><section style="margin: 0px; padding: 0px; font-size: 18px; word-wrap: break-word;"><span style="margin: 0px; padding: 0px; color: inherit;">制定促销策略</span></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">制定促销策略就是经过调查、分析各种促销必备因素后，根据分析结果制定出可行的促销方案。在制定促销策略时，促销目标是一个重要前提，也就是企业为什么要做促销？促销的目的是什么？<br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 18px; background-color: rgb(255, 169, 0);">促销目标的制定原则</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">1、<span style="margin: 0px; padding: 0px; line-height: 1.6;">促销目标的制定原则</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">2、促销目标必须有助于企业的经营理念</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">3、促销目标必须以实际可以达成的目标进行设定</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">4、促销目标要责任明确</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; line-height: 1.6;">5、促销目标要考查</span><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 18px; line-height: 28.7999992370605px; background-color: rgb(255, 169, 0);">制定促销策略</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">一旦促销目标确定下来后，接下来就是制定促销策略。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">下面的美界美发企业促销策表将会给美容美发企业一点提示：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictofcsYdKPBTibPLFAofibdURdVApxPwPK7e7icvOQB5oucH4nyxZPTmlRwA/0?wx_fmt=png" data-ratio="1.1816546762589928" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255); font-size: 18px; line-height: 28.7999992370605px; background-color: rgb(255, 169, 0);">制定促销策略</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">美发企业在开展店销促销活动时，还应该开拓思路，积极探索，不断创新，找到对顾客来说真正具有创新性的促销方式，以创新作为企业经营的灵魂，促进业绩增长。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7Wjsicto2fZtvmsL6fibs084zgIKzs91wzjf7XoluYmOMtNDz7hoaj9pRAWpTTw/0?wx_fmt=jpeg" data-ratio="1.0305755395683454" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(63, 124, 237);"><section style="margin: 20px 0px 5px; padding: 0px; display: inline-block; width: 556px;"><section class="96wx-bdbc" style="margin: 0px; padding: 0px 35px 0px 5px; box-sizing: border-box; display: inline-block; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(63, 124, 237);"><section style="margin: 0px; padding: 0px; box-sizing: border-box; transform: rotate(45deg); -webkit-transform: rotate(-45deg); display: inline-block; float: left;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; width: 0px; height: 0px; border-right-width: 6px; border-right-style: solid; border-right-color: rgb(63, 124, 237); border-bottom-width: 3px; border-bottom-style: solid; border-bottom-color: transparent; border-top-width: 3px; border-top-style: solid; border-top-color: transparent; float: left;"></section><section class="96wx-bgc" style="margin: 0px 0px 0px 1px; padding: 0px; width: 23px; height: 6px; float: left; clear: none; color: rgb(255, 255, 238); background-color: rgb(63, 124, 237);"></section></section><section style="margin: -0.7em 0px 0px 10px; padding: 0px; box-sizing: border-box; float: left; clear: none;"><section style="margin: 0px; padding: 0px; font-size: 18px; word-wrap: break-word;"><span style="margin: 0px; padding: 0px; color: inherit;">实施促销方案</span></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">促销活动最终的效果，取决于有计划的实施方案，整个执行程序下来，要分四个阶段进行，分别是告知阶段、演练阶段、执行阶段、评估阶段。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; text-align: inherit; border: 1px solid rgb(237, 165, 63); font-size: 1em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(51, 51, 51); box-sizing: border-box;"><section class="96wx-bdtc" style="margin: -1em 16px 0px; padding: 0px; border-style: none; border-top-color: rgb(237, 165, 63); line-height: 1.4; box-sizing: border-box;"><span class="96wx-bgc" style="margin: 0px; padding: 3px 8px; display: inline-block; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; color: rgb(255, 255, 255); font-size: 1em; text-align: center; font-family: inherit; font-weight: inherit; text-decoration: inherit; border-color: rgb(0, 187, 236); box-sizing: border-box; background-color: rgb(237, 165, 63);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(237, 165, 63);">告知阶段、演练阶段</section></span></section><section class="96wx-bdtc" style="margin: 0px; padding: 16px; font-size: 1em; line-height: 1.4; font-family: inherit; box-sizing: border-box; border-top-color: rgb(237, 165, 63);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(237, 165, 63);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp; &nbsp;告知阶段是指向店内员工告知及老顾客告知。让员工提前做好促销前的准备，整理顾客资料，这个阶段大约要在活动前的两周内进行。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp;&nbsp;演练阶段是指在促销活动执行前对内部员工话术演练，其中包括如何给顾客介绍促销、如何应对顾客拒绝、服务技巧等促销活动必须的环节，这个阶段大约要在活动前的一周内进行。</p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdc" style="margin: 0px; padding: 0px; text-align: inherit; border: 1px solid rgb(237, 165, 63); font-size: 1em; font-family: inherit; font-weight: inherit; text-decoration: inherit; color: rgb(51, 51, 51); box-sizing: border-box;"><section class="96wx-bdtc" style="margin: -1em 16px 0px; padding: 0px; border-style: none; border-top-color: rgb(237, 165, 63); line-height: 1.4; box-sizing: border-box;"><span class="96wx-bgc" style="margin: 0px; padding: 3px 8px; display: inline-block; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; color: rgb(255, 255, 255); font-size: 1em; text-align: center; font-family: inherit; font-weight: inherit; text-decoration: inherit; border-color: rgb(0, 187, 236); box-sizing: border-box; background-color: rgb(237, 165, 63);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(237, 165, 63);">执行阶段、评估阶段</section></span></section><section class="96wx-bdtc" style="margin: 0px; padding: 16px; font-size: 1em; line-height: 1.4; font-family: inherit; box-sizing: border-box; border-top-color: rgb(237, 165, 63);"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; box-sizing: border-box; border-top-color: rgb(237, 165, 63);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp; &nbsp;首先进行一次彻底的大扫除。其次安排海报的张贴、宣传单的派发、店内环境布置等工作。最后在每天促销活动后进行检查。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp; &nbsp;在促销活动结束后，美容美发企业还要对促销的实际绩效进行评估，经营者和员工开一次促销活动总结会，总结促销活动的成功和失败之处，从中寻找原因，总结经验。</p></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(63, 141, 237); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section class="96wx-bdlc" style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(63, 141, 237); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section></section><section style="margin: 0px; padding: 5px 0px 0px; box-sizing: border-box; float: left; clear: none;"><p class="96wx-color" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap; font-size: 18px; color: rgb(63, 141, 237);">请本文总结</p></section><section style="margin: 0px 0px 0px 15px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(63, 141, 237) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section class="96wx-bdrc" style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(63, 141, 237) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">促销活动如同一场战争，只有胜利和失败的区别，而不会像棋局中那样出现和局，为了打赢这场战争，美容美发企业通过本章的完整体系，在综合考虑顾客需要的前提下，找到合适的立足点和销售销时机，创造出美容美发行业促销的新局面。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictoHcSZ1QOuCbJ7nMKaibic1nsuANwxHJh8PwO6qMjBzpkIQ53ibqyJobfuQ/0?wx_fmt=jpeg" data-ratio="0.5629496402877698" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; text-align: center;"><section style="margin: 5px 0px 0px; padding: 10px; border: none; text-align: left; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf5geQK3gu2FUugjB8iaSGpjOakn10ODqnnrL85qpRbIIf0pKGdCjfYf9tHBwlPiaAXs0BO2ib6W54p2Q/0?wx_fmt=png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-ratio="0.03802281368821293" data-w="526" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 526px; display: block;"/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p></section></section></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; color: inherit; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.6079136690647482" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/></p><p><br/></p>','','1469072298020','1180','1180',null,null,null,null,null),
('22','gaamtDGdR3EWq7xACDyRYfcCZh72eExDcO1hFBmboq4','（八）促销实战全攻略之避开促销的误区','中邦一号店','http://mp.weixin.qq.com/s?__biz=MzIzMTI5NDYzMA==&mid=100000245&idx=5&sn=0305980deef88a6e8f9fa44815e48cef#rd','促销并不是减价销售，而是一门颇具艺术的学问，如果美容美发企业不能避开促销的误区,就只有面对恶性价格的竞争，而这种情况就足目前促销市场上最在大的问题所在，因此，只奋避开促销的误区，才能真正达到美容美发企业的促销效果。','http://mmbiz.qpic.cn/mmbiz/5VJDJica6gH4gCIlOh2fkOiatM38sG49Bia1W7JMNiaibAWfst2LLLTbV89ZWAViaqKtk1JtibzIq18wPFW1fkFOBiaFWw/0','http://7xss26.com1.z0.glb.clouddn.com/zefun/wechat/1469072229894','gaamtDGdR3EWq7xACDyRYdSn-avquxNYHXW9Clp-Dwg','<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf4Mm0CFWFnXy6KtFpy8UlvNybKSHlfqrs57ia4mBLvyO6V4S9vkNwDUhNFcLS82zT6fws4iaw8tyZicQ/0?wx_fmt=gif" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHqDoYqxB7nWUZ1r0y7icG6Uf7GFYnCyvpZyORekaFAWNAaPQ9zBeCG3w/0?wx_fmt=gif" data-type="gif" data-ratio="1" data-w="30" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; line-height: 25.6000003814697px; white-space: normal; width: 30px; display: inline-block; vertical-align: middle;"/><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;">点击上面的蓝字关注我们哦！</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7Wjsicto9n9KibeqwxrCrOoAAWkYicNH5SOMk60glASgtfoLgnpOHsONRkDia2MpQ/0?wx_fmt=jpeg" data-ratio="0.599128540305011" data-w="459" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 1em auto; padding: 0px; text-align: center; width: 556px;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-top-style: solid; border-top-width: 2px; border-top-color: rgb(63, 165, 237);"><section style="margin: -17px 0px 0px; padding: 0px;"><section style="margin: 0px; padding: 0px; display: inline-block; background-color: rgb(255, 255, 254);"><section class="96wx-bdlc 96wx-bdrc" style="margin: 0px; padding: 0px; border-left-style: solid; border-left-width: 1px; border-left-color: rgb(63, 165, 237); border-right-style: solid; border-right-width: 1px; border-right-color: rgb(63, 165, 237); width: 7px; -webkit-transform: rotate(8deg); height: 28px; vertical-align: middle; display: inline-block;"></section><section class="96wx-bdrc" style="margin: 0px; padding: 0px; border-right-style: solid; border-right-width: 1px; border-right-color: rgb(63, 165, 237); -webkit-transform: rotate(8deg); width: 7px; height: 28px; vertical-align: middle; display: inline-block;"></section><section style="margin: 0px; padding: 0px 10px; font-size: 18px; height: 28px; line-height: 28px; display: inline-block; border-right-color: rgb(13, 163, 105); border-left-color: rgb(4, 171, 106);"><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-weight: bold;"><span style="margin: 0px; padding: 0px; font-size: 20px;">避开促销的误区</span></p></section><section class="96wx-bdlc 96wx-bdrc" style="margin: 0px; padding: 0px; border-left-style: solid; border-left-width: 1px; border-left-color: rgb(63, 165, 237); border-right-style: solid; border-right-width: 1px; border-right-color: rgb(63, 165, 237); -webkit-transform: rotate(8deg); width: 7px; height: 28px; vertical-align: middle; display: inline-block;"></section><section class="96wx-bdrc" style="margin: 0px; padding: 0px; border-right-style: solid; border-right-width: 1px; border-right-color: rgb(63, 165, 237); -webkit-transform: rotate(8deg); width: 7px; height: 28px; vertical-align: middle; display: inline-block;"></section></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">促销并不是减价销售，而是一门颇具艺术的学问，如果美容美发企业不能避开促销的误区,就只有面对恶性价格的竞争，而这种情况就足目前促销市场上最在大的问题所在，因此，只奋避开促销的误区，才能真正达到美容美发企业的促销效果。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" tyle=" margin: 1em auto; font-family:&#39;Microsoft YaHei&#39;; " style="margin: 0px; padding: 0px;"><section style="margin: 0px auto; padding: 0px 0px 20px; width: 556px; height: auto;"><section class="96wx-color" style="margin: 0px; padding: 0px; width: 278px; word-break: break-all; color: rgb(63, 165, 237);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 0px; clear: both; white-space: pre-wrap; line-height: 30px; text-align: right; text-transform: uppercase;"><span style="margin: 0px; padding: 0px; font-size: 20px;">价格越低越畅销</span></p></section><section class="96wx-bdbc" style="margin: 0px; padding: 0px; height: 1px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(63, 165, 237); width: 556px;"></section><section style="margin: -1px 0px 0px 278px; padding: 0px; color: rgb(51, 51, 51); width: 83.390625px; height: 2px; background: rgb(255, 255, 255);"><section class="96wx-bdlc" style="margin: -24px 0px 0px 10px; padding: 0px; float: left; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(63, 165, 237);"><section class="96wx-bgc" style="margin: -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(63, 165, 237);"></section></section><section class="96wx-bdlc" style="margin: -2px 5px 0px 0px; padding: 0px; float: right; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(63, 165, 237);"><section class="96wx-bgc" style="margin: 29px 0px 0px -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(63, 165, 237);"></section></section><section style="margin: 0px; padding: 0px; clear: both; height: 0px;"></section></section><section class="96wx-color" style="margin: -30px 0px 0px; padding: 0px; line-height: 28px; width: 556px; float: right; color: rgb(63, 165, 237);"><span style="margin: 0px; padding: 0px 0px 0px 66%; font-size: 20px; color: rgb(255, 169, 0);">误区一</span></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictoWC2CJWd7unmEeA8KibDkOWiaSxW776c6EtWAfDulUcf8H5iamdriblV6Ew/0?wx_fmt=png" data-ratio="0.6025179856115108" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">在促销活动的过程中，不少美容美发的经营者认为低价格来做促销，就一定会畅销。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">其实，这是美容美发企业促销中最常见的误区。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">为什么这样说呢？因为在促销活动的实践中，对于一般商品來说采取低价促销确实可以提高销售量，但对美容美发的大多数服务或产品来说就不一定适合采取低价促销策略。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">事实上，有许多美容美发企业的服务和产品之所以不受顾客认可，就是因为价格太低，使得原本较好的项目变得无人问津，而企业还蒙在鼓里，不知道毛病究竟出在哪里。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(184, 110, 187);"><section style="margin: 10px 0px; padding: 0px; width: 556px; display: inline-block;"><section data-bgless="spin" data-bglessp="20" style="margin: 0px; padding: 0px; float: left; height: 36px; width: 8px; background-color: rgb(0, 0, 1);"></section><section class="96wx-bgc" style="margin: 0px; padding: 0px 30px 0px 10px; float: left; height: 36px; line-height: 36px; background-color: rgb(184, 110, 187);"><section style="margin: 0px; padding: 0px; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255);">价格高低跟消费群有关</span></section></section><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(184, 110, 187); border-top-width: 18px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 18px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bgc" style="margin: 0px 5px 0px 0px; padding: 0px; width: 8px; height: 18px; float: left; transform: skewX(40deg); -webkit-transform: skewX(40deg); background-color: rgb(184, 110, 187);"></section></section><section style="margin: 0px; padding: 0px; clear: both;"><section class="96wx-bgc" style="margin: 0px 5px 0px 0px; padding: 0px; width: 8px; height: 18px; float: left; transform: skewX(-40deg); -webkit-transform: skewX(-40deg); background-color: rgb(184, 110, 187);"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">要知道美容美发促销的价格是应该低还是应该高，首先应改从顾客的消费心理上谈起。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">了解和把握消费者的心理，给促销项目制定一个最佳的 销售价格，是促销成败的的关键，而并不是所有的服务项目价格越低 就越能吸引消费者。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(184, 110, 187);"><section style="margin: 10px 0px; padding: 0px; width: 556px; display: inline-block;"><section data-bgless="spin" data-bglessp="20" style="margin: 0px; padding: 0px; float: left; height: 36px; width: 8px; background-color: rgb(0, 0, 1);"></section><section class="96wx-bgc" style="margin: 0px; padding: 0px 30px 0px 10px; float: left; height: 36px; line-height: 36px; background-color: rgb(184, 110, 187);"><section style="margin: 0px; padding: 0px; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255);">价格高低与品牌形象有关</span></section></section><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(184, 110, 187); border-top-width: 18px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 18px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bgc" style="margin: 0px 5px 0px 0px; padding: 0px; width: 8px; height: 18px; float: left; transform: skewX(40deg); -webkit-transform: skewX(40deg); background-color: rgb(184, 110, 187);"></section></section><section style="margin: 0px; padding: 0px; clear: both;"><section class="96wx-bgc" style="margin: 0px 5px 0px 0px; padding: 0px; width: 8px; height: 18px; float: left; transform: skewX(-40deg); -webkit-transform: skewX(-40deg); background-color: rgb(184, 110, 187);"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">大部分美容美发企业对品牌形象的认识并不够，品牌形象跟企业的定位、宣传、服务等因素都是息息相关的。在美容美发行业中，大多数情况下，价格越低的促销就会使光顾的客人越少，主要原因就是价格低了，反而使顾客对企业缺乏信任感, 产生不敢到企业消费的心理。从这一点上来讲，企业在促销活动中应把握好自己形象，推出适合自己形象的促销价格，而不是价格越低越好。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7WjsictosQt3RAKR4g8zez8aOqHauXcNtw5ylOAeWOJXCDcFiaeaa9t76ufVvXw/0?wx_fmt=jpeg" data-ratio="0.6007194244604317" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wx-bdtc" style="margin: 0px; padding: 0px; border-width: 0px; border-style: none; border-top-color: rgb(184, 110, 187);"><section style="margin: 10px 0px; padding: 0px; width: 556px; display: inline-block;"><section data-bgless="spin" data-bglessp="20" style="margin: 0px; padding: 0px; float: left; height: 36px; width: 8px; background-color: rgb(0, 0, 1);"></section><section class="96wx-bgc" style="margin: 0px; padding: 0px 30px 0px 10px; float: left; height: 36px; line-height: 36px; background-color: rgb(184, 110, 187);"><section style="margin: 0px; padding: 0px; box-sizing: border-box;"><span style="margin: 0px; padding: 0px; color: rgb(255, 255, 255);">价格高低与服务有关</span></section></section><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(184, 110, 187); border-top-width: 18px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 18px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bgc" style="margin: 0px 5px 0px 0px; padding: 0px; width: 8px; height: 18px; float: left; transform: skewX(40deg); -webkit-transform: skewX(40deg); background-color: rgb(184, 110, 187);"></section></section><section style="margin: 0px; padding: 0px; clear: both;"><section class="96wx-bgc" style="margin: 0px 5px 0px 0px; padding: 0px; width: 8px; height: 18px; float: left; transform: skewX(-40deg); -webkit-transform: skewX(-40deg); background-color: rgb(184, 110, 187);"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">在美容美发行业中，服务是最大的成本因素，价格降低只会味着服务品质的下降，如果为了以低价来吸引顾客上门，那是不会维持太久时间的，因为这种低成本的服务是绝对缺乏竞争力的。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">好的服务固然就需要较高的成本，否则无法保证为顾客服务的质量，因此，在制定促销价格中，美容美发企业应该建立为顾客提供优质服务成本的基础上制定适当的价格，过低的价格只会限制企提供服务的质量。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WjABhQgR3yxrbMor7Wjsicto8fbrhRRTh2xf0fy6c2kJibyvEXO0okRPCicXI2QxczjUh14wHUaicRnag/0?wx_fmt=jpeg" data-ratio="0.670863309352518" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" tyle=" margin: 1em auto; font-family:&#39;Microsoft YaHei&#39;; " style="margin: 0px; padding: 0px;"><section style="margin: 0px auto; padding: 0px 0px 20px; width: 556px; height: auto;"><section class="96wx-color" style="margin: 0px; padding: 0px; width: 278px; font-size: 22px; word-break: break-all; color: rgb(37, 110, 221);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 0px; clear: both; white-space: pre-wrap; font-size: 18px; line-height: 30px; text-align: right; text-transform: uppercase;"><span style="margin: 0px; padding: 0px; font-size: 20px;"><span style="margin: 0px; padding: 0px; line-height: 28px;">想当然地促销</span></span></p></section><section class="96wx-bdbc" style="margin: 0px; padding: 0px; height: 1px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(37, 110, 221); width: 556px;"></section><section style="margin: -1px 0px 0px 278px; padding: 0px; color: rgb(51, 51, 51); width: 83.390625px; height: 2px; background: rgb(255, 255, 255);"><section class="96wx-bdlc" style="margin: -24px 0px 0px 10px; padding: 0px; float: left; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(37, 110, 221);"><section class="96wx-bgc" style="margin: -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(37, 110, 221);"></section></section><section class="96wx-bdlc" style="margin: -2px 5px 0px 0px; padding: 0px; float: right; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(37, 110, 221);"><section class="96wx-bgc" style="margin: 29px 0px 0px -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(37, 110, 221);"></section></section><section style="margin: 0px; padding: 0px; clear: both; height: 0px;"></section></section><section class="96wx-color" style="margin: -30px 0px 0px; padding: 0px; line-height: 28px; width: 556px; float: right; color: rgb(37, 110, 221);"><span style="margin: 0px; padding: 0px 0px 0px 66%; font-size: 20px; color: rgb(255, 169, 0);">误区二</span></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">促销活动要想成功，必须要建立在对顾客的了解和市场的分析上，然而，有许多美容美发企业以为自己对促销方案满意，顾客便同样会感满意，完全以个人的思维来决定顾客群体的需求，这样就本末倒置，造成促销活动的失败。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">在美容美发企业的促销活动中，经常会有这样一些问题存在：美容院的服务项目或产品非常好，而且价格也非常便宜，但是顾客就是不买账，经营者为此也感到非常苦恼。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 10px; clear: both; white-space: pre-wrap; border: 2px dashed rgb(249, 163, 94); line-height: 1.5em;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px; font-size: 18px;">例如</span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 10px; clear: both; white-space: pre-wrap; border: 2px dashed rgb(249, 163, 94); line-height: 1.5em;"><span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px;">某美容院的经营者认为顾客对香薰SPA的价格过高才导致不会消费，因此推出折扣活动，但是仍然少有顾客光顾，因此导致活动失败。其实，香薰SPA项目之所以顾客较少，真正原因，是顾客对香薰SPA缺乏了解，香薰SPA是一种生活观念，是优质生活的一种体现，而且并不是所有的顾客都会有这种需求，只能那些讲究生活品质的顾客，在了解香薰SPA的各项好处后，才会主动进行消费。如果美容院在推广香薰SPA项目前，先邀约目标顾客，讲一场生动的香薰生活课，再举行促销，可能效果要好的多。</span></p></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">因此，促销活动的成败，必须要建立在事前进行分析与研究上，在不了解顾客需求情况下，做促销也只会徒劳无功。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" tyle=" margin: 1em auto; font-family:&#39;Microsoft YaHei&#39;; " style="margin: 0px; padding: 0px;"><section style="margin: 0px auto; padding: 0px 0px 20px; width: 556px; height: auto;"><section class="96wx-color" style="margin: 0px; padding: 0px; width: 278px; font-size: 22px; word-break: break-all; color: rgb(42, 98, 225);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 0px; clear: both; white-space: pre-wrap; font-size: 18px; line-height: 30px; text-align: right; text-transform: uppercase;"><span style="margin: 0px; padding: 0px; font-size: 20px;">墨守成规无创新</span></p></section><section class="96wx-bdbc" style="margin: 0px; padding: 0px; height: 1px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(42, 98, 225); width: 556px;"></section><section style="margin: -1px 0px 0px 278px; padding: 0px; color: rgb(51, 51, 51); width: 83.390625px; height: 2px; background: rgb(255, 255, 255);"><section class="96wx-bdlc" style="margin: -24px 0px 0px 10px; padding: 0px; float: left; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(42, 98, 225);"><section class="96wx-bgc" style="margin: -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(42, 98, 225);"></section></section><section class="96wx-bdlc" style="margin: -2px 5px 0px 0px; padding: 0px; float: right; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(42, 98, 225);"><section class="96wx-bgc" style="margin: 29px 0px 0px -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(42, 98, 225);"></section></section><section style="margin: 0px; padding: 0px; clear: both; height: 0px;"></section></section><section class="96wx-color" style="margin: -30px 0px 0px; padding: 0px; line-height: 28px; width: 556px; float: right; color: rgb(42, 98, 225);"><span style="margin: 0px; padding: 0px 0px 0px 66%; color: rgb(255, 169, 0); font-size: 20px;">误区三</span></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1Wiafcrib2A6I8RRsmzU9zUF94M5XLGM1GKWVJSm0ibFV0ba3DhMpzpqjhQMyibd5aobb4Kfh4ticfEvAAQ/0?wx_fmt=jpeg" data-ratio="0.5215827338129496" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">为什么会出现企业门可罗雀、生意清淡的现象呢？其中一个重要原因就是经营时墨守成规。做任何生意，一定要与时代并进， 而不能墨守成规，忽视创新思想，否则同样会遭到淘汰的命运。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 10px; border: 2px dashed rgb(249, 163, 94); line-height: 1.5em;"><span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px; font-size: 18px;">发型店的创新之举</span></span><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;某发型店在经营的过程中，发现顾客在店内虽然将 头发打理好了，可是回到家中，却不能将头整理的符合自己的个性，于是发型店就组织回一批发夹、发卡等饰发用 品，请有经验的发型师运用这些发饰教顾客如何打理自己 的头发、如何在家中进行盘发。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;项目推出后，出乎意料的大受顾客欢迎，还有许多顾 客专门慕名而来，不仅在发型店设计自己的头发，还将店 内的许多饰发品买走，自己也能在家打理头发了，因此顾 客趋之若鹜。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;发型店也因为此创新之举，不但顾客盈门，还开发了 一个新项目，创造了更多的盈利空间。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">这家发型店的成功，就在于它利用了创新思想，能够另辟蹊径，吸引人们的注意力，使自己成为顾客关注的焦点。可见，美容美发企业的促销活动想要取得成功，就不应该墨守成规，忽视创新思维, 而要勇于突破思维的习惯，寻找新的促销途径。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" tyle=" margin: 1em auto; font-family:&#39;Microsoft YaHei&#39;; " style="margin: 0px; padding: 0px;"><section style="margin: 0px auto; padding: 0px 0px 20px; width: 556px; height: auto;"><section class="96wx-color" style="margin: 0px; padding: 0px; width: 278px; font-size: 22px; word-break: break-all; color: rgb(42, 98, 225);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 0px; clear: both; white-space: pre-wrap; font-size: 18px; line-height: 30px; text-align: right; text-transform: uppercase;"><span style="margin: 0px; padding: 0px; font-size: 20px;">目光短而不远谋</span></p></section><section class="96wx-bdbc" style="margin: 0px; padding: 0px; height: 1px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(42, 98, 225); width: 556px;"></section><section style="margin: -1px 0px 0px 278px; padding: 0px; color: rgb(51, 51, 51); width: 83.390625px; height: 2px; background: rgb(255, 255, 255);"><section class="96wx-bdlc" style="margin: -24px 0px 0px 10px; padding: 0px; float: left; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(42, 98, 225);"><section class="96wx-bgc" style="margin: -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(42, 98, 225);"></section></section><section class="96wx-bdlc" style="margin: -2px 5px 0px 0px; padding: 0px; float: right; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(42, 98, 225);"><section class="96wx-bgc" style="margin: 29px 0px 0px -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(42, 98, 225);"></section></section><section style="margin: 0px; padding: 0px; clear: both; height: 0px;"></section></section><section class="96wx-color" style="margin: -30px 0px 0px; padding: 0px; line-height: 28px; width: 556px; float: right; color: rgb(42, 98, 225);"><span style="margin: 0px; padding: 0px 0px 0px 66%; font-size: 20px; color: rgb(255, 169, 0);">误区三</span></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1Wiafcrib2A6I8RRsmzU9zUF94OYQqWITXrXkeTniaU2rL8ZfSgx72kwUXDZf1Tb47r77wWNOSncnYplw/0?wx_fmt=jpeg" data-ratio="0.670863309352518" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto; width: 556px;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">在商界有一句名言叫做“愚者赚今天，智者赢明天”,就是说那些目光短浅的人只注意赚取眼前的利益，而不知道放长线钓大鱼，为企业的长远利益打算。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 10px; border: 2px dashed rgb(249, 163, 94); line-height: 1.5em;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="margin: 0px; padding: 0px; font-size: 18px;">某发型师被辞退的原因</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp; &nbsp;阿强是一家美容美发公司的发型师，他为了个人业 绩，经常迫使顾客消费一些金额较高的项目，当然也为公司创造了不少利润。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">但是，当公司的经理知道这件事之后，不但没有重用 阿强，反而将阿强辞退了，让他卷起铺盖回家。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;">&nbsp; &nbsp; &nbsp; &nbsp;阿强为此大惑不解，他找到公司经营询问自己被辞 退的原因。令他没有想到的是，这位经理竟然这样对他说：“你虽然为公司赚了很多钱，但你想过没有，你这样赚钱是 不是太多太狠了？这样便会损害顾客的利益，顾客心里面 会怎想？对待顾客要把眼光放长远一些，而不能只顾赚取眼前的利益。在维护顾客利益的基础上赚钱，这样才能在 顾客心目中赢得好感，获得更多的长期利益。”</p></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">容美发企业的经营者必须明确“愚者赚今天，智者赢明天”这一商界名言的真实内涵，真正做到不仅考虑企业的眼前利益，更要考到企业的未来和明天，敢于放弃眼前的小利，将目光放得长远一些， 给自己的顾客让利，最终实现企业的长远利益。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; text-align: center;"><span style="margin: 0px; padding: 0px; font-size: 12px; line-height: 25.6000003814697px;"></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" tyle=" margin: 1em auto; font-family:&#39;Microsoft YaHei&#39;; " style="margin: 0px; padding: 0px;"><section style="margin: 0px auto; padding: 0px 0px 20px; width: 556px; height: auto;"><section class="96wx-color" style="margin: 0px; padding: 0px; width: 278px; font-size: 22px; word-break: break-all; color: rgb(42, 98, 225);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 0px; clear: both; white-space: pre-wrap; font-size: 18px; line-height: 30px; text-align: right; text-transform: uppercase;"><span style="margin: 0px; padding: 0px; font-size: 20px;">和顾客争利</span></p></section><section class="96wx-bdbc" style="margin: 0px; padding: 0px; height: 1px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(42, 98, 225); width: 556px;"></section><section style="margin: -1px 0px 0px 278px; padding: 0px; color: rgb(51, 51, 51); width: 83.390625px; height: 2px; background: rgb(255, 255, 255);"><section class="96wx-bdlc" style="margin: -24px 0px 0px 10px; padding: 0px; float: left; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(42, 98, 225);"><section class="96wx-bgc" style="margin: -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(42, 98, 225);"></section></section><section class="96wx-bdlc" style="margin: -2px 5px 0px 0px; padding: 0px; float: right; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(42, 98, 225);"><section class="96wx-bgc" style="margin: 29px 0px 0px -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(42, 98, 225);"></section></section><section style="margin: 0px; padding: 0px; clear: both; height: 0px;"></section></section><section class="96wx-color" style="margin: -30px 0px 0px; padding: 0px; line-height: 28px; width: 556px; float: right; color: rgb(42, 98, 225);"><span style="margin: 0px; padding: 0px 0px 0px 66%; font-size: 20px; color: rgb(255, 169, 0);">误区四</span></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1Wiafcrib2A6I8RRsmzU9zUF94JmVTR1U13UKz6D7AmMcDEBfbvJv0KhhUWMRxUTmicU7aHKs55pjuPOw/0?wx_fmt=jpeg" data-ratio="0.5449640287769785" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">在美容美发行业市场竞争十分激烈的今天，每一家美容美发企业都而临着不可避免的竞争压力。能否扩大自己的顾客范围，也就是说扩大自己的商圈范围，使自己的顾客成为回头客，也就成为了一门学问。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">营销专家建议我们，给顾客—定的“甜头”就会获得顾客的心。他们会再次光临你的商店，从而成为美容美发店的回头客。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section style="margin: 0px; padding: 0px;"><section class="96wx-bdc" style="margin: 0px; padding: 10px; border: 2px dashed rgb(249, 163, 94); line-height: 1.5em;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="margin: 0px; padding: 0px; font-size: 18px;"><span style="margin: 0px; padding: 0px; line-height: 25.6000003814697px;">某美容美发企业待客之道</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp;&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;某美容美发企业在为顾客服务完后，等顾客结帐后 服务人员都会说一句：&quot; 请您等—下我们有份小礼物送给您！”。这时，员工会拿出一面小折叠镜、小梳子、小发卡，甚至是一个便宜但美观的小戒指、小吊坠等小礼物。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; line-height: 25.6000003814697px;">&nbsp; &nbsp; &nbsp; &nbsp;顾客突然感到非常惊喜，而且又觉得很受别人的尊 重，这些小礼物都女性比较喜欢的小玩意，这家企业只花了一点钱就可以赢得顾客的感谢，从而经常光顾这家美容美发店，成为了回头客。</p></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">上面这个例子，是“礼轻情义重”的最好体现。所以，只要抓住了顾客的这种心理，过路客也可以成为回头客,, 只要顾客多起来，那么生意也就不用发愁做不好了。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" tyle=" margin: 1em auto; font-family:&#39;Microsoft YaHei&#39;; " style="margin: 0px; padding: 0px;"><section style="margin: 0px auto; padding: 0px 0px 20px; width: 556px; height: auto;"><section class="96wx-color" style="margin: 0px; padding: 0px; width: 278px; font-size: 22px; word-break: break-all; color: rgb(42, 98, 225);"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 0px; clear: both; white-space: pre-wrap; font-size: 18px; line-height: 30px; text-align: right; text-transform: uppercase;"><span style="margin: 0px; padding: 0px; font-size: 20px;">缺乏售后服务</span></p></section><section class="96wx-bdbc" style="margin: 0px; padding: 0px; height: 1px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(42, 98, 225); width: 556px;"></section><section style="margin: -1px 0px 0px 278px; padding: 0px; color: rgb(51, 51, 51); width: 83.390625px; height: 2px; background: rgb(255, 255, 255);"><section class="96wx-bdlc" style="margin: -24px 0px 0px 10px; padding: 0px; float: left; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(42, 98, 225);"><section class="96wx-bgc" style="margin: -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(42, 98, 225);"></section></section><section class="96wx-bdlc" style="margin: -2px 5px 0px 0px; padding: 0px; float: right; display: inline; width: 8px; height: 32px; transform: rotate(45deg); border-left-width: 1px; border-left-style: solid; border-left-color: rgb(42, 98, 225);"><section class="96wx-bgc" style="margin: 29px 0px 0px -4px; padding: 0px; width: 8px; height: 8px; border-top-left-radius: 100%; border-top-right-radius: 100%; border-bottom-right-radius: 100%; border-bottom-left-radius: 100%; background: rgb(42, 98, 225);"></section></section><section style="margin: 0px; padding: 0px; clear: both; height: 0px;"></section></section><section class="96wx-color" style="margin: -30px 0px 0px; padding: 0px; line-height: 28px; width: 556px; float: right; color: rgb(42, 98, 225);"><span style="margin: 0px; padding: 0px 0px 0px 66%; font-size: 20px; color: rgb(255, 169, 0);">误区五</span></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1Wiafcrib2A6I8RRsmzU9zUF94Irfws2teThYlnHbC5FbCicGoJI1eDFfniafIR0gn59ERooMeHwAMm3MA/0?wx_fmt=jpeg" data-ratio="0.33992805755395683" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">售后服务的制度体现了美容美发企业服务的规范性，许多美容美发企业发企业在服务完顾客后，便不在搭理顾客了，这种做法显然是错误的，没有完善的服务就不能打消顾客的后顾之忧。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">例如，有一家发型店在为顾客服务前承诺：对服务后的发型不满意，可在一周内回店里免费修整，同时，员工也在顾客消费的第二天用电话询问发型是否满意，如果不满意随时可以回来免费修整。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">顾客面对这样的服务，既使不满意，也不会导致下次不回头。而有些企业，在一旦出现问题后，他们就甩手不管，甚至故意为难顾客， 给顾客带来极大伤害，这样顾客当然就不可能在回头了。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">因此，在促销活动中，设立完善的售后服务制度对美容美发企业来说，是获得顾客信任的最佳途径。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal;"><section class="96wxDiy" style="margin: 0px auto; padding: 0px; clear: both; width: 556px; overflow: hidden;"><section style="margin: 0.5em 0px; padding: 0px; text-align: center;"><section style="margin: 0px; padding: 0px; box-sizing: border-box; display: inline-block;"><section style="margin: 0px 15px 0px 0px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdlc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(63, 141, 237); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section class="96wx-bdlc" style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(63, 141, 237); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section><section style="margin: 0px -9px 0px 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-left-width: 15px; border-left-style: solid; border-left-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: right;"></section></section><section style="margin: 0px; padding: 5px 0px 0px; box-sizing: border-box; float: left; clear: none;"><p class="96wx-color" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: none; white-space: pre-wrap; font-size: 18px; color: rgb(63, 141, 237);">请本文总结</p></section><section style="margin: 0px 0px 0px 15px; padding: 0px; box-sizing: border-box; float: left; display: inline-block;"><section class="96wx-bdrc" style="margin: 0px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(63, 141, 237) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section><section class="96wx-bdrc" style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-color: transparent rgb(63, 141, 237) transparent rgb(109, 62, 215); border-top-width: 15px; border-top-style: solid; border-bottom-width: 15px; border-bottom-style: solid; float: left;"></section><section style="margin: 0px 0px 0px -9px; padding: 0px; box-sizing: border-box; width: 0px; height: 0px; border-right-width: 15px; border-right-style: solid; border-right-color: rgb(255, 255, 255); border-top-width: 15px; border-top-style: solid; border-top-color: transparent; border-bottom-width: 15px; border-bottom-style: solid; border-bottom-color: transparent; float: left;"></section></section></section></section></section></section></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;">通过本章分析的促销误区，希望在美容美发企业的促销活动中，必须避免这些误区的存在，在实际的促销活动中，充分发挥自身的优势，为顾客创造一些令人激动的、受人欢迎的促销活动。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="jpeg" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1Wiafcrib2A6I8RRsmzU9zUF94JCicjH9xJlkVWVibUVI1BsEFUgED1srrLPt0ZiciaQHH8Z93yXYricJqIVw/0?wx_fmt=jpeg" data-ratio="0.5359712230215827" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p><section class="wx96Diy cur" data-source="bj.96weixin.com" style="margin: 0px; padding: 0px; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px; white-space: normal; text-align: center;"><section style="margin: 5px 0px 0px; padding: 10px; border: none; text-align: left; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><img class="96wx-img" data-wxsrc="https://mmbiz.qlogo.cn/mmbiz/wyice8kFQhf5geQK3gu2FUugjB8iaSGpjOakn10ODqnnrL85qpRbIIf0pKGdCjfYf9tHBwlPiaAXs0BO2ib6W54p2Q/0?wx_fmt=png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WhF3s3YulRLG2FrYC3waibqHibdhpCda4KxN4C2IIcoj7yK1viadXGibgwvOoicNOD7ZpjfvlE0XpNmV2w/0?wx_fmt=png" data-type="png" data-ratio="0.03802281368821293" data-w="526" style="margin: 0px auto; padding: 0px; max-width: 100%; height: auto !important; width: 526px; display: block;"/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;"><br style="margin: 0px; padding: 0px;"/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap;"><span style="margin: 0px; padding: 0px; font-size: 12px;">文章源于文献，由中邦我道整理发出</span></p></section></section></p><p class="96wxDiy" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: normal; color: inherit; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><img data-s="300,640" data-type="png" src="https://mmbiz.qlogo.cn/mmbiz/E7K1XGNp1WgGmOsQNG0B6QEXkF90TLzaicnHPW6URALPtqLxZ9wX4NuGPkTj07YjvniaicCH0gaPmibpmYmsZMzBhA/0?wx_fmt=png" data-ratio="0.6079136690647482" data-w="" style="margin: 0px; padding: 0px; max-width: 100%; height: auto !important;"/><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; clear: both; white-space: pre-wrap; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; line-height: 25.6000003814697px;"><br style="margin: 0px; padding: 0px;"/></p><p><br/></p>','','1469072298021','1180','1180',null,null,null,null,null);
DROP TABLE IF EXISTS  `employee_info`;
CREATE TABLE `employee_info` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `position_id` int(11) DEFAULT NULL COMMENT '岗位标识',
  `level_id` int(11) DEFAULT NULL COMMENT '级别标识',
  `recommend_id` int(11) DEFAULT NULL COMMENT '介绍人标识',
  `employee_code` int(11) DEFAULT NULL COMMENT '员工编码',
  `name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `head_image` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `birthday` char(10) DEFAULT NULL COMMENT '生日',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `identity_card` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `health_card` varchar(18) DEFAULT NULL COMMENT '健康证号码',
  `address` varchar(50) DEFAULT NULL COMMENT '住址',
  `emergency_phone` varchar(25) DEFAULT NULL COMMENT '紧急联系电话',
  `base_salaries` int(11) DEFAULT '0' COMMENT '基本工资',
  `position_salaries` int(11) DEFAULT '0' COMMENT '岗位工资',
  `employee_status` varchar(5) DEFAULT '1' COMMENT '员工状态 1在职 2离职 3派遣',
  `entry_date` char(10) DEFAULT NULL COMMENT '入职日期',
  `leave_date` char(10) DEFAULT NULL COMMENT '离职日期',
  `service_peoples` int(11) DEFAULT '0' COMMENT '服务人数',
  `service_count` int(11) DEFAULT '0' COMMENT '服务次数',
  `service_score` float(2,1) DEFAULT '5.0' COMMENT '服务评分',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `accredit_code` int(11) DEFAULT NULL COMMENT '授权码',
  `username` varchar(30) DEFAULT NULL COMMENT '登录账号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT '颜值',
  `employee_desc` text COMMENT '个人简介',
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2146 DEFAULT CHARSET=utf8mb4 COMMENT='员工基本信息表';

insert into `employee_info`(`employee_id`,`store_id`,`dept_id`,`position_id`,`level_id`,`recommend_id`,`employee_code`,`name`,`head_image`,`sex`,`birthday`,`phone`,`identity_card`,`health_card`,`address`,`emergency_phone`,`base_salaries`,`position_salaries`,`employee_status`,`entry_date`,`leave_date`,`service_peoples`,`service_count`,`service_score`,`create_time`,`update_time`,`is_deleted`,`last_operator_id`,`accredit_code`,`username`,`password`,`salt`,`employee_desc`) values
('2084',null,null,null,null,null,null,'我道','jobwisdom/project/1469615629652','男',null,'15576078687',null,null,null,null,'0','0','1',null,null,'0','0','5','2016-07-16 20:16:16',null,'1',null,null,null,null,null,null),
('2085','1180','0',null,null,null,null,'操作员','jobwisdom/project/1469069348319','男',null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2086','1180','482','887','1478',null,'1','老王','jobwisdom/project/1469428487035','男','','15576078687','111111111111111111',null,null,null,'0','0','1','','','0','0','5','2016-07-25 14:35:56',null,'0','2085',null,null,null,null,'<p>士大夫士大夫</p>'),
('2087','1181','0',null,null,null,null,'操作员','jobwisdom/project/1468993476365','男',null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2088','1182','0',null,null,null,null,'操作员','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2089','1180','482','887','1478','2086','2','魏总','userhead/2089/1469089216836','男','','13632916933','111111111111111111',null,null,null,'0','0','1','2016-07-18','','0','0','5','2016-07-21 14:03:01',null,'1','2085',null,null,null,null,'<p>高级美发师</p>'),
('2090',null,null,null,null,null,null,'魏总',null,null,null,'222222222',null,null,null,null,'0','0','1',null,null,'0','0','5','2016-07-18 09:47:52',null,'0',null,null,null,null,null,null),
('2091','1181','485','892','1483',null,'1','吴彦祖','jobwisdom/project/1468820055267','男','1972-08-19','13802211912','4423519728197788',null,null,null,'0','0','1','2015-04-18','','0','0','5','2016-07-18 13:43:51',null,'0','2087',null,null,null,null,'<p>吴彦祖出生美国,从业十年专注修剪,曾毕业于英国伦敦沙宣国际学院.曾获第十届国际cid美发大赛冠军</p>'),
('2092','1181','485','892','1483',null,'2','徐凯','jobwisdom/project/1468820670455','男','1978-07-04','13802211913','425627823023456789',null,null,null,'0','0','1','2015-07-05','','0','0','5','2016-07-18 13:52:21',null,'0','2087',null,null,null,null,''),
('2093','1181','485','892','1483',null,'3','文章','jobwisdom/project/1468821186430','男','1991-07-16','13802211914','422569199171698765',null,null,null,'0','0','1','2015-08-10','','0','0','5','2016-07-18 14:06:10',null,'0','2087',null,null,null,null,'<p>文章出生北京,曾毕业于日本稻田美院专业美容学院,专功整体型像设计对审美有高度的自我判断,曾服务过国内国际一线明星</p>'),
('2094','1181','485','892','1484',null,'4','梁朝伟','jobwisdom/project/1468822180333','男','1964-07-28','13802211915','422561968370123467',null,null,null,'0','0','1','2013-07-23','','0','0','5','2016-07-18 14:17:59',null,'0','2087',null,null,null,null,'<p>梁朝伟ad出生香港,毕业于英国通灵盖美发国际学府,从业二十年曾经服务刘嘉玲专属私人定制造型师</p>'),
('2095','1181','485','892','1484',null,'5','金城武','jobwisdom/project/1468822712286','男','1979-07-09','13802211916','422135197979245678',null,null,null,'0','0','1','2014-08-09','','0','0','5','2016-07-18 14:28:46',null,'0','2087',null,null,null,null,'<p>金城武jsw出生于美国,从事美业十二年,深造于国际美业高级学府,曾服务一线品牌时装发布会专属造型,曾专为杨颖定制发型私人高极型像顾问</p>'),
('2096','1181','485','894','1488',null,'101','杨颖','jobwisdom/project/1468823743033','女','1992-07-15','13668996633','445511992715245679',null,null,null,'0','0','1','2015-04-08','','0','0','5','2016-07-18 14:38:36',null,'0','2087',null,null,null,null,''),
('2097','1181','485','894','1488',null,'102','李雨春','jobwisdom/project/1468823957541','女','1991-05-08','13804567789','445671991580123456',null,null,null,'0','0','1','2015-02-23','','0','0','5','2016-07-18 14:41:59',null,'0','2087',null,null,null,null,''),
('2098','1181','485','894','1488',null,'103','孙俪','jobwisdom/project/1468824144767','女','1991-05-13','13803345678','556019915130078922',null,null,null,'0','0','1','2015-07-14','','0','0','5','2016-07-18 14:45:12',null,'0','2087',null,null,null,null,''),
('2099','1181','485','896',null,null,'104','范冰冰','jobwisdom/project/1468824379297','女','1990-08-14','13804567890','556701990149876540',null,null,null,'0','0','1','2014-09-15','','0','0','5','2016-07-18 14:49:52',null,'0','2087',null,null,null,null,''),
('2100','1181','485','892','1483',null,'8','老魏','jobwisdom/project/1468825470175','男','1972-06-23','13713958999','422129197206234110',null,null,null,'0','0','1','2014-06-24','','0','0','5','2016-07-21 13:54:13',null,'0','2087',null,null,null,null,''),
('2102','1181','486','892','1499',null,'201','巩丽','jobwisdom/project/1468982334852','女','1971-02-20','13801155667','556612345678909876',null,null,null,'0','0','1','2015-07-28','','0','0','5','2016-07-23 11:23:37',null,'0','2087',null,null,null,null,''),
('2103','1181','486','892','1499',null,'202','李冰冰','jobwisdom/project/1468982638015','男','1991-08-20','13801155779','556609887654321123',null,null,null,'0','0','1','2015-10-18','','0','0','5','2016-07-23 11:07:18',null,'0','2087',null,null,null,null,''),
('2104','1180','482','887','1479','2089','3','Jake','jobwisdom/project/1468986602387','男','1973-07-10','13145624561','222222222222222222',null,null,null,'0','0','1','2011-07-21','','0','0','5','2016-07-20 11:51:28',null,'0','2085',null,null,null,null,''),
('2105','1180','481','888','1480','2104','4','阿文','jobwisdom/project/1468986715226','男','1990-07-11','13145648591','111111111111111111',null,null,null,'0','0','1','2011-07-05','','0','0','5','2016-07-20 11:53:17',null,'0','2085',null,null,null,null,''),
('2106','1180','481','888','1481','2104','5','涛涛','jobwisdom/project/1468986806085','女','','13145612562','111111111111111111',null,null,null,'0','0','1','2011-06-10','','0','0','5','2016-07-20 11:54:26',null,'0','2085',null,null,null,null,''),
('2107','1180','483','888','1487','2106','6','诗诗','jobwisdom/project/1468986880372','女','','13145647894','111111111111111111',null,null,null,'0','0','1','2016-06-27','','0','0','5','2016-07-20 11:55:35',null,'0','2085',null,null,null,null,''),
('2108','1180','484','888','1496','2104','7','玛丽','jobwisdom/project/1468986965089','女','','15245689845','111111111111111111',null,null,null,'0','0','1','2016-07-05','','0','0','5','2016-07-20 11:57:16',null,'0','2085',null,null,null,null,''),
('2110','1180','482','887','1478','2089','8','ray','jobwisdom/project/1469080651763','男','1979-02-28','13823218511','111111111111111111',null,null,null,'0','0','1','','','0','0','5','2016-07-21 16:23:00',null,'1','2085',null,null,null,null,''),
('2112','1180','482','887','1478','2086','8','ray','jobwisdom/project/1469090769499','男','','13823218511','111111111111111111',null,null,null,'0','0','1','2016-07-06','','0','0','5','2016-07-21 16:46:18',null,'0','2085',null,null,null,null,''),
('2113','1180','482','889','1482',null,'9','linda','jobwisdom/project/1469090105029','女','','13555555555','111111111111111111',null,null,null,'0','0','1','','','0','0','5','2016-07-21 17:07:39',null,'0','2085',null,null,null,null,''),
('2114','1180','482','889','1482','2086','10','阿妹','jobwisdom/project/1469090421348','女','1992-07-09','13455555555','111111111111111111',null,null,null,'0','0','1','2016-07-04','','0','0','5','2016-07-21 16:41:39',null,'0','2085',null,null,null,null,''),
('2115',null,null,null,null,null,null,'官崇庆',null,null,null,'13510285573',null,null,null,null,'0','0','1',null,null,'0','0','5','2016-07-23 16:01:21',null,'1',null,null,null,null,null,null),
('2116','1183','0',null,null,null,null,'SAM','jobwisdom/project/1469272047318','男',null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2117','1183','491','902','1508',null,'1','SAM','jobwisdom/project/1469272121094','男','1985-03-20','13510285573','440921198501298036',null,null,null,'0','0','1','2015-05-01','','0','0','5','2016-07-26 18:59:39',null,'0','2116',null,null,null,null,''),
('2118','1183','491','902','1509',null,'2','ben','jobwisdom/project/1469272623408','男','2016-07-04','13510000000','111111111111111111',null,null,null,'0','0','1','2015-05-01','','0','0','5','2016-07-26 19:02:49',null,'0','2116',null,null,null,null,'<p><img style="margin-top: 0px; width: 100%; padding: 0px; border-color: rgb(30, 155, 232); color: inherit; height: 100%;" data-width="100%" border="0" vspace="0" src="http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469272703382"/></p>'),
('2119',null,null,null,null,null,null,'李水娥','jobwisdom/project/1469842854751','女',null,'15171210483',null,null,null,null,'0','0','1',null,null,'0','0','5','2016-07-26 11:50:44',null,'1',null,null,null,null,null,null),
('2120',null,'0',null,null,null,null,'小敏敏','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2121',null,null,null,null,null,null,'小敏','jobwisdom/project/1469696246819','女',null,'13555555555',null,null,null,null,'0','0','1',null,null,'0','0','5','2016-07-27 17:03:03',null,'1',null,null,null,null,null,null),
('2122','1209','0',null,null,null,null,'小敏','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2123','1247','0',null,null,null,null,'陈坤朋','jobwisdom/project/1469672625898',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2124','1247','498','1222','1520',null,'1','leochen','system/profile/employee.png','男','2016-07-22','15112296745','441481198812111711',null,null,null,'0','0','1','2016-07-22','','0','0','5','2016-08-01 12:03:37',null,'0','2123',null,null,null,null,''),
('2125','1247','498','1222','1520',null,'2','小李','system/profile/employee.png','男','2016-07-15','13423347764','441398082384012405',null,null,null,'0','0','1','2016-07-22','','0','0','5','2016-07-29 10:53:20',null,'0','2123',null,null,null,null,''),
('2126','1247','499','1223','1526',null,'3','诗诗','system/profile/employee.png','女','2016-07-21','13535642345','441455623345671234',null,null,null,'0','0','1','2016-07-22','','0','0','5','2016-07-29 10:53:44',null,'0','2123',null,null,null,null,''),
('2127','1247','498','1224','1525',null,'4','mona','system/profile/employee.png','女','2016-07-22','13324537869','441456678898764567',null,null,null,'0','0','1','','','0','0','5','2016-07-29 10:53:52',null,'0','2123',null,null,null,null,''),
('2128','1247',null,'1226',null,null,'5','Lily','system/profile/employee.png','女','2016-07-21','15845352678','441481123345678954',null,null,null,'0','0','1','2016-07-22','','0','0','5','2016-07-29 10:53:59',null,'0','2123',null,null,null,null,''),
('2129','1247','498','1222','1521',null,'6','kensun','system/profile/employee.png','男','2016-07-21','15923038902','441481123345678956',null,null,null,'0','0','1','2016-07-22','','0','0','5','2016-07-29 10:54:08',null,'0','2123',null,null,null,null,''),
('2130','1209','494','1033','1516',null,'1','员工1','jobwisdom/project/1469762527132','男','','12344444444','111111111111111111',null,null,null,'0','0','1','','','0','0','5','2016-07-29 18:02:46',null,'0','2122',null,null,null,null,''),
('2131','1209','494','1033','1516',null,'0','的稳定','system/profile/employee.png','女','2016-07-04','15622222222','111111111111111111',null,null,null,'0','0','1','','','0','0','5','2016-07-29 11:29:29',null,'0','2122',null,null,null,null,'<p>个非官方个地方发的规范国家合格表就会比较看好家客户就会看见好看就很难看见还款计划内即可很快就会看见会尽快就回家看黄金客户即可很快就会看见好看就回家看见客户即可很快就会看见好看就很快就会看见很快就会看见个非官方个地方发的规范国家合格表就会比较看好家客户就会看见好看就很难看见还款计划内即可很快就会看见会尽快就回家看黄金客户即可很快就会看见好看就回家看见客户即可很快就会看见好看就很快就会看见很快就会看见</p>'),
('2132','1209','494','1032','1512',null,'2','吃的啥','system/profile/employee.png','男','','11111111111','111111111111111111',null,null,null,'0','0','1','','','0','0','5','2016-07-29 11:28:56',null,'0','2122',null,null,null,null,''),
('2133',null,'0',null,null,null,null,'胡玮玲','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2134',null,'0',null,null,null,null,'熊杰','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2135','1248','0',null,null,null,null,'胡玮玲','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2136',null,'0',null,null,null,null,'胡丽','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2137',null,'0',null,null,null,null,'储成英','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2138',null,'0',null,null,null,null,'熊杰','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2139','1180','0',null,null,null,null,'ymyk测试','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2140',null,'0',null,null,null,null,'FFF','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2141','1180','0',null,null,null,null,'河南漯河','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2142','1247',null,'1225',null,null,'1000','老周','system/profile/employee.png','男','2016-08-10','13510646727','441481122212121234',null,null,null,'0','0','1','2016-08-19','','0','0','5','2016-08-01 12:04:53',null,'0','2123',null,null,null,null,''),
('2143',null,'0',null,null,null,null,'ray','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2144',null,'0',null,null,null,null,'小敏','jobwisdom/project/1470188725227','女',null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null),
('2145','1180','0',null,null,null,null,'xiaomin','pc/defaulf_male.png',null,null,null,null,null,null,null,'0','0','1',null,null,'0','0','5',null,null,'1',null,null,null,null,null,null);
DROP TABLE IF EXISTS  `member_error_sc`;
CREATE TABLE `member_error_sc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(60) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `create_time` varchar(60) DEFAULT NULL,
  `level_num` varchar(60) DEFAULT NULL,
  `level_name` varchar(60) DEFAULT NULL,
  `level_type` varchar(60) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `total_amount` decimal(8,2) DEFAULT NULL,
  `total_consume_amount` decimal(8,2) DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT NULL,
  `send_amount` decimal(8,2) DEFAULT NULL,
  `aead_time` varchar(60) DEFAULT NULL,
  `consume_amount` int(11) DEFAULT NULL,
  `balance_integral` int(11) DEFAULT NULL,
  `debt_amount` decimal(8,2) DEFAULT '0.00',
  `last_consume_time` varchar(60) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `shift_mahjong`;
CREATE TABLE `shift_mahjong` (
  `shift_mahjong_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮牌信息标识',
  `shift_mahjong_name` varchar(50) DEFAULT NULL COMMENT '轮牌名称',
  `store_id` int(11) DEFAULT NULL COMMENT '适用门店',
  `position_id` varchar(50) DEFAULT NULL COMMENT '选择岗位',
  `nature` int(11) DEFAULT '1' COMMENT '离开规则(1：离开不轮牌、2：离开轮牌)',
  `shift_mahjong_up` int(11) DEFAULT '1' COMMENT '上牌规则（1：考勤轮牌、2：持续轮牌）',
  `shift_mahjong_rule` int(11) DEFAULT '1' COMMENT '轮牌规则（1：指定不轮牌、2：指定轮牌）',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人标识',
  PRIMARY KEY (`shift_mahjong_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;

insert into `shift_mahjong`(`shift_mahjong_id`,`shift_mahjong_name`,`store_id`,`position_id`,`nature`,`shift_mahjong_up`,`shift_mahjong_rule`,`create_time`,`operator_id`) values
('26','美发牌','1180','887,888,889','2','2','2','2016-07-17',null),
('27','美容牌','1180','887','1','2','2','2016-07-18',null),
('28','助理牌','1180','888,889','1','1','1','2016-07-18',null),
('29','美发牌','1181','892','1','1','1','2016-07-18',null),
('30','美容牌','1181','892','1','1','1','2016-07-18',null),
('31','助理牌','1181','893,894','1','1','1','2016-07-18',null),
('32','烫染牌','1180','887','1','1','1','2016-07-18',null),
('33','美发牌','1182','897','1','1','1','2016-07-18',null),
('34','美容牌','1182','898','1','1','1','2016-07-18',null),
('35','助理牌','1182','899','1','1','1','2016-07-18',null),
('36','美容技师','1181','893,894','1','1','1','2016-07-23',null),
('37','美发技师','1181','893,894','1','1','1','2016-07-23',null),
('40','发型师牌位','1183','902','1','1','1','2016-07-26',null),
('41','技师牌位','1183','904','1','1','1','2016-07-26',null),
('43','发型师牌','1209','1032','1','1','1','2016-07-28',null),
('44','技师牌','1209','1033','1','1','1','2016-07-28',null),
('45','助理牌','1209','1034','1','1','1','2016-07-28',null),
('49','美容牌','1209','1033','1','1','1','2016-07-29',null),
('51','7星306','1248','1227','1','1','1','2016-07-30',null),
('52','5星308','1248','1227','1','1','1','2016-07-30',null),
('53','3星315','1248','1227','1','1','1','2016-07-30',null),
('54','3星319','1248','1227','1','1','1','2016-07-30',null),
('55','5星311','1248','1227','1','1','1','2016-07-30',null),
('56','326陈珊','1248','1227','1','1','1','2016-07-30',null),
('57','329二龙','1248','1227','1','1','1','2016-07-30',null),
('58','330袁柳','1248','1227','1','1','1','2016-07-30',null),
('59','331陈茜','1248','1227','1','1','1','2016-07-30',null),
('60','332陈玲','1248','1227','1','1','1','2016-07-30',null),
('61','336郭健','1248','1227','1','1','1','2016-07-30',null),
('62','531首长','1248','1227','1','1','1','2016-07-30',null),
('63','353陶悦','1248','1227','1','1','1','2016-07-30',null),
('64','352思均','1248','1227','1','1','1','2016-07-30',null),
('65','356汪毅','1248','1227','1','1','1','2016-07-30',null),
('66','312慧玲','1248','1227','1','1','1','2016-07-30',null),
('67','310程庆','1248','1227','1','1','1','2016-07-30',null),
('68','302魏珍','1248','1227','1','1','1','2016-07-30',null),
('69','卫生阿姨杨','1248','1227','1','1','1','2016-07-30',null),
('70','陈志群','1248','1227','1','1','1','2016-07-30',null),
('71','328汇涛','1248','1227','1','1','1','2016-07-30',null),
('74','美发轮牌','1247','1222,1223','1','1','1','2016-08-01',null),
('75','美容轮牌','1247','1222,1223','1','1','1','2016-08-01',null),
('76','美甲轮牌','1247','1222,1223','1','1','1','2016-08-01',null),
('77','助理轮牌','1247','1224','1','1','1','2016-08-01',null);
DROP TABLE IF EXISTS  `employee_evaluate`;
CREATE TABLE `employee_evaluate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评价标识',
  `member_id` int(11) DEFAULT NULL COMMENT '评价人标识',
  `detail_id` int(11) DEFAULT NULL COMMENT '订单明细标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `evaluate_rate` int(1) DEFAULT '5' COMMENT '评价分数',
  `create_time` char(19) DEFAULT '' COMMENT '评价时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

insert into `employee_evaluate`(`id`,`member_id`,`detail_id`,`employee_id`,`evaluate_rate`,`create_time`) values
('1','56044','39339','2104','5','2016-07-27 10:40:30'),
('2','56044','39339','2106','5','2016-07-27 10:40:30'),
('3','56044','39339','2106','5','2016-07-27 10:40:30'),
('4','56044','39351','2104','5','2016-07-30 10:26:53'),
('5','56044','39351','2106','5','2016-07-30 10:26:53'),
('6','56044','39351','2114','5','2016-07-30 10:26:53'),
('7','56044','39352','2104','5','2016-07-30 10:43:38'),
('8','56050','39353','2112','5','2016-07-30 12:22:36'),
('9','56044','39363','2104','5','2016-08-01 15:06:39'),
('10','56045','39372','2104','5','2016-08-01 15:34:40'),
('11','56045','39376','2086','5','2016-08-01 15:38:19');
DROP TABLE IF EXISTS  `dispatch_info`;
CREATE TABLE `dispatch_info` (
  `dispatch_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '派遣标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `p_store_id` int(11) DEFAULT NULL COMMENT '派遣的门店标识',
  `dispatch_time` char(10) DEFAULT NULL COMMENT '派遣时间',
  `create_time` char(19) DEFAULT NULL COMMENT '操作时间',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`dispatch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工派遣信息表';

DROP TABLE IF EXISTS  `agent_info`;
CREATE TABLE `agent_info` (
  `agent_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '代理标识',
  `name` varchar(10) DEFAULT '' COMMENT '联系人',
  `phone` varchar(11) DEFAULT '' COMMENT '联系电话',
  `company_type` int(11) DEFAULT '1' COMMENT '公司类型(0:其他，1:连锁机构，2:发品商，3:培训机构)',
  `company_name` varchar(25) DEFAULT '' COMMENT '公司名称',
  `province` varchar(25) DEFAULT '' COMMENT '所属省份',
  `city` varchar(25) DEFAULT '' COMMENT '所属城市',
  `create_time` char(19) DEFAULT '' COMMENT '申请时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道代理信息表';

DROP TABLE IF EXISTS  `faceset_store`;
CREATE TABLE `faceset_store` (
  `set_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '人脸集合ID',
  `store_id` int(11) NOT NULL COMMENT '店铺ID',
  PRIMARY KEY (`set_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='人脸集合与店铺关联表';

DROP TABLE IF EXISTS  `enroll_info`;
CREATE TABLE `enroll_info` (
  `personnel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '人员ID',
  `referee_id` int(11) DEFAULT NULL COMMENT '上级推荐人',
  `phone` char(11) DEFAULT NULL COMMENT '电话',
  `name` varchar(32) DEFAULT NULL COMMENT '名字',
  `store_name` varchar(32) DEFAULT NULL COMMENT '门店名称',
  `store_type` int(11) DEFAULT NULL COMMENT '门店类型(1：单店，2：连锁总店，3：连锁分店)',
  `conference_id` int(11) DEFAULT NULL COMMENT '会议ID',
  `open_id` varchar(240) DEFAULT NULL COMMENT '微信标识',
  `is_pay` int(11) DEFAULT '0' COMMENT '是否支付(0:未支付,1:已支付)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `is_turn` int(11) DEFAULT '0' COMMENT '是否到场(0:未到场,1:已到场)',
  PRIMARY KEY (`personnel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会议报名表';

DROP TABLE IF EXISTS  `role_info`;
CREATE TABLE `role_info` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `role_sort` int(11) DEFAULT NULL COMMENT '角色排序',
  `frist_menu` text COMMENT '一级菜单',
  `second_menu` text COMMENT '二级菜单',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

insert into `role_info`(`role_id`,`role_name`,`role_sort`,`frist_menu`,`second_menu`) values
('1','企业负责人','1','2,3,14,6,8,9,10','55,12,13,14,15,16,17,19,56,58,33,34,46,39,40,51,42,47,54,59,60,61,62'),
('2','管理员','2','1,2,3,14,5,6,7,9,10','1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,20,21,22,23,24,25,26,27,28,29,30,31,32,35,36,37,38,43,44,45,47,48,49,50,51,60,61,62'),
('3','店长','3','1,2,10','1,2,3,4,6,7,8,9,52,47'),
('4','收银员','4',null,null),
('5','普通员工','5',null,null),
('100','开发者','100','8','53');
DROP TABLE IF EXISTS  `incometype`;
CREATE TABLE `incometype` (
  `incometype_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `type` int(11) DEFAULT NULL COMMENT '1收入2支出',
  `is_deleted` int(11) DEFAULT NULL COMMENT '0正常1删除',
  `store_id` int(11) DEFAULT NULL COMMENT '门店识别',
  PRIMARY KEY (`incometype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `member_error_data`;
CREATE TABLE `member_error_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `level_id` int(11) DEFAULT NULL COMMENT '级别标识',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `birthday` char(5) NOT NULL DEFAULT '' COMMENT '生日',
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `pay_password` char(32) DEFAULT '' COMMENT '支付密码',
  `password_salt` varchar(32) DEFAULT '' COMMENT '密码盐值',
  `total_amount` decimal(8,2) DEFAULT '0.00' COMMENT '储值总额',
  `balance_amount` decimal(8,2) DEFAULT '0.00' COMMENT '储值余额',
  `total_integral` int(11) DEFAULT '0' COMMENT '积分总额',
  `balance_integral` int(11) DEFAULT '0' COMMENT '积分余额',
  `total_giftmoney_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '礼金总额',
  `balance_giftmoney_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '礼金余额',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  `is_migrate` int(1) DEFAULT '0' COMMENT '是否迁移(0:未迁移,1:已迁移)',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员异常数据表';

DROP TABLE IF EXISTS  `agent_account_flow`;
CREATE TABLE `agent_account_flow` (
  `flow_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水标识',
  `agent_id` int(11) DEFAULT NULL COMMENT '代理标识',
  `flow_type` int(11) DEFAULT '1' COMMENT '流水类型(1:支出,2:收入)',
  `flow_amount` int(11) DEFAULT NULL COMMENT '流水金额',
  `flow_desc` varchar(25) DEFAULT '' COMMENT '流水说明',
  `flow_time` char(19) DEFAULT '' COMMENT '流水时间',
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代理账户流水表';

DROP TABLE IF EXISTS  `member_combo_record`;
CREATE TABLE `member_combo_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录标识',
  `member_id` int(11) DEFAULT NULL COMMENT '会员标识',
  `combo_id` int(11) DEFAULT NULL COMMENT '套餐标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `detail_id` int(11) DEFAULT NULL COMMENT '订单明细标识',
  `combo_name` varchar(10) DEFAULT NULL COMMENT '套餐名称',
  `combo_price` decimal(8,2) DEFAULT NULL COMMENT '套餐价格',
  `combo_image` varchar(255) DEFAULT NULL COMMENT '套餐图片',
  `project_amount` decimal(8,2) DEFAULT NULL COMMENT '项目总价',
  `project_count` int(11) DEFAULT NULL COMMENT '项目数量',
  `remaining_count` int(11) DEFAULT NULL COMMENT '剩余数量',
  `overdue_time` char(19) DEFAULT NULL COMMENT '过期时间',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='会员套餐记录表';

insert into `member_combo_record`(`record_id`,`member_id`,`combo_id`,`store_id`,`detail_id`,`combo_name`,`combo_price`,`combo_image`,`project_amount`,`project_count`,`remaining_count`,`overdue_time`,`create_time`,`is_deleted`,`update_time`,`last_operator_id`) values
('5','56045','14','1180','39373','美妆美甲',1500.00,'jobwisdom/project/1469079950869',null,null,null,'永久','2016-08-01 15:10:19','0','2016-08-01 15:10:19','2085');
DROP TABLE IF EXISTS  `member_info`;
CREATE TABLE `member_info` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `level_id` int(11) DEFAULT NULL COMMENT '级别标识',
  `recommend_id` int(11) DEFAULT NULL COMMENT '介绍人标识',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `head_url` varchar(255) DEFAULT '',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `birthday` char(5) NOT NULL DEFAULT '' COMMENT '生日',
  `phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `community` varchar(50) DEFAULT '' COMMENT '所住小区',
  `message_type` int(1) DEFAULT NULL COMMENT '通知方式（1：微信、2、短信）',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56054 DEFAULT CHARSET=utf8mb4 COMMENT='会员信息表';

insert into `member_info`(`member_id`,`store_id`,`level_id`,`recommend_id`,`name`,`head_url`,`sex`,`birthday`,`phone`,`community`,`message_type`,`create_time`,`update_time`,`is_deleted`,`last_operator_id`) values
('56038','1180','711',null,'11','userhead/56038/1468913224244','男','01-01','15019431640','',null,'2016-07-19 15:26:52','2016-07-19 15:32:34','0','2085'),
('56039','1181','713',null,'魏尚质','userhead/56039/1469000064150','男','','13632916933','',null,'2016-07-20 14:46:00','2016-07-20 15:34:25','0','0'),
('56040','1181','713',null,'骆峰','userhead/56040/1469007586607','男','','13539996940','',null,'2016-07-20 17:39:34','2016-07-20 17:39:46','0','0'),
('56041','1180','713',null,'jasmine','userhead/56041/1469082613652','女','08-01','18576670583','',null,'2016-07-21 14:29:46','2016-07-21 14:30:13','0','0'),
('56042','1180','713',null,'godwon','userhead/56042/1469089286115','男','01-01','18503076676','',null,'2016-07-21 16:21:05','2016-07-21 16:21:26','0','0'),
('56043','1180','713',null,'哈哈哈','userhead/56043/1469181123203','男','05-01','15576078687','',null,'2016-07-22 17:51:39','2016-07-22 17:52:03','0','0'),
('56044','1180','713',null,'高国藩','userhead/56044/1469183674101','男','06-30','18734911338','',null,'2016-07-22 18:34:25','2016-07-22 18:34:34','0','0'),
('56045','1180','713',null,'JOB','userhead/56045/1469245804119','男','06-29','13587881321','',null,'2016-07-23 11:49:27','2016-07-23 11:50:04','0','0'),
('56047','1247','720',null,'小平','system/profile/common_img_gril.png','男','','13680338766','','1','2016-07-29 15:08:43','','0','2123'),
('56048','1247','720',null,'luxi','system/profile/common_img_gril.png','女','','13680338755','','1','2016-07-29 15:10:01','','0','2123'),
('56049','1180','713',null,'马新一','userhead/56049/1469781745765','男','01-01','13839527001','',null,'2016-07-29 16:42:00','2016-07-29 16:42:25','0','0'),
('56050','1180','713',null,'王东东','userhead/56050/1469851230624','男','01-01','18170809800','',null,'2016-07-30 11:59:44','2016-07-30 12:00:30','0','0'),
('56051','1247','720',null,'leo','userhead/56051/1470022106391','男','01-02','15112296745','',null,'2016-08-01 11:27:50','2016-08-01 11:28:26','0','0'),
('56052','1180','713',null,'小雨','userhead/56052/1470036092343','女','','18372711273','',null,'2016-08-01 15:21:00','2016-08-01 15:21:32','0','0'),
('56053','1180','712',null,'jasmine','system/profile/common_img_gril.png','女','','13555555555','','1','2016-08-01 15:59:20','','0','2145');
DROP TABLE IF EXISTS  `goods_stock`;
CREATE TABLE `goods_stock` (
  `a_id` int(11) NOT NULL COMMENT '企业商品ID',
  `store_id` int(11) NOT NULL COMMENT '门店ID',
  `count` int(11) DEFAULT NULL COMMENT '库存余量',
  `update_time` char(19) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`a_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品库存余量';

insert into `goods_stock`(`a_id`,`store_id`,`count`,`update_time`) values
('42','1180','1','2016-07-17'),
('43','1180','28','2016-08-01'),
('43','1181','42','2016-07-29'),
('43','1182','20','2016-07-18'),
('43','1247','20','2016-08-01'),
('44','1180','10','2016-08-01'),
('44','1181','20','2016-07-18'),
('44','1182','20','2016-07-18'),
('44','1247','10','2016-08-01'),
('45','1180','20','2016-07-18'),
('45','1181','20','2016-07-18'),
('45','1182','20','2016-07-18'),
('46','1180','20','2016-07-18'),
('46','1181','20','2016-07-18'),
('46','1182','20','2016-07-18'),
('47','1180','20','2016-07-18'),
('47','1181','20','2016-07-18'),
('47','1182','20','2016-07-18'),
('48','1180','20','2016-07-18'),
('48','1181','20','2016-07-18'),
('48','1182','20','2016-07-18'),
('49','1180','20','2016-07-18'),
('49','1181','20','2016-07-18'),
('49','1182','20','2016-07-18'),
('50','1180','20','2016-07-18'),
('50','1181','20','2016-07-18'),
('50','1182','20','2016-07-18'),
('51','1180','20','2016-07-18'),
('51','1181','20','2016-07-18'),
('51','1182','20','2016-07-18'),
('52','1180','20','2016-07-18'),
('52','1181','20','2016-07-18'),
('52','1182','20','2016-07-18'),
('53','1183','10','2016-07-26'),
('54','1209','8','2016-07-29'),
('55','1209','5','2016-07-29'),
('57','1209','20','2016-07-29');
DROP TABLE IF EXISTS  `project_step`;
CREATE TABLE `project_step` (
  `project_step_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目步骤标识',
  `project_step_name` varchar(10) DEFAULT NULL COMMENT '项目步骤名称',
  `step_performance_type` int(11) NOT NULL DEFAULT '1' COMMENT '步骤业绩计算方式(1:固定，2:比例)',
  `step_performance` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '步骤业绩计算',
  `project_id` int(11) DEFAULT NULL COMMENT '项目标识',
  `position_id` int(11) DEFAULT NULL COMMENT '岗位标识',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`project_step_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12301 DEFAULT CHARSET=utf8mb4 COMMENT='项目步骤表';

insert into `project_step`(`project_step_id`,`project_step_name`,`step_performance_type`,`step_performance`,`project_id`,`position_id`,`is_deleted`,`create_time`,`update_time`,`last_operator_id`) values
('11599',null,'1',0.00,'3204','887','1',null,null,null),
('11600',null,'1',0.00,'3204','888','1',null,null,null),
('11601',null,'1',0.00,'3204','889','1',null,null,null),
('11602',null,'1',0.00,'3205','892','1',null,null,null),
('11603',null,'1',0.00,'3205','893','1',null,null,null),
('11604',null,'1',0.00,'3205','894','1',null,null,null),
('11605',null,'1',0.00,'3205','892','1',null,null,null),
('11606',null,'1',0.00,'3205','893','1',null,null,null),
('11607',null,'1',0.00,'3205','894','1',null,null,null),
('11608',null,'1',0.00,'3205','892','1',null,null,null),
('11609',null,'1',0.00,'3205','893','1',null,null,null),
('11610',null,'1',0.00,'3205','894','1',null,null,null),
('11611',null,'1',0.00,'3205','892','1',null,null,null),
('11612',null,'1',0.00,'3205','893','1',null,null,null),
('11613',null,'1',0.00,'3205','894','1',null,null,null),
('11614',null,'1',0.00,'3205','892','1',null,null,null),
('11615',null,'1',0.00,'3205','893','1',null,null,null),
('11616',null,'1',0.00,'3205','894','1',null,null,null),
('11617',null,'1',0.00,'3205','892','1',null,null,null),
('11618',null,'1',0.00,'3205','893','1',null,null,null),
('11619',null,'1',0.00,'3205','894','1',null,null,null),
('11620',null,'1',0.00,'3205','892','1',null,null,null),
('11621',null,'1',0.00,'3205','893','1',null,null,null),
('11622',null,'1',0.00,'3205','894','1',null,null,null),
('11623',null,'1',0.00,'3205','892','1',null,null,null),
('11624',null,'1',0.00,'3205','893','1',null,null,null),
('11625',null,'1',0.00,'3205','894','1',null,null,null),
('11626',null,'1',0.00,'3205','892','1',null,null,null),
('11627',null,'1',0.00,'3205','893','1',null,null,null),
('11628',null,'1',0.00,'3205','894','1',null,null,null),
('11629',null,'1',0.00,'3205','892','1',null,null,null),
('11630',null,'1',0.00,'3205','893','1',null,null,null),
('11631',null,'1',0.00,'3205','894','1',null,null,null),
('11632',null,'1',0.00,'3205','892','1',null,null,null),
('11633',null,'1',0.00,'3205','893','1',null,null,null),
('11634',null,'1',0.00,'3205','894','1',null,null,null),
('11635',null,'1',0.00,'3205','892','1',null,null,null),
('11636',null,'1',0.00,'3205','893','1',null,null,null),
('11637',null,'1',0.00,'3205','894','1',null,null,null),
('11638',null,'1',0.00,'3205','892','1',null,null,null),
('11639',null,'1',0.00,'3205','893','1',null,null,null),
('11640',null,'1',0.00,'3205','894','1',null,null,null),
('11641',null,'1',0.00,'3205','892','1',null,null,null),
('11642',null,'1',0.00,'3205','893','1',null,null,null),
('11643',null,'1',0.00,'3205','894','1',null,null,null),
('11644',null,'1',0.00,'3205','892','1',null,null,null),
('11645',null,'1',0.00,'3205','893','1',null,null,null),
('11646',null,'1',0.00,'3205','894','1',null,null,null),
('11647',null,'1',0.00,'3206','887','1',null,null,null),
('11648',null,'1',0.00,'3206','888','1',null,null,null),
('11649',null,'1',0.00,'3206','889','1',null,null,null),
('11650',null,'1',0.00,'3206','887','0',null,null,null),
('11651',null,'1',5.00,'3206','888','0',null,null,null),
('11652',null,'1',5.00,'3206','889','0',null,null,null),
('11653',null,'1',0.00,'3207','887','1',null,null,null),
('11654',null,'1',0.00,'3207','888','1',null,null,null),
('11655',null,'1',0.00,'3207','889','1',null,null,null),
('11656',null,'1',8.00,'3207','887','0',null,null,null),
('11657',null,'1',8.00,'3207','888','0',null,null,null),
('11658',null,'1',8.00,'3207','889','0',null,null,null),
('11659',null,'1',5.00,'3208','887','0',null,null,null),
('11660',null,'1',5.00,'3208','888','0',null,null,null),
('11661',null,'1',5.00,'3208','889','0',null,null,null),
('11662',null,'1',0.00,'3209','887','1',null,null,null),
('11663',null,'1',0.00,'3209','888','1',null,null,null),
('11664',null,'1',0.00,'3209','889','1',null,null,null),
('11665',null,'1',10.00,'3209','887','1',null,null,null),
('11666',null,'1',5.00,'3209','888','1',null,null,null),
('11667',null,'1',5.00,'3209','889','1',null,null,null),
('11668',null,'1',10.00,'3209','887','1',null,null,null),
('11669',null,'1',5.00,'3209','888','1',null,null,null),
('11670',null,'1',5.00,'3209','889','1',null,null,null),
('11671',null,'1',10.00,'3209','887','1',null,null,null),
('11672',null,'1',5.00,'3209','888','1',null,null,null),
('11673',null,'1',5.00,'3209','889','1',null,null,null),
('11674',null,'1',0.00,'3210','887','1',null,null,null),
('11675',null,'1',0.00,'3210','888','1',null,null,null),
('11676',null,'1',0.00,'3210','889','1',null,null,null),
('11677',null,'1',10.00,'3209','887','0',null,null,null),
('11678',null,'1',5.00,'3209','888','0',null,null,null),
('11679',null,'1',5.00,'3209','889','0',null,null,null),
('11680',null,'1',50.00,'3210','887','0',null,null,null),
('11681',null,'1',40.00,'3210','888','0',null,null,null),
('11682',null,'1',30.00,'3210','889','0',null,null,null),
('11683',null,'1',500.00,'3211','887','1',null,null,null),
('11684',null,'1',500.00,'3211','888','1',null,null,null),
('11685',null,'1',500.00,'3211','889','1',null,null,null),
('11686',null,'1',500.00,'3211','887','1',null,null,null),
('11687',null,'1',500.00,'3211','888','1',null,null,null),
('11688',null,'1',500.00,'3211','889','1',null,null,null),
('11689',null,'1',500.00,'3211','887','1',null,null,null),
('11690',null,'1',500.00,'3211','888','1',null,null,null),
('11691',null,'1',500.00,'3211','889','1',null,null,null),
('11692',null,'1',500.00,'3211','887','0',null,null,null),
('11693',null,'1',500.00,'3211','888','0',null,null,null),
('11694',null,'1',500.00,'3211','889','0',null,null,null),
('11695',null,'1',0.00,'3212','887','1',null,null,null),
('11696',null,'1',0.00,'3212','888','1',null,null,null),
('11697',null,'1',0.00,'3212','889','1',null,null,null),
('11698',null,'1',0.00,'3212','887','0',null,null,null),
('11699',null,'1',0.00,'3212','888','0',null,null,null),
('11700',null,'1',0.00,'3212','889','0',null,null,null),
('11701',null,'1',0.00,'3213','887','1',null,null,null),
('11702',null,'1',0.00,'3213','888','1',null,null,null),
('11703',null,'1',0.00,'3213','889','1',null,null,null),
('11704',null,'1',0.00,'3213','887','1',null,null,null),
('11705',null,'1',0.00,'3213','888','1',null,null,null),
('11706',null,'1',0.00,'3213','889','1',null,null,null),
('11707',null,'1',200.00,'3213','887','1',null,null,null),
('11708',null,'1',0.00,'3213','888','1',null,null,null),
('11709',null,'1',0.00,'3213','889','1',null,null,null),
('11710',null,'1',200.00,'3213','887','1',null,null,null),
('11711',null,'1',0.00,'3213','888','1',null,null,null),
('11712',null,'1',0.00,'3213','889','1',null,null,null),
('11713',null,'1',0.00,'3214','887','1',null,null,null),
('11714',null,'1',0.00,'3214','888','1',null,null,null),
('11715',null,'1',0.00,'3214','889','1',null,null,null),
('11716',null,'1',0.00,'3214','887','1',null,null,null),
('11717',null,'1',200.00,'3214','888','1',null,null,null),
('11718',null,'1',0.00,'3214','889','1',null,null,null),
('11719',null,'1',0.00,'3215','887','1',null,null,null),
('11720',null,'1',0.00,'3215','888','1',null,null,null),
('11721',null,'1',0.00,'3215','889','1',null,null,null),
('11722',null,'1',200.00,'3215','887','1',null,null,null),
('11723',null,'1',0.00,'3215','888','1',null,null,null),
('11724',null,'1',0.00,'3215','889','1',null,null,null),
('11725',null,'1',200.00,'3215','887','0',null,null,null),
('11726',null,'1',200.00,'3215','888','0',null,null,null),
('11727',null,'1',0.00,'3215','889','0',null,null,null),
('11728',null,'1',0.00,'3216','887','1',null,null,null),
('11729',null,'1',0.00,'3216','888','1',null,null,null),
('11730',null,'1',0.00,'3216','889','1',null,null,null),
('11731',null,'1',0.00,'3216','887','1',null,null,null),
('11732',null,'1',0.00,'3216','888','1',null,null,null),
('11733',null,'1',0.00,'3216','889','1',null,null,null),
('11734',null,'1',0.00,'3216','887','1',null,null,null),
('11735',null,'1',0.00,'3216','888','1',null,null,null),
('11736',null,'1',0.00,'3216','889','1',null,null,null),
('11737',null,'1',0.00,'3216','887','0',null,null,null),
('11738',null,'1',0.00,'3216','888','0',null,null,null),
('11739',null,'1',0.00,'3216','889','0',null,null,null),
('11740',null,'1',0.00,'3217','887','1',null,null,null),
('11741',null,'1',0.00,'3217','888','1',null,null,null),
('11742',null,'1',0.00,'3217','889','1',null,null,null),
('11743',null,'1',0.00,'3217','887','1',null,null,null),
('11744',null,'1',100.00,'3217','888','1',null,null,null),
('11745',null,'1',0.00,'3217','889','1',null,null,null),
('11746',null,'1',0.00,'3217','887','1',null,null,null),
('11747',null,'1',100.00,'3217','888','1',null,null,null),
('11748',null,'1',0.00,'3217','889','1',null,null,null),
('11749',null,'1',0.00,'3218','892','1',null,null,null),
('11750',null,'1',0.00,'3218','893','1',null,null,null),
('11751',null,'1',0.00,'3218','894','1',null,null,null),
('11752',null,'1',0.00,'3218','892','1',null,null,null),
('11753',null,'1',0.00,'3218','893','1',null,null,null),
('11754',null,'1',0.00,'3218','894','1',null,null,null),
('11755',null,'1',0.00,'3218','892','1',null,null,null),
('11756',null,'1',0.00,'3218','893','1',null,null,null),
('11757',null,'1',0.00,'3218','894','1',null,null,null),
('11758',null,'1',0.00,'3218','892','1',null,null,null),
('11759',null,'1',0.00,'3218','893','1',null,null,null),
('11760',null,'1',0.00,'3218','894','1',null,null,null),
('11761',null,'1',0.00,'3218','892','1',null,null,null),
('11762',null,'1',0.00,'3218','893','1',null,null,null),
('11763',null,'1',0.00,'3218','894','1',null,null,null),
('11764',null,'1',0.00,'3218','892','1',null,null,null),
('11765',null,'1',0.00,'3218','893','1',null,null,null),
('11766',null,'1',0.00,'3218','894','1',null,null,null),
('11767',null,'1',0.00,'3218','892','1',null,null,null),
('11768',null,'1',0.00,'3218','893','1',null,null,null),
('11769',null,'1',0.00,'3218','894','1',null,null,null),
('11770',null,'1',0.00,'3218','892','1',null,null,null),
('11771',null,'1',0.00,'3218','893','1',null,null,null),
('11772',null,'1',0.00,'3218','894','1',null,null,null),
('11773',null,'1',0.00,'3218','892','1',null,null,null),
('11774',null,'1',0.00,'3218','893','1',null,null,null),
('11775',null,'1',0.00,'3218','894','1',null,null,null),
('11776',null,'1',0.00,'3219','892','1',null,null,null),
('11777',null,'1',0.00,'3219','893','1',null,null,null),
('11778',null,'1',0.00,'3219','894','1',null,null,null),
('11779',null,'1',0.00,'3219','892','1',null,null,null),
('11780',null,'1',0.00,'3219','893','1',null,null,null),
('11781',null,'1',0.00,'3219','894','1',null,null,null),
('11782',null,'1',0.00,'3219','892','1',null,null,null),
('11783',null,'1',0.00,'3219','893','1',null,null,null),
('11784',null,'1',0.00,'3219','894','1',null,null,null),
('11785',null,'1',0.00,'3220','892','1',null,null,null),
('11786',null,'1',0.00,'3220','893','1',null,null,null),
('11787',null,'1',0.00,'3220','894','1',null,null,null),
('11788',null,'1',0.00,'3221','892','1',null,null,null),
('11789',null,'1',0.00,'3221','893','1',null,null,null),
('11790',null,'1',0.00,'3221','894','1',null,null,null),
('11791',null,'1',0.00,'3222','892','1',null,null,null),
('11792',null,'1',0.00,'3222','893','1',null,null,null),
('11793',null,'1',0.00,'3222','894','1',null,null,null),
('11794',null,'1',0.00,'3222','892','0',null,null,null),
('11795',null,'1',0.00,'3222','893','0',null,null,null),
('11796',null,'1',0.00,'3222','894','0',null,null,null),
('11797',null,'1',0.00,'3221','892','1',null,null,null),
('11798',null,'1',0.00,'3221','893','1',null,null,null),
('11799',null,'1',0.00,'3221','894','1',null,null,null),
('11800',null,'1',0.00,'3221','892','0',null,null,null),
('11801',null,'1',0.00,'3221','893','0',null,null,null),
('11802',null,'1',0.00,'3221','894','0',null,null,null),
('11803',null,'1',0.00,'3220','892','0',null,null,null),
('11804',null,'1',0.00,'3220','893','0',null,null,null),
('11805',null,'1',0.00,'3220','894','0',null,null,null),
('11806',null,'1',0.00,'3223','892','0',null,null,null),
('11807',null,'1',0.00,'3223','893','0',null,null,null),
('11808',null,'1',0.00,'3223','894','0',null,null,null),
('11809',null,'1',0.00,'3224','892','1',null,null,null),
('11810',null,'1',0.00,'3224','893','1',null,null,null),
('11811',null,'1',0.00,'3224','894','1',null,null,null),
('11812',null,'1',0.00,'3224','892','0',null,null,null),
('11813',null,'1',0.00,'3224','893','0',null,null,null),
('11814',null,'1',0.00,'3224','894','0',null,null,null),
('11815',null,'1',0.00,'3225','892','1',null,null,null),
('11816',null,'1',0.00,'3225','893','1',null,null,null),
('11817',null,'1',0.00,'3225','894','1',null,null,null),
('11818',null,'1',0.00,'3225','892','0',null,null,null),
('11819',null,'1',0.00,'3225','893','0',null,null,null),
('11820',null,'1',0.00,'3225','894','0',null,null,null),
('11821',null,'1',0.00,'3226','892','1',null,null,null),
('11822',null,'1',0.00,'3226','893','1',null,null,null),
('11823',null,'1',0.00,'3226','894','1',null,null,null),
('11824',null,'1',0.00,'3226','892','0',null,null,null),
('11825',null,'1',0.00,'3226','893','0',null,null,null),
('11826',null,'1',0.00,'3226','894','0',null,null,null),
('11827',null,'1',0.00,'3227','892','1',null,null,null),
('11828',null,'1',0.00,'3227','893','1',null,null,null),
('11829',null,'1',0.00,'3227','894','1',null,null,null),
('11830',null,'1',0.00,'3227','892','0',null,null,null),
('11831',null,'1',0.00,'3227','893','0',null,null,null),
('11832',null,'1',0.00,'3227','894','0',null,null,null),
('11833',null,'1',0.00,'3228','887','1',null,null,null),
('11834',null,'1',0.00,'3228','888','1',null,null,null),
('11835',null,'1',0.00,'3228','889','1',null,null,null),
('11836',null,'1',0.00,'3228','887','1',null,null,null),
('11837',null,'1',0.00,'3228','888','1',null,null,null),
('11838',null,'1',0.00,'3228','889','1',null,null,null),
('11839',null,'1',200.00,'3213','887','0',null,null,null),
('11840',null,'1',15.00,'3213','888','0',null,null,null),
('11841',null,'1',0.00,'3213','889','0',null,null,null),
('11842',null,'1',0.00,'3229','902','1',null,null,null),
('11843',null,'1',0.00,'3229','903','1',null,null,null),
('11844',null,'1',0.00,'3229','904','1',null,null,null),
('11845',null,'1',0.00,'3229','902','1',null,null,null),
('11846',null,'1',0.00,'3229','903','1',null,null,null),
('11847',null,'1',0.00,'3229','904','1',null,null,null),
('11848',null,'1',0.00,'3229','902','1',null,null,null),
('11849',null,'1',0.00,'3229','903','1',null,null,null),
('11850',null,'1',0.00,'3229','904','1',null,null,null),
('11851',null,'1',0.00,'3229','902','1',null,null,null),
('11852',null,'1',0.00,'3229','903','1',null,null,null),
('11853',null,'1',0.00,'3229','904','1',null,null,null),
('11854',null,'1',0.00,'3230','902','1',null,null,null),
('11855',null,'1',0.00,'3230','903','1',null,null,null),
('11856',null,'1',0.00,'3230','904','1',null,null,null),
('11857',null,'2',60.00,'3217','887','1',null,null,null),
('11858',null,'1',100.00,'3217','888','1',null,null,null),
('11859',null,'1',0.00,'3217','889','1',null,null,null),
('11860',null,'2',60.00,'3217','887','1',null,null,null),
('11861',null,'1',100.00,'3217','888','1',null,null,null),
('11862',null,'1',0.00,'3217','889','1',null,null,null),
('11863',null,'2',60.00,'3217','887','1',null,null,null),
('11864',null,'1',100.00,'3217','888','1',null,null,null),
('11865',null,'1',0.00,'3217','889','1',null,null,null),
('11866',null,'2',60.00,'3217','887','1',null,null,null),
('11867',null,'1',20.00,'3217','888','1',null,null,null),
('11868',null,'1',0.00,'3217','889','1',null,null,null),
('11869',null,'2',60.00,'3217','887','1',null,null,null),
('11870',null,'1',20.00,'3217','888','1',null,null,null),
('11871',null,'1',0.00,'3217','889','1',null,null,null),
('11872',null,'2',60.00,'3217','887','0',null,null,null),
('11873',null,'1',20.00,'3217','888','0',null,null,null),
('11874',null,'1',0.00,'3217','889','0',null,null,null),
('11875',null,'1',0.00,'3231','887','1',null,null,null),
('11876',null,'1',0.00,'3231','888','1',null,null,null),
('11877',null,'1',0.00,'3231','889','1',null,null,null),
('11878',null,'1',0.00,'3231','887','1',null,null,null),
('11879',null,'1',0.00,'3231','888','1',null,null,null),
('11880',null,'1',0.00,'3231','889','1',null,null,null),
('11881',null,'1',0.00,'3231','887','1',null,null,null),
('11882',null,'1',0.00,'3231','888','1',null,null,null),
('11883',null,'1',0.00,'3231','889','1',null,null,null),
('11884',null,'1',0.00,'3230','902','1',null,null,null),
('11885',null,'1',0.00,'3230','903','1',null,null,null),
('11886',null,'1',0.00,'3230','904','1',null,null,null),
('11887',null,'1',0.00,'3230','902','1',null,null,null),
('11888',null,'1',0.00,'3230','903','1',null,null,null),
('11889',null,'1',0.00,'3230','904','1',null,null,null),
('11890',null,'1',0.00,'3230','902','1',null,null,null),
('11891',null,'1',0.00,'3230','903','1',null,null,null),
('11892',null,'1',0.00,'3230','904','1',null,null,null),
('11893',null,'1',0.00,'3230','902','1',null,null,null),
('11894',null,'1',0.00,'3230','903','1',null,null,null),
('11895',null,'1',0.00,'3230','904','1',null,null,null),
('11896',null,'2',100.00,'3230','902','1',null,null,null),
('11897',null,'1',0.00,'3230','903','1',null,null,null),
('11898',null,'1',0.00,'3230','904','1',null,null,null),
('11899',null,'2',100.00,'3230','902','1',null,null,null),
('11900',null,'1',0.00,'3230','903','1',null,null,null),
('11901',null,'1',0.00,'3230','904','1',null,null,null),
('11902',null,'2',100.00,'3230','902','1',null,null,null),
('11903',null,'1',0.00,'3230','903','1',null,null,null),
('11904',null,'1',0.00,'3230','904','1',null,null,null),
('11905',null,'2',100.00,'3230','902','1',null,null,null),
('11906',null,'1',0.00,'3230','903','1',null,null,null),
('11907',null,'2',100.00,'3230','904','1',null,null,null),
('11908',null,'1',0.00,'3229','902','1',null,null,null),
('11909',null,'1',0.00,'3229','903','1',null,null,null),
('11910',null,'1',0.00,'3229','904','1',null,null,null),
('11911',null,'2',100.00,'3229','902','1',null,null,null),
('11912',null,'1',0.00,'3229','903','1',null,null,null),
('11913',null,'2',100.00,'3229','904','1',null,null,null),
('11914',null,'2',100.00,'3229','902','1',null,null,null),
('11915',null,'1',0.00,'3229','903','1',null,null,null),
('11916',null,'2',100.00,'3229','904','1',null,null,null),
('11917',null,'2',100.00,'3229','902','1',null,null,null),
('11918',null,'1',0.00,'3229','903','1',null,null,null),
('11919',null,'2',100.00,'3229','904','1',null,null,null),
('11920',null,'2',100.00,'3229','902','1',null,null,null),
('11921',null,'1',0.00,'3229','903','1',null,null,null),
('11922',null,'2',100.00,'3229','904','1',null,null,null),
('11923',null,'2',100.00,'3229','902','1',null,null,null),
('11924',null,'1',0.00,'3229','903','1',null,null,null),
('11925',null,'2',100.00,'3229','904','1',null,null,null),
('11926',null,'2',100.00,'3229','902','0',null,null,null),
('11927',null,'1',0.00,'3229','903','0',null,null,null),
('11928',null,'2',100.00,'3229','904','0',null,null,null),
('11929',null,'1',0.00,'3232','902','1',null,null,null),
('11930',null,'1',0.00,'3232','903','1',null,null,null),
('11931',null,'1',0.00,'3232','904','1',null,null,null),
('11932',null,'1',0.00,'3232','902','1',null,null,null),
('11933',null,'1',0.00,'3232','903','1',null,null,null),
('11934',null,'1',0.00,'3232','904','1',null,null,null),
('11935',null,'2',100.00,'3232','902','0',null,null,null),
('11936',null,'1',0.00,'3232','903','0',null,null,null),
('11937',null,'2',100.00,'3232','904','0',null,null,null),
('11938',null,'2',100.00,'3230','902','1',null,null,null),
('11939',null,'1',0.00,'3230','903','1',null,null,null),
('11940',null,'2',100.00,'3230','904','1',null,null,null),
('11941',null,'2',100.00,'3230','902','0',null,null,null),
('11942',null,'1',0.00,'3230','903','0',null,null,null),
('11943',null,'2',100.00,'3230','904','0',null,null,null),
('11944',null,'1',0.00,'3233','902','1',null,null,null),
('11945',null,'1',0.00,'3233','903','1',null,null,null),
('11946',null,'1',0.00,'3233','904','1',null,null,null),
('11947',null,'2',100.00,'3233','902','0',null,null,null),
('11948',null,'1',0.00,'3233','903','0',null,null,null),
('11949',null,'2',100.00,'3233','904','0',null,null,null),
('11950',null,'2',100.00,'3234','902','1',null,null,null),
('11951',null,'1',0.00,'3234','903','1',null,null,null),
('11952',null,'2',100.00,'3234','904','1',null,null,null),
('11953',null,'1',0.00,'3235','902','1',null,null,null),
('11954',null,'1',0.00,'3235','903','1',null,null,null),
('11955',null,'1',0.00,'3235','904','1',null,null,null),
('11956',null,'1',0.00,'3235','902','1',null,null,null),
('11957',null,'1',0.00,'3235','903','1',null,null,null),
('11958',null,'1',0.00,'3235','904','1',null,null,null),
('11959',null,'1',0.00,'3235','902','0',null,null,null),
('11960',null,'1',0.00,'3235','903','0',null,null,null),
('11961',null,'1',0.00,'3235','904','0',null,null,null),
('11962',null,'2',100.00,'3234','902','0',null,null,null),
('11963',null,'1',0.00,'3234','903','0',null,null,null),
('11964',null,'2',100.00,'3234','904','0',null,null,null),
('11965',null,'2',100.00,'3236','902','1',null,null,null),
('11966',null,'1',0.00,'3236','903','1',null,null,null),
('11967',null,'2',100.00,'3236','904','1',null,null,null),
('11968',null,'2',100.00,'3236','902','1',null,null,null),
('11969',null,'1',0.00,'3236','903','1',null,null,null),
('11970',null,'2',100.00,'3236','904','1',null,null,null),
('11971',null,'2',100.00,'3236','902','0',null,null,null),
('11972',null,'1',0.00,'3236','903','0',null,null,null),
('11973',null,'2',100.00,'3236','904','0',null,null,null),
('11974',null,'1',0.00,'3237','902','1',null,null,null),
('11975',null,'1',0.00,'3237','903','1',null,null,null),
('11976',null,'1',0.00,'3237','904','1',null,null,null),
('11977',null,'2',100.00,'3237','902','1',null,null,null),
('11978',null,'1',0.00,'3237','903','1',null,null,null),
('11979',null,'1',0.00,'3237','904','1',null,null,null),
('11980',null,'2',100.00,'3237','902','1',null,null,null),
('11981',null,'1',0.00,'3237','903','1',null,null,null),
('11982',null,'2',100.00,'3237','904','1',null,null,null),
('11983',null,'1',0.00,'3238','902','1',null,null,null),
('11984',null,'1',0.00,'3238','903','1',null,null,null),
('11985',null,'1',0.00,'3238','904','1',null,null,null),
('11986',null,'2',100.00,'3238','902','1',null,null,null),
('11987',null,'1',0.00,'3238','903','1',null,null,null),
('11988',null,'2',100.00,'3238','904','1',null,null,null),
('11989',null,'2',100.00,'3238','902','0',null,null,null),
('11990',null,'1',0.00,'3238','903','0',null,null,null),
('11991',null,'2',100.00,'3238','904','0',null,null,null),
('11992',null,'2',100.00,'3237','902','1',null,null,null),
('11993',null,'1',0.00,'3237','903','1',null,null,null),
('11994',null,'2',100.00,'3237','904','1',null,null,null),
('11995',null,'2',100.00,'3237','902','0',null,null,null),
('11996',null,'1',0.00,'3237','903','0',null,null,null),
('11997',null,'2',100.00,'3237','904','0',null,null,null),
('11998',null,'1',0.00,'3239','902','1',null,null,null),
('11999',null,'1',0.00,'3239','903','1',null,null,null),
('12000',null,'1',0.00,'3239','904','1',null,null,null),
('12001',null,'1',0.00,'3239','902','1',null,null,null),
('12002',null,'1',0.00,'3239','903','1',null,null,null),
('12003',null,'1',0.00,'3239','904','1',null,null,null),
('12004',null,'2',100.00,'3239','902','1',null,null,null),
('12005',null,'1',0.00,'3239','903','1',null,null,null),
('12006',null,'2',100.00,'3239','904','1',null,null,null),
('12007',null,'2',100.00,'3239','902','0',null,null,null),
('12008',null,'1',0.00,'3239','903','0',null,null,null),
('12009',null,'2',100.00,'3239','904','0',null,null,null),
('12010',null,'1',0.00,'3240','902','1',null,null,null),
('12011',null,'1',0.00,'3240','903','1',null,null,null),
('12012',null,'1',0.00,'3240','904','1',null,null,null),
('12013',null,'1',0.00,'3240','902','1',null,null,null),
('12014',null,'1',0.00,'3240','903','1',null,null,null),
('12015',null,'1',0.00,'3240','904','1',null,null,null),
('12016',null,'2',100.00,'3240','902','1',null,null,null),
('12017',null,'1',0.00,'3240','903','1',null,null,null),
('12018',null,'2',100.00,'3240','904','1',null,null,null),
('12019',null,'2',100.00,'3240','902','0',null,null,null),
('12020',null,'1',0.00,'3240','903','0',null,null,null),
('12021',null,'2',100.00,'3240','904','0',null,null,null),
('12022',null,'1',0.00,'3241','902','1',null,null,null),
('12023',null,'1',0.00,'3241','903','1',null,null,null),
('12024',null,'1',0.00,'3241','904','1',null,null,null),
('12025',null,'1',0.00,'3241','902','1',null,null,null),
('12026',null,'1',0.00,'3241','903','1',null,null,null),
('12027',null,'2',100.00,'3241','904','1',null,null,null),
('12028',null,'1',0.00,'3241','902','1',null,null,null),
('12029',null,'1',0.00,'3241','903','1',null,null,null),
('12030',null,'2',100.00,'3241','904','1',null,null,null),
('12031',null,'1',0.00,'3241','902','1',null,null,null),
('12032',null,'1',0.00,'3241','903','1',null,null,null),
('12033',null,'2',100.00,'3241','904','1',null,null,null),
('12034',null,'1',0.00,'3241','902','1',null,null,null),
('12035',null,'1',0.00,'3241','903','1',null,null,null),
('12036',null,'2',100.00,'3241','904','1',null,null,null),
('12037',null,'1',0.00,'3241','902','0',null,null,null),
('12038',null,'1',0.00,'3241','903','0',null,null,null),
('12039',null,'2',100.00,'3241','904','0',null,null,null),
('12040',null,'1',0.00,'3242','902','1',null,null,null),
('12041',null,'1',0.00,'3242','903','1',null,null,null),
('12042',null,'1',0.00,'3242','904','1',null,null,null),
('12043',null,'1',0.00,'3242','902','1',null,null,null),
('12044',null,'1',0.00,'3242','903','1',null,null,null),
('12045',null,'1',0.00,'3242','904','1',null,null,null),
('12046',null,'2',100.00,'3242','902','1',null,null,null),
('12047',null,'1',0.00,'3242','903','1',null,null,null),
('12048',null,'2',100.00,'3242','904','1',null,null,null),
('12049',null,'2',100.00,'3242','902','1',null,null,null),
('12050',null,'1',0.00,'3242','903','1',null,null,null),
('12051',null,'2',100.00,'3242','904','1',null,null,null),
('12052',null,'2',100.00,'3242','902','0',null,null,null),
('12053',null,'1',0.00,'3242','903','0',null,null,null),
('12054',null,'2',100.00,'3242','904','0',null,null,null),
('12055',null,'1',0.00,'3243','902','1',null,null,null),
('12056',null,'1',0.00,'3243','903','1',null,null,null),
('12057',null,'1',0.00,'3243','904','1',null,null,null),
('12058',null,'1',0.00,'3243','902','1',null,null,null),
('12059',null,'1',0.00,'3243','903','1',null,null,null),
('12060',null,'1',0.00,'3243','904','1',null,null,null),
('12061',null,'2',100.00,'3243','902','1',null,null,null),
('12062',null,'1',0.00,'3243','903','1',null,null,null),
('12063',null,'2',100.00,'3243','904','1',null,null,null),
('12064',null,'2',100.00,'3243','902','1',null,null,null),
('12065',null,'1',0.00,'3243','903','1',null,null,null),
('12066',null,'2',100.00,'3243','904','1',null,null,null),
('12067',null,'2',100.00,'3243','902','0',null,null,null),
('12068',null,'1',0.00,'3243','903','0',null,null,null),
('12069',null,'2',100.00,'3243','904','0',null,null,null),
('12070',null,'1',0.00,'3244','902','1',null,null,null),
('12071',null,'1',0.00,'3244','903','1',null,null,null),
('12072',null,'1',0.00,'3244','904','1',null,null,null),
('12073',null,'2',100.00,'3244','902','1',null,null,null),
('12074',null,'1',0.00,'3244','903','1',null,null,null),
('12075',null,'2',100.00,'3244','904','1',null,null,null),
('12076',null,'2',100.00,'3244','902','1',null,null,null),
('12077',null,'1',0.00,'3244','903','1',null,null,null),
('12078',null,'2',100.00,'3244','904','1',null,null,null),
('12079',null,'2',100.00,'3244','902','0',null,null,null),
('12080',null,'1',0.00,'3244','903','0',null,null,null),
('12081',null,'2',100.00,'3244','904','0',null,null,null),
('12082',null,'1',0.00,'3245','902','1',null,null,null),
('12083',null,'1',0.00,'3245','903','1',null,null,null),
('12084',null,'1',0.00,'3245','904','1',null,null,null),
('12085',null,'2',100.00,'3245','902','1',null,null,null),
('12086',null,'1',0.00,'3245','903','1',null,null,null),
('12087',null,'2',100.00,'3245','904','1',null,null,null),
('12088',null,'2',100.00,'3245','902','1',null,null,null),
('12089',null,'1',0.00,'3245','903','1',null,null,null),
('12090',null,'2',100.00,'3245','904','1',null,null,null),
('12091',null,'2',100.00,'3245','902','0',null,null,null),
('12092',null,'1',0.00,'3245','903','0',null,null,null),
('12093',null,'2',100.00,'3245','904','0',null,null,null),
('12094',null,'1',0.00,'3246','902','1',null,null,null),
('12095',null,'1',0.00,'3246','903','1',null,null,null),
('12096',null,'1',0.00,'3246','904','1',null,null,null),
('12097',null,'2',100.00,'3246','902','1',null,null,null),
('12098',null,'1',0.00,'3246','903','1',null,null,null),
('12099',null,'1',0.00,'3246','904','1',null,null,null),
('12100',null,'2',100.00,'3246','902','0',null,null,null),
('12101',null,'1',0.00,'3246','903','0',null,null,null),
('12102',null,'2',100.00,'3246','904','0',null,null,null),
('12103',null,'1',0.00,'3247','902','1',null,null,null),
('12104',null,'1',0.00,'3247','903','1',null,null,null),
('12105',null,'1',0.00,'3247','904','1',null,null,null),
('12106',null,'2',100.00,'3247','902','1',null,null,null),
('12107',null,'1',0.00,'3247','903','1',null,null,null),
('12108',null,'2',100.00,'3247','904','1',null,null,null),
('12109',null,'2',100.00,'3247','902','1',null,null,null),
('12110',null,'1',0.00,'3247','903','1',null,null,null),
('12111',null,'2',100.00,'3247','904','1',null,null,null),
('12112',null,'2',100.00,'3247','902','0',null,null,null),
('12113',null,'1',0.00,'3247','903','0',null,null,null),
('12114',null,'2',100.00,'3247','904','0',null,null,null),
('12115',null,'1',0.00,'3248','902','1',null,null,null),
('12116',null,'1',0.00,'3248','903','1',null,null,null),
('12117',null,'1',0.00,'3248','904','1',null,null,null),
('12118',null,'1',0.00,'3248','902','1',null,null,null),
('12119',null,'1',0.00,'3248','903','1',null,null,null),
('12120',null,'1',0.00,'3248','904','1',null,null,null),
('12121',null,'1',0.00,'3248','902','1',null,null,null),
('12122',null,'1',0.00,'3248','903','1',null,null,null),
('12123',null,'1',0.00,'3248','904','1',null,null,null),
('12124',null,'1',0.00,'3248','902','1',null,null,null),
('12125',null,'1',0.00,'3248','903','1',null,null,null),
('12126',null,'1',0.00,'3248','904','1',null,null,null),
('12127',null,'1',0.00,'3248','902','1',null,null,null),
('12128',null,'1',0.00,'3248','903','1',null,null,null),
('12129',null,'1',0.00,'3248','904','1',null,null,null),
('12130',null,'1',0.00,'3248','902','1',null,null,null),
('12131',null,'1',0.00,'3248','903','1',null,null,null),
('12132',null,'1',0.00,'3248','904','1',null,null,null),
('12133',null,'2',100.00,'3248','902','1',null,null,null),
('12134',null,'1',0.00,'3248','903','1',null,null,null),
('12135',null,'2',100.00,'3248','904','1',null,null,null),
('12136',null,'2',100.00,'3248','902','0',null,null,null),
('12137',null,'1',0.00,'3248','903','0',null,null,null),
('12138',null,'2',100.00,'3248','904','0',null,null,null),
('12139',null,'1',0.00,'3249','902','1',null,null,null),
('12140',null,'1',0.00,'3249','903','1',null,null,null),
('12141',null,'1',0.00,'3249','904','1',null,null,null),
('12142',null,'1',0.00,'3249','902','1',null,null,null),
('12143',null,'1',0.00,'3249','903','1',null,null,null),
('12144',null,'1',0.00,'3249','904','1',null,null,null),
('12145',null,'2',100.00,'3249','902','1',null,null,null),
('12146',null,'1',0.00,'3249','903','1',null,null,null),
('12147',null,'1',0.00,'3249','904','1',null,null,null),
('12148',null,'2',100.00,'3249','902','1',null,null,null),
('12149',null,'1',0.00,'3249','903','1',null,null,null),
('12150',null,'2',100.00,'3249','904','1',null,null,null),
('12151',null,'2',100.00,'3249','902','1',null,null,null),
('12152',null,'1',0.00,'3249','903','1',null,null,null),
('12153',null,'2',100.00,'3249','904','1',null,null,null),
('12154',null,'2',100.00,'3249','902','0',null,null,null),
('12155',null,'1',0.00,'3249','903','0',null,null,null),
('12156',null,'2',100.00,'3249','904','0',null,null,null),
('12157',null,'1',0.00,'3250','902','1',null,null,null),
('12158',null,'1',0.00,'3250','903','1',null,null,null),
('12159',null,'1',0.00,'3250','904','1',null,null,null),
('12160',null,'2',0.00,'3250','902','1',null,null,null),
('12161',null,'1',0.00,'3250','903','1',null,null,null),
('12162',null,'1',0.00,'3250','904','1',null,null,null),
('12163',null,'2',100.00,'3250','902','1',null,null,null),
('12164',null,'1',0.00,'3250','903','1',null,null,null),
('12165',null,'2',100.00,'3250','904','1',null,null,null),
('12166',null,'2',100.00,'3250','902','1',null,null,null),
('12167',null,'1',0.00,'3250','903','1',null,null,null),
('12168',null,'2',100.00,'3250','904','1',null,null,null),
('12169',null,'2',100.00,'3250','902','0',null,null,null),
('12170',null,'1',0.00,'3250','903','0',null,null,null),
('12171',null,'2',100.00,'3250','904','0',null,null,null),
('12172',null,'1',0.00,'3251','902','1',null,null,null),
('12173',null,'1',0.00,'3251','903','1',null,null,null),
('12174',null,'1',0.00,'3251','904','1',null,null,null),
('12175',null,'2',100.00,'3251','902','1',null,null,null),
('12176',null,'1',0.00,'3251','903','1',null,null,null),
('12177',null,'2',100.00,'3251','904','1',null,null,null),
('12178',null,'2',100.00,'3251','902','1',null,null,null),
('12179',null,'1',0.00,'3251','903','1',null,null,null),
('12180',null,'2',100.00,'3251','904','1',null,null,null),
('12181',null,'2',100.00,'3251','902','0',null,null,null),
('12182',null,'1',0.00,'3251','903','0',null,null,null),
('12183',null,'2',100.00,'3251','904','0',null,null,null),
('12184',null,'1',0.00,'3252','902','1',null,null,null),
('12185',null,'1',0.00,'3252','903','1',null,null,null),
('12186',null,'1',0.00,'3252','904','1',null,null,null),
('12187',null,'2',100.00,'3252','902','0',null,null,null),
('12188',null,'1',0.00,'3252','903','0',null,null,null),
('12189',null,'2',100.00,'3252','904','0',null,null,null),
('12190',null,'1',0.00,'3253','902','1',null,null,null),
('12191',null,'1',0.00,'3253','903','1',null,null,null),
('12192',null,'1',0.00,'3253','904','1',null,null,null),
('12193',null,'2',100.00,'3253','902','1',null,null,null),
('12194',null,'1',0.00,'3253','903','1',null,null,null),
('12195',null,'2',100.00,'3253','904','1',null,null,null),
('12196',null,'2',100.00,'3253','902','1',null,null,null),
('12197',null,'1',0.00,'3253','903','1',null,null,null),
('12198',null,'2',100.00,'3253','904','1',null,null,null),
('12199',null,'2',100.00,'3253','902','0',null,null,null),
('12200',null,'1',0.00,'3253','903','0',null,null,null),
('12201',null,'2',100.00,'3253','904','0',null,null,null),
('12202',null,'1',0.00,'3254','902','1',null,null,null),
('12203',null,'1',0.00,'3254','903','1',null,null,null),
('12204',null,'1',0.00,'3254','904','1',null,null,null),
('12205',null,'1',0.00,'3254','902','1',null,null,null),
('12206',null,'1',0.00,'3254','903','1',null,null,null),
('12207',null,'1',0.00,'3254','904','1',null,null,null),
('12208',null,'2',100.00,'3254','902','0',null,null,null),
('12209',null,'1',0.00,'3254','903','0',null,null,null),
('12210',null,'2',100.00,'3254','904','0',null,null,null),
('12211',null,'1',0.00,'3255','902','1',null,null,null),
('12212',null,'1',0.00,'3255','903','1',null,null,null),
('12213',null,'1',0.00,'3255','904','1',null,null,null),
('12214',null,'2',100.00,'3255','902','1',null,null,null),
('12215',null,'1',0.00,'3255','903','1',null,null,null),
('12216',null,'2',100.00,'3255','904','1',null,null,null),
('12217',null,'2',100.00,'3255','902','1',null,null,null),
('12218',null,'1',0.00,'3255','903','1',null,null,null),
('12219',null,'2',100.00,'3255','904','1',null,null,null),
('12220',null,'2',100.00,'3255','902','0',null,null,null),
('12221',null,'1',0.00,'3255','903','0',null,null,null),
('12222',null,'2',100.00,'3255','904','0',null,null,null),
('12223',null,'1',0.00,'3256','902','1',null,null,null),
('12224',null,'1',0.00,'3256','903','1',null,null,null),
('12225',null,'1',0.00,'3256','904','1',null,null,null),
('12226',null,'1',0.00,'3256','902','1',null,null,null),
('12227',null,'1',0.00,'3256','903','1',null,null,null),
('12228',null,'1',0.00,'3256','904','1',null,null,null),
('12229',null,'2',100.00,'3256','902','0',null,null,null),
('12230',null,'1',0.00,'3256','903','0',null,null,null),
('12231',null,'2',100.00,'3256','904','0',null,null,null),
('12232',null,'1',0.00,'3214','887','1',null,null,null),
('12233',null,'1',200.00,'3214','888','1',null,null,null),
('12234',null,'1',0.00,'3214','889','1',null,null,null),
('12235',null,'2',100.00,'3214','887','1',null,null,null),
('12236',null,'1',200.00,'3214','888','1',null,null,null),
('12237',null,'1',0.00,'3214','889','1',null,null,null),
('12238',null,'2',100.00,'3214','887','0',null,null,null),
('12239',null,'1',200.00,'3214','888','0',null,null,null),
('12240',null,'1',0.00,'3214','889','0',null,null,null),
('12241',null,'1',0.00,'3257','1032','1',null,null,null),
('12242',null,'1',0.00,'3257','1033','1',null,null,null),
('12243',null,'1',0.00,'3257','1034','1',null,null,null),
('12244',null,'1',0.00,'3257','1032','1',null,null,null),
('12245',null,'1',0.00,'3257','1033','1',null,null,null),
('12246',null,'1',0.00,'3257','1034','1',null,null,null),
('12247',null,'2',-15.00,'3257','1032','1',null,null,null),
('12248',null,'1',0.00,'3257','1033','1',null,null,null),
('12249',null,'1',0.00,'3257','1034','1',null,null,null),
('12250',null,'2',-15.00,'3257','1032','1',null,null,null),
('12251',null,'1',0.00,'3257','1033','1',null,null,null),
('12252',null,'1',0.00,'3257','1034','1',null,null,null),
('12253',null,'2',-15.00,'3257','1032','0',null,null,null),
('12254',null,'1',-50.00,'3257','1033','0',null,null,null),
('12255',null,'1',0.00,'3257','1034','0',null,null,null),
('12256',null,'1',0.00,'3258','1032','1',null,null,null),
('12257',null,'1',0.00,'3258','1033','1',null,null,null),
('12258',null,'1',0.00,'3258','1034','1',null,null,null),
('12259',null,'1',0.00,'3258','1032','0',null,null,null),
('12260',null,'1',0.00,'3258','1033','0',null,null,null),
('12261',null,'1',0.00,'3258','1034','0',null,null,null),
('12262',null,'1',20.00,'3259','1222','1',null,null,null),
('12263',null,'1',0.00,'3259','1223','1',null,null,null),
('12264',null,'1',0.00,'3259','1224','1',null,null,null),
('12265',null,'1',20.00,'3259','1222','1',null,null,null),
('12266',null,'1',0.00,'3259','1223','1',null,null,null),
('12267',null,'1',0.00,'3259','1224','1',null,null,null),
('12268',null,'1',20.00,'3259','1222','0',null,null,null),
('12269',null,'1',0.00,'3259','1223','0',null,null,null),
('12270',null,'1',0.00,'3259','1224','0',null,null,null),
('12271',null,'1',0.00,'3260','1222','1',null,null,null),
('12272',null,'1',0.00,'3260','1223','1',null,null,null),
('12273',null,'1',0.00,'3260','1224','1',null,null,null),
('12274',null,'1',20.00,'3260','1222','0',null,null,null),
('12275',null,'1',0.00,'3260','1223','0',null,null,null),
('12276',null,'1',0.00,'3260','1224','0',null,null,null),
('12277',null,'1',30.00,'3261','1222','1',null,null,null),
('12278',null,'1',0.00,'3261','1223','1',null,null,null),
('12279',null,'1',0.00,'3261','1224','1',null,null,null),
('12280',null,'1',30.00,'3261','1222','0',null,null,null),
('12281',null,'1',0.00,'3261','1223','0',null,null,null),
('12282',null,'1',0.00,'3261','1224','0',null,null,null),
('12283',null,'1',10.00,'3262','1222','0',null,null,null),
('12284',null,'1',0.00,'3262','1223','0',null,null,null),
('12285',null,'1',0.00,'3262','1224','0',null,null,null),
('12286',null,'1',10.00,'3263','1222','1',null,null,null),
('12287',null,'1',0.00,'3263','1223','1',null,null,null),
('12288',null,'1',0.00,'3263','1224','1',null,null,null),
('12289',null,'1',10.00,'3263','1222','0',null,null,null),
('12290',null,'1',0.00,'3263','1223','0',null,null,null),
('12291',null,'1',0.00,'3263','1224','0',null,null,null),
('12292',null,'1',0.00,'3264','1222','1',null,null,null),
('12293',null,'1',0.00,'3264','1223','1',null,null,null),
('12294',null,'1',0.00,'3264','1224','1',null,null,null),
('12295',null,'1',20.00,'3264','1222','1',null,null,null),
('12296',null,'1',0.00,'3264','1223','1',null,null,null),
('12297',null,'1',0.00,'3264','1224','1',null,null,null),
('12298',null,'1',20.00,'3264','1222','0',null,null,null),
('12299',null,'1',0.00,'3264','1223','0',null,null,null),
('12300',null,'1',0.00,'3264','1224','0',null,null,null);
DROP TABLE IF EXISTS  `member_screening`;
CREATE TABLE `member_screening` (
  `screening_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '筛选器ID',
  `screening_name` varchar(480) DEFAULT NULL COMMENT '筛选器名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `unused_balance_start` varchar(480) DEFAULT NULL COMMENT '储值余额',
  `unused_balance_end` varchar(480) DEFAULT NULL COMMENT '储值余额2',
  `integral_balance_start` varchar(480) DEFAULT NULL COMMENT '积分余额',
  `integral_balance_end` varchar(480) DEFAULT NULL COMMENT '积分余额2',
  `birthday_start` varchar(480) DEFAULT NULL COMMENT '生日',
  `birthday_end` varchar(480) DEFAULT NULL COMMENT '生日2',
  `registration_date_start` varchar(480) DEFAULT NULL COMMENT '注册日期',
  `registration_date_end` varchar(480) DEFAULT NULL COMMENT '注册日期2',
  `consumption_average_start` varchar(480) DEFAULT NULL COMMENT '消费均额',
  `consumption_average_end` varchar(480) DEFAULT NULL COMMENT '消费均额2',
  `cumulative_consumption_start` varchar(480) DEFAULT NULL COMMENT '累计消费',
  `cumulative_consumption_end` varchar(480) DEFAULT NULL COMMENT '累计消费2',
  `debt_amount_start` decimal(8,2) DEFAULT NULL COMMENT '挂账金额',
  `debt_amount_end` decimal(8,2) DEFAULT NULL COMMENT '挂账金额',
  `last_consume_time_start` int(11) DEFAULT NULL COMMENT '上次消费',
  `last_consume_time_end` int(11) DEFAULT NULL COMMENT '上次消费',
  `store_id` int(11) DEFAULT NULL COMMENT '门店信息',
  `branch_store_ids` varchar(480) DEFAULT NULL COMMENT '分店信息',
  `gift_money_amount_start` decimal(8,2) DEFAULT NULL COMMENT '礼金',
  `gift_money_amount_end` decimal(8,2) DEFAULT NULL COMMENT '礼金',
  PRIMARY KEY (`screening_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='会员筛选器';

insert into `member_screening`(`screening_id`,`screening_name`,`create_time`,`unused_balance_start`,`unused_balance_end`,`integral_balance_start`,`integral_balance_end`,`birthday_start`,`birthday_end`,`registration_date_start`,`registration_date_end`,`consumption_average_start`,`consumption_average_end`,`cumulative_consumption_start`,`cumulative_consumption_end`,`debt_amount_start`,`debt_amount_end`,`last_consume_time_start`,`last_consume_time_end`,`store_id`,`branch_store_ids`,`gift_money_amount_start`,`gift_money_amount_end`) values
('3','50','2016-07-25','0','50',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'1180',null,null,null);
DROP TABLE IF EXISTS  `wechat_store`;
CREATE TABLE `wechat_store` (
  `open_id` varchar(32) NOT NULL DEFAULT '' COMMENT '微信标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `wechat_employee`;
CREATE TABLE `wechat_employee` (
  `open_id` varchar(32) NOT NULL DEFAULT '' COMMENT '微信标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `is_subscribe` int(1) DEFAULT '0' COMMENT '是否关注(0:未关注,1:已关注)',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信用户表(员工数据)';

insert into `wechat_employee`(`open_id`,`employee_id`,`is_subscribe`,`create_time`,`update_time`) values
('opqSZwHVoada_7z9FqtQkjxNzRA0','2100','0','2016-07-21 14:41:38','2016-07-21 14:41:38'),
('opqSZwJiek3SLYx489NcnHVO3Y4o','2124','1','2016-08-01 12:08:00','2016-08-01 12:08:00'),
('opqSZwJIvK-CT0PVZRVwxpLmy6Y8','2112','0','2016-07-27 13:00:41','2016-07-27 13:00:41'),
('opqSZwPIs4-nQxGaBjYbSckyROFE','2086','0','2016-07-27 13:02:37','2016-07-27 13:02:37');
DROP TABLE IF EXISTS  `store_setting`;
CREATE TABLE `store_setting` (
  `store_id` int(11) unsigned NOT NULL COMMENT '门店标识',
  `gift_clean_days` int(11) NOT NULL DEFAULT '0' COMMENT '礼金清理天数',
  `integral_clean_days` int(11) NOT NULL DEFAULT '0' COMMENT '积分清理天数',
  `cost_commission_type` int(1) NOT NULL DEFAULT '1' COMMENT '提成是否扣除成本(0:不扣除，1:扣除)',
  `commission_fixed_type` int(1) DEFAULT '1' COMMENT '业绩计算是否扣减固定业绩(1:是，0:否)',
  `gift_commission_rate` int(3) NOT NULL DEFAULT '100' COMMENT '礼金减扣比例',
  `coupon_commission_rate` int(3) NOT NULL DEFAULT '100' COMMENT '优惠券减扣比例',
  `appoint_remind_hour` int(11) NOT NULL DEFAULT '1' COMMENT '预约到时提醒(小时)',
  `speech_type` int(1) NOT NULL DEFAULT '1' COMMENT '新预约是否播音(1:是，0:否)',
  `speech_turn_use` int(1) NOT NULL DEFAULT '1' COMMENT '服务交接是否播音(1:是，0:否)',
  `first_follow_coupon` varchar(100) DEFAULT '' COMMENT '初次关注赠送券',
  `first_follow_gift` int(11) NOT NULL DEFAULT '0' COMMENT '初次关注赠送礼金',
  `member_share_reward` varchar(255) DEFAULT '' COMMENT '会员分享奖励,1:积分，2:礼金，3:优惠券',
  `start_hand_number` int(11) NOT NULL DEFAULT '100' COMMENT '开始手牌号',
  `sms_fee` int(11) DEFAULT '1' COMMENT '会员短信服务费',
  `last_facilitator` varchar(100) DEFAULT '' COMMENT '原服务商',
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `store_setting`(`store_id`,`gift_clean_days`,`integral_clean_days`,`cost_commission_type`,`commission_fixed_type`,`gift_commission_rate`,`coupon_commission_rate`,`appoint_remind_hour`,`speech_type`,`speech_turn_use`,`first_follow_coupon`,`first_follow_gift`,`member_share_reward`,`start_hand_number`,`sms_fee`,`last_facilitator`) values
('1180','0','0','1','1','100','100','1','1','1','','0','{"sharerRewardType":1,"sharerRewardContent":10,"watcherRewardType":1,"watcherRewardContent":20,"firstConsumeRewardType":3,"firstConsumeRewardUnit":0,"firstConsumeRewardContent":57}','100','1',''),
('1181','0','0','1','1','100','100','1','1','1','','0','{"sharerRewardType":1,"sharerRewardContent":4,"watcherRewardType":1,"watcherRewardContent":5,"firstConsumeRewardType":1,"firstConsumeRewardUnit":0,"firstConsumeRewardContent":5}','100','1',''),
('1182','0','0','1','1','100','100','1','1','1','','0','','100','1',''),
('1183','0','0','1','1','100','100','1','1','1','','0','','100','1',''),
('1209','0','0','1','1','100','100','1','1','1','','0','','100','1',''),
('1246','0','0','1','1','100','100','1','1','1','','0','','100','1',''),
('1247','0','0','1','1','100','100','1','1','1','','0','','100','1',''),
('1248','0','0','1','1','100','100','1','1','1','','0','','100','1',''),
('1249','0','0','1','1','100','100','1','1','1','','0','','100','1',''),
('1250','0','0','1','1','100','100','1','1','1','','0','','100','1',''),
('1251','0','0','1','1','100','100','1','1','1','','0','','100','1','');
DROP TABLE IF EXISTS  `transaction_info`;
CREATE TABLE `transaction_info` (
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '交易标识',
  `transaction_amount` int(11) DEFAULT NULL COMMENT '交易金额(单位：分)',
  `goods_type` int(1) DEFAULT '1' COMMENT '商品类型(1、门店开通，2、门店续费，3、短息购买，4、商品购买，5、参加会议)',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品标识',
  `goods_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '商品名称',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `open_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户标识',
  `pay_channel` int(1) DEFAULT '1' COMMENT '支付渠道(1、微信，2、支付宝)',
  `out_trade_no` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '支付交易标识',
  `pay_status` int(1) DEFAULT '1' COMMENT '支付状态(1、支付中，2、已支付，3、已取消)',
  `create_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '订单创建时间',
  `update_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '订单修改时间',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert into `transaction_info`(`transaction_id`,`transaction_amount`,`goods_type`,`goods_id`,`goods_name`,`store_id`,`open_id`,`pay_channel`,`out_trade_no`,`pay_status`,`create_time`,`update_time`) values
('1468893225973692276','20','4','1913','洗发水','1180','opqSZwHLjhGDjR6wo2fAIVmqlqAM','1','','1','2016-07-19 09:53:46',''),
('1468913800082849956','20','4','1913','洗发水','1180','opqSZwNwnYYaimTW27CIRF9y9F2Q','1','','2','2016-07-19 15:36:40',''),
('1469245837641244605','100','4','1914','欧莱雅精油护发素','1180','opqSZwL7DkYFdLLmITG_zIsZ6JXo','1','','1','2016-07-23 11:50:38',''),
('1469259138396530591','100','4','1914','欧莱雅精油护发素','1180','opqSZwHLjhGDjR6wo2fAIVmqlqAM','1','','1','2016-07-23 15:32:18',''),
('1469427303414662072','80','4','1917','欧莱雅透明质酸洗发水','1180','opqSZwHLjhGDjR6wo2fAIVmqlqAM','1','','1','2016-07-25 14:15:03',''),
('1469499193026019536','20','4','1913','洗发水','1180','opqSZwL7DkYFdLLmITG_zIsZ6JXo','1','','1','2016-07-26 10:13:13',''),
('1469504805840421674','20','4','1913','洗发水','1180','opqSZwL7DkYFdLLmITG_zIsZ6JXo','1','','1','2016-07-26 11:46:46',''),
('1469781156541339943','20','4','1913','洗发水','1180','opqSZwL7DkYFdLLmITG_zIsZ6JXo','1','','1','2016-07-29 16:32:36',''),
('1470036337241698944','80','4','1917','欧莱雅透明洗发水','1180','opqSZwIDL1hKL4QaiFlazyci8aX4','1','','1','2016-08-01 15:25:37',''),
('1470039265340091109','268','4','1918','欧莱雅透明洗发水','1181','opqSZwH-2FToaxFYuh9wlBlM80Tg','1','','1','2016-08-01 16:14:25','');
DROP TABLE IF EXISTS  `face_info`;
CREATE TABLE `face_info` (
  `face_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL COMMENT '人脸ID',
  `set_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '集合ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`face_id`),
  KEY `index2` (`set_id`) USING BTREE,
  KEY `index3` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='人脸集合信息表';

DROP TABLE IF EXISTS  `dept_info`;
CREATE TABLE `dept_info` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `dept_code` int(11) DEFAULT NULL COMMENT '部门编码',
  `dept_name` varchar(20) DEFAULT NULL COMMENT '部门名称',
  `is_results` int(11) DEFAULT NULL COMMENT '是否产生业绩1是2否',
  `operate_time` char(19) DEFAULT NULL COMMENT '操作时间',
  `operate_id` int(11) DEFAULT NULL COMMENT '操作人员',
  `is_deleted` int(1) DEFAULT '0' COMMENT '0正常1删除',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8mb4 COMMENT='部门信息表';

insert into `dept_info`(`dept_id`,`store_id`,`dept_code`,`dept_name`,`is_results`,`operate_time`,`operate_id`,`is_deleted`) values
('481','1180',null,'美容部',null,null,null,'0'),
('482','1180',null,'美发部',null,null,null,'0'),
('483','1180',null,'美甲部',null,null,null,'0'),
('484','1180',null,'足浴部',null,null,null,'0'),
('485','1181',null,'美发部',null,null,null,'0'),
('486','1181',null,'美容部',null,null,null,'0'),
('487','1181',null,'美甲部',null,null,null,'0'),
('488','1182',null,'美发部',null,null,null,'0'),
('489','1182',null,'美容部',null,null,null,'0'),
('490','1182',null,'美甲部',null,null,null,'0'),
('491','1183',null,'美发部',null,null,null,'0'),
('492','1180',null,'养生部',null,null,null,'0'),
('493','1209',null,'瞧瞧',null,null,null,'1'),
('494','1209',null,'美发部',null,null,null,'0'),
('495','1209',null,'财务部',null,null,null,'0'),
('496','1209',null,'美容部',null,null,null,'0'),
('497','1209',null,'jghg',null,null,null,'1'),
('498','1247',null,'美发部',null,null,null,'0'),
('499','1247',null,'美容部',null,null,null,'0'),
('500','1247',null,'美甲部',null,null,null,'0'),
('501','1247',null,'养生部',null,null,null,'0'),
('502','1248',null,'瑜伽',null,null,null,'1'),
('503','1248',null,'美发部',null,null,null,'0'),
('504','1248',null,'足疗部',null,null,null,'0'),
('505','1248',null,'SPA部',null,null,null,'0'),
('506','1248',null,'美容部',null,null,null,'0');
DROP TABLE IF EXISTS  `member_error_bk`;
CREATE TABLE `member_error_bk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `level_num` varchar(120) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT NULL,
  `total_consume_amount` decimal(8,2) DEFAULT NULL,
  `consume_count` int(11) DEFAULT NULL,
  `avg_consume_amount` decimal(8,2) DEFAULT NULL,
  `last_consume_time` char(19) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `update_time` char(19) DEFAULT NULL,
  `last_operator_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `wechat_subscribe`;
CREATE TABLE `wechat_subscribe` (
  `open_id` varchar(32) NOT NULL DEFAULT '' COMMENT '微信标识',
  `is_subscribe` int(11) DEFAULT '0' COMMENT '是否关注(0:未关注，1:已关注)',
  `create_time` char(19) DEFAULT '' COMMENT '关注时间',
  `update_time` char(19) DEFAULT '' COMMENT '取消关注时间/再次关注时间',
  PRIMARY KEY (`open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信关注信息表';

insert into `wechat_subscribe`(`open_id`,`is_subscribe`,`create_time`,`update_time`) values
('oISqxwjOThyKh02-lgXACy8ao14I','1','2016-07-19 15:31:09','2016-07-19 15:31:09'),
('oISqxwvapE2FOIz0pk9Z2AqbDhrw','0','2016-07-25 21:29:05','2016-07-25 21:29:22'),
('opqSZwAfPUe_Wys7ddKh2bQg2rGg','1','2016-07-30 11:58:57','2016-07-30 11:58:57'),
('opqSZwGBA00y287vdYFv9XTZlCxI','1','2016-07-30 16:36:11','2016-07-30 16:45:29'),
('opqSZwGmAJCZL_0oI0SFzap0dnno','1','2016-08-03 19:43:00','2016-08-03 19:43:00'),
('opqSZwHLjhGDjR6wo2fAIVmqlqAM','1','2016-07-27 15:13:16','2016-07-27 15:13:16'),
('opqSZwIDL1hKL4QaiFlazyci8aX4','1','2016-07-29 13:43:53','2016-08-01 17:07:26'),
('opqSZwJiek3SLYx489NcnHVO3Y4o','1','2016-07-25 14:38:58','2016-08-01 12:07:13'),
('opqSZwJIvK-CT0PVZRVwxpLmy6Y8','1','2016-07-26 10:05:27','2016-07-26 10:05:27'),
('opqSZwJQhZnA14276Vq9EGX_z_vo','1','2016-07-26 12:14:57','2016-07-26 12:14:57'),
('opqSZwP0DCpckbvGx1gB-mEVWi7s','1','2016-07-27 14:09:31','2016-08-03 18:51:07'),
('oW8KGw3GpC_Aj8tGArk7j79Facqw','1','2016-07-18 17:40:27','2016-07-19 12:02:34'),
('oW8KGw3RmytZ0xgICjRkUhCNu7mY','1','2016-07-20 20:23:03','2016-07-22 11:05:53'),
('oW8KGw3yGet_DpdZIoxdcpEiTFq4','1','2016-07-23 16:09:37','2016-07-23 16:14:58'),
('oW8KGw54jyUpgA7_5Ai-4Dn36npI','1','2016-07-19 14:35:21','2016-07-19 15:11:21'),
('oW8KGw70FW8M5ExJSb4rwWjODZew','1','2016-07-29 13:43:07','2016-07-29 13:43:07'),
('oW8KGw8a2UFlrJlq3dRZ4OaTIcjc','1','2016-07-18 20:27:03','2016-07-18 20:27:03'),
('oW8KGw8L40beZSQRm7CimoRA-X50','1','2016-07-18 20:35:52','2016-07-18 20:35:52'),
('oW8KGw91I8Is7gQGwz_zbJSMR-EA','1','2016-08-03 10:05:56','2016-08-03 10:05:56'),
('oW8KGwx_bLwtJXjFP1mD38hKz3QE','1','2016-07-20 20:23:13','2016-07-20 20:23:13'),
('oW8KGw_QeduERHktHSOdqyRoN7oc','1','2016-07-18 20:25:34','2016-07-18 20:25:34');
DROP TABLE IF EXISTS  `picture_library`;
CREATE TABLE `picture_library` (
  `picture_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片信息标示',
  `picture_qiniu` varchar(480) DEFAULT NULL COMMENT '图片地址-七牛',
  `picture_wechat` varchar(480) DEFAULT NULL COMMENT '图片地址-微信',
  `thumb_media_id` varchar(480) DEFAULT NULL COMMENT '图片微信thumb_media_id',
  `store_id` int(11) DEFAULT NULL COMMENT '门店信息',
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='图片库';

DROP TABLE IF EXISTS  `employee_attendance`;
CREATE TABLE `employee_attendance` (
  `record_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `attendance_date` char(10) DEFAULT NULL COMMENT '考勤日期',
  `sign_in_time` char(19) DEFAULT NULL COMMENT '签到时间',
  `sign_in_offset` int(11) DEFAULT NULL COMMENT '签到时间差(分钟)',
  `sign_out_time` char(19) DEFAULT NULL COMMENT '签退时间',
  `sign_out_offset` int(11) DEFAULT NULL COMMENT '签退时间差(分钟)',
  `modifyer` varchar(11) DEFAULT NULL COMMENT '修改人',
  `comment` text COMMENT '注释',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `goods_brand`;
CREATE TABLE `goods_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `brand_name` varchar(10) DEFAULT NULL COMMENT '品牌名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(3) DEFAULT '0' COMMENT '(0 正常 1 删除)',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1254 DEFAULT CHARSET=utf8mb4 COMMENT='商品品牌表';

insert into `goods_brand`(`brand_id`,`store_id`,`brand_name`,`create_time`,`update_time`,`last_operator_id`,`is_deleted`) values
('1209',null,'欧莱雅','2016-07-17',null,'2084','0'),
('1210',null,'卡诗专业洗发水','2016-07-18',null,'2084','0'),
('1211',null,'欧莱雅专业洗发水','2016-07-18',null,'2084','0'),
('1212',null,'淳翠','2016-07-18',null,'2084','1'),
('1213',null,'美奇丝','2016-07-18',null,'2084','0'),
('1214',null,'coco洗发水','2016-07-18',null,'2084','0'),
('1215',null,'coco护发素','2016-07-18',null,'2084','0'),
('1216',null,'陶丝洗发水','2016-07-18',null,'2084','0'),
('1217',null,'陶丝护发乳','2016-07-18',null,'2084','0'),
('1218',null,'卡诗专业护发素','2016-07-18',null,'2084','0'),
('1219',null,'欧莱雅专业护发素','2016-07-18',null,'2084','0'),
('1220',null,'欧莱雅植物精油','2016-07-18',null,'2084','0'),
('1221',null,'美奇丝染发膏','2016-07-18',null,'2084','0'),
('1222',null,'TIGI','2016-07-26',null,'2115','0'),
('1223',null,'施华蔻','2016-07-26',null,'2115','0'),
('1224',null,'玫丽盼','2016-07-26',null,'2115','0'),
('1225',null,'哈哈哈','2016-07-27',null,'2084','1'),
('1226',null,'鞍山西安市','2016-07-27',null,'2084','1'),
('1227',null,'傻傻','2016-07-27',null,'2084','1'),
('1228',null,'打算的撒达杀手','2016-07-27',null,'2084','1'),
('1229',null,'反而','2016-07-27',null,'2120','1'),
('1230',null,'vdssdcsd','2016-07-28',null,'2121','1'),
('1231',null,'的萨达速度是多少','2016-07-28',null,'2121','1'),
('1232',null,'商品1','2016-07-28',null,'2121','0'),
('1233',null,'商品3','2016-07-28',null,'2121','0'),
('1234',null,'商品2','2016-07-28',null,'2121','0'),
('1235',null,'54654156','2016-07-28',null,'2121','1'),
('1236',null,'大神大侠','2016-07-28',null,'2121','1'),
('1237',null,'是打算写这些','2016-07-28',null,'2121','1'),
('1238',null,'的萨达十大杀手','2016-07-28',null,'2121','1'),
('1239',null,'说到底是发生的发生的','2016-07-28',null,'2121','1'),
('1240',null,'商品4','2016-07-28',null,'2121','0'),
('1241',null,'商品5','2016-07-28',null,'2121','0'),
('1242',null,'商品6','2016-07-28',null,'2121','0'),
('1243',null,'都是吃剩的','2016-07-28',null,'2121','1'),
('1244',null,'三大城市的','2016-07-28',null,'2121','1'),
('1245',null,'','2016-07-28',null,'2121','1'),
('1246',null,'','2016-07-28',null,'2121','1'),
('1247',null,'商品8','2016-07-28',null,'2121','0'),
('1248',null,'商品7','2016-07-28',null,'2121','0'),
('1249',null,'上的尝试多次啥都','2016-07-28',null,'2121','1'),
('1250',null,'上的尝试多次四渡','2016-07-28',null,'2121','1'),
('1251',null,'','2016-07-28',null,'2121','1'),
('1252',null,'','2016-07-28',null,'2121','1'),
('1253',null,'商品9','2016-07-29',null,'2121','0');
DROP TABLE IF EXISTS  `member_combo_goods`;
CREATE TABLE `member_combo_goods` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '详情标识',
  `record_id` int(11) NOT NULL COMMENT '记录标识',
  `combo_id` int(11) NOT NULL COMMENT '套餐标识',
  `goods_id` int(11) NOT NULL COMMENT '商品标识',
  `goods_name` varchar(10) DEFAULT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) DEFAULT NULL COMMENT '商品价格',
  `goods_image` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `goods_count` int(11) DEFAULT NULL COMMENT '商品数量',
  `remaining_count` int(11) DEFAULT NULL COMMENT '剩余数量',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员套餐商品明细表';

DROP TABLE IF EXISTS  `recharge_setting`;
CREATE TABLE `recharge_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `amount` float(11,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `goods_purchase_record`;
CREATE TABLE `goods_purchase_record` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录标识',
  `store_id` int(11) DEFAULT NULL COMMENT '店铺标识',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品标识',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商标识',
  `purchase_price` decimal(8,2) DEFAULT NULL COMMENT '进货价格',
  `purchase_count` int(11) DEFAULT NULL COMMENT '进货数量',
  `purchase_time` char(19) DEFAULT NULL COMMENT '进货时间',
  `operator_id` int(11) DEFAULT NULL COMMENT '操作人标识',
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品进货记录表';

DROP TABLE IF EXISTS  `account_role_info`;
CREATE TABLE `account_role_info` (
  `account_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新建角色标识',
  `account_role_name` char(50) DEFAULT NULL COMMENT '名称',
  `role_id` int(11) DEFAULT NULL COMMENT '引用角色标识',
  `frist_menu` text COMMENT '一级菜单',
  `second_menu` text COMMENT '二级菜单',
  `store_id` int(11) DEFAULT NULL COMMENT '门店id',
  `store_account` char(50) DEFAULT NULL COMMENT '企业id',
  `is_deleted` int(11) DEFAULT NULL COMMENT '(0正常，1删除)',
  PRIMARY KEY (`account_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

insert into `account_role_info`(`account_role_id`,`account_role_name`,`role_id`,`frist_menu`,`second_menu`,`store_id`,`store_account`,`is_deleted`) values
('1','管理员','2','1, 2, 3, 14, 5, 6, 7, 9, 10','7, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 16, 17, 18, 13, 14, 15, 60, 61, 62, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 35, 36, 37, 38, 43, 44, 45, 47, 48, 49, 50',null,'wisdom','0'),
('2','企业负责人','1','2, 3, 14, 6, 8, 9, 10','12, 55, 13, 14, 15, 16, 17, 19, 60, 61, 62, 33, 34, 56, 58, 39, 40, 51, 42, 46, 47, 54, 59',null,'wisdom','0'),
('3','店长','3','1,2,10','1,2,3,4,6,7,8,9,52,47',null,'wisdom','0'),
('7','企业负责人','1','2, 3, 6, 8, 9, 10','11, 12, 13, 14, 15, 16, 17, 19, 33, 31, 32, 34, 39, 40, 51, 42, 46, 47, 54, 59',null,'Artist','0'),
('8','管理员','2','1, 2, 3, 5, 6, 7, 9, 10','7, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 16, 17, 18, 13, 14, 15, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 35, 36, 37, 38, 43, 44, 45, 47, 48, 49, 50',null,'Artist','0'),
('9','店长','3','1,2,10','1,2,3,4,6,7,8,9,52,47',null,'Artist','0'),
('31','啊峰','2','1, 2, 3, 5, 6, 7, 9, 10','1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 35, 36, 37, 38, 43, 44, 45, 47, 48, 49, 50',null,'xiaogao','1'),
('32','企业负责人','1','2, 3, 6, 8, 9, 10','55, 12, 13, 14, 15, 16, 17, 19, 56, 58, 33, 34, 39, 40, 51, 42, 46, 47, 54, 59',null,'xiaomin','0'),
('33','管理员','2','1,2,3,5,6,7,9,10','1,2,3,4,5,6,7,8,9,10,11,13,14,15,16,17,18,20,21,22,23,24,25,26,27,28,29,30,31,32,35,36,37,38,43,44,45,47,48,49,50,51',null,'xiaomin','0'),
('34','店长','3','1,2,10','1,2,3,4,6,7,8,9,52,47',null,'xiaomin','0'),
('35','店员','1','2, 3, 6, 8, 9','12, 55, 13, 14, 15, 16, 17, 19, 34, 56, 58, 42, 51, 46',null,'xiaomin','0'),
('36','店长','3','1,2,10','1,2,3,4,6,7,8,9,52,47',null,'ymyk','0'),
('37','企业负责人','1','2, 3, 6, 8, 9, 10','12, 55, 13, 14, 15, 16, 17, 19, 34, 33, 56, 58, 40, 51, 42, 46, 47, 54, 59',null,'ymyk','0'),
('38','管理员','2','1, 2, 5, 6, 7, 9, 10','7, 1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 35, 36, 37, 38, 43, 44, 45, 47, 48, 49, 50',null,'ymyk','0'),
('39','收银员','2','1, 2, 5, 6, 7, 10','1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 37, 47, 48',null,'wisdom','0');
DROP TABLE IF EXISTS  `employee_level`;
CREATE TABLE `employee_level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '级别标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `position_id` int(11) DEFAULT NULL COMMENT '岗位标识',
  `level_name` varchar(20) DEFAULT NULL COMMENT '级别名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `reference_first` int(11) DEFAULT NULL COMMENT '职位提成参考(1)',
  `reference_two` int(11) DEFAULT NULL COMMENT '职位提成参考(2)',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(1) DEFAULT '0' COMMENT '0正常1删除',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1556 DEFAULT CHARSET=utf8mb4 COMMENT='员工级别信息表';

insert into `employee_level`(`level_id`,`store_id`,`position_id`,`level_name`,`create_time`,`update_time`,`reference_first`,`reference_two`,`last_operator_id`,`is_deleted`) values
('1478','1180','887','高级美发师',null,null,'1480','1481',null,'0'),
('1479','1180','887','艺术总监',null,null,'1480','1481',null,'0'),
('1480','1180','888','美容经理',null,null,'1478','1481',null,'0'),
('1481','1180','888','美容顾问',null,null,'1478','1481',null,'0'),
('1482','1180','889','助理',null,null,'1478','1480',null,'0'),
('1483','1181','892','高级美发师',null,null,null,null,null,'0'),
('1484','1181','892','艺术总监',null,null,null,null,null,'0'),
('1485','1181','893','美容经理',null,null,null,null,null,'0'),
('1486','1181','893','美容顾问',null,null,null,null,null,'0'),
('1487','1180','888','美甲师',null,null,'1478','1481',null,'0'),
('1488','1181','894','助理',null,null,null,null,null,'0'),
('1489','1181','893','美甲师',null,null,null,null,null,'0'),
('1490','1182','897','高级美发师',null,null,null,null,null,'0'),
('1491','1182','897','艺术总监',null,null,null,null,null,'0'),
('1492','1182','898','美容经理',null,null,null,null,null,'0'),
('1493','1182','898','美容顾问',null,null,null,null,null,'0'),
('1494','1182','899','助理',null,null,null,null,null,'0'),
('1495','1182','898','高级美甲师',null,null,null,null,null,'0'),
('1496','1180','888','高级按摩师',null,null,'1478','1482',null,'0'),
('1497','1180','887','高级美容师',null,null,'1480','1482',null,'0'),
('1498','1180','887','美容顾问',null,null,'1480','1482',null,'0'),
('1499','1181','892','高级美容师',null,null,'1486','1488',null,'0'),
('1500','1181','893','美容技师',null,null,'1499','1488',null,'0'),
('1501','1181','893','美发技师',null,null,'1483','1488',null,'0'),
('1502','1183','902','AA啊 ',null,null,null,null,null,'1'),
('1503','1183','902','艺术总监',null,null,null,null,null,'1'),
('1504','1183','904','发型助理',null,null,null,null,null,'0'),
('1505','1183','902','艺术总监',null,null,null,null,null,'1'),
('1506','1183','902','高级总监',null,null,null,null,null,'1'),
('1507','1183','902','高级总监',null,null,null,null,null,'1'),
('1508','1183','902','艺术总监',null,null,null,null,null,'0'),
('1509','1183','902','高级总监',null,null,null,null,null,'0'),
('1510','1183','902','创意总监',null,null,null,null,null,'0'),
('1511','1180','887','对我的',null,null,'1480','1482',null,'1'),
('1512','1209','1032','艺术总监',null,null,null,null,null,'0'),
('1513','1209','1033','大大大撒打算打算打算',null,null,null,null,null,'1'),
('1514','1209','1034','90-9-0=，。；',null,null,null,null,null,'1'),
('1515','1209','1032','创意总监',null,null,null,null,null,'0'),
('1516','1209','1033','技师1',null,null,'1512',null,null,'0'),
('1517','1209','1033','技师2',null,null,'1515',null,null,'0'),
('1518','1209','1034','助理1',null,null,'1512','1516',null,'0'),
('1519','1209','1034','助理2',null,null,'1512','1516',null,'0'),
('1520','1247','1222','艺术总监',null,null,null,null,null,'0'),
('1521','1247','1222','高级美发师',null,null,null,null,null,'0'),
('1522','1247','1222','美发师',null,null,null,null,null,'0'),
('1523','1247','1222','高级美容师',null,null,null,null,null,'0'),
('1524','1247','1222','美容师',null,null,null,null,null,'0'),
('1525','1247','1224','助理1',null,null,null,null,null,'0'),
('1526','1247','1223','美容经理',null,null,null,null,null,'0'),
('1527','1247','1223','美发经理',null,null,null,null,null,'0'),
('1528','1248','1227','美容师',null,null,null,null,null,'1'),
('1529','1248','1227','美容顾问',null,null,null,null,null,'1'),
('1530','1248','1227','3星设计师',null,null,null,null,null,'0'),
('1531','1248','1228','美容师',null,null,null,null,null,'0'),
('1532','1248','1228','美容顾问',null,null,null,null,null,'0'),
('1533','1248','1228','前台',null,null,null,null,null,'0'),
('1534','1248','1229','洗护师',null,null,null,null,null,'1'),
('1535','1248','1227','5星设计师',null,null,null,null,null,'0'),
('1536','1248','1227','7星设计师',null,null,null,null,null,'0'),
('1537','1248','1227','3星技师',null,null,null,null,null,'1'),
('1538','1248','1227','5星技师',null,null,null,null,null,'1'),
('1539','1248','1227','7星技师',null,null,null,null,null,'1'),
('1540','1248','1227','3星美疗师',null,null,null,null,null,'1'),
('1541','1248','1227','5星美疗师',null,null,null,null,null,'1'),
('1542','1248','1227','7星美疗师',null,null,null,null,null,'1'),
('1543','1248','1227','前台',null,null,null,null,null,'0'),
('1544','1248','1227','卫生阿姨',null,null,null,null,null,'0'),
('1545','1248','1227','客服',null,null,null,null,null,'0'),
('1546','1248','1227','洗护师',null,null,null,null,null,'0'),
('1547','1248','1227','烫染师',null,null,null,null,null,'0'),
('1548','1248','1228','卫生阿姨',null,null,null,null,null,'0'),
('1549','1247','1223','美容师',null,null,null,null,null,'1'),
('1550','1247','1224','助理2',null,null,null,null,null,'0'),
('1551','1248','1227','管理处烫染老师',null,null,null,null,null,'0'),
('1552','1248','1227','金牌烫染师（7星）',null,null,null,null,null,'0'),
('1553','1248','1227','全牌烫染师（5星）',null,null,null,null,null,'0'),
('1554','1248','1227','热烫师（3星）',null,null,null,null,null,'0'),
('1555','1248','1227','冷烫师（3星）',null,null,null,null,null,'0');
DROP TABLE IF EXISTS  `member_error_ht`;
CREATE TABLE `member_error_ht` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `level_name` varchar(60) DEFAULT NULL,
  `level_num` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT '0.00',
  `balance_giftmoney_amount` decimal(8,2) DEFAULT '0.00',
  `consume_count` int(11) DEFAULT NULL,
  `balance_integral` decimal(8,2) DEFAULT '0.00',
  `last_consume_time` varchar(120) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `member_sub_account`;
CREATE TABLE `member_sub_account` (
  `sub_account_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '子账户标识',
  `account_id` int(11) NOT NULL COMMENT '账户标识',
  `level_id` int(11) DEFAULT NULL COMMENT '级别标识',
  `total_amount` decimal(8,2) DEFAULT '0.00' COMMENT '储值总额',
  `total_present_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '赠送总额',
  `balance_amount` decimal(8,2) DEFAULT '0.00' COMMENT '储值余额',
  `use_amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '使用金额',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(1删除，0正常)',
  PRIMARY KEY (`sub_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38689 DEFAULT CHARSET=utf8mb4 COMMENT='会员子账户表';

insert into `member_sub_account`(`sub_account_id`,`account_id`,`level_id`,`total_amount`,`total_present_amount`,`balance_amount`,`use_amount`,`create_time`,`update_time`,`last_operator_id`,`is_deleted`) values
('38672','56038','711',0.00,0.00,0.00,0.00,'2016-07-19 15:26:52','','0','0'),
('38673','56039','713',0.00,0.00,0.00,0.00,'2016-07-20 14:46:00','','0','0'),
('38674','56040','713',0.00,0.00,0.00,0.00,'2016-07-20 17:39:34','','0','0'),
('38675','56041','713',0.00,0.00,0.00,0.00,'2016-07-21 14:29:46','','0','0'),
('38676','56042','713',0.00,0.00,0.00,0.00,'2016-07-21 16:21:05','','0','0'),
('38678','56043','713',0.00,0.00,0.00,0.00,'2016-07-22 17:51:39','','0','0'),
('38679','56044','713',0.00,0.00,0.00,0.00,'2016-07-22 18:34:25','','0','0'),
('38680','56045','713',0.00,0.00,0.00,0.00,'2016-07-23 11:49:27','','0','0'),
('38681','56046','713',0.00,0.00,0.00,0.00,'2016-07-27 14:45:06','','0','0'),
('38682','56047','720',1000.00,0.00,1000.00,0.00,'2016-07-29 15:08:43','','2123','0'),
('38683','56048','720',500.00,0.00,500.00,0.00,'2016-07-29 15:10:01','','2123','0'),
('38684','56049','713',0.00,0.00,0.00,0.00,'2016-07-29 16:42:00','','0','0'),
('38685','56050','713',0.00,0.00,0.00,0.00,'2016-07-30 11:59:44','','0','0'),
('38686','56051','720',1000.00,0.00,1000.00,0.00,'2016-08-01 11:27:50','','0','0'),
('38687','56052','713',0.00,0.00,0.00,0.00,'2016-08-01 15:21:00','','0','0'),
('38688','56053','712',0.00,0.00,0.00,0.00,'2016-08-01 15:59:20','','2145','0');
DROP TABLE IF EXISTS  `project_category`;
CREATE TABLE `project_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `category_name` varchar(10) DEFAULT NULL COMMENT '类别名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:否，1:是)',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1166 DEFAULT CHARSET=utf8mb4 COMMENT='项目类别表';

insert into `project_category`(`category_id`,`store_id`,`dept_id`,`category_name`,`create_time`,`update_time`,`last_operator_id`,`is_deleted`) values
('1117','1180','481','护理',null,null,null,'0'),
('1118','1180','481','剪吹',null,null,null,'1'),
('1119','1180','482','洗发',null,null,null,'0'),
('1120','1180','482','剪吹',null,null,null,'0'),
('1121','1180','482','染发',null,null,null,'0'),
('1122','1180','482','烫发',null,null,null,'0'),
('1123','1180','482','接发',null,null,null,'0'),
('1124','1180','483','美甲',null,null,null,'0'),
('1125','1180','483','护理',null,null,null,'0'),
('1126','1180','483','修甲',null,null,null,'1'),
('1127','1181','485','洗发',null,null,null,'0'),
('1128','1181','485','剪吹',null,null,null,'0'),
('1129','1181','485','染发',null,null,null,'0'),
('1130','1181','485','烫发',null,null,null,'0'),
('1131','1181','485','护理',null,null,null,'0'),
('1132','1181','485','接发',null,null,null,'0'),
('1133','1180','482','护理',null,null,null,'0'),
('1134','1181','486','护理',null,null,null,'0'),
('1135','1182','490','美甲',null,null,null,'0'),
('1136','1182','490','护理',null,null,null,'0'),
('1137','1181','487','美甲',null,null,null,'0'),
('1138','1181','487','护理',null,null,null,'0'),
('1139','1182','488','洗发',null,null,null,'0'),
('1140','1182','488','剪吹',null,null,null,'0'),
('1141','1182','488','染发',null,null,null,'0'),
('1142','1182','488','烫发',null,null,null,'0'),
('1143','1182','488','护理',null,null,null,'0'),
('1144','1182','488','接发',null,null,null,'0'),
('1145','1182','489','护理',null,null,null,'0'),
('1146','1183','491','填充顺直护理',null,null,null,'0'),
('1147','1183','491','烫发',null,null,null,'0'),
('1148','1183','491','染发',null,null,null,'0'),
('1149','1183','491','洗剪吹',null,null,null,'0'),
('1150','1183','491','护理',null,null,null,'0'),
('1151','1209',null,'吹发',null,null,null,'0'),
('1152','1209',null,'剪发',null,null,null,'0'),
('1153','1209',null,'速度撒飒飒大达到',null,null,null,'0'),
('1154','1209',null,'阿打算打算打算打',null,null,null,'1'),
('1155','1247','498','护理',null,null,null,'0'),
('1156','1247','498','染发',null,null,null,'0'),
('1157','1247','498','美发',null,null,null,'1'),
('1158','1247','498','洗发',null,null,null,'0'),
('1159','1247','498','烫发',null,null,null,'0'),
('1160','1247','499','护理',null,null,null,'0'),
('1161','1247','500','护理',null,null,null,'0'),
('1162','1247','500','美甲',null,null,null,'0'),
('1163','1248','503','洗吹类',null,null,null,'0'),
('1164','1248','503','烫染类',null,null,null,'0'),
('1165','1248','503','护理类',null,null,null,'0');
DROP TABLE IF EXISTS  `supplier_info`;
CREATE TABLE `supplier_info` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商标识',
  `supplier_name` varchar(45) DEFAULT NULL COMMENT '供应商名称',
  `store_account` varchar(32) DEFAULT NULL COMMENT '企业代号',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `supply_brand` varchar(100) DEFAULT NULL COMMENT '经营品牌',
  `supply_brand_str` varchar(255) DEFAULT NULL COMMENT '经营品牌描述',
  `supply_category` varchar(25) DEFAULT NULL COMMENT '供货类别',
  `supply_category_str` varchar(255) DEFAULT NULL COMMENT '供货类别描述',
  `link_name` varchar(25) DEFAULT NULL COMMENT '联系人',
  `link_phone` text COMMENT '手机号',
  `thirty_sales` int(11) DEFAULT '0' COMMENT '30天销售量',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COMMENT='供应商信息表';

insert into `supplier_info`(`supplier_id`,`supplier_name`,`store_account`,`store_id`,`supply_brand`,`supply_brand_str`,`supply_category`,`supply_category_str`,`link_name`,`link_phone`,`thirty_sales`,`create_time`,`update_time`,`is_deleted`,`last_operator_id`) values
('146','中邦我道供应商','laowang',null,'1209',null,null,null,'深圳','123456','0','2016-07-17 12:20:15',null,'0',null),
('147','欧莱雅','wisdom',null,'1210,1211,1212,1213,1218,1219,1220,1221,1225,1226,1227',null,null,null,'上海','010-123456','0','2016-07-18 11:04:13',null,'0',null),
('148','coco','wisdom',null,'1214,1215,1228,1229',null,null,null,'深圳','0755-123456','0','2016-07-18 11:10:25',null,'0',null),
('149','陶丝','wisdom',null,'1216,1217',null,null,null,'深圳','012-123456','0','2016-07-18 11:12:40',null,'0',null),
('150','TIGI－陈刚','Artist',null,'1222',null,null,null,'深圳市','18820258773','0','2016-07-26 16:10:54',null,'0',null),
('151','翔盛','Artist',null,'1223',null,null,null,'深圳市','82356156','0','2016-07-26 16:11:49',null,'0',null),
('152','玫丽盼','Artist',null,'1224',null,null,null,'广州','13928777727','0','2016-07-26 16:12:42',null,'0',null),
('153','供应商1','xiaomin',null,'1230,1231,1232,1233,1234,1235,1236,1237,1238,1239',null,null,null,'地址1','11111','0','2016-07-28 11:00:52',null,'0',null),
('154','供应商2','xiaomin',null,'1240,1241,1242',null,null,null,'111','22222','0','2016-07-28 11:33:30',null,'0',null),
('155','供应商3','xiaomin',null,'1243,1244,1245,1246,1248,1249,1251',null,null,null,'11','11','0','2016-07-28 11:55:50',null,'0',null),
('156','供应商4','xiaomin',null,'1247,1250,1252',null,null,null,'11','11','0','2016-07-28 11:56:57',null,'0',null),
('157','供应商5','xiaomin',null,'1253',null,null,null,'11','11','0','2016-07-28 12:00:31',null,'0',null);
DROP TABLE IF EXISTS  `special_service`;
CREATE TABLE `special_service` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `employee_code` int(11) DEFAULT NULL,
  `employee_name` varchar(10) DEFAULT NULL,
  `s_image` varchar(255) DEFAULT NULL,
  `content` text,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COMMENT='门店特色服务';

insert into `special_service`(`s_id`,`s_name`,`store_id`,`project_id`,`project_name`,`employee_code`,`employee_name`,`s_image`,`content`,`is_deleted`) values
('49','离子烫发','1180','3208','造型','1','老王','jobwisdom/project/1469012172512','','0'),
('50','日式B0B0','1181',null,'','1','吴彦祖','jobwisdom/project/1468827464544','','0'),
('51','时尚日式修剪','1181',null,'','2','徐凯','jobwisdom/project/1468827549835','','0'),
('52','时尚日式烫发','1181',null,'','8','老魏','jobwisdom/project/1468827633455','','0'),
('53','时尚造型','1181',null,'','4','梁朝伟','jobwisdom/project/1468827719803','','0'),
('54','时尚烫发','1181',null,'','3','文章','jobwisdom/project/1468827793437','','0'),
('55','时尚烫发','1181',null,'','1','吴彦祖','jobwisdom/project/1468827873156','','0'),
('56','时尚烫染造型','1181',null,'','2','徐凯','jobwisdom/project/1468827942066','','0'),
('57','时尚烫染造型','1181',null,'','4','梁朝伟','jobwisdom/project/1468828027136','','0'),
('58','时尚烫染造型','1181',null,'','8','老魏','jobwisdom/project/1468828085975','','0'),
('59','时尚修剪造型','1181',null,'','8','老魏','jobwisdom/project/1468828134967','','0'),
('60','冷烫','1180','3208','造型','2','魏总','jobwisdom/project/1469012236930','','0'),
('61','热烫','1180','3208','造型','3','Jake','jobwisdom/project/1469012321847','','0'),
('62','特色染发','1180','3208','造型','3','Jake','jobwisdom/project/1469012402818','','0'),
('63','彩妆','1180','3208','造型','3','Jake','jobwisdom/project/1469066394230','','0'),
('64','彩妆','1180','3208','造型','3','Jake','jobwisdom/project/1469066834480','','0'),
('65','艺术美甲','1180','3216','炫彩美甲','4','阿文','jobwisdom/project/1469067055419','','0'),
('66','艺术美甲','1180','3216','炫彩美甲','4','阿文','jobwisdom/project/1469067104841','','0'),
('67','chao','1183','3229','生命果中发','1','SAM','jobwisdom/project/1469272515672','','0');
DROP TABLE IF EXISTS  `agent_follow`;
CREATE TABLE `agent_follow` (
  `agent_follow_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '渠道跟踪表id',
  `store_id` int(11) NOT NULL COMMENT '店铺/客户id(关联store_info/store_account表主键)',
  `operatorType` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '操作员类型：1.渠道商，2.业务员',
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作人微信标识',
  `content` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '跟踪内容',
  `is_delete` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '是否删除：0.正常，1删除',
  `create_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`agent_follow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='渠道跟踪表';

DROP TABLE IF EXISTS  `member_level_discount`;
CREATE TABLE `member_level_discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '折扣标识',
  `level_id` int(11) NOT NULL COMMENT '等级标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `project_discount` int(2) NOT NULL DEFAULT '100' COMMENT '项目折扣',
  `goods_discount` int(2) NOT NULL DEFAULT '100' COMMENT '商品折扣',
  `sell_amount` decimal(8,2) DEFAULT '0.00' COMMENT '售卡开卡金额',
  `cash_discount_type` int(1) DEFAULT '0' COMMENT '现金是否打折(0:不打折，1:打折)',
  `charge_min_money` decimal(8,2) DEFAULT '0.00' COMMENT '最低充值金额',
  `integral_unit` int(11) DEFAULT '1' COMMENT '消费积分单位',
  `integral_number` int(11) DEFAULT '1' COMMENT '单位积分数量',
  `performance_discount_percent` int(11) DEFAULT '100' COMMENT '业绩折扣比例(0-100)',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `create_time` char(19) DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) DEFAULT '' COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT '0' COMMENT '最后操作人标识',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='会员等级折扣表';

insert into `member_level_discount`(`discount_id`,`level_id`,`store_id`,`project_discount`,`goods_discount`,`sell_amount`,`cash_discount_type`,`charge_min_money`,`integral_unit`,`integral_number`,`performance_discount_percent`,`is_deleted`,`create_time`,`update_time`,`last_operator_id`) values
('208','711','0','85','90',30.00,'0',1000.00,'1','1','2','0','2016-07-18 11:00:32','2016-07-18 11:00:32','2084'),
('209','711','1180','85','90',30.00,'0',1000.00,'1','1','2','0','2016-07-18 11:00:32','2016-07-18 11:00:32','2084'),
('210','711','1181','85','90',30.00,'0',1000.00,'1','1','2','0','2016-07-18 11:00:32','2016-07-18 11:00:32','2084'),
('211','711','1182','85','90',30.00,'0',1000.00,'1','1','2','0','2016-07-18 11:00:32','2016-07-18 11:00:32','2084'),
('212','712','0','7','8',0.00,'1',1000.00,'1','1','3','0','2016-07-18 11:00:46','2016-07-18 11:00:46','2084'),
('213','712','1180','7','8',0.00,'1',1000.00,'1','1','3','0','2016-07-18 11:00:46','2016-07-18 11:00:46','2084'),
('214','712','1181','7','8',0.00,'1',1000.00,'1','1','3','0','2016-07-18 11:00:46','2016-07-18 11:00:46','2084'),
('215','712','1182','7','8',0.00,'1',1000.00,'1','1','3','0','2016-07-18 11:00:46','2016-07-18 11:00:46','2084'),
('216','713','0','95','95',30.00,'0',500.00,'1','1','2','0','2016-07-18 11:00:54','2016-07-18 11:00:54','2084'),
('217','713','1180','95','95',30.00,'0',500.00,'1','1','2','0','2016-07-18 11:00:54','2016-07-18 11:00:54','2084'),
('218','713','1181','95','95',30.00,'0',500.00,'1','1','2','0','2016-07-18 11:00:54','2016-07-18 11:00:54','2084'),
('219','713','1182','95','95',30.00,'0',500.00,'1','1','2','0','2016-07-18 11:00:54','2016-07-18 11:00:54','2084'),
('220','714','0','100','100',0.00,'0',0.00,'1','1','1','0','2016-07-23 16:01:21','2016-07-23 16:01:21','0'),
('221','714','1183','100','100',0.00,'0',0.00,'1','1','1','0','2016-07-23 19:00:13','2016-07-23 16:01:21','0'),
('222','715','0','100','100',0.00,'0',0.00,'1','1','1','0','2016-08-02 11:04:21','2016-08-02 11:04:21','2137'),
('223','716','0','70','90',0.00,'0',8000.00,'1','1','100','0','2016-07-26 15:59:40','2016-07-26 15:59:40','2115'),
('224','716','1183','70','90',0.00,'0',8000.00,'1','1','100','0','2016-07-26 15:59:40','2016-07-26 15:59:40','2115'),
('225','717','0','75','90',0.00,'0',5000.00,'1','1','100','0','2016-07-26 16:02:20','2016-07-26 16:02:20','2115'),
('226','717','1183','75','90',0.00,'0',5000.00,'1','1','100','0','2016-07-26 16:02:20','2016-07-26 16:02:20','2115'),
('227','718','0','85','90',0.00,'0',3000.00,'1','1','100','0','2016-07-26 16:04:59','2016-07-26 16:04:59','2115'),
('228','718','1183','85','90',0.00,'0',3000.00,'1','1','100','0','2016-07-26 16:04:59','2016-07-26 16:04:59','2115'),
('229','719','0','100','100',0.00,'0',0.00,'1','1','1','0','2016-07-29 14:25:39','2016-07-29 14:25:39','2121'),
('230','719','1209','100','100',0.00,'0',0.00,'1','1','1','0','2016-07-29 14:25:39','2016-07-29 14:25:39','2121'),
('231','720','0','100','100',0.00,'0',0.00,'1','1','1','0','','','0'),
('232','720','1246','100','100',0.00,'0',0.00,'1','1','1','0','2016-07-27 17:21:32','','0'),
('233','720','1247','100','100',0.00,'1',0.00,'1','1','3','0','2016-07-27 17:21:55','','0'),
('234','721','0','7','9',0.00,'0',8000.00,'1','1','100','0','2016-07-28 09:55:59','2016-07-28 09:55:59','2121'),
('235','721','1209','7','9',0.00,'0',8000.00,'1','1','100','0','2016-07-28 09:55:59','2016-07-28 09:55:59','2121'),
('236','722','0','8','9',0.00,'0',5000.00,'1','1','100','0','2016-07-28 10:29:32','2016-07-28 10:29:32','2121'),
('237','722','1209','8','9',0.00,'0',5000.00,'1','1','100','0','2016-07-28 10:29:32','2016-07-28 10:29:32','2121'),
('238','723','0','9','9',0.00,'0',3000.00,'1','1','100','0','2016-07-28 10:32:04','2016-07-28 10:32:04','2121'),
('239','723','1209','9','9',0.00,'0',3000.00,'1','1','100','0','2016-07-28 10:32:04','2016-07-28 10:32:04','2121'),
('240','715','1248','100','100',0.00,'0',0.00,'1','1','1','0','2016-08-02 11:04:21','2016-08-02 11:04:21','2137'),
('241','715','1249','100','100',0.00,'0',0.00,'1','1','1','0','2016-08-02 11:04:21','2016-08-02 11:04:21','2137'),
('242','715','1250','100','100',0.00,'0',0.00,'1','1','1','0','2016-08-02 11:04:21','2016-08-02 11:04:21','2137'),
('243','715','1251','100','100',0.00,'0',0.00,'1','1','1','0','2016-08-02 11:04:21','2016-08-02 11:04:21','2137'),
('244','724','0','100','100',0.00,'0',1.00,'10','1','100','0','2016-08-03 09:27:43','2016-08-03 09:27:43','2119'),
('245','724','1248','100','100',0.00,'0',1.00,'10','1','100','0','2016-08-03 09:27:43','2016-08-03 09:27:43','2119'),
('246','724','1249','100','100',0.00,'0',1.00,'10','1','100','0','2016-08-03 09:27:43','2016-08-03 09:27:43','2119'),
('247','724','1250','100','100',0.00,'0',1.00,'10','1','100','0','2016-08-03 09:27:43','2016-08-03 09:27:43','2119'),
('248','724','1251','100','100',0.00,'0',1.00,'10','1','100','0','2016-08-03 09:27:43','2016-08-03 09:27:43','2119'),
('249','725','0','100','100',0.00,'0',1.00,'10','1','100','1','2016-08-03 10:15:58','2016-08-03 10:15:58','2119'),
('250','725','1248','100','100',0.00,'0',1.00,'10','1','100','1','2016-08-03 10:15:58','2016-08-03 10:15:58','2119'),
('251','725','1249','100','100',0.00,'0',1.00,'10','1','100','1','2016-08-03 10:15:58','2016-08-03 10:15:58','2119'),
('252','725','1250','100','100',0.00,'0',1.00,'10','1','100','1','2016-08-03 10:15:58','2016-08-03 10:15:58','2119'),
('253','725','1251','100','100',0.00,'0',1.00,'10','1','100','1','2016-08-03 10:15:58','2016-08-03 10:15:58','2119'),
('254','726','0','100','100',0.00,'0',1.00,'1','1','100','0','2016-08-03 10:17:03','2016-08-03 10:17:03','2119'),
('255','726','1248','100','100',0.00,'0',1.00,'1','1','100','0','2016-08-03 10:17:03','2016-08-03 10:17:03','2119'),
('256','726','1249','100','100',0.00,'0',1.00,'1','1','100','0','2016-08-03 10:17:03','2016-08-03 10:17:03','2119'),
('257','726','1250','100','100',0.00,'0',1.00,'1','1','100','0','2016-08-03 10:17:03','2016-08-03 10:17:03','2119'),
('258','726','1251','100','100',0.00,'0',1.00,'1','1','100','0','2016-08-03 10:17:03','2016-08-03 10:17:03','2119');
DROP TABLE IF EXISTS  `store_shop`;
CREATE TABLE `store_shop` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `adsense` varchar(2000) DEFAULT NULL COMMENT '广告位',
  `new_arrival` varchar(255) DEFAULT NULL COMMENT '新品上架',
  `best_sellers` varchar(255) DEFAULT NULL COMMENT '热销商品',
  `is_deleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='在线商城';

insert into `store_shop`(`s_id`,`store_id`,`adsense`,`new_arrival`,`best_sellers`,`is_deleted`) values
('7','1180','http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469069010378,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469068823324,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469068839188,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469068911691,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469068925209,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1469068943440','1913,1914,1917,1920,1923,1929,1926','1914,1917,1920,1923,1926,1929,1932,1935,1941,1938','0'),
('8','1181','http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468997636327,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468997656799,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468997674988,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468997705270,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468997735914,http://7xss26.com1.z0.glb.clouddn.com/jobwisdom/project/1468997765367','1915,1918,1921,1924,1927,1930,1933,1936,1939,1942','1921,1924,1927','0'),
('9','1209',null,'2576,2575',null,'0'),
('10','1247',null,'2570','2565','0');
DROP TABLE IF EXISTS  `automatic_key`;
CREATE TABLE `automatic_key` (
  `automatic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `automatic_key` varchar(240) DEFAULT NULL COMMENT '菜单key值',
  `automatic_type` int(11) DEFAULT NULL COMMENT '回复类型(1:文 2:图文)',
  `automatic_text` varchar(240) DEFAULT NULL COMMENT '文字内容',
  `media_id` varchar(240) DEFAULT NULL COMMENT '图文素材ID',
  `store_id` int(11) DEFAULT NULL COMMENT '门店ID',
  PRIMARY KEY (`automatic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='菜单回复类型表';

DROP TABLE IF EXISTS  `member_copy`;
CREATE TABLE `member_copy` (
  `name` varchar(32) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `user_account`;
CREATE TABLE `user_account` (
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '员工标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `store_account` varchar(50) DEFAULT NULL COMMENT '企业代号',
  `role_id` int(11) NOT NULL COMMENT '角色标识',
  `user_name` varchar(25) NOT NULL DEFAULT '' COMMENT '用户账号',
  `user_pwd` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `pwd_salt` varchar(32) DEFAULT NULL COMMENT '密码盐值',
  `status` char(1) DEFAULT '0' COMMENT '状态 0 正常 1禁用',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

insert into `user_account`(`user_id`,`store_id`,`store_account`,`role_id`,`user_name`,`user_pwd`,`pwd_salt`,`status`,`create_time`,`update_time`,`last_operator_id`) values
('0',null,'jobwisdom','100','jobwisdom','50B142C11F27D0E78BABF12556E7BEA4','[B@4df8684a','0',null,'2016-06-17 14:38:41',null),
('2084',null,'wisdom','2','10000','36B78DB92DB9BA56BEB439E00A895B9A','[B@1a5c1666','0',null,null,null),
('2085','1180','wisdom','1','10001','A38732239393CE2E7937F4ECF4C2EA64','[B@490076d9','0',null,null,null),
('2086','1180','wisdom','3','15576078687','09DE91885B0FE2A47947F903DAE9416F','[B@321af0da','0',null,null,null),
('2087','1181','wisdom','1','10002','73C8D8004D818CEEE40D19AC2C3C3C92','[B@43ec737a','0',null,null,null),
('2088','1182','wisdom','1','10003','6735D10C776B5124C3D73C8F58605B86','[B@10e6859e','0',null,null,null),
('2089','1180','wisdom','3','13823218511','60890D7C156A4D3DA267B2D79712791C','[B@4e32116d','1',null,null,null),
('2090',null,'wisdom','1','20000','1C5479CFF57D1A7580E57D159905DA17','[B@b8ae1a1','1',null,null,null),
('2091','1181',null,'3','13802211912','22DCA996D40790B85778050321D15733','[B@135aa559','0',null,null,null),
('2092','1181',null,'3','13802211913','1B4AF445D48766111516D2A4F8B68FA2','[B@46306886','0',null,null,null),
('2093','1181',null,'3','13802211914','C81C1F7CFF79AFFB3A85395C12194381','[B@dbf7736','0',null,null,null),
('2094','1181',null,'3','13802211915','4CB9A7EE8FDAD56AF03B86704D511210','[B@523fa9ef','0',null,null,null),
('2095','1181',null,'3','13802211916','A001FAE937D9C7795B1EA76874D9D941','[B@569b9dfa','0',null,null,null),
('2096','1181',null,'3','13668996633','6C286DB1AD0B58945B43E6183A75943A','[B@54996672','0',null,null,null),
('2097','1181',null,'3','13804567789','B54EB04766C71FC55026FC55759E77A4','[B@17455c3f','0',null,null,null),
('2098','1181',null,'3','13803345678','C3499A632A7D3DD6330C9C74AA9D857C','[B@30a95046','0',null,null,null),
('2099','1181',null,'3','13804567890','8183864118B396A1FC5DA7412D58B831','[B@4d458a83','0',null,null,null),
('2100','1181',null,'3','13713958999','7754BD1B183188E6F546E4D05B5AFF8F','[B@24dd15c3','0',null,null,null),
('2102','1181',null,'2','13801155667','313138DC75C98DC536A4C32611885073','[B@28100739','0',null,null,null),
('2103','1181',null,'3','13801155779','E456909F7300B43E2C69646CDC6467CE','[B@662f6caf','0',null,null,null),
('2104','1180',null,'3','13145624561','223C8CAD8C2A2120756821CFF1A0A1CE','[B@38a6e8c5','0',null,null,null),
('2105','1180',null,'3','13145648591','703E754DD1B6D2868C84C9AD5ED1FBCB','[B@54ca587c','0',null,null,null),
('2106','1180',null,'3','13145612562','5387ECE13A2ECAED8567FFA7BA3821FC','[B@72df803','0',null,null,null),
('2107','1180',null,'3','13145647894','EC0F9F28AAA85E9057C62D8731C38C73','[B@7f2be52b','0',null,null,null),
('2108','1180',null,'3','15245689845','BA06A2517FF2D87E607E3D45CBA2B52A','[B@75495f8a','0',null,null,null),
('2110','1180',null,'3','13823218577','06D3570E00086CDF394B53C25B93C465','[B@54da4538','1',null,null,null),
('2112','1180',null,'3','13823218511','8E9EBD268B851BFD8A9C1E2EBED490F0','[B@45d884d4','0',null,null,null),
('2113','1180',null,'3','13555555555','DE45A1FBA18BD39420186C850CEEAB4E','[B@5c12456b','0',null,null,null),
('2114','1180',null,'3','13455555555','886AD85CAE60EDE919D7FCCBD1E5BCC0','[B@7d43a2e3','0',null,null,null),
('2115',null,'Artist','7','10000','4113B764E0D70FD21768C72B8C7AD6D0','[B@15b46411','0',null,null,null),
('2116','1183','Artist','8','10001','2415AC9016ED57482824E44BA2F62173','[B@50b69670','0',null,null,null),
('2117','1183',null,'3','13510285573','51795B8F81A4DB7EE8BB6EBFB06F13AA','[B@7a593b3c','0',null,null,null),
('2118','1183',null,'3','13510000000','FD01D04B5D77FCBEFE3B75587B441292','[B@4efc2ee1','0',null,null,null),
('2119',null,'ymyk','37','10000','57ED2732DA969568CD2FD1CD29878033','[B@69ab944f','0',null,'2016-07-30 09:41:33',null),
('2120',null,'wisdom','2','10009','B55C063E6ABE136BB1C8C3A9250C59EC','[B@dfc6cae','0',null,null,null),
('2121',null,'xiaomin','32','10000','2CF2BC8203F7CCC9445A2A07E897946D','[B@8c0a9e','0',null,null,null),
('2122','1209','xiaomin','33','10001','C6CDD133B05D366D6BED1CBC4EC30325','[B@142fc41d','0',null,null,null),
('2123','1247','wisdom','1','10004','9EE4826AE64CC0AA777C11A4AF52CFE7','[B@6480e033','0',null,null,null),
('2124','1247','wisdom','3','15112296745','595FA8D3D8CC29FB1EE04168D41E7997','[B@1f0ce624','0',null,null,null),
('2125','1247','wisdom','1','13423347764','86DDDED16B72955DBAB88DC88F89651C','[B@4f5b78c6','0',null,null,null),
('2126','1247','wisdom','1','13535642345','5A273C1ECA2471F328C7CE615D70F583','[B@6719aef1','0',null,null,null),
('2127','1247','wisdom','1','13324537869','8F9835C5B49116A1809FEE0F53878208','[B@420b5e7d','0',null,null,null),
('2128','1247','wisdom','1','15845352678','8345F8EA915DC4BAF2EC6C895BE30227','[B@8188800','0',null,null,null),
('2129','1247','wisdom','1','15923038902','2D3474FE1D5D3DEFFB57BDF46C88774C','[B@47e704ac','0',null,null,null),
('2130','1209','xiaomin','33','12344444444','65425F21334F4E777C892F95CDC8077D','[B@6db57458','0',null,null,null),
('2131','1209','xiaomin','32','15622222222','133D0502D299B594C2EFCDA1FA0BFE6E','[B@55d763c1','0',null,null,null),
('2132','1209','xiaomin','32','11111111111','2CF631E1F149CBF8621B6054301A551B','[B@1272a0ad','0',null,null,null),
('2133',null,'ymyk','38','10001','6542B8A9171495726D339B75538AC5EC','[B@7cc50c7a','1',null,null,null),
('2134',null,'ymyk','38','10002','DEC9D879B8E201CF1292666DEEC4F6CA','[B@528c0113','1',null,null,null),
('2135','1248','ymyk','37','10001','4A2CD25B9B1561FC8B899D0BEC94071B','[B@3720c29b','0',null,null,null),
('2136',null,'ymyk','37','10002','657828E580D8744E6C12A4147D11B64D','[B@45ee1e53','0',null,null,null),
('2137',null,'ymyk','37','10003','A5E5AD1A04639E886293C382E03D03FA','[B@756d5ffa','0',null,'2016-08-02 09:34:48',null),
('2138',null,'ymyk','37','10004','BDFB33B8105D1B8F17C0626F3E07B2EB','[B@e06384f','0',null,null,null),
('2139','1180','wisdom','1','10011','436160875F44EB3CC52D23662CB17633','[B@1be100c4','0',null,null,null),
('2140',null,'wisdom','2','1000','CCCD63DD5AFDBB2D7B5E222E56B74708','[B@48b77dbd','1',null,null,null),
('2141','1180','wisdom','1','10010','55A8AB5AB1C0D053467E201C4A337ABA','[B@25f688e2','0',null,null,null),
('2142','1247','wisdom','3','13510646727','3D3BD59542B3AC9A3D6BCEE3A6BD33E1','[B@2697d6f0','0',null,null,null),
('2143',null,'wisdom','2','20000','FE5216FE6D5BF6616F7E31D89D5D29D0','[B@6c7bb8dc','0',null,null,null),
('2144',null,'wisdom','2','30000','22ACD27A4C19F3D36401E0EAA88D02B3','[B@19f318ae','0',null,null,null),
('2145','1180','wisdom','1','666666','CA0CDD0E7E477614A081E5761D9762D3','[B@73ddef23','0',null,null,null);
DROP TABLE IF EXISTS  `menu_id_quote`;
CREATE TABLE `menu_id_quote` (
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型',
  `menu_id` int(11) DEFAULT NULL COMMENT '第几个菜单',
  `menu_html` text COMMENT '菜单html',
  `quote_id` int(11) DEFAULT NULL COMMENT '二级菜单引用的一级菜单id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `menu_id_quote`(`menu_type`,`menu_id`,`menu_html`,`quote_id`) values
('2','1','<a href="<%=menuBasePath%>KeepAccounts/initializeManuallyOpenOrder"><li><span>快速开单</span></li></a>','1'),
('2','2','<a href="<%=menuBasePath%>KeepAccounts/initializeNoPaperOpenOrder"><li><span>无纸开单</span></li></a>','1'),
('1','1','<li class="active_1_2 border" index="1" url="<%=menuBasePath%>selfcashier/view/list">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_1_2.png"/></p>
			     业务
			</div>
			
		</li>','0'),
('1','2','	<li class="active_2_1" index="2" url="<%=menuBasePath%>memberLevel/view/enterpriseMemberLevelList">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_2_1.png"/></p>
			     会员
			</div> 
		</li>','0'),
('1','3','<li class="active_3_1" index="3" url="<%=menuBasePath%>marketing/view/showMinBargain">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_3_1.png"/></p>
			    营销
			</div> 
			 
		</li>','0'),
('1','4','	<li class="active_4_1" index="4" url="<%=menuBasePath%>summary/view/summary">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_4_1.png"/></p>
			       财务
			</div>
			
		</li>','0'),
('1','5','<li class="active_5_1" index="5" url="<%=menuBasePath%>project/view/projects">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_5_1.png"/></p>
			     服务
			</div>
			
		</li>','0'),
('1','6','	<li class="active_6_1" index="6" url="<%=menuBasePath%>view/storeAccount/suplier">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_6_1.png"/></p>
			    商品
			</div> 
		</li>','0'),
('1','7','	<li class="active_7_1" index="7" url="<%=menuBasePath%>employee/view/employee">
			<div class="nav_img">
		     <p><img src="<%=menuBasePath%>images/left_7_1.png"/></p>
			  员工
			</div>
			
		</li>','0'),
('1','8','	<li class="active_8_1" index="8" url="<%=menuBasePath%>storeinfo/view/showStoreList">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_8_1.png"/></p>
			   企业
			</div> 
		</li>','0'),
('1','9','	<li class="active_9_1" index="9" url="<%=menuBasePath%>system/view/storeWechat">
			<div class="nav_img">
		     <p><img src="<%=menuBasePath%>images/left_9_1.png"/></p>
			   微信
			</div> 
		</li>','0'),
('1','10','	<li class="active_10_1" index="10" url="<%=menuBasePath%>system/view/person">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_10_1.png"/></p>
			   设置
			</div> 
		</li>','0'),
('2','3','<a href="<%=menuBasePath%>selfcashier/view/list"><li><span>待结账</span></li></a>','1'),
('2','4','<a href="<%=menuBasePath%>KeepAccounts/initializeOpenCard"><li><span>开卡充值</span></li></a>','1'),
('2','5','<a href="<%=menuBasePath%>KeepAccounts/initializeStoreFlow"><li><span>收支记账</span></li></a>
			','1'),
('2','6','<a href="<%=menuBasePath%>daybook/view/index"><li><span>流水查询</span></li></a>','1'),
('2','7','<a href="<%=menuBasePath%>KeepAccounts/initializeShiftMahjong"><li><span>电子轮牌</span></li></a>','1'),
('2','8','<a href="<%=menuBasePath%>appoint/view/list"><li><span>预约中心</span></li></a>
			','2'),
('2','9','<a href="<%=menuBasePath%>member/view/list"><li class=""><span>会员数据</span></li></a>
			','2'),
('2','10','<a href="<%=menuBasePath%>member/view/census/list"><li class=""><span>会员分组</span></li></a>
			','2'),
('2','11','<a href="<%=menuBasePath%>memberLevel/view/list"><li class="active"><span>门店会员卡</span></li></a>
			','2'),
('2','12','<a href="<%=menuBasePath%>memberLevel/view/enterpriseMemberLevelList"><li class="active"><span>企业会员卡</span></li></a>','2'),
('2','13','<a href="<%=menuBasePath%>marketing/view/showMinBargain"><li><span>微砍价</span></li></a>
','3'),
('2','14','			<a href="<%=menuBasePath%>marketing/view/showBigTurntable"><li><span>大转盘</span></li></a>
			','3'),
('2','15','<a href="<%=menuBasePath%>marketing/view/showLantern"><li><span>点灯笼</span></li></a>
','3'),
('2','16','<a href="<%=menuBasePath%>marketing/view/showMinVote"><li><span>微投票</span></li></a>
','3'),
('2','17','<a href="<%=menuBasePath%>coupons/couponslist"><li><span>优惠券</span></li></a>
','3'),
('2','18','<a href="<%=menuBasePath%>service/view/view"><li><span>服务助手</span></li></a>
			','3'),
('2','19','<a href="<%=menuBasePath%>activity/view/showactivitysign"><li><span>门店活动</span></li></a>','3'),
('2','20','<a href="<%=menuBasePath%>summary/view/summary"><li class=""><span>营业汇总</span></li></a>','4'),
('2','21','<a href="<%=menuBasePath%>cashreceipts/view/cashreceipts"><li><span>现金收入</span></li></a>','4'),
('2','22','<a href="<%=menuBasePath%>cardsales/view/cardsales"><li class=""><span>卡项销售</span></li></a>','4'),
('2','23','<a href="<%=menuBasePath%>laborperformance/view/laborperformance"><li class="active"><span>劳动业绩</span></li></a>','4'),
('2','24','<a href="<%=menuBasePath%>packagesales/view/packagesales"><li><span>疗程销售</span></li></a>','4'),
('2','25','<a href="<%=menuBasePath%>commoditysales/view/commoditysales"><li><span>商品销售</span></li></a>','4'),
('2','26','<a href="<%=menuBasePath%>reconciliation/view/crossReconciliation"><li><span>跨店对账</span></li></a>','4'),
('2','27','<a href="<%=menuBasePath%>businessAnalysis/view/payroll"><li><span>工资单</span></li></a>','4'),
('2','28','<a href="<%=menuBasePath%>project/view/projects"><li class=""><span>项目列表</span></li></a>','5'),
('2','29','<a href="<%=menuBasePath%>comboInfo/view/comboInfoList"><li><span>疗程列表</span></li></a>','5'),
('2','30','<a href="<%=menuBasePath%>goodsInfo/view/goodsInfoList"><li class=""><span>商品列表</span></li></a>','6'),
('2','31','<a href="<%=menuBasePath%>goodsInfo/view/setting"><li><span>商品库管理</span></li></a>','6'),
('2','32','<a href="<%=menuBasePath%>stock/view"><li><span>商品调遣单</span></li></a>','6'),
('2','33','<a href="<%=menuBasePath%>view/storeAccount/suplier"><li><span>供应商管理</span></li></a>','6'),
('2','34','<a href="<%=menuBasePath%>project/view/categorys"><li><span>系列管理</span></li></a>','6'),
('2','35','<a href="<%=menuBasePath%>employee/view/employee"><li><span>员工资料</span></li></a>','7'),
('2','36','<a href="<%=menuBasePath%>storeManageRule/view/home"><li class=""><span>管理制度</span></li></a>','7'),
('2','37','<a href="<%=menuBasePath%>shift/view/shift"><li class="active"><span>排班设置</span></li></a>','7'),
('2','38','<a href="<%=menuBasePath%>attendance/view/attendance"><li><span>考勤记录</span></li></a>','7'),
('2','39','<a href="<%=menuBasePath%>storeinfo/view/showStoreList"><li class="active"><span>门店管理</span></li></a>','8'),
('2','40','<a href="<%=menuBasePath%>app/pay/qr"><li class="active"><span>企业充值</span></li></a>','8'),
('2','42','<a href="<%=menuBasePath%>KeepAccounts/initializeEnterpriseShiftMahjong"><li class=""><span>轮牌管理</span></li></a>','8'),
('2','43','<a href="<%=menuBasePath%>storeinfo/view/storeSetting"><li><span>微网站</span></li></a>','9'),
('2','44','<a href="<%=menuBasePath%>memberCenter/view/store/shop"><li><span>在线商城</span></li></a>','9'),
('2','45','<a href="<%=menuBasePath%>wechat/items/manage"><li><span>营销中心</span></li></a>','9'),
('2','46','<a href="<%=menuBasePath%>system/view/storeWechat"><li class="active"><span>微信设置</span></li></a>','9'),
('2','47','<a href="<%=menuBasePath%>system/view/person"><li class=""><span>账户设置</span></li></a>','10'),
('2','48','<a href="<%=menuBasePath%>system/view/baseSetting"><li class=""><span>基础设置</span></li></a>','10'),
('2','49','<a href="<%=menuBasePath%>system/view/share"><li class=""><span>分享拓客</span></li></a>','10'),
('2','50',' <a href="<%=menuBasePath%>commissionScheme/view/view_show_commission_scheme"><li class=""><span>业绩提成分配</span></li></a>','10'),
('2','51','<a href="<%=menuBasePath%>employee/account/positon"><li class=""><span>组织架构</span></li></a>','8'),
('2','52','<a href="<%=menuBasePath%>member/view/error/member/info"><li><span>异常会员数据</span></li></a>','2'),
('2','53','<a href="<%=menuBasePath%>enterprise/view/showEnterprise"><li class="active"><span>新增企业</span></li></a>','8'),
('2','54','<a href="<%=menuBasePath%>system/view/showRole"><li class=""><span>权限分配</span></li></a>','10'),
('1','11','		<li class="active_2_1" index="2" url="<%=menuBasePath%>appoint/view/list">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_2_1.png"/></p>
			     会员
			</div> 

		</li>','0'),
('1','12','
			<li class="active_6_1" index="6" url="<%=menuBasePath%>goodsInfo/view/goodsInfoList">
			<div class="nav_img">
			 <p><img src="<%=menuBasePath%>images/left_6_1.png"/></p>
			    商品
			</div> 
			
		</li>','0'),
('1','13','<li class="active_9_1" index="9" url="<%=menuBasePath%>storeinfo/view/storeSetting">
			<div class="nav_img">
		     <p><img src="<%=menuBasePath%>images/left_9_1.png"/></p>
			   微信
			</div> 
			
		</li>','0'),
('2','55','<a href="<%=menuBasePath%>memberLevel/view/list"><li class="active"><span>门店会员卡</span></li></a>','2'),
('2','56','<a href="<%=menuBasePath%>stock/view"><li><span>商品调遣单</span></li></a>','6'),
('2','57','<a href="<%=menuBasePath%>project/view/categorys"><li><span>系列管理</span></li></a>','6'),
('2','58','<a href="<%=menuBasePath%>goodsInfo/view/setting"><li><span>商品库管理</span></li></a>','6'),
('2','59','<a href="<%=menuBasePath%>system/view/administrator"><li><span>管理员设置</span></li></a>','10'),
('1','14','<li class="active_14_1" index="14" url="<%=menuBasePath%>project/view/projects">
			<div class="nav_img">
			  <p><img src="<%=menuBasePath%>images/left_14_1.png"/></p>
			     分析
			</div>
			
		</li>','0'),
('2','60','<a href="<%=menuBasePath%>programme/view/bigCustomerAnalysis"><li><span>大客户分析</span></li></a>','14'),
('2','61','<a href="<%=menuBasePath%>programme/view/customerLoyalAnalysis"><li><span>忠诚客户分析</span></li></a>','14'),
('2','62','<a href="<%=menuBasePath%>programme/view/customerActiveAnalysis"><li><span>活跃客户分析</span></li></a>','14');
DROP TABLE IF EXISTS  `store_wechat`;
CREATE TABLE `store_wechat` (
  `store_account` varchar(11) NOT NULL DEFAULT '0' COMMENT '企业账号',
  `wechat_id` varchar(60) DEFAULT NULL COMMENT '公众号原始id',
  `wechat_appid` varchar(60) DEFAULT NULL COMMENT '公众号应用ID',
  `wechat_appsecret` varchar(60) DEFAULT NULL COMMENT '公众号应用密钥',
  `tm_appoint_apply` varchar(60) DEFAULT '' COMMENT '客户预约申请通知',
  `tm_appoint_result` varchar(60) DEFAULT '' COMMENT '客户预约结果通知',
  `tm_appoint_remind` varchar(60) DEFAULT '' COMMENT '客户预约到时提醒',
  `tm_charge_result` varchar(60) DEFAULT '' COMMENT '客户充值结果提醒',
  `tm_payment_info` varchar(60) DEFAULT '' COMMENT '客户结账信息通知',
  `tm_service_turn` varchar(60) DEFAULT '' COMMENT '员工服务移交通知',
  `tm_service_topic` varchar(60) DEFAULT '' COMMENT '服务计划推动通知',
  `tm_coupon_overdue` varchar(60) DEFAULT '' COMMENT '优惠券到期提醒',
  `app_id` varchar(60) DEFAULT NULL,
  `mch_id` varchar(60) DEFAULT NULL,
  `mch_key` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`store_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='门店微信数据关联表';

insert into `store_wechat`(`store_account`,`wechat_id`,`wechat_appid`,`wechat_appsecret`,`tm_appoint_apply`,`tm_appoint_result`,`tm_appoint_remind`,`tm_charge_result`,`tm_payment_info`,`tm_service_turn`,`tm_service_topic`,`tm_coupon_overdue`,`app_id`,`mch_id`,`mch_key`) values
('Artist','gh_c3495e761cda','wx6b5e03f55cdf3479','020e54d513a38c07cd95792fbf3f9aea','letI7QuZkLtEXrl1S8YuOZ2OKIGE_7H3svgsKjteiUA','3egUCp5RQJ63pL3fhPLMXVc7Ti2WVqs4eHAjwWpfAvg','EWnDPX-yQUjloXSY1kgDagfBojwC76vQjE4djlo9Hok','5lee3gseYsXCPNsTkVSj9AVeiYA6UmN0JT_NagoZzS4','mbgNjrivkX4-x-s9wtvh-bnz4wU3noAku4hq2Edqreo','qAYcCc027CFlDR6BkKnvW9SedtPzxdmtXrLcpgwoVqo','Z9YCMigZxEwlQSDrRWMnS9-12GrBjkBNHyPTDrhWDmE','tdgJaEsy_zH-C0AEGdxciPcx8gpJOPNAutcM6wCbGew','','',''),
('laowang','gh_f0928b9ddd82','wx287441046c9f38b2','e11749b4fa2a02e837fc193f660f062a','b4oAPkoqUGX69oJQ2jfNWnjzJpvz6qh7izOkxbltiC4','TTFedFyTqFcODE8c97-NSzm0rdDLu8JHqU_3l_8lklM','WCXuxrsDfcgXvti_M5PMesOjLrkF6epvuX9R-U-3c7E','wS4khRnMItqO8sRPLCl41BZ1Cfz0uDIkwe583dIV4dI','9wrVt_-04pmhrk_jbd7rjvkxbY4Zk1HCAE94ZPkxQpU','mPSDwTlk5Zd3t9vJju2ClHLYxzhXwOwU-p-LJGYYBhU','2uUYyfgtqBHkuWQxWCIxbDkM3hO7Nu1_4PQ9R3HsuZU','XkfZ4D_75Mf7QPjEYnzXucEDnmzArf0qfas737bvwWc',null,null,null),
('wisdom','gh_f0928b9ddd82','wx287441046c9f38b2','6af11812920ae8515012207ae1045b68','b4oAPkoqUGX69oJQ2jfNWnjzJpvz6qh7izOkxbltiC4','TTFedFyTqFcODE8c97-NSzm0rdDLu8JHqU_3l_8lklM','WCXuxrsDfcgXvti_M5PMesOjLrkF6epvuX9R-U-3c7E','wS4khRnMItqO8sRPLCl41BZ1Cfz0uDIkwe583dIV4dI','9wrVt_-04pmhrk_jbd7rjvkxbY4Zk1HCAE94ZPkxQpU','mPSDwTlk5Zd3t9vJju2ClHLYxzhXwOwU-p-LJGYYBhU','2uUYyfgtqBHkuWQxWCIxbDkM3hO7Nu1_4PQ9R3HsuZU','XkfZ4D_75Mf7QPjEYnzXucEDnmzArf0qfas737bvwWc','wx287441046c9f38b2','1335522901','123456789qwasdfghjklertyuiopzxcv');
DROP TABLE IF EXISTS  `enterprise_msn_flow`;
CREATE TABLE `enterprise_msn_flow` (
  `msn_flow_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '账户标识',
  `enterprise_account_id` int(11) NOT NULL COMMENT '账户标识',
  `flow_type` int(11) DEFAULT NULL COMMENT '流水类型(1:支出,2:收入)',
  `flow_amount` int(11) NOT NULL DEFAULT '0' COMMENT '流水数量',
  `balance_amount` int(11) DEFAULT NULL COMMENT '当前余量',
  `store_id` int(11) DEFAULT NULL COMMENT '分配门店标识',
  `store_name` varchar(50) DEFAULT NULL COMMENT '分配门店名称',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `is_deleted` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`msn_flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='企业短信流水表';

DROP TABLE IF EXISTS  `ubox_transaction`;
CREATE TABLE `ubox_transaction` (
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '交易标识',
  `transaction_amount` int(11) DEFAULT '0' COMMENT '交易金额(单位：分)',
  `transaction_integral` int(11) DEFAULT '0' COMMENT '交易积分',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品标识',
  `ubox_goods_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '友宝商品标识',
  `member_id` int(11) DEFAULT NULL COMMENT '会员标识',
  `pay_channel` int(1) DEFAULT '1' COMMENT '支付渠道(1、微信，2、支付宝)',
  `service_employee_id` int(11) DEFAULT NULL COMMENT '服务员工标识',
  `rewards_coupon_id` int(11) DEFAULT NULL COMMENT '奖励优惠券标识',
  `rewards_gift_amount` int(11) DEFAULT NULL COMMENT '奖励礼金金额',
  `out_trade_no` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '支付交易标识',
  `tran_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '友宝交易标识',
  `vmid` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '售货机标识',
  `box_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '盒子编号',
  `pickup_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '取货码',
  `expire_time` int(11) DEFAULT NULL COMMENT '取货过期时间',
  `box_status` int(1) DEFAULT '1' COMMENT '取货状态(1、待取货，2、已取货)',
  `pay_status` int(1) DEFAULT '1' COMMENT '支付状态(1、支付中，2、已支付，3、已取消)',
  `updated_server_status` int(11) DEFAULT '0' COMMENT '是否修改过服务人员',
  `create_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '订单创建时间',
  `update_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '订单修改时间',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS  `coupon_store`;
CREATE TABLE `coupon_store` (
  `coupon_id` int(11) NOT NULL COMMENT '优惠卷标识',
  `store_id` int(11) NOT NULL COMMENT '门店标识',
  PRIMARY KEY (`coupon_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `coupon_store`(`coupon_id`,`store_id`) values
('57','1180'),
('57','1181'),
('57','1182'),
('58','1183'),
('59','1209'),
('60','1209'),
('61','1209'),
('62','1209');
DROP TABLE IF EXISTS  `yzm_page_qiniu`;
CREATE TABLE `yzm_page_qiniu` (
  `yzm_page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_url` varchar(50) NOT NULL,
  `page_value` varchar(50) NOT NULL,
  PRIMARY KEY (`yzm_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='七牛验证码图片地址';

DROP TABLE IF EXISTS  `employee_reward`;
CREATE TABLE `employee_reward` (
  `reward_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工id',
  `type` char(2) DEFAULT NULL COMMENT '1.迟到,2.早退,3.请假,4.旷工,5.全勤,6.小过,7.大过,8.警告,9.好评,10.差评,11.投诉',
  `is_reward` char(1) DEFAULT NULL COMMENT '是否奖励：0，否；1，是；',
  `number` double DEFAULT NULL COMMENT '金额',
  `starttime` char(19) DEFAULT NULL COMMENT '开始时间',
  `endtime` char(19) DEFAULT NULL COMMENT '结束时间',
  `modifyer` int(11) DEFAULT NULL COMMENT '修改人',
  `modifytime` char(19) DEFAULT NULL COMMENT '修改时间',
  `reasons` varchar(100) DEFAULT NULL COMMENT '原因',
  PRIMARY KEY (`reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='员工奖惩记录表';

DROP TABLE IF EXISTS  `card_commission`;
CREATE TABLE `card_commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '提成标识',
  `commission_type` int(11) DEFAULT NULL COMMENT '提成类型(1:开卡提成,2:充值提成)',
  `charge_id` int(11) DEFAULT NULL COMMENT '充值标识',
  `card_name` varchar(10) DEFAULT NULL COMMENT '会员卡名称',
  `employee_id` int(11) DEFAULT NULL COMMENT '提成员工标识',
  `charge_amount` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `commission_amount` decimal(8,2) DEFAULT NULL COMMENT '提成金额',
  `charge_time` char(19) DEFAULT NULL COMMENT '发生时间',
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工开卡充值提成表';

DROP TABLE IF EXISTS  `combo_member_level`;
CREATE TABLE `combo_member_level` (
  `combo_id` int(11) NOT NULL COMMENT '套餐标识',
  `level_id` int(11) NOT NULL COMMENT '会员等级标识',
  `valid_date` int(11) DEFAULT NULL COMMENT '有效期限',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`combo_id`,`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='套餐会员等级关联表';

DROP TABLE IF EXISTS  `setting_rule`;
CREATE TABLE `setting_rule` (
  `setting_rule_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '方案规则标识',
  `store_id_or_account` varchar(50) NOT NULL COMMENT '方案规则归宿（门店或者企业）',
  `rule_type` int(2) NOT NULL COMMENT '方案规则类型（1：大客户分析）',
  `rule_info` varchar(500) NOT NULL COMMENT '累计账号数量',
  PRIMARY KEY (`setting_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='方案规则表';

insert into `setting_rule`(`setting_rule_id`,`store_id_or_account`,`rule_type`,`rule_info`) values
('1','wisdom','1','0:500:2000:5000:10000'),
('2','1180','1','0:500:2000:5000:10000'),
('3','1181','1','0:500:2000:5000:10000'),
('4','1182','1','0:500:2000:5000:10000'),
('5','1246','1','0:500:2000:5000:10000'),
('6','1247','1','0:500:2000:5000:10000'),
('7','wisdom','2','0:5:10:30:60'),
('8','1180','2','0:5:10:30:60'),
('9','1181','2','0:5:10:30:60'),
('10','1182','2','0:5:10:30:60'),
('11','1246','2','0:5:10:30:60'),
('12','1247','2','0:5:10:30:60'),
('13','wisdom','3','0:15:30:60:90'),
('14','1180','3','0:15:30:60:90'),
('15','1181','3','0:15:30:60:90'),
('16','1182','3','0:15:30:60:90'),
('17','1246','3','0:15:30:60:90'),
('18','1247','3','0:15:30:60:90');
DROP TABLE IF EXISTS  `employee_recommend`;
CREATE TABLE `employee_recommend` (
  `recommend_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '推荐标识',
  `employee_id` int(11) DEFAULT NULL COMMENT '员工标识',
  `referrer_id` int(11) DEFAULT NULL COMMENT '推荐人标识',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`recommend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COMMENT='员工推荐关系表';

insert into `employee_recommend`(`recommend_id`,`employee_id`,`referrer_id`,`create_time`,`update_time`,`last_operator_id`) values
('110',null,'2086','2016-07-17 16:03:55',null,'2085'),
('113',null,'2086','2016-07-18 15:33:06',null,'2085'),
('114',null,'2086','2016-07-18 15:33:36',null,'2085'),
('115',null,'2086','2016-07-18 15:33:47',null,'2085'),
('116',null,'2086','2016-07-18 15:34:43',null,'2085'),
('117',null,'2086','2016-07-18 15:34:59',null,'2085'),
('118',null,'2086','2016-07-20 11:49:09',null,'2085'),
('119',null,'2086','2016-07-20 11:49:46',null,'2085'),
('120','2104','2089','2016-07-20 11:51:28',null,'2085'),
('121','2105','2104','2016-07-20 11:53:17',null,'2085'),
('122','2106','2104','2016-07-20 11:54:26',null,'2085'),
('123','2107','2106','2016-07-20 11:55:35',null,'2085'),
('124','2108','2104','2016-07-20 11:57:16',null,'2085'),
('126',null,'2086','2016-07-21 14:03:01',null,'2085'),
('127',null,'2089','2016-07-21 16:23:00',null,'2085'),
('128',null,'2086','2016-07-21 16:31:53',null,'2085'),
('129','2114','2086','2016-07-21 16:41:39',null,'2085'),
('130',null,'2086','2016-07-21 16:46:12',null,'2085'),
('131',null,'2086','2016-07-21 16:46:18',null,'2085');
DROP TABLE IF EXISTS  `store_flow_project`;
CREATE TABLE `store_flow_project` (
  `project_id` int(11) NOT NULL COMMENT '项目标识',
  `category_id` int(11) DEFAULT NULL COMMENT '类别标识',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `project_name` varchar(10) DEFAULT NULL COMMENT '项目名称',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='店铺收支项目表';

DROP TABLE IF EXISTS  `opencard_money`;
CREATE TABLE `opencard_money` (
  `opencard_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '开卡充值收银记录标识',
  `member_id` int(11) DEFAULT NULL COMMENT '会员标识',
  `money_type` int(11) DEFAULT NULL COMMENT '收银类型（1：开卡、2：充值）',
  `cash_amount` decimal(8,2) DEFAULT NULL COMMENT '现金支付',
  `unionpay_amount` decimal(8,2) DEFAULT NULL COMMENT '银联支付',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`opencard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='开卡充值收银记录表';

DROP TABLE IF EXISTS  `face_search_record`;
CREATE TABLE `face_search_record` (
  `face_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人脸ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `similarity` decimal(5,2) DEFAULT NULL COMMENT '相似度',
  `create_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`face_id`),
  KEY `index2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户人脸识别纪录表';

DROP TABLE IF EXISTS  `shift_mahjong_project_step`;
CREATE TABLE `shift_mahjong_project_step` (
  `shift_mahjong_step_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮牌信息标识',
  `shift_mahjong_id` int(11) DEFAULT NULL COMMENT '步骤对应的轮牌标识',
  `position_id` int(11) DEFAULT NULL COMMENT '岗位标识/提成顺序',
  `detail_id` int(11) DEFAULT NULL COMMENT '订单明细',
  `employee_id` int(11) DEFAULT NULL COMMENT '服务人员',
  `begin_time` char(19) DEFAULT '' COMMENT '服务开始时间',
  `finish_time` char(19) DEFAULT '' COMMENT '服务结束时间',
  `is_assign` int(11) DEFAULT '0' COMMENT '是否指定(0：否  1：是)',
  `is_designate` int(11) DEFAULT '0' COMMENT '是否指派(0：否  1：是)',
  `is_appoint` int(11) DEFAULT '0' COMMENT '是否预约(0：否  1：是)',
  `is_over` int(11) DEFAULT '1' COMMENT '步骤状态(0:未开始，1：服务中、2：已结束)',
  `is_current` int(11) DEFAULT '0' COMMENT '是否当前服务步骤(0：否  1：是)',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`shift_mahjong_step_id`),
  KEY `employee_id` (`employee_id`),
  KEY `assign` (`is_assign`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=714 DEFAULT CHARSET=utf8mb4 COMMENT='项目服务表关系表';

insert into `shift_mahjong_project_step`(`shift_mahjong_step_id`,`shift_mahjong_id`,`position_id`,`detail_id`,`employee_id`,`begin_time`,`finish_time`,`is_assign`,`is_designate`,`is_appoint`,`is_over`,`is_current`,`create_time`,`is_deleted`,`update_time`,`last_operator_id`) values
('439',null,'887','39294','2086','','','1','0','0','2','0','2016-07-17 13:37:24','1',null,'2085'),
('440',null,'888','39294',null,'','','0','0','0','2','0','2016-07-17 13:37:24','1',null,'2085'),
('441',null,'889','39294',null,'','','0','0','0','2','0','2016-07-17 13:37:24','1',null,'2085'),
('442',null,'887','39295','2086','','','1','0','1','2','0','2016-07-17 16:24:41','1',null,'2085'),
('443',null,'888','39295',null,'','','0','0','0','2','0','2016-07-17 16:24:41','1',null,'2085'),
('444',null,'889','39295',null,'','','0','0','0','2','0','2016-07-17 16:24:41','1',null,'2085'),
('445','26','887','39296','2086','2016-07-17 16:26:59','','0','0','0','1','0','2016-07-17 16:26:59','1',null,'2085'),
('446',null,'888','39296',null,'','','0','0','0','0','0','2016-07-17 16:26:59','1',null,'2085'),
('447',null,'889','39296',null,'','','0','0','0','0','0','2016-07-17 16:26:59','1',null,'2085'),
('448',null,'887','39302','2086','','','1','0','0','2','0','2016-07-21 14:21:03','0',null,'2085'),
('449',null,'888','39302','2105','','','0','0','0','2','0','2016-07-21 14:21:03','0',null,'2085'),
('450',null,'889','39302','2108','','','0','0','0','2','0','2016-07-21 14:21:03','0',null,'2085'),
('451','29','892','39303','2100','2016-07-21 15:08:28','2016-07-21 15:09:26','1','0','0','2','0','2016-07-21 15:08:28','0',null,'2087'),
('452',null,'893','39303',null,'','','0','0','0','0','0','2016-07-21 15:08:28','0',null,'2087'),
('453',null,'894','39303',null,'','','0','0','0','0','0','2016-07-21 15:08:28','0',null,'2087'),
('454',null,'892','39304',null,'','','0','0','0','0','0','2016-07-21 15:09:09','0',null,'2100'),
('455',null,'893','39304',null,'','','0','0','0','0','0','2016-07-21 15:09:09','0',null,'2100'),
('456',null,'894','39304',null,'','','0','0','0','0','0','2016-07-21 15:09:09','0',null,'2100'),
('457','29','892','39305','2100','2016-07-21 15:13:36','2016-07-21 15:44:51','0','0','0','2','0','2016-07-21 15:13:36','0',null,'2087'),
('458','30','893','39305','2102','2016-07-21 15:14:07','2016-07-21 15:44:53','0',null,'0','2','0','2016-07-21 15:13:36','0',null,null),
('459','31','894','39305','2097','2016-07-21 15:14:20','2016-07-21 15:44:55','0',null,'0','2','0','2016-07-21 15:13:36','0',null,null),
('460',null,'892','39306',null,'','','0','0','0','0','0','2016-07-21 15:14:25','1',null,'2087'),
('461',null,'893','39306',null,'','','0','0','0','0','0','2016-07-21 15:14:25','1',null,'2087'),
('462',null,'894','39306',null,'','','0','0','0','0','0','2016-07-21 15:14:25','1',null,'2087'),
('463',null,'892','39307',null,'','','0','0','0','0','0','2016-07-21 15:14:54','1',null,'2087'),
('464',null,'893','39307',null,'','','0','0','0','0','0','2016-07-21 15:14:54','1',null,'2087'),
('465',null,'894','39307',null,'','','0','0','0','0','0','2016-07-21 15:14:54','1',null,'2087'),
('466','29','892','39308','2100','2016-07-21 15:27:54','2016-07-21 16:59:58','1','0','0','2','0','2016-07-21 15:27:54','0',null,'2087'),
('467','30','893','39308','2103','2016-07-21 15:42:08','2016-07-21 18:27:03','0',null,'0','2','0','2016-07-21 15:27:54','0',null,null),
('468',null,'894','39308',null,'','','0','0','0','0','0','2016-07-21 15:27:54','0',null,'2087'),
('469',null,'892','39309',null,'','','0','0','0','0','0','2016-07-21 15:29:39','0',null,'2087'),
('470',null,'893','39309',null,'','','0','0','0','0','0','2016-07-21 15:29:39','0',null,'2087'),
('471',null,'894','39309',null,'','','0','0','0','0','0','2016-07-21 15:29:39','0',null,'2087'),
('472',null,'892','39310',null,'','','0','0','0','0','0','2016-07-21 15:29:42','0',null,'2087'),
('473',null,'893','39310',null,'','','0','0','0','0','0','2016-07-21 15:29:42','0',null,'2087'),
('474',null,'894','39310',null,'','','0','0','0','0','0','2016-07-21 15:29:42','0',null,'2087'),
('475',null,'892','39311',null,'','','0','0','0','0','0','2016-07-21 15:43:05','0',null,'2087'),
('476',null,'893','39311',null,'','','0','0','0','0','0','2016-07-21 15:43:05','0',null,'2087'),
('477',null,'894','39311',null,'','','0','0','0','0','0','2016-07-21 15:43:05','0',null,'2087'),
('478',null,'892','39312',null,'','','0','0','0','0','0','2016-07-21 15:43:09','0',null,'2087'),
('479',null,'893','39312',null,'','','0','0','0','0','0','2016-07-21 15:43:09','0',null,'2087'),
('480',null,'894','39312',null,'','','0','0','0','0','0','2016-07-21 15:43:09','0',null,'2087'),
('481',null,'1','39313','2091','','','0','0','0','2','0','2016-07-21 15:45:20','0',null,'2087'),
('482',null,'2','39313','2092','','','0','0','0','2','0','2016-07-21 15:45:20','0',null,'2087'),
('483','29','892','39314','2093','2016-07-21 15:50:10','2016-07-21 15:50:26','1',null,'0','2','0','2016-07-21 15:48:06','0',null,null),
('484','30','893','39314','2102','2016-07-21 15:50:03','2016-07-21 15:50:27','1',null,'0','2','0','2016-07-21 15:48:06','0',null,null),
('485','31','894','39314','2098','2016-07-21 15:48:06','2016-07-21 15:50:15','0','0','0','2','0','2016-07-21 15:48:06','0',null,'2087'),
('486','29','892','39315','2093','2016-07-21 15:54:12','2016-07-21 16:59:36','1',null,'0','2','0','2016-07-21 15:50:40','0',null,null),
('487',null,'893','39315',null,'','','0','0','0','0','0','2016-07-21 15:50:40','0',null,'2100'),
('488',null,'894','39315',null,'','','0','0','0','0','0','2016-07-21 15:50:40','0',null,'2100'),
('489','26','887','39316','2104','2016-07-21 16:29:48','','1','0','0','1','0','2016-07-21 16:29:48','1',null,'2085'),
('490',null,'888','39316',null,'','','0','0','0','0','0','2016-07-21 16:29:48','1',null,'2085'),
('491',null,'889','39316',null,'','','0','0','0','0','0','2016-07-21 16:29:48','1',null,'2085'),
('492','26','887','39317','2112','2016-07-21 16:33:16','2016-07-21 16:33:37','0','0','0','2','0','2016-07-21 16:33:16','1',null,'2085'),
('493',null,'888','39317',null,'','','0','0','0','0','0','2016-07-21 16:33:16','1',null,'2085'),
('494',null,'889','39317',null,'','','0','0','0','0','0','2016-07-21 16:33:16','1',null,'2085'),
('495','26','887','39318','2086','2016-07-21 16:35:17','2016-07-21 16:35:25','1',null,'0','2','0','2016-07-21 16:34:40','1',null,null),
('496','27','888','39318','2107','2016-07-21 16:34:40','2016-07-21 16:35:27','0','0','0','2','0','2016-07-21 16:34:40','1',null,'2085'),
('497',null,'889','39318',null,'','','0','0','0','0','0','2016-07-21 16:34:40','1',null,'2085'),
('498',null,'887','39319',null,'','','0','0','0','0','0','2016-07-21 16:35:44','1',null,'2112'),
('499',null,'888','39319',null,'','','0','0','0','0','0','2016-07-21 16:35:44','1',null,'2112'),
('500',null,'889','39319',null,'','','0','0','0','0','0','2016-07-21 16:35:44','1',null,'2112'),
('501','26','887','39320','2112','2016-07-21 16:38:56','','0','0','0','1','0','2016-07-21 16:38:56','1',null,'2085'),
('502',null,'888','39320',null,'','','0','0','0','0','0','2016-07-21 16:38:56','1',null,'2085'),
('503',null,'889','39320',null,'','','0','0','0','0','0','2016-07-21 16:38:56','1',null,'2085'),
('504','26','887','39322','2086','2016-07-21 17:01:15','2016-07-21 17:01:52','1',null,'0','2','0','2016-07-21 17:00:33','0',null,null),
('505','27','888','39322','2107','2016-07-21 17:01:23','2016-07-21 17:01:54','1',null,'0','2','0','2016-07-21 17:00:33','0',null,null),
('506','28','889','39322','2114','2016-07-21 17:00:33','2016-07-21 17:00:56','0','0','0','2','0','2016-07-21 17:00:33','0',null,'2085'),
('507','26','887','39324','2104','2016-07-23 11:42:09','2016-07-23 11:42:24','1',null,'0','2','0','2016-07-23 11:41:14','1',null,null),
('508','27','888','39324','2107','2016-07-23 11:42:20','','0',null,'0','1',null,'2016-07-23 11:41:14','1',null,null),
('509','28','889','39324','2114','2016-07-23 11:41:14','2016-07-23 11:41:39','0','0','0','2','0','2016-07-23 11:41:14','1',null,'2085'),
('510',null,'887','39325',null,'','','0','0','0','0','0','2016-07-23 11:41:45','1',null,'2112'),
('511',null,'888','39325',null,'','','0','0','0','0','0','2016-07-23 11:41:45','1',null,'2112'),
('512',null,'889','39325',null,'','','0','0','0','0','0','2016-07-23 11:41:45','1',null,'2112'),
('513',null,'887','39326',null,'','','0','0','0','0','0','2016-07-23 11:41:46','1',null,'2112'),
('514',null,'888','39326',null,'','','0','0','0','0','0','2016-07-23 11:41:46','1',null,'2112'),
('515',null,'889','39326',null,'','','0','0','0','0','0','2016-07-23 11:41:46','1',null,'2112'),
('516',null,'892','39327','2094','','','1','0','0','2','0','2016-07-25 16:58:32','0',null,'2087'),
('517',null,'893','39327',null,'','','0','0','0','2','0','2016-07-25 16:58:32','0',null,'2087'),
('518',null,'894','39327',null,'','','0','0','0','2','0','2016-07-25 16:58:32','0',null,'2087'),
('519',null,'887','39328','2086','','','1','0','0','2','0','2016-07-25 17:53:06','0',null,'2085'),
('520',null,'888','39328',null,'','','0','0','0','2','0','2016-07-25 17:53:06','0',null,'2085'),
('521',null,'889','39328',null,'','','0','0','0','2','0','2016-07-25 17:53:06','0',null,'2085'),
('522','26','887','39329','2086','2016-07-25 17:55:37','2016-07-29 14:19:54','1','0','0','2','0','2016-07-25 17:55:37','0',null,'2085'),
('523',null,'888','39329','2106','','','0','0','0','0','0','2016-07-25 17:55:37','0',null,'2085'),
('524',null,'889','39329',null,'','','0','0','0','0','0','2016-07-25 17:55:37','0',null,'2085'),
('525',null,'887','39330','2086','','','0','0','0','2','0','2016-07-25 17:55:19','0',null,'2085'),
('526',null,'888','39330',null,'','','0','0','0','2','0','2016-07-25 17:55:19','0',null,'2085'),
('527',null,'889','39330',null,'','','0','0','0','2','0','2016-07-25 17:55:19','0',null,'2085'),
('528',null,'887','39331','2086','','','1','0','0','2','0','2016-07-25 18:08:54','0',null,'2085'),
('529',null,'888','39331','2106','','','0','0','0','2','0','2016-07-25 18:08:54','0',null,'2085'),
('530',null,'889','39331',null,'','','0','0','0','2','0','2016-07-25 18:08:54','0',null,'2085'),
('531',null,'887','39332','2086','','','1','0','1','2','0','2016-07-25 23:16:27','0',null,'2085'),
('532',null,'888','39332',null,'','','0','0','0','2','0','2016-07-25 23:16:27','0',null,'2085'),
('533',null,'889','39332',null,'','','0','0','0','2','0','2016-07-25 23:16:27','0',null,'2085'),
('534','26','887','39333','2105','2016-07-25 23:19:07','','1',null,'0','1',null,'2016-07-25 23:17:28','1',null,null),
('535','27','888','39333','2106','2016-07-26 10:05:04','','0',null,'0','1',null,'2016-07-25 23:17:28','1',null,null),
('536','26','889','39333','2112','2016-07-25 23:18:09','2016-07-25 23:18:58','1',null,'0','2','0','2016-07-25 23:17:28','1',null,null),
('537',null,'887','39334',null,'','','0','0','0','0','0','2016-07-25 23:19:49','1',null,'2085'),
('538',null,'888','39334',null,'','','0','0','0','0','0','2016-07-25 23:19:49','1',null,'2085'),
('539',null,'889','39334',null,'','','0','0','0','0','0','2016-07-25 23:19:49','1',null,'2085'),
('540',null,'887','39335',null,'','','0','0','0','0','0','2016-07-25 23:29:10','1',null,'2112'),
('541',null,'888','39335',null,'','','0','0','0','0','0','2016-07-25 23:29:10','1',null,'2112'),
('542',null,'889','39335',null,'','','0','0','0','0','0','2016-07-25 23:29:10','1',null,'2112'),
('543',null,'887','39336','2112','','','1','0','1','2','0','2016-07-26 11:02:36','0',null,'2085'),
('544',null,'888','39336',null,'','','0','0','0','2','0','2016-07-26 11:02:36','0',null,'2085'),
('545',null,'889','39336',null,'','','0','0','0','2','0','2016-07-26 11:02:36','0',null,'2085'),
('546','26','887','39337','2112','2016-07-26 11:08:20','2016-07-26 11:45:04','0',null,'0','2','0','2016-07-26 11:06:28','1',null,null),
('547','26','888','39337','2105','2016-07-26 11:07:48','2016-07-28 22:44:05','0',null,'0','2','0','2016-07-26 11:06:28','1',null,null),
('548','26','889','39337','2112','2016-07-26 11:06:28','2016-07-26 11:07:10','0','0','0','2','0','2016-07-26 11:06:28','1',null,'2085'),
('549',null,'887','39338',null,'','','0','0','0','0','0','2016-07-26 11:08:27','1',null,'2085'),
('550',null,'888','39338',null,'','','0','0','0','0','0','2016-07-26 11:08:27','1',null,'2085'),
('551',null,'889','39338',null,'','','0','0','0','0','0','2016-07-26 11:08:27','1',null,'2085'),
('552',null,'887','39339','2104','','','0','0','0','2','0','2016-07-27 10:39:36','0',null,'2085'),
('553',null,'888','39339','2106','','','0','0','0','2','0','2016-07-27 10:39:36','0',null,'2085'),
('554',null,'889','39339','2106','','','0','0','0','2','0','2016-07-27 10:39:36','0',null,'2085'),
('555',null,'887','39340',null,'','','0','0','0','0','0','2016-07-28 13:13:35','1',null,'2085'),
('556',null,'888','39340',null,'','','0','0','0','0','0','2016-07-28 13:13:35','1',null,'2085'),
('557',null,'889','39340',null,'','','0','0','0','0','0','2016-07-28 13:13:35','1',null,'2085'),
('558',null,'887','39341','2086','','','1','0','0','2','0','2016-07-28 21:25:21','0',null,'2085'),
('559',null,'888','39341',null,'','','0','0','0','2','0','2016-07-28 21:25:21','0',null,'2085'),
('560',null,'889','39341',null,'','','0','0','0','2','0','2016-07-28 21:25:21','0',null,'2085'),
('561','26','887','39342','2105','2016-07-28 21:26:32','','0','0','0','1','0','2016-07-28 21:26:32','1',null,'2085'),
('562',null,'888','39342',null,'','','0','0','0','0','0','2016-07-28 21:26:32','1',null,'2085'),
('563','26','889','39342','2112','2016-07-28 21:28:41','2016-07-28 21:29:04','1',null,'0','2','0','2016-07-28 21:26:32','1',null,null),
('564',null,'887','39343','2112','','','1','0','0','2','0','2016-07-29 10:33:25','0',null,'2085'),
('565',null,'888','39343',null,'','','0','0','0','2','0','2016-07-29 10:33:25','0',null,'2085'),
('566',null,'889','39343',null,'','','0','0','0','2','0','2016-07-29 10:33:25','0',null,'2085'),
('567','26','887','39344','2112','2016-07-29 10:35:22','','0','0','0','1','0','2016-07-29 10:35:23','1',null,'2085'),
('568',null,'888','39344',null,'','','0','0','0','0','0','2016-07-29 10:35:23','1',null,'2085'),
('569','26','889','39344','2105','2016-07-29 10:35:51','','1',null,'0','1',null,'2016-07-29 10:35:23','1',null,null),
('570',null,'887','39347','2112','','','0','0','0','2','0','2016-07-29 16:16:29','0',null,'2085'),
('571',null,'888','39347','2106','','','0','0','0','2','0','2016-07-29 16:16:29','0',null,'2085'),
('572',null,'889','39347','2086','','','0','0','0','2','0','2016-07-29 16:16:29','0',null,'2085'),
('573','26','887','39348','2112','2016-07-29 16:17:54','2016-07-29 19:50:11','0','0','0','2','0','2016-07-29 16:17:54','1',null,'2085'),
('574','26','888','39348','2105','2016-07-29 16:19:39','','1',null,'0','1',null,'2016-07-29 16:17:54','1',null,null),
('575','27','889','39348','2106','2016-07-29 16:18:16','2016-07-29 16:19:25','0',null,'0','2','0','2016-07-29 16:17:54','1',null,null),
('576',null,'887','39349',null,'','','0','0','0','0','0','2016-07-29 16:20:07','1',null,'2085'),
('577',null,'888','39349',null,'','','0','0','0','0','0','2016-07-29 16:20:07','1',null,'2085'),
('578',null,'889','39349',null,'','','0','0','0','0','0','2016-07-29 16:20:07','1',null,'2085'),
('579',null,'887','39350','2112','','','1','0','0','2','0','2016-07-30 09:58:55','0',null,'2085'),
('580',null,'888','39350',null,'','','0','0','0','2','0','2016-07-30 09:58:55','0',null,'2085'),
('581',null,'889','39350',null,'','','0','0','0','2','0','2016-07-30 09:58:55','0',null,'2085'),
('582',null,'887','39351','2104','','','0','0','0','2','0','2016-07-30 10:25:43','0',null,'2085'),
('583',null,'888','39351','2106','','','0','0','0','2','0','2016-07-30 10:25:43','0',null,'2085'),
('584',null,'889','39351','2114','','','0','0','0','2','0','2016-07-30 10:25:43','0',null,'2085'),
('585',null,'887','39352','2104','','','0','0','0','2','0','2016-07-30 10:42:45','0',null,'2085'),
('586',null,'888','39352',null,'','','0','0','0','2','0','2016-07-30 10:42:45','0',null,'2085'),
('587',null,'889','39352',null,'','','0','0','0','2','0','2016-07-30 10:42:45','0',null,'2085'),
('588','26','887','39353','2112','2016-07-30 12:11:08','2016-07-30 12:19:07','1','0','1','2','0','2016-07-30 12:11:08','0',null,'2085'),
('589',null,'888','39353',null,'','','0','0','0','0','0','2016-07-30 12:11:08','0',null,'2085'),
('590',null,'889','39353',null,'','','0','0','0','0','0','2016-07-30 12:11:08','0',null,'2085'),
('591',null,'887','39354','2086','','','0','0','0','2','0','2016-07-30 12:18:12','0',null,'2085'),
('592',null,'888','39354',null,'','','0','0','0','2','0','2016-07-30 12:18:12','0',null,'2085'),
('593',null,'889','39354','2113','','','0','0','0','2','0','2016-07-30 12:18:12','0',null,'2085'),
('594','26','887','39355','2104','2016-08-01 12:39:31','2016-08-01 14:44:19','0',null,'0','2','0','2016-08-01 12:39:18','1',null,null),
('595','32','888','39355','2108','2016-08-01 12:53:51','','0',null,'0','1',null,'2016-08-01 12:39:18','1',null,null),
('596',null,'889','39355',null,'','','0','0','0','0','0','2016-08-01 12:39:18','1',null,'2139'),
('597','26','887','39356','2112','2016-08-01 14:44:42','2016-08-01 14:44:55','1',null,'0','2','0','2016-08-01 12:39:21','1',null,null),
('598','26','888','39356','2086','2016-08-01 14:45:41','','1',null,'0','1',null,'2016-08-01 12:39:21','1',null,null),
('599',null,'889','39356',null,'','','0','0','0','0','0','2016-08-01 12:39:21','1',null,'2139'),
('600',null,'887','39357',null,'','','0','0','0','0','0','2016-08-01 12:53:54','1',null,'2139'),
('601',null,'888','39357',null,'','','0','0','0','0','0','2016-08-01 12:53:54','1',null,'2139'),
('602',null,'889','39357',null,'','','0','0','0','0','0','2016-08-01 12:53:54','1',null,'2139'),
('603',null,'887','39358','2086','','','1','0','0','2','0','2016-08-01 14:27:25','0',null,'2139'),
('604',null,'888','39358','2105','','','1','0','0','2','0','2016-08-01 14:27:25','0',null,'2139'),
('605',null,'889','39358','2106','','','0','0','0','2','0','2016-08-01 14:27:25','0',null,'2139'),
('606',null,'887','39359',null,'','','0','0','0','0','0','2016-08-01 14:46:01','1',null,'2112'),
('607',null,'888','39359',null,'','','0','0','0','0','0','2016-08-01 14:46:01','1',null,'2112'),
('608',null,'889','39359',null,'','','0','0','0','0','0','2016-08-01 14:46:01','1',null,'2112'),
('609',null,'887','39360',null,'','','0','0','0','0','0','2016-08-01 14:46:15','1',null,'2112'),
('610',null,'888','39360',null,'','','0','0','0','0','0','2016-08-01 14:46:15','1',null,'2112'),
('611',null,'889','39360',null,'','','0','0','0','0','0','2016-08-01 14:46:15','1',null,'2112'),
('612','26','887','39361','2104','2016-08-01 14:47:11','','0','0','0','1','0','2016-08-01 14:47:11','1',null,'2139'),
('613','26','888','39361','2104','2016-08-01 14:47:11','','0','0','0','1','0','2016-08-01 14:47:11','1',null,'2139'),
('614','27','889','39361','2106','2016-08-01 14:47:11','','0','0','0','1','0','2016-08-01 14:47:11','1',null,'2139'),
('615',null,'887','39362',null,'','','0','0','0','0','0','2016-08-01 14:54:18','0',null,'2085'),
('616',null,'888','39362',null,'','','0','0','0','0','0','2016-08-01 14:54:18','0',null,'2085'),
('617','28','889','39362','2114','2016-08-01 14:54:18','2016-08-01 14:55:51','0','0','0','2','0','2016-08-01 14:54:18','0',null,'2085'),
('618',null,'887','39363','2104','','','0','0','0','2','0','2016-08-01 15:00:32','0',null,'2085'),
('619',null,'888','39363',null,'','','0','0','0','2','0','2016-08-01 15:00:32','0',null,'2085'),
('620',null,'889','39363',null,'','','0','0','0','2','0','2016-08-01 15:00:32','0',null,'2085'),
('621','26','887','39364','2086','2016-08-01 15:05:39','','0','0','0','1','0','2016-08-01 15:05:39','1',null,'2145'),
('622','28','888','39364','2105','2016-08-01 15:05:39','','0','0','0','1','0','2016-08-01 15:05:39','1',null,'2145'),
('623','28','889','39364','2105','2016-08-01 15:05:39','2016-08-01 15:05:46','0','0','0','2','0','2016-08-01 15:05:39','1',null,'2145'),
('624','29','892','39366','2100','2016-08-01 15:06:54','2016-08-01 15:36:03','1','0','0','2','0','2016-08-01 15:06:54','0',null,'2087'),
('625','31','893','39366','2097','2016-08-01 15:07:33','','0',null,'0','1',null,'2016-08-01 15:06:54','0',null,null),
('626',null,'894','39366',null,'','','0','0','0','0','0','2016-08-01 15:06:54','0',null,'2087'),
('627',null,'892','39367',null,'','','0','0','0','0','0','2016-08-01 15:07:09','0',null,'2087'),
('628',null,'893','39367',null,'','','0','0','0','0','0','2016-08-01 15:07:09','0',null,'2087'),
('629',null,'894','39367',null,'','','0','0','0','0','0','2016-08-01 15:07:09','0',null,'2087'),
('630',null,'887','39368',null,'','','0','0','0','0','0','2016-08-01 15:07:42','1',null,'2145'),
('631','28','888','39368','2107','2016-08-01 15:07:42','','0','0','0','1','0','2016-08-01 15:07:42','1',null,'2145'),
('632','28','889','39368','2107','2016-08-01 15:07:42','','0','0','0','1','0','2016-08-01 15:07:42','1',null,'2145'),
('633',null,'887','39369',null,'','','0','0','0','0','0','2016-08-01 15:08:10','0',null,'2145'),
('634',null,'888','39369',null,'','','0','0','0','0','0','2016-08-01 15:08:10','0',null,'2145'),
('635','28','889','39369','2108','2016-08-01 15:08:10','','0','0','0','1','0','2016-08-01 15:08:10','0',null,'2145'),
('636',null,'887','39370','2104','','','0','0','0','2','0','2016-08-01 15:07:40','0',null,'2145'),
('637',null,'888','39370','2106','','','0','0','0','2','0','2016-08-01 15:07:40','0',null,'2145'),
('638',null,'889','39370',null,'','','0','0','0','2','0','2016-08-01 15:07:40','0',null,'2145'),
('639','26','887','39371','2104','2016-08-01 15:09:56','2016-08-01 15:48:21','0','0','0','2','0','2016-08-01 15:09:56','1',null,'2145'),
('640','26','888','39371','2086','2016-08-03 13:43:23','2016-08-03 13:43:29','0',null,'0','2','0','2016-08-01 15:09:56','1',null,null),
('641','26','889','39371','2112','2016-08-03 13:43:37','2016-08-03 13:43:40','1',null,'0','2','0','2016-08-01 15:09:56','1',null,null),
('642',null,'887','39372','2104','','','0','0','0','2','0','2016-08-01 15:08:55','0',null,'2085'),
('643',null,'888','39372',null,'','','0','0','0','2','0','2016-08-01 15:08:55','0',null,'2085'),
('644',null,'889','39372',null,'','','0','0','0','2','0','2016-08-01 15:08:55','0',null,'2085'),
('645',null,'1','39373','2086','','','0','0','0','2','0','2016-08-01 15:10:03','0',null,'2085'),
('646',null,'2','39373','2106','','','0','0','0','2','0','2016-08-01 15:10:03','0',null,'2085'),
('647',null,'1','39373','2107','','','0','0','0','2','0','2016-08-01 15:10:03','0',null,'2085'),
('648',null,'887','39376','2086','','','1','0','1','2','0','2016-08-01 15:36:46','0',null,'2085'),
('649',null,'888','39376',null,'','','0','0','0','2','0','2016-08-01 15:36:46','0',null,'2085'),
('650',null,'889','39376',null,'','','0','0','0','2','0','2016-08-01 15:36:46','0',null,'2085'),
('651',null,'887','39377',null,'','','0','0','0','0','0','2016-08-01 15:48:31','1',null,'2139'),
('652',null,'888','39377',null,'','','0','0','0','0','0','2016-08-01 15:48:31','1',null,'2139'),
('653',null,'889','39377',null,'','','0','0','0','0','0','2016-08-01 15:48:31','1',null,'2139'),
('654',null,'1222','39379','2124','','','0','0','0','2','0','2016-08-01 16:12:23','0',null,'2123'),
('655',null,'1223','39379',null,'','','0','0','0','2','0','2016-08-01 16:12:23','0',null,'2123'),
('656',null,'1224','39379','2127','','','0','0','0','2','0','2016-08-01 16:12:23','0',null,'2123'),
('657',null,'1222','39380','2124','','','0','0','0','2','0','2016-08-01 16:12:23','0',null,'2123'),
('658',null,'1223','39380',null,'','','0','0','0','2','0','2016-08-01 16:12:23','0',null,'2123'),
('659',null,'1224','39380','2127','','','0','0','0','2','0','2016-08-01 16:12:23','0',null,'2123'),
('660','74','1222','39381','2124','2016-08-01 16:39:05','','0','0','0','1','0','2016-08-01 16:39:05','1',null,'2123'),
('661',null,'1223','39381',null,'','','0','0','0','0','0','2016-08-01 16:39:05','1',null,'2123'),
('662','77','1224','39381','2127','2016-08-01 16:39:05','','0','0','0','1','0','2016-08-01 16:39:05','1',null,'2123'),
('663','74','1222','39382','2124','2016-08-01 16:45:36','2016-08-01 16:46:03','0','0','0','2','0','2016-08-01 16:45:36','1',null,'2123'),
('664',null,'1223','39382',null,'','','0','0','0','0','0','2016-08-01 16:45:36','1',null,'2123'),
('665','77','1224','39382','2127','2016-08-01 16:45:36','','0','0','0','1','0','2016-08-01 16:45:36','1',null,'2123'),
('666',null,'1222','39383',null,'','','0','0','0','0','0','2016-08-01 16:46:14','1',null,'2123'),
('667',null,'1223','39383',null,'','','0','0','0','0','0','2016-08-01 16:46:14','1',null,'2123'),
('668','77','1224','39383','2127','2016-08-01 16:46:38','','0',null,'0','1',null,'2016-08-01 16:46:14','1',null,null),
('669','74','1222','39384','2124','2016-08-01 16:50:02','2016-08-01 18:07:23','1','0','0','2','0','2016-08-01 16:50:02','1',null,'2123'),
('670',null,'1223','39384',null,'','','0','0','0','0','0','2016-08-01 16:50:02','1',null,'2123'),
('671','77','1224','39384','2127','2016-08-01 16:50:02','','0','0','0','1','0','2016-08-01 16:50:02','1',null,'2123'),
('672',null,'1222','39385',null,'','','0','0','0','0','0','2016-08-01 16:50:12','1',null,'2123'),
('673',null,'1223','39385',null,'','','0','0','0','0','0','2016-08-01 16:50:12','1',null,'2123'),
('674',null,'1224','39385','2127','','','0','0','0','0','0','2016-08-01 16:50:12','1',null,'2123'),
('675','74','1222','39386','2129','2016-08-01 16:54:59','','0','0','0','1','0','2016-08-01 16:54:59','1',null,'2123'),
('676',null,'1223','39386',null,'','','0','0','0','0','0','2016-08-01 16:54:59','1',null,'2123'),
('677',null,'1224','39386',null,'','','0','0','0','0','0','2016-08-01 16:54:59','1',null,'2123'),
('678',null,'1222','39387','2124','','','1','0','0','2','0','2016-08-01 16:56:44','1',null,'2123'),
('679',null,'1223','39387',null,'','','0','0','0','2','0','2016-08-01 16:56:44','1',null,'2123'),
('680',null,'1224','39387',null,'','','0','0','0','2','0','2016-08-01 16:56:44','1',null,'2123'),
('681','74','1222','39388','2124','2016-08-01 16:56:36','','0','0','0','1','0','2016-08-01 16:56:36','1',null,'2123'),
('682','74','1223','39388','2124','2016-08-01 16:56:36','','0','0','0','1','0','2016-08-01 16:56:36','1',null,'2123'),
('683','77','1224','39388','2127','2016-08-01 16:56:36','','0','0','0','1','0','2016-08-01 16:56:36','1',null,'2123'),
('684',null,'887','39389',null,'','','0','0','0','0','0','2016-08-03 13:43:05','1',null,'2113'),
('685',null,'888','39389',null,'','','0','0','0','0','0','2016-08-03 13:43:05','1',null,'2113'),
('686',null,'889','39389',null,'','','0','0','0','0','0','2016-08-03 13:43:05','1',null,'2113'),
('687',null,'887','39390',null,'','','0','0','0','0','0','2016-08-03 13:44:35','1',null,'2113'),
('688',null,'888','39390',null,'','','0','0','0','0','0','2016-08-03 13:44:35','1',null,'2113'),
('689',null,'889','39390',null,'','','0','0','0','0','0','2016-08-03 13:44:35','1',null,'2113'),
('690',null,'887','39391',null,'','','0','0','0','0','0','2016-08-03 13:44:51','1',null,'2113'),
('691',null,'888','39391',null,'','','0','0','0','0','0','2016-08-03 13:44:51','1',null,'2113'),
('692',null,'889','39391',null,'','','0','0','0','0','0','2016-08-03 13:44:51','1',null,'2113'),
('693',null,'887','39392','2086','','','0','0','0','2','0','2016-08-03 13:44:36','0',null,'2145'),
('694',null,'888','39392',null,'','','0','0','0','2','0','2016-08-03 13:44:36','0',null,'2145'),
('695',null,'889','39392',null,'','','0','0','0','2','0','2016-08-03 13:44:36','0',null,'2145'),
('696','26','887','39393','2086','2016-08-03 13:50:38','2016-08-03 13:50:51','1','0','0','2','0','2016-08-03 13:50:38','0',null,'2145'),
('697','28','888','39393','2114','2016-08-03 13:51:01','2016-08-03 13:51:04','0',null,'0','2','0','2016-08-03 13:50:38','0',null,null),
('698',null,'889','39393',null,'','','0','0','0','0','0','2016-08-03 13:50:38','0',null,'2145'),
('699',null,'887','39394','2086','','','1','0','0','2','0','2016-08-03 13:51:38','0',null,'2145'),
('700',null,'888','39394',null,'','','0','0','0','2','0','2016-08-03 13:51:38','0',null,'2145'),
('701',null,'889','39394',null,'','','0','0','0','2','0','2016-08-03 13:51:38','0',null,'2145'),
('702',null,'1222','39395',null,'','','0','0','1','2','0','2016-08-03 13:56:51','0',null,'2123'),
('703',null,'1223','39395',null,'','','0','0','0','2','0','2016-08-03 13:56:51','0',null,'2123'),
('704',null,'1224','39395',null,'','','0','0','0','2','0','2016-08-03 13:56:51','0',null,'2123'),
('705','74','1222','39396','2125','2016-08-03 13:57:26','','0','0','0','1','0','2016-08-03 13:57:26','0',null,'2123'),
('706',null,'1223','39396',null,'','','0','0','0','0','0','2016-08-03 13:57:26','0',null,'2123'),
('707','77','1224','39396','2127','2016-08-03 13:57:26','','0','0','0','1','0','2016-08-03 13:57:26','0',null,'2123'),
('708',null,'1222','39397',null,'','','0','0','0','0','0','2016-08-03 13:57:41','0',null,'2123'),
('709',null,'1223','39397',null,'','','0','0','0','0','0','2016-08-03 13:57:41','0',null,'2123'),
('710',null,'1224','39397','2127','','','0','0','0','0','0','2016-08-03 13:57:41','0',null,'2123'),
('711',null,'1222','39398',null,'','','0','0','0','0','0','2016-08-03 13:57:41','1',null,'2123'),
('712',null,'1223','39398',null,'','','0','0','0','0','0','2016-08-03 13:57:41','1',null,'2123'),
('713',null,'1224','39398',null,'','','0','0','0','0','0','2016-08-03 13:57:41','1',null,'2123');
DROP TABLE IF EXISTS  `stock_flow`;
CREATE TABLE `stock_flow` (
  `stock_flow_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '库存流水表',
  `stock_type` int(11) DEFAULT NULL COMMENT '库存流水方式(1:入库,2:出库,3:调拨)',
  `flow_type` varchar(32) DEFAULT NULL COMMENT '[入库{1:正常入库,2:客户退货},出库{1:正常出库,2:供应商退货,3:损坏,4:赠送,5:领用}]',
  `stock_count` varchar(11) DEFAULT NULL COMMENT '数量(,分割)',
  `create_time` char(19) DEFAULT NULL COMMENT '流水时间',
  `from_store` int(11) DEFAULT NULL COMMENT '货源门店ID',
  `to_store` int(11) DEFAULT NULL COMMENT '走货门店ID',
  `a_ids` varchar(1024) DEFAULT NULL COMMENT '企业商品ID集合(,分割)',
  `operation_staff` int(11) DEFAULT NULL COMMENT '操作人标示(0标示企业,其余为员工id)',
  `library_object` int(11) DEFAULT NULL COMMENT '出库员工',
  `stock_desc` text COMMENT '备注信息',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `store_account` varchar(32) DEFAULT NULL COMMENT '企业代号',
  PRIMARY KEY (`stock_flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COMMENT='商品库存流水表';

insert into `stock_flow`(`stock_flow_id`,`stock_type`,`flow_type`,`stock_count`,`create_time`,`from_store`,`to_store`,`a_ids`,`operation_staff`,`library_object`,`stock_desc`,`is_deleted`,`store_account`) values
('68','1','正常入库','2','2016-07-17',null,'1180','42',null,null,'','0','laowang'),
('69','1','正常入库','20','2016-07-18',null,'1180','44',null,null,'采购','0','wisdom'),
('70','1','正常入库','20','2016-07-18',null,'1180','43',null,null,'','0','wisdom'),
('71','1','正常入库','20','2016-07-18',null,'1180','45',null,null,'','0','wisdom'),
('72','1','正常入库','20','2016-07-18',null,'1180','46',null,null,'','0','wisdom'),
('73','1','正常入库','20','2016-07-18',null,'1180','47',null,null,'','0','wisdom'),
('74','1','正常入库','20','2016-07-18',null,'1180','48',null,null,'','0','wisdom'),
('75','1','正常入库','20','2016-07-18',null,'1180','49',null,null,'','0','wisdom'),
('76','1','正常入库','20','2016-07-18',null,'1180','50',null,null,'','0','wisdom'),
('77','1','正常入库','20','2016-07-18',null,'1180','51',null,null,'','0','wisdom'),
('78','1','正常入库','20','2016-07-18',null,'1180','52',null,null,'','0','wisdom'),
('79','1','正常入库','20','2016-07-18',null,'1180','52',null,null,'','0','wisdom'),
('80','2','正常出库','20','2016-07-18','1180',null,'52',null,'2086','','0','wisdom'),
('81','1','正常入库','20','2016-07-18',null,'1181','43',null,null,'','0','wisdom'),
('82','1','正常入库','20','2016-07-18',null,'1181','43',null,null,'','0','wisdom'),
('83','2','正常出库','20','2016-07-18','1181',null,'43',null,'2086','','0','wisdom'),
('84','1','正常入库','20','2016-07-18',null,'1181','44',null,null,'','0','wisdom'),
('85','1','正常入库','20','2016-07-18',null,'1181','45',null,null,'','0','wisdom'),
('86','1','正常入库','20','2016-07-18',null,'1181','46',null,null,'','0','wisdom'),
('87','1','正常入库','20','2016-07-18',null,'1181','47',null,null,'','0','wisdom'),
('88','1','正常入库','20','2016-07-18',null,'1181','48',null,null,'','0','wisdom'),
('89','1','正常入库','20','2016-07-18',null,'1181','49',null,null,'','0','wisdom'),
('90','1','正常入库','20','2016-07-18',null,'1181','50',null,null,'','0','wisdom'),
('91','1','正常入库','20','2016-07-18',null,'1181','51',null,null,'','0','wisdom'),
('92','1','正常入库','20','2016-07-18',null,'1181','52',null,null,'','0','wisdom'),
('93','1','正常入库','20','2016-07-18',null,'1182','43',null,null,'','0','wisdom'),
('94','1','正常入库','20','2016-07-18',null,'1182','44',null,null,'','0','wisdom'),
('95','1','正常入库','20','2016-07-18',null,'1182','45',null,null,'','0','wisdom'),
('96','1','正常入库','20','2016-07-18',null,'1182','46',null,null,'','0','wisdom'),
('97','1','正常入库','20','2016-07-18',null,'1182','47',null,null,'','0','wisdom'),
('98','1','正常入库','20','2016-07-18',null,'1182','48',null,null,'','0','wisdom'),
('99','1','正常入库','20','2016-07-18',null,'1182','49',null,null,'','0','wisdom'),
('100','1','正常入库','20','2016-07-18',null,'1182','50',null,null,'','0','wisdom'),
('101','1','正常入库','20','2016-07-18',null,'1182','51',null,null,'','0','wisdom'),
('102','1','正常入库','20','2016-07-18',null,'1182','52',null,null,'','0','wisdom'),
('103','3',null,'2','2016-07-26','1180','1181','43',null,null,'','0','wisdom'),
('104','1','正常入库','20','2016-07-26',null,'1183','53',null,null,'','0','Artist'),
('105','2','正常出库','10','2016-07-26','1183',null,'53',null,'2117','','0','Artist'),
('106','1','正常入库','20','2016-07-28',null,'1209','54',null,null,'就不就不就不结婚不结婚不结婚不结婚号北京号北京看病就回家 看那看哭了','0','xiaomin'),
('107','1','正常入库','20','2016-07-28',null,'1209','55',null,null,'','0','xiaomin'),
('108','2','正常出库','10','2016-07-28','1209',null,'55',null,null,'','0','xiaomin'),
('109','2','正常出库','10','2016-07-28','1209',null,'54',null,null,'','0','xiaomin'),
('110','2','正常出库','5','2016-07-28','1209',null,'55',null,null,'','0','xiaomin'),
('111','1','正常入库','1000','2016-07-28',null,'1209','55',null,null,'','0','xiaomin'),
('112','1','正常入库','50','2016-07-29',null,'1180','43',null,null,'','0','wisdom'),
('113','3',null,'20','2016-07-29','1180','1181','43',null,null,'','0','wisdom'),
('114','1','正常入库','20','2016-07-29',null,'1209','57',null,null,'','0','xiaomin'),
('115','2','正常出库','1000','2016-07-29','1209',null,'55',null,'2130','','0','xiaomin'),
('116','2','正常出库','2','2016-07-29','1209',null,'54',null,'2130','','0','xiaomin'),
('117','3',null,'20,10','2016-08-01','1180','1247','43,44',null,null,'','0','wisdom');
DROP TABLE IF EXISTS  `initialize_info`;
CREATE TABLE `initialize_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `dept_name` char(50) DEFAULT NULL COMMENT '部门名称',
  `incometype_type` int(11) DEFAULT NULL COMMENT '1收入2支出',
  `type` char(50) DEFAULT NULL COMMENT '收支类别名称',
  `type_name` char(50) DEFAULT NULL COMMENT '收支方式',
  `goods_price` decimal(8,2) DEFAULT NULL COMMENT '金额',
  `note` char(50) DEFAULT NULL COMMENT '备注',
  `isDeleted` int(11) DEFAULT NULL COMMENT '0正常1删除',
  `store_id` int(11) DEFAULT NULL COMMENT '门店识别',
  `date` char(50) DEFAULT NULL COMMENT '时间',
  `price_name` char(50) DEFAULT NULL COMMENT '收支名称',
  `initialize_image` char(100) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS  `member_combo_project`;
CREATE TABLE `member_combo_project` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '详情标识',
  `record_id` int(11) NOT NULL COMMENT '记录标识',
  `combo_id` int(11) NOT NULL COMMENT '套餐标识',
  `project_id` int(11) NOT NULL COMMENT '项目标识',
  `project_name` varchar(10) DEFAULT NULL COMMENT '项目名称',
  `project_price` decimal(8,2) DEFAULT NULL COMMENT '项目价格',
  `project_image` varchar(255) DEFAULT NULL COMMENT '项目图片',
  `project_count` int(11) DEFAULT NULL COMMENT '项目数量',
  `remaining_count` int(11) DEFAULT NULL COMMENT '剩余数量',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='会员套餐项目明细表';

insert into `member_combo_project`(`detail_id`,`record_id`,`combo_id`,`project_id`,`project_name`,`project_price`,`project_image`,`project_count`,`remaining_count`,`create_time`,`is_deleted`,`update_time`,`last_operator_id`) values
('5','5','14','3208','造型',38.00,null,'10','10','2016-08-01 15:10:19','0','2016-08-01 15:10:19','2085'),
('6','5','14','3216','炫彩美甲',100.00,null,'5','5','2016-08-01 15:10:19','0','2016-08-01 15:10:19','2085'),
('7','5','14','3217','手部护理',100.00,null,'5','5','2016-08-01 15:10:19','0','2016-08-01 15:10:19','2085');
DROP TABLE IF EXISTS  `project_info`;
CREATE TABLE `project_info` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目标识',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级项目id',
  `store_id` int(11) DEFAULT NULL COMMENT '门店标识',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门标识',
  `category_id` int(11) DEFAULT NULL COMMENT '类别标识',
  `hairstyle_id` int(11) DEFAULT NULL COMMENT '发型设置标识',
  `project_name` varchar(10) DEFAULT NULL COMMENT '项目名称',
  `project_image` varchar(255) DEFAULT NULL COMMENT '项目图片',
  `project_type` int(11) DEFAULT '1' COMMENT '项目类型(1：大项，2：小项)',
  `project_desc` text COMMENT '项目描述',
  `project_price` decimal(8,2) DEFAULT NULL COMMENT '项目价格',
  `cost_price` decimal(8,2) DEFAULT '0.00' COMMENT '成本价格',
  `performance_calculate` decimal(8,2) DEFAULT '0.00' COMMENT '业绩计算',
  `appointment_price` decimal(8,2) DEFAULT '0.00' COMMENT '预约价格',
  `sales_count` int(11) DEFAULT '0' COMMENT '销售次数',
  `sales_people` int(11) DEFAULT '0' COMMENT '销售人数',
  `is_appointment` int(11) DEFAULT '0' COMMENT '是否接受预约(0:否,1:是)',
  `is_wechat_sell` int(11) DEFAULT '0' COMMENT '是否微信销售(0:否,1:是)',
  `is_disable` int(11) DEFAULT '0' COMMENT '是否禁用(0:未禁用,1:已禁用)',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除(0:未删除,1:已删除)',
  `is_update` int(11) DEFAULT '1' COMMENT '是否有权限修改(0：不可修改，1：可修改)',
  `is_gift_cash` int(11) DEFAULT '1' COMMENT '是否可以用礼金抵扣(0：否，1：是)',
  `is_groupbuy` int(11) DEFAULT NULL COMMENT '是否团购(0：否，1：是)',
  `groupbuy_price` decimal(8,2) DEFAULT NULL COMMENT '团购价格',
  `groupbuy_results` decimal(8,2) DEFAULT NULL COMMENT '团购业绩',
  `groupbuy_platform` varchar(255) DEFAULT NULL COMMENT '团购平台',
  `create_time` char(19) DEFAULT NULL COMMENT '创建时间',
  `update_time` char(19) DEFAULT NULL COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  `affiliated_image` varchar(1000) DEFAULT NULL COMMENT '附属图片',
  `highest_discount` decimal(8,2) DEFAULT '0.00' COMMENT '礼金最大抵扣金额',
  `project_step` int(11) DEFAULT '1' COMMENT '项目编辑步骤',
  `project_code_suffix` char(6) DEFAULT NULL COMMENT '项目编号',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3265 DEFAULT CHARSET=utf8mb4 COMMENT='项目信息';

insert into `project_info`(`project_id`,`parent_id`,`store_id`,`dept_id`,`category_id`,`hairstyle_id`,`project_name`,`project_image`,`project_type`,`project_desc`,`project_price`,`cost_price`,`performance_calculate`,`appointment_price`,`sales_count`,`sales_people`,`is_appointment`,`is_wechat_sell`,`is_disable`,`is_deleted`,`is_update`,`is_gift_cash`,`is_groupbuy`,`groupbuy_price`,`groupbuy_results`,`groupbuy_platform`,`create_time`,`update_time`,`last_operator_id`,`affiliated_image`,`highest_discount`,`project_step`,`project_code_suffix`) values
('3204',null,'1180','481','1117',null,'洗头','jobwisdom/project/1468730688304','1','<p>水电费水电费水电费</p>',20.00,0.00,0.00,0.00,'0','0','0','0','0','1','1','0',null,null,null,null,null,null,null,'',0.00,'1','11223'),
('3205',null,'1181','485','1131',null,'欧莱雅蛋白护理','jobwisdom/project/1468826897042','1','',null,0.00,0.00,0.00,'0','0','1','0','0','1','1','1',null,null,null,null,null,null,null,'',0.00,'1','0007'),
('3206',null,'1180','482','1119',null,'中式洗头','jobwisdom/project/1468829172932','1','<p>普通洗头服务</p>',38.00,0.00,0.00,35.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',5.00,'1','01'),
('3207',null,'1180','482','1119',null,'泰式洗头','jobwisdom/project/1468829836683','1','<p>泰式专业按摩加洗头服务</p>',58.00,0.00,0.00,55.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','02'),
('3208',null,'1180','482','1120',null,'造型','jobwisdom/project/1468830134991','1','<p>普通剪发吹发</p>',38.00,0.00,0.00,35.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',5.00,'1','03'),
('3209',null,'1180','482','1120',null,'造型','jobwisdom/project/1468830692120','1','<p>造型设计</p>',68.00,0.00,0.00,65.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',5.00,'1','04'),
('3210',null,'1180','482','1122',null,'离子烫','jobwisdom/project/1468830644587','1','<p>离子烫<br/></p>',500.00,0.00,0.00,500.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',20.00,'1','05'),
('3211',null,'1180','482','1122',null,'冷烫','jobwisdom/project/1468835127527','1','<p>冷烫</p>',500.00,0.00,0.00,500.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',50.00,'1','06'),
('3212',null,'1180','482','1122',null,'热烫','jobwisdom/project/1468835241379','1','',0.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','07'),
('3213',null,'1180','481','1117',null,'面部全面护理','jobwisdom/project/1468837179992','1','',180.00,0.00,0.00,10.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','08'),
('3214',null,'1180','481','1117',null,'补水护理','jobwisdom/project/1468837325786','1','',100.00,0.00,0.00,10.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','09'),
('3215',null,'1180','481','1117',null,'美白护理','jobwisdom/project/1468837392137','1','',100.00,0.00,0.00,10.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','10'),
('3216',null,'1180','483','1124',null,'炫彩美甲','jobwisdom/project/1468837554510','1','',100.00,0.00,0.00,10.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','11'),
('3217',null,'1180','481','1117',null,'手部护理','jobwisdom/project/1468837716989','1','',100.00,0.00,0.00,10.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','12'),
('3218',null,'1181','486','1134',null,'瑞士抗衰老护肤','jobwisdom/project/1468985044894','1','',null,0.00,0.00,0.00,'0','0','1','0','0','1','1','1',null,null,null,null,null,null,null,'',0.00,'1','00010'),
('3219',null,'1181','485','1128',null,'洗剪吹造型','jobwisdom/project/1468985281545','1','',null,0.00,0.00,0.00,'0','0','1','0','0','1','1','1',null,null,null,null,null,null,null,'',0.00,'1','002'),
('3220',null,'1181','485','1127',null,'洗吹造型','jobwisdom/project/1468985565459','1','',80.00,0.00,0.00,5.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',5.00,'1','001'),
('3221',null,'1181','485','1128',null,'洗剪吹造型','jobwisdom/project/1468985692977','1','',180.00,0.00,0.00,20.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','002'),
('3222',null,'1181','485','1129',null,'欧莱雅染发','jobwisdom/project/1468985868056','1','',580.00,0.00,0.00,20.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',20.00,'1','003'),
('3223',null,'1181','485','1129',null,'欧莱雅艺术挑染','jobwisdom/project/1468986310779','1','',780.00,0.00,0.00,20.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',20.00,'1','004'),
('3224',null,'1181','485','1130',null,'欧莱雅冷烫造型','jobwisdom/project/1468986470278','1','',680.00,0.00,0.00,10.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','005'),
('3225',null,'1181','485','1130',null,'欧莱雅热烫造型','jobwisdom/project/1468986652333','1','',1680.00,0.00,0.00,50.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',50.00,'1','006'),
('3226',null,'1181','486','1134',null,'瑞士美白补水','jobwisdom/project/1468986838817','1','',1280.00,0.00,0.00,50.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',50.00,'1','201'),
('3227',null,'1181','486','1134',null,'瑞士抗衰老','jobwisdom/project/1468986950844','1','',6800.00,0.00,0.00,100.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',100.00,'1','202'),
('3228',null,'1180','482','1119',null,'6565','jobwisdom/project/1469079849897','1','',null,0.00,0.00,0.00,'0','0','1','0','0','1','1','1',null,null,null,null,null,null,null,'',0.00,'1',''),
('3229',null,'1183','491','1146',null,'生命果中发','jobwisdom/project/1469524351773','1','<p>巴西生命果顺发护理</p><p>1、秀发0毛躁，柔顺效果持久90天。</p><p>2、卷发能护理能不卷，也能保持波浪卷的同时做到零毛躁柔顺。</p><p>3、改善发质，发丝越做越强韧，告别脆弱、易折断。</p><p>4、提高头发光泽，具备防晒、防热、抗潮湿、抗干燥、0静电。</p><p>5、做后随时洗头不变形，随时扎起不留印。</p>',2000.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','002'),
('3230',null,'1183','491','1146',null,'生命果长发','jobwisdom/project/1469523105174','1','<p style="white-space: normal;">巴西生命果顺发护理</p><p style="white-space: normal;">1、秀发0毛躁，柔顺效果持久90天。</p><p style="white-space: normal;">2、卷发能护理能不卷，也能保持波浪卷的同时做到零毛躁柔顺。</p><p style="white-space: normal;">3、改善发质，发丝越做越强韧，告别脆弱、易折断。</p><p style="white-space: normal;">4、提高头发光泽，具备防晒、防热、抗潮湿、抗干燥、0静电。</p><p style="white-space: normal;">5、做后随时洗头不变形，随时扎起不留印。</p><p><br/></p>',2500.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','001'),
('3231',null,'1180','481','1117',null,'sdsadas','jobwisdom/project/1469443595769','1','<p>sasasasas</p>',0.00,0.00,0.00,0.00,'0','0','1','0','0','1','1','1',null,null,null,null,null,null,null,'',0.00,'1','sadas'),
('3232',null,'1183','491','1146',null,'生命果短发','jobwisdom/project/1469525123233','1','<p>巴西生命果顺发护理</p><p>1、秀发0毛躁，柔顺效果持久90天。</p><p>2、卷发能护理能不卷，也能保持波浪卷的同时做到零毛躁柔顺。</p><p>3、改善发质，发丝越做越强韧，告别脆弱、易折断。</p><p>4、提高头发光泽，具备防晒、防热、抗潮湿、抗干燥、0静电。</p><p>5、做后随时洗头不变形，随时扎起不留印。</p><p><br/></p>',1500.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','003'),
('3233',null,'1183','491','1146',null,'BK-长发','jobwisdom/project/1469525540634','1','',1200.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','004'),
('3234',null,'1183','491','1146',null,'BK-中发','jobwisdom/project/1469525900575','1','',1000.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','005'),
('3235',null,'1183','491','1146',null,'BK-短发','jobwisdom/project/1469526039412','1','',800.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','006'),
('3236',null,'1183','491','1147',null,'资生堂热烫－长发','jobwisdom/project/1469526362209','1','',1700.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','007'),
('3237',null,'1183','491','1147',null,'资生堂热烫－中发','jobwisdom/project/1469526573250','1','',1350.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','008'),
('3238',null,'1183','491','1147',null,'资生堂热烫－短发','jobwisdom/project/1469526765592','1','',1000.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','009'),
('3239',null,'1183','491','1148',null,'玫丽盼染发－长发','jobwisdom/project/1469527068389','1','',1700.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','010'),
('3240',null,'1183','491','1147',null,'玫丽盼染发－中发','jobwisdom/project/1469527261145','1','',1350.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','011'),
('3241',null,'1183','491','1147',null,'玫丽盼染发－短发','jobwisdom/project/1469527415249','1','',1000.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','012'),
('3242',null,'1183','491','1148',null,'TG-长发','jobwisdom/project/1469527921387','1','',900.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','013'),
('3243',null,'1183','491','1148',null,'TG-中发','jobwisdom/project/1469528060649','1','',800.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','014'),
('3244',null,'1183','491','1148',null,'TG-短发','jobwisdom/project/1469528161478','1','',700.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','015'),
('3245',null,'1183','491','1147',null,'施华蔻烫发-长发','jobwisdom/project/1469528328342','1','',900.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','016'),
('3246',null,'1183','491','1147',null,'施华蔻烫发-中发','jobwisdom/project/1469528418460','1','',800.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','017'),
('3247',null,'1183','491','1147',null,'施华蔻烫发-短发','jobwisdom/project/1469528568516','1','',700.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','018'),
('3248',null,'1183','491','1150',null,'玫丽盼3+1长发','jobwisdom/project/1469528975277','1','',1300.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','019'),
('3249',null,'1183','491','1150',null,'玫丽盼3+1中发','jobwisdom/project/1469529190208','1','',1100.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','020'),
('3250',null,'1183','491','1150',null,'玫丽盼3+1短发','jobwisdom/project/1469529319804','1','',800.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','021'),
('3251',null,'1183','491','1150',null,'施华蔻护理','jobwisdom/project/1469529469416','1','',380.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','022'),
('3252',null,'1183','491','1149',null,'艺术总监剪发','jobwisdom/project/1469529595712','1','',360.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','023'),
('3253',null,'1183','491','1149',null,'创意总监剪发','jobwisdom/project/1469529682298','1','',260.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','024'),
('3254',null,'1183','491','1149',null,'高级总监剪发','jobwisdom/project/1469529784334','1','',160.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','025'),
('3255',null,'1183','491','1149',null,'艺术/创意洗吹','jobwisdom/project/1469529888376','1','',100.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','026'),
('3256',null,'1183','491','1149',null,'高级总监洗吹','jobwisdom/project/1469530046172','1','',60.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','027'),
('3257',null,'1209','494',null,null,'ssasa','jobwisdom/project/1469760611988','1','<p>sss<br/></p>',0.00,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1','001'),
('3258',null,'1209','494',null,null,'','jobwisdom/project/1469760963153','1','',null,0.00,0.00,0.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',0.00,'1',''),
('3259',null,'1247','499','1160',null,'手部护理','jobwisdom/project/1470017490568','1','',88.00,40.00,0.00,78.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','001'),
('3260',null,'1247','499','1160',null,'美白护理','jobwisdom/project/1470017599626','1','',200.00,100.00,0.00,180.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',20.00,'1','002'),
('3261',null,'1247','498','1159',null,'离子烫','jobwisdom/project/1470017679955','1','',380.00,200.00,0.00,358.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',20.00,'1','003'),
('3262',null,'1247','498','1158',null,'泰式洗头','jobwisdom/project/1470017762169','1','',58.00,28.00,0.00,48.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','004'),
('3263',null,'1247','500','1162',null,'炫彩美甲','jobwisdom/project/1470017823238','1','',88.00,48.00,0.00,78.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','005'),
('3264',null,'1247','498','1155',null,'造型设计','jobwisdom/project/1470017895455','1','',98.00,38.00,0.00,78.00,'0','0','1','0','0','0','1','1',null,null,null,null,null,null,null,'',10.00,'1','006');
DROP TABLE IF EXISTS  `ubox_goods_info`;
CREATE TABLE `ubox_goods_info` (
  `ubox_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友宝商品标识',
  `ubox_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '友宝商品名称',
  `ubox_original_price` int(11) DEFAULT '0' COMMENT '友宝商品原价',
  `ubox_sale_price` int(11) DEFAULT '0' COMMENT '友宝商品售价',
  `ubox_stock` int(11) DEFAULT '0' COMMENT '友宝商品库存',
  `ubox_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '友宝商品图片',
  `ubox_desc` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '友宝商品描述',
  `ubox_expire_time` int(11) DEFAULT NULL COMMENT '友宝售卖截止时间，unix时间戳，商品不可售卖、不再可取',
  `goods_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '商品名称',
  `goods_picture_array` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '商品图片集合，逗号分割',
  `goods_desc` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '商品描述',
  `goods_sales` int(11) DEFAULT '0' COMMENT '商品销量',
  `create_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建时间',
  `update_time` char(19) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '修改时间',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作人标识',
  PRIMARY KEY (`ubox_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='友宝商品信息表';

DROP TABLE IF EXISTS  `member_error_hc`;
CREATE TABLE `member_error_hc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `level_name` varchar(60) DEFAULT NULL,
  `level_num` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `balance_amount` decimal(8,2) DEFAULT '0.00',
  `store_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `last_operator_id` int(11) DEFAULT NULL,
  `update_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;

