/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : notecontent

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-02-07 00:15:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_img` varchar(50) DEFAULT NULL,
  `blog_name` varchar(32) NOT NULL,
  `blog_type` int(11) DEFAULT NULL,
  `browse` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `praise` int(11) DEFAULT NULL,
  `push_time` datetime DEFAULT NULL,
  `reprinted_url` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_by` int(11) DEFAULT NULL,
  `tag_name` varchar(32) NOT NULL,
  `tag_type` varchar(32) NOT NULL,
  `tag_value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
