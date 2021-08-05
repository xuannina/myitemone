/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : product

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 03/07/2021 12:09:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (8, 'admin', '123456');
INSERT INTO `login` VALUES (9, 'admin', '123456789');
INSERT INTO `login` VALUES (10, '456', '456');

-- ----------------------------
-- Table structure for pro
-- ----------------------------
DROP TABLE IF EXISTS `pro`;
CREATE TABLE `pro`  (
  `Pid` int(11) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Ptype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `kucun` int(255) DEFAULT NULL,
  PRIMARY KEY (`Pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro
-- ----------------------------
INSERT INTO `pro` VALUES (5, '苹果', '水果', 5, 2);
INSERT INTO `pro` VALUES (20, '茄子', '蔬菜', 5, 100);
INSERT INTO `pro` VALUES (21, '南瓜', '蔬菜', 88, 60);
INSERT INTO `pro` VALUES (22, '嘻嘻嘻', '蔬菜', 1111, 100);

-- ----------------------------
-- Table structure for sell
-- ----------------------------
DROP TABLE IF EXISTS `sell`;
CREATE TABLE `sell`  (
  `Sid` int(11) NOT NULL AUTO_INCREMENT,
  `Sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Snumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sell
-- ----------------------------
INSERT INTO `sell` VALUES (2, '可乐', 2);
INSERT INTO `sell` VALUES (3, '乐事薯片', 20);
INSERT INTO `sell` VALUES (5, '百事可乐', 20);
INSERT INTO `sell` VALUES (6, '蜂蜜', 10);

SET FOREIGN_KEY_CHECKS = 1;
