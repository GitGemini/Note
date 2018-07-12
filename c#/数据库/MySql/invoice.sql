/*
Navicat MySQL Data Transfer

Source Server         : MySqlDb
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : invoice

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-11-24 20:12:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(32) NOT NULL,
  `UserPwd` varchar(32) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'ph', '12345');
INSERT INTO `admin` VALUES ('4', 'Zed', '123');
INSERT INTO `admin` VALUES ('5', 'Jdk', '123');
INSERT INTO `admin` VALUES ('6', '控制器', 'control');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `goodName` varchar(32) NOT NULL,
  `goodType` varchar(32) NOT NULL,
  `goodPrice` decimal(32,2) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '可口可乐', '饮料', '2.50');
INSERT INTO `goods` VALUES ('2', '雪花啤酒', '酒水', '4.00');
INSERT INTO `goods` VALUES ('3', '薯片', '零食', '3.00');
INSERT INTO `goods` VALUES ('6', '恐龙化石', '文物', '100000000.00');
INSERT INTO `goods` VALUES ('7', '超级棒棒糖', '零食', '12.00');
INSERT INTO `goods` VALUES ('8', 'Java Web从入门到放弃', '书籍', '45.00');
INSERT INTO `goods` VALUES ('9', 'Java 从入门到放弃', '书籍', '45.80');
INSERT INTO `goods` VALUES ('10', '.net 从入门到放弃', '书籍', '60.00');
INSERT INTO `goods` VALUES ('11', 'Html 从入门到放弃', '书籍', '30.00');
INSERT INTO `goods` VALUES ('12', 'JavaScript 从入门到放弃', '书籍', '55.00');
INSERT INTO `goods` VALUES ('13', 'Node.Js 从入门到放弃', '书籍', '48.00');
INSERT INTO `goods` VALUES ('14', 'c++ 从入门到放弃', '书籍', '49.00');
INSERT INTO `goods` VALUES ('15', 'Python 从入门到放弃', '书籍', '56.00');
INSERT INTO `goods` VALUES ('16', 'PHP 从入门到放弃', '书籍', '123.00');
INSERT INTO `goods` VALUES ('17', '算法从入门到放弃', '书籍', '89.99');
INSERT INTO `goods` VALUES ('18', '算法进阶', '书籍', '89.99');
INSERT INTO `goods` VALUES ('19', '拉克丝同款魔法杖', '玩具', '13.00');
INSERT INTO `goods` VALUES ('20', '大圣归来模型', '玩具', '13.00');
INSERT INTO `goods` VALUES ('21', '大圣归来电影', '娱乐', '13.00');
INSERT INTO `goods` VALUES ('22', 'Asp从入门到放弃', '书籍', '56.00');
INSERT INTO `goods` VALUES ('24', '恐龙模型', '玩具', '12.80');

-- ----------------------------
-- Table structure for pushandpopstock
-- ----------------------------
DROP TABLE IF EXISTS `pushandpopstock`;
CREATE TABLE `pushandpopstock` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `goodId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL,
  `price` decimal(32,2) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_PushAndPop_Goods` (`goodId`),
  CONSTRAINT `FK_PushAndPop_Goods` FOREIGN KEY (`goodId`) REFERENCES `goods` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pushandpopstock
-- ----------------------------
INSERT INTO `pushandpopstock` VALUES ('1', '1', '5', '2017-11-19 16:14:41', '1', '3.00');
INSERT INTO `pushandpopstock` VALUES ('2', '1', '5', '2017-11-19 16:19:52', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('3', '2', '6', '2017-11-19 16:20:30', '1', '6.00');
INSERT INTO `pushandpopstock` VALUES ('4', '2', '3', '2017-11-18 16:20:51', '1', '6.00');
INSERT INTO `pushandpopstock` VALUES ('5', '1', '5', '2017-11-19 16:26:40', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('6', '1', '5', '2017-11-19 16:27:50', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('7', '1', '3', '2017-11-19 16:27:50', '1', '6.00');
INSERT INTO `pushandpopstock` VALUES ('8', '2', '5', '2017-11-19 16:27:50', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('9', '2', '5', '2017-11-19 16:27:50', '1', '5.00');
INSERT INTO `pushandpopstock` VALUES ('10', '2', '5', '2017-11-19 16:27:50', '1', '7.00');
INSERT INTO `pushandpopstock` VALUES ('11', '1', '5', '2017-11-19 16:28:30', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('12', '1', '3', '2017-11-19 16:28:30', '1', '6.00');
INSERT INTO `pushandpopstock` VALUES ('13', '2', '5', '2017-11-19 16:28:30', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('14', '2', '5', '2017-11-19 16:28:30', '1', '5.00');
INSERT INTO `pushandpopstock` VALUES ('15', '2', '5', '2017-11-19 16:28:30', '1', '7.00');
INSERT INTO `pushandpopstock` VALUES ('16', '1', '67', '2017-11-19 17:24:58', '1', '8.00');
INSERT INTO `pushandpopstock` VALUES ('17', '1', '8', '2017-11-19 16:28:30', '1', '3.00');
INSERT INTO `pushandpopstock` VALUES ('18', '2', '12', '2017-11-19 16:28:30', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('19', '1', '13', '2017-11-19 16:28:30', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('20', '2', '23', '2017-11-19 16:28:30', '1', '4.00');
INSERT INTO `pushandpopstock` VALUES ('28', '1', '3', '2017-11-19 16:44:16', '0', '6.00');
INSERT INTO `pushandpopstock` VALUES ('29', '2', '5', '2017-11-19 16:44:16', '0', '4.00');
INSERT INTO `pushandpopstock` VALUES ('34', '2', '5', '2017-11-19 16:44:16', '0', '4.00');
INSERT INTO `pushandpopstock` VALUES ('35', '2', '5', '2017-11-19 16:44:16', '0', '5.00');
INSERT INTO `pushandpopstock` VALUES ('36', '2', '5', '2017-11-19 16:44:16', '0', '7.00');
INSERT INTO `pushandpopstock` VALUES ('37', '1', '6', '2017-11-19 16:44:16', '0', '8.00');
INSERT INTO `pushandpopstock` VALUES ('38', '1', '8', '2017-11-19 16:44:16', '0', '3.00');
INSERT INTO `pushandpopstock` VALUES ('39', '2', '12', '2017-11-19 16:44:16', '0', '4.00');
INSERT INTO `pushandpopstock` VALUES ('40', '1', '13', '2017-11-19 16:44:16', '0', '4.00');
INSERT INTO `pushandpopstock` VALUES ('41', '2', '23', '2017-11-19 16:44:16', '0', '4.00');
INSERT INTO `pushandpopstock` VALUES ('42', '1', '12', '2017-11-19 16:44:16', '0', '4.00');
INSERT INTO `pushandpopstock` VALUES ('43', '2', '34', '2017-11-19 19:53:22', '0', '13.00');
INSERT INTO `pushandpopstock` VALUES ('44', '2', '12', '2017-11-20 10:12:51', '0', '13.50');
INSERT INTO `pushandpopstock` VALUES ('45', '6', '1', '2017-11-23 16:40:59', '0', '100000000.00');
INSERT INTO `pushandpopstock` VALUES ('46', '6', '1', '2017-11-23 16:51:45', '0', '100000000.00');
INSERT INTO `pushandpopstock` VALUES ('47', '6', '1', '2017-11-23 17:04:47', '1', '120000000.00');
INSERT INTO `pushandpopstock` VALUES ('48', '2', '13', '2017-11-23 19:36:36', '0', '4.00');
INSERT INTO `pushandpopstock` VALUES ('49', '6', '12', '2017-11-23 19:53:21', '0', '100000000.00');
INSERT INTO `pushandpopstock` VALUES ('50', '3', '12', '2017-11-23 22:12:29', '0', '3.00');
INSERT INTO `pushandpopstock` VALUES ('51', '7', '133', '2017-11-23 22:12:36', '0', '12.00');
INSERT INTO `pushandpopstock` VALUES ('52', '1', '90', '2017-11-23 22:12:47', '0', '2.50');
INSERT INTO `pushandpopstock` VALUES ('53', '10', '12', '2017-11-23 22:15:05', '0', '60.00');
INSERT INTO `pushandpopstock` VALUES ('54', '12', '13', '2017-11-23 22:15:11', '0', '55.00');
INSERT INTO `pushandpopstock` VALUES ('55', '8', '100', '2017-11-24 14:10:47', '0', '45.00');
INSERT INTO `pushandpopstock` VALUES ('57', '16', '12', '2017-11-23 22:33:03', '0', '123.00');
INSERT INTO `pushandpopstock` VALUES ('58', '19', '15', '2017-11-23 22:33:12', '0', '13.00');
INSERT INTO `pushandpopstock` VALUES ('59', '12', '12', '2017-11-23 22:33:34', '0', '55.00');
INSERT INTO `pushandpopstock` VALUES ('60', '17', '14', '2017-11-23 22:34:01', '0', '89.99');
INSERT INTO `pushandpopstock` VALUES ('61', '19', '1', '2017-11-23 22:45:10', '1', '15.60');
INSERT INTO `pushandpopstock` VALUES ('62', '20', '12', '2017-11-24 14:10:14', '0', '13.00');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `goodId` int(11) NOT NULL,
  `totalCount` int(11) NOT NULL,
  `price` decimal(32,2) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_Stock_Goods` (`goodId`),
  CONSTRAINT `FK_Stock_Goods` FOREIGN KEY (`goodId`) REFERENCES `goods` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('1', '1', '137', '3.20');
INSERT INTO `stock` VALUES ('2', '2', '60', '15.60');
INSERT INTO `stock` VALUES ('3', '6', '13', '120000001.00');
INSERT INTO `stock` VALUES ('4', '3', '12', '3.60');
INSERT INTO `stock` VALUES ('5', '7', '133', '14.40');
INSERT INTO `stock` VALUES ('6', '10', '12', '72.00');
INSERT INTO `stock` VALUES ('7', '12', '25', '66.00');
INSERT INTO `stock` VALUES ('8', '8', '223', '54.00');
INSERT INTO `stock` VALUES ('9', '16', '12', '147.60');
INSERT INTO `stock` VALUES ('10', '19', '14', '15.60');
INSERT INTO `stock` VALUES ('11', '17', '14', '107.99');
INSERT INTO `stock` VALUES ('12', '20', '12', '15.60');
DROP TRIGGER IF EXISTS `t_afterinsert_on_pushandpopstock`;
DELIMITER ;;
CREATE TRIGGER `t_afterinsert_on_pushandpopstock` AFTER INSERT ON `pushandpopstock` FOR EACH ROW BEGIN
		 DECLARE n int DEFAULT 0;
     set @tId=new.type;
		 IF @tId=0 THEN
				select COUNT(*) into @n from stock where stock.goodId=new.goodId;
				IF @n=0 THEN
					insert into stock values(null,new.goodId,new.count,new.price*1.2);
				ELSE
					update stock set stock.totalCount=stock.totalCount+new.count where stock.goodId=new.goodId;
				end IF;
		 ELSE
					update stock set stock.totalCount=stock.totalCount-new.count where stock.goodId=new.goodId;
		 end IF;
END
;;
DELIMITER ;
