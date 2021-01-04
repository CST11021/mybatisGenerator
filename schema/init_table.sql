/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : group_meal

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-09-21 00:54:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `group_company`
-- ----------------------------
DROP TABLE IF EXISTS `group_company`;
CREATE TABLE `group_company` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态（1=正常，0=停用）',
  `full_name` varchar(100) NOT NULL COMMENT '公司全名',
  `short_name` varchar(50) NOT NULL COMMENT '公司简称',
  `owner_city` varchar(100) NOT NULL COMMENT '所属城市',
  `area` varchar(50) NOT NULL COMMENT '区域',
  `address` varchar(255) NOT NULL COMMENT '配送地址',
  `contact_person` varchar(50) NOT NULL COMMENT '联系人',
  `contact_phone` varchar(30) NOT NULL COMMENT '联系人电话',
  `cooperation_start_time` datetime NOT NULL COMMENT '合作开始时间',
  `cooperation_end_time` datetime NOT NULL COMMENT '合作结束时间',
  `is_del` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除（1=删除，0=未删除）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_unique` (`full_name`,`contact_phone`),
  KEY `idx_select` (`status`,`full_name`,`contact_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='企业公司表';

-- ----------------------------
-- Records of group_company
-- ----------------------------
