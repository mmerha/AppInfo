/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.24-log : Database - amp_db
*********************************************************************
*/CREATE DATABASE `amp_db` ;
USE `amp_db`;

DROP TABLE IF EXISTS `sys_admin`;

CREATE TABLE `sys_admin` (
  `admin_id` int(10) unsigned zerofill NOT NULL COMMENT '后台管理主键',
  `admin_no` varchar(255) NOT NULL COMMENT '管理人员编号',
  `admin_name` varchar(255) NOT NULL COMMENT '管理人员姓名',
  `password` varchar(500) NOT NULL COMMENT '登录密码',
  `role_id` int(10) NOT NULL COMMENT '管理人员角色',
  `create_admin` int(10) NOT NULL COMMENT '添加人',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_admin` int(10) NOT NULL COMMENT '修改人',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `sys_app_info`;

CREATE TABLE `sys_app_info` (
  `app_id` int(10) unsigned zerofill NOT NULL COMMENT '主键',
  `app_name` varchar(255) NOT NULL COMMENT '名称',
  `dev_id` int(10) NOT NULL COMMENT '开发人',
  `category_id` int(10) NOT NULL COMMENT '类别',
  `app_info` varchar(500) NOT NULL COMMENT 'app简介',
  `flatform_id` int(10) NOT NULL COMMENT '使用平台',
  `status_id` int(10) NOT NULL COMMENT '审核状态',
  `sale_id` int(10) DEFAULT NULL COMMENT 'app状态',
  `checker` int(10) NOT NULL COMMENT '审核人',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `sys_category`;

CREATE TABLE `sys_category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_code` varchar(255) NOT NULL COMMENT '编号',
  `category_name` varchar(255) NOT NULL COMMENT '类别名称',
  `create_admin` int(10) NOT NULL COMMENT '创建人',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_admin` int(10) NOT NULL COMMENT '修改人',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;


insert  into `sys_category`(`category_id`,`category_code`,`category_name`,`create_admin`,`create_date`,`update_admin`,`update_date`) values (1,'sale','购物比价',1,'2019-05-08 12:14:56',1,'2019-05-08 12:14:56'),(2,'entertainment','影音娱乐',1,'2019-05-08 12:23:04',1,'2019-05-08 12:23:04'),(3,'tools','实用工具',1,'2019-05-08 12:23:04',1,'2019-05-08 12:23:04'),(4,'convenience','便捷生活',1,'2019-05-08 12:23:04',1,'2019-05-08 12:23:04'),(5,'tour','旅游住宿',1,'2019-05-08 12:23:04',1,'2019-05-08 12:23:04'),(6,'photo','拍摄美化',1,'2019-05-08 12:23:04',1,'2019-05-08 12:23:04'),(7,'news','新闻阅读',1,'2019-05-08 12:23:04',1,'2019-05-08 12:23:04'),(8,'intercourse','社交通讯',1,'2019-05-08 12:23:04',1,'2019-05-08 12:23:04'),(9,'finance','金融理财',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05'),(10,'education','教育',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05'),(11,'navigation','出行导航',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05'),(12,'food','美食',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05'),(13,'vehicle','汽车',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05'),(14,'business','商务',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05'),(15,'children','儿童',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05'),(16,'health','运动健康',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05'),(17,'theme','主题个性',1,'2019-05-08 12:23:05',1,'2019-05-08 12:23:05');


DROP TABLE IF EXISTS `sys_dev`;

CREATE TABLE `sys_dev` (
  `dev_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dev_no` varchar(255) NOT NULL COMMENT '编号',
  `dev_name` varchar(255) NOT NULL COMMENT '姓名',
  `password` varchar(500) NOT NULL COMMENT '登录密码',
  `cellphone` varchar(100) NOT NULL COMMENT '联系电话',
  `email` varchar(500) NOT NULL COMMENT '电子邮件',
  `dev_info` varchar(500) NOT NULL COMMENT '开发人员简介',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`dev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



DROP TABLE IF EXISTS `sys_dictionary`;

CREATE TABLE `sys_dictionary` (
  `dictionary_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(10) NOT NULL COMMENT '上级字典',
  `dictionary_name` varchar(255) NOT NULL COMMENT '字典名称',
  `create_admin` int(10) NOT NULL COMMENT '创建人',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_admin` int(10) NOT NULL COMMENT '修改人',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`dictionary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;


insert  into `sys_dictionary`(`dictionary_id`,`parent_id`,`dictionary_name`,`create_admin`,`create_date`,`update_admin`,`update_date`) values (1,0,'APP状态',1,'2019-05-08 12:27:06',1,'2019-05-08 12:27:06'),(2,0,'所属平台',1,'2019-05-08 12:27:06',1,'2019-05-08 12:27:06'),(3,0,'是否上架',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07'),(4,1,'待审核',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07'),(5,1,'审核通过',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07'),(6,1,'审核未通过',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07'),(7,2,'手机',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07'),(8,2,'平板',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07'),(9,2,'通用',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07'),(10,3,'已上架',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07'),(11,3,'已下架',1,'2019-05-08 12:27:07',1,'2019-05-08 12:27:07');


DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

insert  into `sys_role`(`role_id`,`role_name`,`create_date`,`update_date`) values (1,'管理员','2019-05-08 12:28:35','2019-05-08 12:28:35'),(2,'审核员','2019-05-08 12:28:35','2019-05-08 12:28:35');
DROP TABLE IF EXISTS `sys_version`;

CREATE TABLE `sys_version` (
  `version_id` int(10) unsigned zerofill NOT NULL COMMENT '主键',
  `app_id` int(10) NOT NULL COMMENT '软件信息',
  `apk_name` varchar(500) NOT NULL COMMENT '开发包名称',
  `support_rom` varchar(255) NOT NULL COMMENT '硬件支持',
  `software_size` double(10,2) NOT NULL COMMENT '软件大小',
  `download_link` varchar(500) NOT NULL COMMENT '下载地址',
  `status_id` int(10) NOT NULL COMMENT '审核状态',
  `sale_id` int(10) DEFAULT NULL COMMENT 'app状态',
  `checker` int(10) NOT NULL COMMENT '审核人',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
