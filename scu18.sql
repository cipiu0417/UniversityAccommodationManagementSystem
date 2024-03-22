/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80028
Source Host           : localhost:3306
Source Database       : scu18

Target Server Type    : MYSQL
Target Server Version : 80028
File Encoding         : 65001

Date: 2023-07-02 21:45:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `admin_sn` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '张三', '123456', '0', '2023-06-24 17:39:28', '2023-06-25 09:33:04');
INSERT INTO `admin` VALUES ('2', 'hhh', '123457', '0', '2023-06-24 17:39:45', '2023-06-25 09:33:09');
INSERT INTO `admin` VALUES ('3', '郑', '123458', '0', '2023-06-24 17:41:02', '2023-06-25 09:33:14');

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sn` varchar(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `counsellor_checked` tinyint(1) DEFAULT '0',
  `houseparent_checked` tinyint(1) DEFAULT '0',
  `progress` varchar(50) DEFAULT NULL,
  `campus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `building` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `room_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES ('40', '2020001', '换宿申请', '换宿', '1', '0', '审核未通过', '东园', '2栋', '211', '0', '2023-06-30 10:48:31', '2023-07-02 16:36:49');
INSERT INTO `application` VALUES ('41', '2020001', '退宿申请', '退宿', '1', '0', '审核通过', null, null, null, '0', '2023-06-30 10:48:42', '2023-07-01 16:56:53');
INSERT INTO `application` VALUES ('42', '2020001', '入住申请', '5', '1', '0', '审核通过', '东园', '1栋', '502', '0', '2023-06-30 11:51:52', '2023-06-30 14:47:39');
INSERT INTO `application` VALUES ('44', '2020002', '入住申请', 'jjjj', '1', '0', '审核通过', '西园', '1栋', '505', '0', '2023-06-30 17:33:34', '2023-06-30 18:08:25');
INSERT INTO `application` VALUES ('45', '2020004', '入住申请', '入住申请', '1', '1', '审核未通过', '西园', '6栋', '601', '0', '2023-07-02 15:36:46', '2023-07-02 17:24:29');
INSERT INTO `application` VALUES ('46', '2020009', '入住申请', '申请入住', '1', '0', '待审核', '西园', '1栋', '102', '0', '2023-07-02 16:25:45', '2023-07-02 19:06:10');
INSERT INTO `application` VALUES ('47', '2020004', '换宿申请', '换寝室', '1', '1', '审核通过', '西园', '2栋', '501', '0', '2023-07-02 16:44:46', '2023-07-02 17:08:07');
INSERT INTO `application` VALUES ('48', '2020004', '换宿申请', '换宿', '0', '0', '待审核', '西园', '2栋', '501', '0', '2023-07-02 17:24:00', '2023-07-02 17:24:00');
INSERT INTO `application` VALUES ('49', '2020004', '退宿申请', 'XXXX', '1', '0', '审核未通过', null, null, null, '0', '2023-07-02 17:26:08', '2023-07-02 17:27:35');
INSERT INTO `application` VALUES ('50', '2020001', '换宿申请', 'XXXXX', '1', '0', '审核未通过', '西园', '1栋', '205', '0', '2023-07-02 19:01:18', '2023-07-02 19:05:53');

-- ----------------------------
-- Table structure for checkin
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sn` varchar(20) DEFAULT NULL,
  `room_id` bigint DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES ('6', '2020001', '2', '0', '2023-06-30 14:47:39', '2023-07-02 10:05:12');
INSERT INTO `checkin` VALUES ('14', '2020002', '6', '0', '2023-06-30 18:08:25', '2023-07-02 10:05:16');
INSERT INTO `checkin` VALUES ('15', '2020003', '6', '0', '2023-07-01 09:18:26', '2023-07-01 09:18:26');
INSERT INTO `checkin` VALUES ('16', '2020004', '1', '0', '2023-07-01 09:18:50', '2023-07-02 10:05:48');
INSERT INTO `checkin` VALUES ('17', '2020003', '6', '0', '2023-07-01 09:18:58', '2023-07-01 09:18:58');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app_id` bigint DEFAULT NULL,
  `approver_sn` varchar(20) DEFAULT NULL,
  `result` tinyint(1) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_record2` (`app_id`),
  CONSTRAINT `FK_record2` FOREIGN KEY (`app_id`) REFERENCES `application` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('14', '40', '09100001', '0', '', '0', '2023-06-30 11:07:47', '2023-06-30 11:07:47');
INSERT INTO `log` VALUES ('15', '41', '09100001', '1', null, '0', '2023-06-30 11:14:00', '2023-06-30 11:14:00');
INSERT INTO `log` VALUES ('16', '42', '09100001', '1', null, '0', '2023-06-30 14:44:44', '2023-06-30 14:44:44');
INSERT INTO `log` VALUES ('17', '42', '09100001', '1', null, '0', '2023-06-30 14:47:39', '2023-06-30 14:47:39');
INSERT INTO `log` VALUES ('18', '44', '09100001', '1', null, '0', '2023-06-30 17:45:59', '2023-06-30 17:45:59');
INSERT INTO `log` VALUES ('19', '45', '0910004', '1', null, '0', '2023-07-02 16:21:45', '2023-07-02 16:21:45');
INSERT INTO `log` VALUES ('20', '45', '0910004', '1', null, '0', '2023-07-02 16:22:35', '2023-07-02 16:22:35');

-- ----------------------------
-- Table structure for maintain_application
-- ----------------------------
DROP TABLE IF EXISTS `maintain_application`;
CREATE TABLE `maintain_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `progress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `maintain_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `maintain_time` datetime DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maintainer_sn` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of maintain_application
-- ----------------------------
INSERT INTO `maintain_application` VALUES ('12', '2020001', '门锁坏了', '维修完成', '22222222222', '门窗', '2023-06-30 02:00:00', '222', '0', '2023-06-30 11:00:19', '2023-07-02 10:30:45', '77880001');
INSERT INTO `maintain_application` VALUES ('13', '2020001', 'ccc', '维修完成', '44444444444', '门窗', '2023-06-30 02:00:00', 'xxx', '0', '2023-06-30 11:01:59', '2023-07-01 10:44:15', '77880001');
INSERT INTO `maintain_application` VALUES ('16', '2020001', '桌子抽屉拉不开', '维修完成', '22333333321', '桌椅', '2023-07-01 02:00:00', 'xxxxx', '0', '2023-07-01 11:25:21', '2023-07-02 10:31:02', '77880002');
INSERT INTO `maintain_application` VALUES ('17', '2020004', 'xxxxxx', '等待维修', '19980836666', '空调', '2023-07-02 02:00:00', 'xxxxx', '0', '2023-07-02 17:58:40', '2023-07-02 19:09:05', '7788002');
INSERT INTO `maintain_application` VALUES ('18', '2020002', 'xxxxx', '维修完成', '12222222222', '电灯', '2023-07-02 02:00:00', 'xxx', '0', '2023-07-02 18:29:11', '2023-07-02 19:09:31', '7788001');
INSERT INTO `maintain_application` VALUES ('19', '2020001', 'xxx', '待分配', '19999999999', '卫生间', '2023-07-02 02:00:00', 'xxx', '0', '2023-07-02 19:05:09', '2023-07-02 19:05:09', null);

-- ----------------------------
-- Table structure for maintain_record
-- ----------------------------
DROP TABLE IF EXISTS `maintain_record`;
CREATE TABLE `maintain_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `application_id` bigint DEFAULT NULL,
  `maintainer_sn` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of maintain_record
-- ----------------------------
INSERT INTO `maintain_record` VALUES ('5', '12', '77880002', 'xxx', '等待维修', '0', '2023-06-30 15:07:14', '2023-06-30 15:07:14');
INSERT INTO `maintain_record` VALUES ('6', '13', '77880001', 'xxx', '等待维修', '0', '2023-06-30 17:24:16', '2023-06-30 17:24:16');
INSERT INTO `maintain_record` VALUES ('7', '16', '77880001', 'xxx', '等待维修', '0', '2023-07-01 11:27:38', '2023-07-01 11:27:38');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `houseparent_sn` varchar(20) DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '55660001', '重要通知', '今天停水停电，请同学们做好准备', '0', '2023-06-28 16:17:52', '2023-06-28 17:33:45');
INSERT INTO `notice` VALUES ('2', '123456789', '震惊！这里面竟然有大学问！！！', '其实是有什么我也不知道', '0', '2023-06-28 16:45:59', '2023-06-28 16:45:59');
INSERT INTO `notice` VALUES ('3', '123456789', '新通知', '这是一条新通知', '0', '2023-06-28 17:33:33', '2023-06-28 17:33:33');
INSERT INTO `notice` VALUES ('4', '55660001', 'xxx', 'xxx', '0', '2023-06-30 11:54:07', '2023-06-30 11:54:07');
INSERT INTO `notice` VALUES ('5', '55660001', 'xxx', 'xxx', '0', '2023-06-30 11:56:11', '2023-06-30 11:56:11');
INSERT INTO `notice` VALUES ('6', '55660001', 'xxx', 'xxx', '1', '2023-06-30 11:56:50', '2023-06-30 23:23:19');
INSERT INTO `notice` VALUES ('7', '5566001', 'xxx', 'xxxxx', '0', '2023-07-02 19:07:59', '2023-07-02 19:07:59');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `campus` varchar(20) DEFAULT NULL,
  `building` varchar(20) DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `room_number` varchar(10) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `gender` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rent` int DEFAULT NULL,
  `houseparent_sn` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('1', '西园', '1栋', '1', '101', '4', '女寝', '800', '5566001', '0', '2023-06-25 09:36:42', '2023-07-02 09:45:00');
INSERT INTO `room` VALUES ('2', '西园', '6栋', '2', '201', '6', '男寝', '600', '5566002', '0', '2023-06-25 09:38:06', '2023-07-02 09:46:07');
INSERT INTO `room` VALUES ('3', '东园', '3栋', '5', '501', '2', '女寝', '1200', '5566003', '0', '2023-06-25 10:15:40', '2023-07-02 09:49:32');
INSERT INTO `room` VALUES ('4', '东园', '4栋', '5', '502', '4', '女寝', '400', '5566003', '0', '2023-06-25 14:16:38', '2023-07-02 09:46:26');
INSERT INTO `room` VALUES ('5', '东园', '4栋', '4', '403', '4', '女寝', '600', '5566003', '0', '2023-06-25 14:16:38', '2023-07-02 09:46:33');
INSERT INTO `room` VALUES ('6', '东园', '1栋', '5', '502', '4', '女寝', '1200', '5566003', '0', '2023-06-25 14:16:38', '2023-07-02 09:46:52');
INSERT INTO `room` VALUES ('7', '西园', '1栋', '2', '205', '4', '女寝', '600', '5566001', '0', '2023-06-25 14:16:38', '2023-07-02 09:49:09');
INSERT INTO `room` VALUES ('8', '东园', '5栋', '3', '302', '4', '女寝', '1200', '5566003', '0', '2023-06-25 14:16:39', '2023-07-02 09:47:02');
INSERT INTO `room` VALUES ('9', '东园', '8栋', '4', '402', '6', '男寝', '600', '5566004', '0', '2023-06-25 14:16:39', '2023-07-02 09:47:18');
INSERT INTO `room` VALUES ('10', '西园', '1栋', '1', '102', '2', '女寝', '1200', '5566001', '0', '2023-06-25 14:16:39', '2023-07-02 09:47:38');
INSERT INTO `room` VALUES ('28', '西园', '7栋', '2', '207', '4', '男寝', '800', '5566002', '0', '2023-06-26 17:00:05', '2023-07-02 09:48:03');
INSERT INTO `room` VALUES ('31', '西园', '1栋', '1', '505', '4', '女寝', '800', '5566001', '0', '2023-06-29 18:08:44', '2023-07-02 09:48:17');
INSERT INTO `room` VALUES ('32', '西园', '6栋', '3', '302', '6', '男寝', '600', '5566002', '0', '2023-06-29 18:09:10', '2023-07-02 09:48:51');
INSERT INTO `room` VALUES ('33', '西园', '2栋', '5', '501', '4', '女寝', '800', '5566001', '0', '2023-07-01 09:18:29', '2023-07-02 09:49:18');
INSERT INTO `room` VALUES ('34', '西园', '6栋', '6', '601', '4', '女寝', '1200', '5566001', '0', '2023-07-02 16:33:46', '2023-07-02 16:33:46');

-- ----------------------------
-- Table structure for sanitation_record
-- ----------------------------
DROP TABLE IF EXISTS `sanitation_record`;
CREATE TABLE `sanitation_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint DEFAULT NULL,
  `people_sn` varchar(20) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `room_score` int DEFAULT NULL,
  `balcony_score` int DEFAULT NULL,
  `toilet_score` int DEFAULT NULL,
  `week` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sanitation_rake` (`room_id`),
  CONSTRAINT `FK_sanitation_rake` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sanitation_record
-- ----------------------------
INSERT INTO `sanitation_record` VALUES ('1', '1', '5566001', '95', '1', '2023-06-28 10:10:40', '2023-07-02 10:23:11', '50', '100', '84', '1');
INSERT INTO `sanitation_record` VALUES ('2', '3', '5566003', '95', '0', '2023-06-28 10:11:10', '2023-07-02 10:19:56', '100', '80', '97', '1');
INSERT INTO `sanitation_record` VALUES ('3', '4', '5566003', '100', '0', '2023-06-28 10:11:11', '2023-07-02 10:22:39', '95', '87', '88', '1');
INSERT INTO `sanitation_record` VALUES ('4', '2', '5566002', '60', '0', '2023-06-28 10:11:29', '2023-07-02 15:51:12', '78', '92', '72', '1');
INSERT INTO `sanitation_record` VALUES ('5', '6', '5566003', '75', '0', '2023-06-28 11:08:28', '2023-07-02 10:23:45', '61', '90', '77', '1');
INSERT INTO `sanitation_record` VALUES ('8', '2', '5566002', '88', '0', '2023-06-30 10:15:13', '2023-07-02 15:50:45', '55', '61', '92', '1');
INSERT INTO `sanitation_record` VALUES ('9', '5', '5566003', '59', '0', '2023-07-01 09:41:38', '2023-07-02 15:50:30', '57', '68', '77', '1');
INSERT INTO `sanitation_record` VALUES ('10', '5', '5566003', '92', '0', '2023-07-01 14:28:55', '2023-07-02 15:50:36', '88', '96', '90', '2');
INSERT INTO `sanitation_record` VALUES ('11', '1', '5566001', '92', '0', '2023-07-02 15:51:52', '2023-07-02 15:51:52', '56', '95', '86', '2');
INSERT INTO `sanitation_record` VALUES ('12', '1', '5566001', '93', '0', '2023-07-02 15:52:23', '2023-07-02 15:52:23', '68', '96', '86', '3');
INSERT INTO `sanitation_record` VALUES ('13', '1', '5566001', '95', '0', '2023-07-02 15:52:49', '2023-07-02 15:52:55', '89', '95', '92', '4');
INSERT INTO `sanitation_record` VALUES ('14', '1', '5566003', '90', '0', '2023-07-02 18:31:38', '2023-07-02 18:31:38', '90', '90', '90', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sn` varchar(20) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  `counsellor_sn` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role_type` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2020001', '123456', '山治', '2020', '1', '法学院', '0910001', '19912345678', '1', '0', '2023-06-25 09:39:10', '2023-07-02 09:14:26');
INSERT INTO `user` VALUES ('5', '000001', 'admin', '鲁达', null, '0', null, null, '13169852332', '5', '0', '2023-06-25 16:07:37', '2023-07-02 09:10:54');
INSERT INTO `user` VALUES ('6', '2020002', '123456', '张一', '2020', '0', '华西药学院', '0910002', '15523220145', '1', '0', '2023-06-25 16:08:29', '2023-07-02 09:14:14');
INSERT INTO `user` VALUES ('7', '0910001', 'teacher', '胡二', null, '1', '法学院', null, '19912345668', '2', '0', '2023-06-25 16:09:02', '2023-07-02 09:32:09');
INSERT INTO `user` VALUES ('8', '5566001', 'suguan', '罗三', null, '0', null, null, '18812345668', '3', '0', '2023-06-25 16:09:55', '2023-07-02 09:44:18');
INSERT INTO `user` VALUES ('9', '7788001', 'maintain', '夏奇', null, '1', null, null, '18112345667', '4', '0', '2023-06-25 16:10:27', '2023-07-02 09:44:20');
INSERT INTO `user` VALUES ('10', '5566002', 'suguan', '刘梅', null, '1', null, null, '15562345778', '3', '0', '2023-06-28 16:44:39', '2023-07-02 10:43:27');
INSERT INTO `user` VALUES ('11', '7788002', 'maintain', '王路飞', null, '0', null, null, '17212345668', '4', '0', '2023-06-28 17:28:27', '2023-07-02 09:44:25');
INSERT INTO `user` VALUES ('12', '0910002', 'teacher', '唐三', null, '0', '华西药学院', null, '19912345819', '2', '0', '2023-07-01 09:23:03', '2023-07-02 09:50:36');
INSERT INTO `user` VALUES ('13', '2020003', '123456', '李一', '2020', '0', '经济学院', '0910003', '19912543686', '1', '0', '2023-07-02 09:10:22', '2023-07-02 09:18:47');
INSERT INTO `user` VALUES ('14', '2020004', '123456', '王璐', '2020', '0', '计算机学院', '0910004', '18112325657', '1', '0', '2023-07-02 09:15:02', '2023-07-02 09:33:06');
INSERT INTO `user` VALUES ('15', '2020005', '123456', '王文嘉', '2020', '1', '材料科学与工程学院', '0910005', '15867895778', '1', '0', '2023-07-02 09:19:40', '2023-07-02 09:33:57');
INSERT INTO `user` VALUES ('16', '2020006', '123456', '刘欣', '2020', '0', '交通学院', '0910006', '19012543686', '1', '0', '2023-07-02 09:20:48', '2023-07-02 09:34:34');
INSERT INTO `user` VALUES ('17', '2020007', '123456', '梅腾飞', '2020', '1', '管理学院', '0910007', '13108762332', '1', '0', '2023-07-02 09:21:37', '2023-07-02 09:35:12');
INSERT INTO `user` VALUES ('18', '2020008', '123456', '程珏', '2020', '0', '经济学院', '0910003', '18169852359', '1', '0', '2023-07-02 09:21:44', '2023-07-02 09:39:18');
INSERT INTO `user` VALUES ('19', '2020009', '123456', '柳艺凡', '2020', '0', '法学院', '0910001', '13869857625', '1', '0', '2023-07-02 09:21:51', '2023-07-02 09:35:35');
INSERT INTO `user` VALUES ('20', '2020010', '123456', '黄旭斌', '2020', '1', '管理学院', '0910007', '17112005657', '1', '0', '2023-07-02 09:22:01', '2023-07-02 09:33:40');
INSERT INTO `user` VALUES ('21', '2020011', '123456', '王墨池', '2020', '1', '交通学院', '0910006', '19912543868', '1', '0', '2023-07-02 09:22:12', '2023-07-02 09:34:45');
INSERT INTO `user` VALUES ('22', '2020012', '123456', '巴甜', '2020', '0', '法学院', '0910001', '15563145908', '1', '0', '2023-07-02 09:22:24', '2023-07-02 09:34:11');
INSERT INTO `user` VALUES ('23', '2020013', '123456', '肖文珊', '2020', '0', '交通学院', '0910006', '13169852300', '1', '0', '2023-07-02 09:22:34', '2023-07-02 09:35:21');
INSERT INTO `user` VALUES ('24', '2020014', '123456', '范玉琪', '2020', '0', '管理学院', '0910007', '18212320650', '1', '0', '2023-07-02 09:22:44', '2023-07-02 09:33:28');
INSERT INTO `user` VALUES ('25', '2020015', '123456', '朱峰', '2020', '1', '计算机学院', '0910004', '19012000686', '1', '0', '2023-07-02 09:22:51', '2023-07-02 09:34:58');
INSERT INTO `user` VALUES ('26', '2020016', '123456', '石丽莎', '2020', '0', '经济学院', '0910003', '17562345887', '1', '0', '2023-07-02 09:23:15', '2023-07-02 09:34:25');
INSERT INTO `user` VALUES ('27', '5566003', 'suguan', '刘宁', null, '0', null, null, '18789890022', '3', '0', '2023-07-02 10:41:38', '2023-07-02 10:43:04');
INSERT INTO `user` VALUES ('28', '5566004', 'suguan', '马得福', null, '1', null, null, '15772536682', '3', '0', '2023-07-02 10:41:50', '2023-07-02 10:43:08');
INSERT INTO `user` VALUES ('29', '0910003', 'teacher', '廖瑞', null, '1', '经济学院', null, '15899116030', '2', '0', '2023-07-02 10:43:52', '2023-07-02 10:45:09');
INSERT INTO `user` VALUES ('30', '0910004', 'teacher', '李梦', null, '0', '计算机学院', null, '17077257389', '2', '0', '2023-07-02 10:44:07', '2023-07-02 10:45:24');
INSERT INTO `user` VALUES ('31', '0910005', 'teacher', '董晔', null, '0', '材料科学与工程学院', null, '13380293348', '4', '0', '2023-07-02 10:45:49', '2023-07-02 15:55:30');
INSERT INTO `user` VALUES ('32', '0910006', 'teacher', '高鹏', null, '1', '交通学院', null, '12432461131', '2', '0', '2023-07-02 10:46:01', '2023-07-02 15:55:38');
INSERT INTO `user` VALUES ('33', '0910007', 'teacher', '蒋静逸', null, '0', '管理学院', null, '13283251414', '3', '0', '2023-07-02 10:46:09', '2023-07-02 15:55:41');
INSERT INTO `user` VALUES ('34', '2020017', '123456', '张良培', '2020', '0', '交通学院', '0910006', '17872923006', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('35', '2020018', '123456', '史文强', '2020', '0', '交通学院', '0910006', '17872923007', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('36', '2020019', '123456', '王志', '2020', '0', '交通学院', '0910006', '17872923008', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('37', '2020020', '123456', '刘凡', '2020', '0', '交通学院', '0910006', '17872923009', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('38', '2020021', '123456', '王锴', '2020', '0', '交通学院', '0910006', '17872923010', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('39', '2020022', '123456', '郑俊国', '2020', '0', '交通学院', '0910006', '17872923011', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('40', '2020023', '123456', '夏云飞', '2020', '0', '交通学院', '0910006', '17872923012', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('41', '2020024', '123456', '张一珩', '2020', '0', '交通学院', '0910006', '17872923013', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('42', '2020025', '123456', '汤铭', '2020', '0', '计算机学院', '0910004', '17872923014', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('43', '2020026', '123456', '张涛', '2020', '0', '计算机学院', '0910004', '17872923015', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('44', '2020027', '123456', '王宇腾', '2020', '0', '计算机学院', '0910004', '17872923016', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('45', '2020028', '123456', '孙子琛', '2020', '0', '计算机学院', '0910004', '17872923017', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('46', '2020029', '123456', '韩号斌', '2020', '0', '计算机学院', '0910004', '17872923018', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('47', '2020030', '123456', '牛英超', '2020', '0', '计算机学院', '0910004', '17872923019', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('48', '2020031', '123456', '刘昊卿', '2020', '0', '计算机学院', '0910004', '17872923020', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('49', '2020032', '123456', '陆树峰', '2020', '0', '计算机学院', '0910004', '17872923021', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('50', '2020033', '123456', '杨凡', '2020', '0', '计算机学院', '0910004', '17872923022', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('51', '2020034', '123456', '许钒', '2020', '0', '计算机学院', '0910004', '17872923023', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('52', '2020035', '123456', '杜云峰', '2020', '0', '计算机学院', '0910004', '17872923024', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('53', '2020036', '123456', '赵博珣', '2020', '0', '计算机学院', '0910004', '17872923025', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('54', '2020037', '123456', '陈锋', '2020', '0', '计算机学院', '0910004', '17872923026', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('55', '2020038', '123456', '曹天培', '2020', '0', '计算机学院', '0910004', '17872923027', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('56', '2020039', '123456', '余展', '2020', '0', '计算机学院', '0910004', '17872923028', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('57', '2020040', '123456', '李晓飞', '2020', '0', '计算机学院', '0910004', '17872923029', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('58', '2020041', '123456', '袁诗民', '2020', '0', '计算机学院', '0910004', '17872923030', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('59', '2020042', '123456', '黄普', '2020', '0', '计算机学院', '0910004', '17872923031', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('60', '2020043', '123456', '曹永强', '2020', '0', '计算机学院', '0910004', '17872923032', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('61', '2020044', '123456', '郑杰', '2020', '0', '经济学院', '0910003', '17872923033', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('62', '2020045', '123456', '梁耀鸿', '2020', '0', '经济学院', '0910003', '17872923034', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('63', '2020046', '123456', '王宇昕', '2020', '0', '经济学院', '0910003', '17872923035', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('64', '2020047', '123456', '董炎', '2020', '0', '经济学院', '0910003', '17872923036', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('65', '2020048', '123456', '向倚天', '2020', '0', '经济学院', '0910003', '17872923037', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('66', '2020049', '123456', '叶里夏提·苏毕', '2020', '0', '经济学院', '0910003', '17872923038', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('67', '2020050', '123456', '郑俊国', '2020', '0', '经济学院', '0910003', '17872923039', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('68', '2020051', '123456', '蒋正东', '2020', '0', '经济学院', '0910003', '17872923040', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('69', '2020052', '123456', '荆明亮', '2020', '0', '经济学院', '0910003', '17872923041', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('70', '2020053', '123456', '李狄聪', '2020', '0', '经济学院', '0910003', '17872923042', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('71', '2020054', '123456', '彭敬华', '2020', '0', '经济学院', '0910003', '17872923043', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('72', '2020055', '123456', '李晶', '2020', '0', '经济学院', '0910003', '17872923044', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('73', '2020056', '123456', '欧阳众', '2020', '0', '经济学院', '0910003', '17872923045', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('74', '2020057', '123456', '苏昊', '2020', '0', '经济学院', '0910003', '17872923046', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('75', '2020058', '123456', '黄强', '2020', '0', '经济学院', '0910003', '17872923047', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('76', '2020059', '123456', '叶占豪', '2020', '0', '经济学院', '0910003', '17872923048', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('77', '2020060', '123456', '袁培德', '2020', '0', '经济学院', '0910003', '17872923049', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('78', '2020061', '123456', '田坤', '2020', '0', '管理学院', '0910007', '17872923050', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('79', '2020062', '123456', '陈超', '2020', '0', '管理学院', '0910007', '17872923051', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('80', '2020063', '123456', '汪家正', '2020', '0', '管理学院', '0910007', '17872923052', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('81', '2020064', '123456', '张骞', '2020', '0', '管理学院', '0910007', '17872923053', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('82', '2020065', '123456', '王景辉', '2020', '0', '管理学院', '0910007', '17872923054', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('83', '2020066', '123456', '胡俊', '2020', '0', '管理学院', '0910007', '17872923055', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('84', '2020067', '123456', '郭鑫', '2020', '0', '管理学院', '0910007', '17872923056', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('85', '2020068', '123456', '伍绍林', '2020', '0', '管理学院', '0910007', '17872923057', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('86', '2020069', '123456', '黄聪', '2020', '0', '管理学院', '0910007', '17872923058', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('87', '2020070', '123456', '王杰', '2020', '0', '管理学院', '0910007', '17872923059', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('88', '2020071', '123456', '孙小龙', '2020', '0', '管理学院', '0910007', '17872923060', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('89', '2020072', '123456', '李天元', '2020', '0', '管理学院', '0910007', '17872923061', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('90', '2020073', '123456', '夏腾远', '2020', '0', '管理学院', '0910007', '17872923062', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('91', '2020074', '123456', '陈龙', '2020', '0', '法学院', '0910001', '17872923063', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('92', '2020075', '123456', '谭良佳', '2020', '0', '法学院', '0910001', '17872923064', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('93', '2020076', '123456', '董正钦', '2020', '0', '法学院', '0910001', '17872923065', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('94', '2020077', '123456', '杨荣', '2020', '0', '法学院', '0910001', '17872923066', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('95', '2020078', '123456', '贾叮叮', '2020', '0', '法学院', '0910001', '17872923067', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('96', '2020079', '123456', '赵蕙珉', '2020', '0', '法学院', '0910001', '17872923068', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('97', '2020080', '123456', '杨润秋', '2020', '0', '法学院', '0910001', '17872923069', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('98', '2020081', '123456', '李逸菲', '2020', '0', '法学院', '0910001', '17872923070', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('99', '2020082', '123456', '白帆', '2020', '0', '法学院', '0910001', '17872923071', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('100', '2020083', '123456', '汪亚楠', '2020', '0', '法学院', '0910001', '17872923072', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('101', '2020084', '123456', '乐云', '2020', '0', '法学院', '0910001', '17872923073', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('102', '2020085', '123456', '黄琛奕', '2020', '0', '法学院', '0910001', '17872923074', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('103', '2020086', '123456', '苏柳', '2020', '0', '法学院', '0910001', '17872923075', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('104', '2020087', '123456', '李靖', '2020', '0', '交通学院', '0910006', '17872923076', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('105', '2020088', '123456', '李诗杰', '2020', '0', '交通学院', '0910006', '17872923077', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:29:32');
INSERT INTO `user` VALUES ('106', '2020089', '123456', '舒铭铭', '2020', '1', '交通学院', '0910006', '17872923078', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('107', '2020090', '123456', '黄馨瑶', '2020', '1', '交通学院', '0910006', '17872923079', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('108', '2020091', '123456', '刘晓蒙', '2020', '1', '交通学院', '0910006', '17872923080', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('109', '2020092', '123456', '王冬', '2020', '1', '交通学院', '0910006', '17872923081', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('110', '2020093', '123456', '熊娜', '2020', '1', '交通学院', '0910006', '17872923082', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('111', '2020094', '123456', '马晓倩', '2020', '1', '交通学院', '0910006', '17872923083', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('112', '2020095', '123456', '张夏雨', '2020', '1', '交通学院', '0910006', '17872923084', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('113', '2020096', '123456', '尤琪嘉', '2020', '1', '交通学院', '0910006', '17872923085', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('114', '2020097', '123456', '刘嘉阳', '2020', '1', '计算机学院', '0910004', '17872923086', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('115', '2020098', '123456', '刘轲', '2020', '1', '计算机学院', '0910004', '17872923087', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('116', '2020099', '123456', '闫锦', '2020', '1', '计算机学院', '0910004', '17872923088', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('117', '2020100', '123456', '黄平', '2020', '1', '计算机学院', '0910004', '17872923089', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('118', '2020101', '123456', '薛洁茹', '2020', '1', '计算机学院', '0910004', '17872923090', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('119', '2020102', '123456', '黄玉华', '2020', '1', '计算机学院', '0910004', '17872923091', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('120', '2020103', '123456', '毕筱琪', '2020', '1', '计算机学院', '0910004', '17872923092', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('121', '2020104', '123456', '孙辰晨', '2020', '1', '管理学院', '0910007', '17872923093', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('122', '2020105', '123456', '姚岚', '2020', '1', '管理学院', '0910007', '17872923094', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('123', '2020106', '123456', '钟昕', '2020', '1', '管理学院', '0910007', '17872923095', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('124', '2020107', '123456', '滕星茗', '2020', '1', '管理学院', '0910007', '17872923096', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('125', '2020108', '123456', '吴晓菲', '2020', '1', '管理学院', '0910007', '17872923097', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('126', '2020109', '123456', '邱冬', '2020', '1', '经济学院', '0910003', '17872923098', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('127', '2020110', '123456', '李宇晗', '2020', '1', '经济学院', '0910003', '17872923099', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');
INSERT INTO `user` VALUES ('128', '2020111', '123456', '史佳鑫', '2020', '1', '经济学院', '0910003', '17872923100', '1', '0', '2023-07-02 15:29:32', '2023-07-02 15:57:50');

-- ----------------------------
-- Table structure for violate_record
-- ----------------------------
DROP TABLE IF EXISTS `violate_record`;
CREATE TABLE `violate_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `punishment` varchar(50) DEFAULT NULL,
  `houseparent_sn` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_violate` (`room_id`),
  CONSTRAINT `FK_violate` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of violate_record
-- ----------------------------
INSERT INTO `violate_record` VALUES ('1', '1', '晚归', '扣分', '5566001', '0', '2023-06-28 14:35:41', '2023-07-02 10:12:23');
INSERT INTO `violate_record` VALUES ('2', '6', '违规使用电器', '没收', '5566003', '0', '2023-06-28 14:35:59', '2023-07-02 10:12:20');
INSERT INTO `violate_record` VALUES ('4', '6', '晚归', '扣分', '5566001', '0', '2023-06-28 14:36:40', '2023-07-02 10:12:25');
INSERT INTO `violate_record` VALUES ('5', '6', '寝室养宠物', '扣分', '5566001', '0', '2023-06-28 14:37:16', '2023-07-02 10:18:40');
INSERT INTO `violate_record` VALUES ('19', '8', '晚归', '扣分', '5566003', '0', '2023-06-29 18:08:31', '2023-07-02 10:12:51');
INSERT INTO `violate_record` VALUES ('20', '8', '不按时熄灯', '警告', '5566003', '0', '2023-06-29 18:10:02', '2023-07-02 10:18:07');
INSERT INTO `violate_record` VALUES ('21', '2', '使用违规电器', '扣分', '5566002', '0', '2023-06-29 18:16:12', '2023-07-02 10:18:58');
INSERT INTO `violate_record` VALUES ('22', '1', '不按时熄灯', '警告', '5566001', '0', '2023-06-30 09:18:25', '2023-07-02 10:19:21');
INSERT INTO `violate_record` VALUES ('23', '7', '晚归', '扣分', '5566001', '0', '2023-06-30 10:22:28', '2023-07-02 10:19:40');
