/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-05-23 11:36:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` varchar(255) NOT NULL,
  `article_title` varchar(255) DEFAULT NULL,
  `article_summary` varchar(255) DEFAULT NULL,
  `article_content` text,
  `comment_num` int(11) DEFAULT NULL,
  `article_date` datetime DEFAULT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `readnum` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `classification` int(11) DEFAULT NULL,
  `collector_id` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `author` (`author_id`),
  KEY `collector` (`collector_id`),
  CONSTRAINT `author` FOREIGN KEY (`author_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `collector` FOREIGN KEY (`collector_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('574687', '网站简介', '网站简介：因为主要做的是后端(Spring+SpringMVC+Mybatis)，前端属于半桶水都没有的状态，所以做的比较丑而且借鉴了一些别人的界面。然后由于是练手项目，前期规划没有规划好，把登陆注册功能功能加进去，想做成一个博客园的形式，每个人都可以发，现在后端代码基本实现了，但是前端还要再修修改改-。-。如果无聊想自己在这个上面发博客需要先注册然后再登陆再点击写博客，发完博客之后点击我的博客即', '# 网站简介： #\n因为主要做的是后端(Spring+SpringMVC+Mybatis)，前端属于半桶水都没有的状态，所以做的比较丑而且借鉴了一些别人的界面。然后由于是练手项目，前期规划没有规划好，把登陆注册功能功能加进去，想做成一个博客园的形式，每个人都可以发，现在后端代码基本实现了，但是前端还要再修修改改-。-。如果无聊想自己在这个上面发博客需要先注册然后再登陆再点击写博客，发完博客之后点击我的博客即可看到了，但是左侧界面和上侧界面不会变，有点蠢-。-（待更新）。\n<br>\n5.17更新评论界面，写评论功能待更新:</br>\n ![图片](http://www.lemonlight.cn/upload/pictureData/3d78080d-cf02-4148-83ed-2a237f90b17c.PNG) \n评论界面延续了以往的风格，依旧很丑</br>\n**当前博客主要有6个界面：**</br>\n1.主界面：</br>\n ![图片](http://www.lemonlight.cn/upload/pictureData/05ec7ed2-b68f-4067-88df-d3fc04c94d82.PNG) </br>\n2.文章详情界面：</br>\n ![图片](http://www.lemonlight.cn/upload/pictureData/57115dcc-176d-4092-83e5-61d568e46e12.PNG)  </br>\n3.个人信息界面：</br>\n ![图片](http://www.lemonlight.cn/upload/pictureData/e4965710-90f7-4f6b-83b9-1b95633eaa50.PNG) \n</br>\n4.登陆界面:</br>\n ![图片](http://www.lemonlight.cn/upload/pictureData/a4a45601-7bcc-46a6-a469-51f7c69d02ae.PNG) \n</br>\n5.注册界面:</br>\n ![图片](http://www.lemonlight.cn/upload/pictureData/5e6f5728-4cb1-424c-b60e-7b4d629898ae.PNG) \n</br>\n6.写博客界面:</br>\n ![图片](http://www.lemonlight.cn/upload/pictureData/a6ddd24d-2e7a-45b6-a9f3-25887296fb5f.PNG) \n在网页上通过javascript+ajax实现了一个简单的markdownpad\n</br>\n\n# 搭建： #\n## 前端： ##\n因为只会javaweb,所以前端是jsp+javascript+一点ajax\n ![图片](http://www.lemonlight.cn/upload/pictureData/af3b578f-8519-4905-bec1-b788fe5ca59e.PNG) \n## 后端： ##\nspring+springmvc+mybatis+mysql\n ![图片](http://www.lemonlight.cn/upload/pictureData/9152e097-c2b3-49ac-a5b9-c40d6ec6c9d4.PNG) ', '0', '2017-05-21 14:10:15', 'cjy', '54', '网站简介', '0', '9', null, '0');
INSERT INTO `article` VALUES ('95968', 'writeArticleDone', '5.15写文章功能测试成功，但是firefox不能用，只有chrome可以', '# **5.15**\n**写文章功能测试成功，但是firefox不能用，只有chrome可以**\n', '0', '2017-05-15 20:19:16', 'cjy', '246', '5.15', '0', '9', null, '0');
INSERT INTO `article` VALUES ('993360', '5.17开通看评论功能，写评论功能敬请期待', '本贴为评论测试帖，滚去睡觉,内附主子照片', '滚去睡觉 ![图片](http://www.lemonlight.cn/upload/pictureData/2a3360c8-b46e-4aea-99ab-f96ee059348a.JPG) ', '4', '2017-05-17 19:51:48', 'cjy', '77', '搭建博客过程', '0', '9', null, '0');

-- ----------------------------
-- Table structure for article_class
-- ----------------------------
DROP TABLE IF EXISTS `article_class`;
CREATE TABLE `article_class` (
  `ca_id` varchar(255) NOT NULL,
  `cl_id` varchar(255) DEFAULT NULL,
  `ar_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ca_id`),
  KEY `article_foreign` (`ar_id`),
  KEY `pc_foreign` (`cl_id`),
  CONSTRAINT `article_foreign` FOREIGN KEY (`ar_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `pc_foreign` FOREIGN KEY (`cl_id`) REFERENCES `personal_classification` (`classification_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_class
-- ----------------------------
INSERT INTO `article_class` VALUES ('402881f25a8cfd00015a8cfdb6dd0002', '555', null);
INSERT INTO `article_class` VALUES ('402881f25a8cfd00015a8cfdb6de0003', '444', null);
INSERT INTO `article_class` VALUES ('402881f25ab0dc06015ab0de39280002', '111', null);
INSERT INTO `article_class` VALUES ('402881f25ab0dc06015ab0de39280003', '333', null);
INSERT INTO `article_class` VALUES ('402881f25acb8268015acb8896550004', '111', null);
INSERT INTO `article_class` VALUES ('402881f25acb990f015acb997f030000', '333', null);
INSERT INTO `article_class` VALUES ('402881f25acb990f015acb997f0a0001', null, null);
INSERT INTO `article_class` VALUES ('402881f25acfc4b6015acfcc86690003', '555', null);
INSERT INTO `article_class` VALUES ('402881f25acfc4b6015acfcc866a0004', '444', null);
INSERT INTO `article_class` VALUES ('402881f25acfc4b6015acfcd11e40007', '444', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfd78b1c0001', '444', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfd78b1c0002', '555', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfd9be430005', '555', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfd9be430006', '444', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfdb8a150009', '555', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfdb8a15000a', '444', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfdc1fa6000d', '444', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfdc1fa6000e', '555', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfdfd1610011', '444', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfe03a840014', '444', null);
INSERT INTO `article_class` VALUES ('402881f25acfcfb1015acfe03a840015', '555', null);
INSERT INTO `article_class` VALUES ('402881f25ae1f217015ae207617e0001', '111', null);
INSERT INTO `article_class` VALUES ('402881f25ae1f217015ae2088f6d0003', '111', null);
INSERT INTO `article_class` VALUES ('402881f25ae242a8015ae2449efc0001', '333', null);
INSERT INTO `article_class` VALUES ('402881f25ae242a8015ae2449efc0002', '111', null);
INSERT INTO `article_class` VALUES ('402881f25ae242a8015ae24c58140005', '111', null);
INSERT INTO `article_class` VALUES ('402881f25ae242a8015ae24c58140006', '333', null);
INSERT INTO `article_class` VALUES ('402881f25ae24ff0015ae2503d350001', '111', null);
INSERT INTO `article_class` VALUES ('402881f25ae24ff0015ae25072130004', '333', null);

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `attention_id` varchar(255) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `follower` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attention_id`),
  KEY `first_user` (`user`),
  KEY `second_user` (`follower`),
  CONSTRAINT `first_user` FOREIGN KEY (`user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `second_user` FOREIGN KEY (`follower`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attention
-- ----------------------------

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `collection_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `article_id` varchar(255) DEFAULT NULL,
  `collect_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`collection_id`),
  KEY `collection_article` (`article_id`),
  KEY `collection_user` (`user_id`),
  CONSTRAINT `collection_article` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `collection_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` varchar(255) NOT NULL,
  `comment_user` varchar(255) DEFAULT NULL,
  `comment_article` varchar(255) DEFAULT NULL,
  `reply_user` varchar(255) DEFAULT NULL,
  `comment_content` varchar(2000) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `floor` int(11) DEFAULT NULL,
  `is_main` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `article_comment` (`comment_article`),
  KEY `c_user` (`comment_user`),
  KEY `r_user` (`reply_user`),
  CONSTRAINT `article_comment` FOREIGN KEY (`comment_article`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `c_user` FOREIGN KEY (`comment_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `r_user` FOREIGN KEY (`reply_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('402881f25acff4ea015ad108f1d3000a', 'liuneng', '993360', null, '评论1', '2017-05-23 11:15:03', '1', '1');
INSERT INTO `comment` VALUES ('402881f25acff4ea015ad1099815000c', 'sherlock', '993360', null, '评论2', '2017-05-23 11:15:08', '2', '1');
INSERT INTO `comment` VALUES ('402881f25acff4ea015ad109ab3c000e', 'xieerduo', '993360', null, '评论3', '2017-05-23 11:15:12', '2', '0');
INSERT INTO `comment` VALUES ('402881f25acff4ea015ad109cb690010', 'xiefeiji', '993360', null, '评论4', '2017-05-23 11:15:19', '2', '0');

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `dynamic_id` varchar(255) NOT NULL,
  `dynamic_user` varchar(255) DEFAULT NULL,
  `dynamic_article` varchar(255) DEFAULT NULL,
  `dynamic_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `dynamic_state` int(255) DEFAULT NULL,
  PRIMARY KEY (`dynamic_id`),
  KEY `dy_article` (`dynamic_article`),
  KEY `dy_user` (`dynamic_user`),
  CONSTRAINT `dy_article` FOREIGN KEY (`dynamic_article`) REFERENCES `article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dy_user` FOREIGN KEY (`dynamic_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `education_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`education_id`),
  KEY `education_user` (`user_id`),
  CONSTRAINT `education_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('402881f25aa97072015aa970abe50000', 'cjy', '2012-08-20', '2016-06-10', '本科', 'zju', '水');
INSERT INTO `education` VALUES ('402881f25aab7b99015aab9b27d60001', 'cjy', '2016-09-10', '2019-03-00', '硕士', 'zju', '还水');

-- ----------------------------
-- Table structure for letter
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `letter_id` varchar(255) NOT NULL,
  `send_user` varchar(255) DEFAULT NULL,
  `receive_user` varchar(255) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `letter_content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`letter_id`),
  KEY `send_user` (`send_user`),
  KEY `receive_user` (`receive_user`),
  CONSTRAINT `receive_user` FOREIGN KEY (`receive_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `send_user` FOREIGN KEY (`send_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter
-- ----------------------------

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `login_id` varchar(255) NOT NULL,
  `login_userid` varchar(255) DEFAULT NULL,
  `login_username` varchar(255) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`login_id`),
  KEY `login_user` (`login_userid`),
  CONSTRAINT `login_user` FOREIGN KEY (`login_userid`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log
-- ----------------------------

-- ----------------------------
-- Table structure for option_log
-- ----------------------------
DROP TABLE IF EXISTS `option_log`;
CREATE TABLE `option_log` (
  `option_id` varchar(255) NOT NULL,
  `option_userid` varchar(255) DEFAULT NULL,
  `option_username` varchar(255) DEFAULT NULL,
  `option_date` datetime DEFAULT NULL,
  `option_method` varchar(255) DEFAULT NULL,
  `option_class` varchar(255) DEFAULT NULL,
  `option_message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  KEY `option_user` (`option_userid`),
  CONSTRAINT `option_user` FOREIGN KEY (`option_userid`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of option_log
-- ----------------------------

-- ----------------------------
-- Table structure for personal_classification
-- ----------------------------
DROP TABLE IF EXISTS `personal_classification`;
CREATE TABLE `personal_classification` (
  `classification_id` varchar(255) NOT NULL,
  `classification_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `default_setting` int(11) DEFAULT NULL,
  PRIMARY KEY (`classification_id`),
  KEY `user_class` (`user_id`),
  CONSTRAINT `user_class` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_classification
-- ----------------------------
INSERT INTO `personal_classification` VALUES ('111', 'java', null, '0');
INSERT INTO `personal_classification` VALUES ('333', 'mybatis', null, null);
INSERT INTO `personal_classification` VALUES ('444', 'java', null, '0');
INSERT INTO `personal_classification` VALUES ('555', 'spring', null, null);
INSERT INTO `personal_classification` VALUES ('cjy', 'spring', 'cjy', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_nickname` varchar(255) DEFAULT NULL,
  `user_truename` varchar(255) DEFAULT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `know_field` varchar(1000) DEFAULT NULL,
  `professional_skill` varchar(1000) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `introduction` varchar(1000) DEFAULT NULL,
  `visited_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('cjy', 'cjy', 'cjy', 'cjy', 'cjy', 'upload/userImg/cjy.jpg', '1995-01-28', '1', '浙江省杭州市', null, null, 'cjylemonlight@163.com', null, null, null, null, null, '浙江', '杭州市', null, null);
INSERT INTO `user` VALUES ('liuneng', 'liuneng', 'liuneng', '刘能', '刘能', 'upload/userImg/liuNeng.jpg', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('NPC', 'NPC', 'NPC', '来自火星的知名网友', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('sherlock', 'sherlock', 'sherlock', '夏洛克', '夏洛克', 'upload/userImg/sherlock.jpg', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('xieerduo', 'xieerduo', 'xieerduo', '谢耳朵', '谢耳朵', 'upload/userImg/xieerduo.jpg', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('xiefeiji', 'xiefeiji', 'xiefeiji', '谢飞机', '谢飞机', 'upload/userImg/xiefeiji.jpg', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `work_id` varchar(255) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `briefing` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`work_id`),
  KEY `work_user` (`userid`),
  CONSTRAINT `work_user` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('402881f25aad90c5015aad9126f20000', 'cjy', '2017-03-07', '2017-03-07', '123', 'java工程师', '123');
INSERT INTO `work` VALUES ('402881f25aad90c5015aad94db4e0001', 'cjy', '2017-03-06', '2017-03-06', '123', 'java工程师', '123');
