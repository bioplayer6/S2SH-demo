/*
Navicat MySQL Data Transfer

Source Server         : sdzx
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : strut9

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2020-11-30 16:46:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '军事');
INSERT INTO `category` VALUES ('2', '财经');
INSERT INTO `category` VALUES ('3', '教育');
INSERT INTO `category` VALUES ('4', '娱乐');
INSERT INTO `category` VALUES ('5', '游戏');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `issueTime` datetime DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `origin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKasi698e9ovs6xpcedbcdrhk67` (`cid`),
  CONSTRAINT `FKasi698e9ovs6xpcedbcdrhk67` FOREIGN KEY (`cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '广东财经大学华商学院陈玉川校长一行来华软交p', '11月29日上午，广东财经大学华商学院陈玉川院长率领全体院领导班子共9人到广州大学华软软件学院就人事、教学管理、学生工作等方面进行交流.', '2020-11-22 18:08:35', '2', '华软新闻中心');
INSERT INTO `news` VALUES ('4', '我院保安骨干在省高校卫队获奖', '11月28日，由总务处副处长周达带队，我院保安队前往佛山市南海区青少年军校参加广东省高校校卫队骨干业务技能展演活动。本次活动由广东省教育厅主办，全省共有113所高校、334人参加。', '2020-11-23 00:24:09', '1', '华软保安部');
INSERT INTO `news` VALUES ('5', '冬季到华软来看花', '随便谢谢，我想买游戏啊，单没钱啊实打实大苏打', '2020-11-23 00:25:11', '4', '华软广播中心');
INSERT INTO `news` VALUES ('6', '粤高校毕业生供需见面活动从化IT专场', '由广东省教育厅主办、广州大学华软软件学院承办的广东省2017届高校毕业生供需见面活动（从化地区IT专场）于12月1日在华软学院举行。', '2020-11-23 00:26:23', '3', '粤高校新闻中心');
INSERT INTO `news` VALUES ('8', '广东某男子猝死', '2020年8月16日晚上8点30分左右，在濮阳市黄河路与京开大道交叉口路南，一名中老年男子突发疾病猝死。警察第一时间赶到现场进行勘察，现场围观大批群众，事故详情有待更进一步调查！', '2020-11-23 16:02:52', '3', '广东新闻中心');
INSERT INTO `news` VALUES ('9', '赛博朋客延期发行', 'CDPR日前发布公开信，表示《赛博朋克2077》将再次延期发行，目前发行日期定为12月10日。CDPR的官方微博也发布了中文版信息。\r\n\r\n《赛博朋克2077》再次延期 现定于12月10日发行', '2020-11-23 16:08:52', '5', '广东游戏新闻中心');
