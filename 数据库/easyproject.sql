/*
 Navicat Premium Data Transfer

 Source Server         : easyproject
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : easyproject

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 03/06/2021 19:30:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for box
-- ----------------------------
DROP TABLE IF EXISTS `box`;
CREATE TABLE `box`  (
  `boxid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `boxtype` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `boxowner` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `boxweight` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `boxstate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isempty` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`boxid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of box
-- ----------------------------
INSERT INTO `box` VALUES ('133123', '20\'GP', 'COS', '2200', '已预定', '空');
INSERT INTO `box` VALUES ('31', '20\'GP', '1231', '1231', NULL, '空');
INSERT INTO `box` VALUES ('9', '20‘', 'COS', '2200', '仙桃', '空');
INSERT INTO `box` VALUES ('C', '20\'GP', 'COS', '2200', '已预定', '空');
INSERT INTO `box` VALUES ('CO', '20\'GP', 'COS', '2200', '已预定', '空');
INSERT INTO `box` VALUES ('COSTE131313', '20\'', 'COS', '2200', '襄阳', '非空');
INSERT INTO `box` VALUES ('COSX', '20\'GP', 'COS', '2200', '已预定', '空');
INSERT INTO `box` VALUES ('COSXU112132', '20\'GP', '1231', '1231', '荆州', '非空');
INSERT INTO `box` VALUES ('COSXU123131', '20’', 'COS', '2200', NULL, '空');
INSERT INTO `box` VALUES ('COSXU123312', '40\'GP', 'COS', '4400', '已预定', NULL);
INSERT INTO `box` VALUES ('COSXU123323', '40\'GP', 'COS', '4400', '亿钧港', '空');
INSERT INTO `box` VALUES ('COSXU123334', '20\'GP', 'COS', '2200', '已预定', '空');
INSERT INTO `box` VALUES ('COSXU123344', '40\'GP', 'COS', '4400', '已预定', NULL);
INSERT INTO `box` VALUES ('COSXU123345', '20\'GP', 'COS', '2200', '亿钧港', '空');
INSERT INTO `box` VALUES ('COSXU123346', '20\'GP', 'COS', '2200', '已预定', '空');
INSERT INTO `box` VALUES ('COSXU123348', '20\'GP', 'COS', '2200', '洪湖港', '空');
INSERT INTO `box` VALUES ('COSXU123349', '40\'GP', 'COS', '4400', '已预定', NULL);
INSERT INTO `box` VALUES ('COSXU123456', '20\'GP', 'COS', '2200', '亿钧港', '空');
INSERT INTO `box` VALUES ('COSXU123678', '20\'GP', 'COS', '2200', '已预定', '空');

-- ----------------------------
-- Table structure for easyuser
-- ----------------------------
DROP TABLE IF EXISTS `easyuser`;
CREATE TABLE `easyuser`  (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telnum` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` tinyint(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of easyuser
-- ----------------------------
INSERT INTO `easyuser` VALUES (0, '昊佳瑞', '123456', '13918553665\n', '货主', 1);
INSERT INTO `easyuser` VALUES (1, 'admin', '123456', '17839999122', '管理员', 1);
INSERT INTO `easyuser` VALUES (2, '李埠港', '123456', '13807197319', '港口', 1);
INSERT INTO `easyuser` VALUES (3, '亿钧港', '123456', '13807153256', '港口', 1);
INSERT INTO `easyuser` VALUES (4, '李成白', '888888', '13908863082', '货主', 1);
INSERT INTO `easyuser` VALUES (5, '湖北美华日用化工厂汽车队', '123456', '18261197555', '车队', 1);
INSERT INTO `easyuser` VALUES (6, '湖北省荆门市公路段汽车队', '123456', '13903173981', '车队', 1);
INSERT INTO `easyuser` VALUES (7, '中远海运', '123456', '13983652278', '船主', 1);
INSERT INTO `easyuser` VALUES (8, '澳航', '1414113', '15132755552', '船主', 1);
INSERT INTO `easyuser` VALUES (9, 'admin1', '123456', '18822858108', '管理员', 1);
INSERT INTO `easyuser` VALUES (10, '中远集团', '123456', '17839993883', '货代', 1);
INSERT INTO `easyuser` VALUES (11, '顺丰速递', '123456', '13807198517', '货代', 1);
INSERT INTO `easyuser` VALUES (12, '京东速递', '123456', '13908631578', '货代', 1);
INSERT INTO `easyuser` VALUES (13, '雷军', '123456', '13908863082', '货主', 1);
INSERT INTO `easyuser` VALUES (15, '松滋港', '123456', '13510102070', '港口', 1);
INSERT INTO `easyuser` VALUES (16, '盐卡港', '123456', '13883038222', '港口', 1);
INSERT INTO `easyuser` VALUES (17, '洪湖港', '123456', '13801507158', '港口', 1);
INSERT INTO `easyuser` VALUES (18, '美总轮船', '123456', '021-23069696', '船主', 1);
INSERT INTO `easyuser` VALUES (19, '智利航运', '123456', '021-26105293', '船主', 1);
INSERT INTO `easyuser` VALUES (20, '天敬海运', '123456', '021-53852015', '船主', 1);
INSERT INTO `easyuser` VALUES (21, '达飞轮船', '123456', '021-23069696', '船主', 1);
INSERT INTO `easyuser` VALUES (22, '达贸轮船', '123456', '021-23069696', '船主', 1);
INSERT INTO `easyuser` VALUES (23, '东暎海运', '123456', '021-63757079', '船主', 1);
INSERT INTO `easyuser` VALUES (24, '中国外运', '123456', '021-23069456', '货代', 1);
INSERT INTO `easyuser` VALUES (25, '还不够优秀', '123456', '1111111', '货主', 0);

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate`  (
  `orderid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `offerman` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timeevaluate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `altitudeevaluate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transevaluate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES ('20210419181718', '无纺布', '中远集团', '6', '6', '6');
INSERT INTO `evaluate` VALUES ('20210416113952', '无纺布', '中远集团', '5', '4', '5');
INSERT INTO `evaluate` VALUES ('20210412101354', '无纺布', '顺丰速递', '4', '5', '6');
INSERT INTO `evaluate` VALUES ('20210414180906', '无纺布', '顺丰速递', '6', '10', '3');
INSERT INTO `evaluate` VALUES ('20210416111941', '无纺布', '中远集团', '6', '6', '8');
INSERT INTO `evaluate` VALUES ('20210419163831', '无纺布', '京东速递', '5', '8', '9');
INSERT INTO `evaluate` VALUES ('20210419181710', '无纺布', '京东速递', '5', '6', '7');
INSERT INTO `evaluate` VALUES ('20210419181715', '无纺布', '顺丰速递', '6', '8', '2');
INSERT INTO `evaluate` VALUES ('20210419181718', '无纺布', '京东速递', '6', '8', '9');
INSERT INTO `evaluate` VALUES ('20210419181718', '无纺布', '中远集团', '2', '5', '6');
INSERT INTO `evaluate` VALUES ('20210601184419', '无纺布', '顺丰速递', '4', '5', '6');
INSERT INTO `evaluate` VALUES ('20210602062806', '无纺布', '中远集团', '5', '6', '10');

-- ----------------------------
-- Table structure for mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `mainmenu`;
CREATE TABLE `mainmenu`  (
  `id` int(20) NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `allowperson` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mainmenu
-- ----------------------------
INSERT INTO `mainmenu` VALUES (100, '权限管理', '/admin', '管理员');
INSERT INTO `mainmenu` VALUES (200, '查询', '/user', '管理员货代货主港口车队船主');
INSERT INTO `mainmenu` VALUES (300, '货主', '/cargoowner', '货主管理员');
INSERT INTO `mainmenu` VALUES (400, '港口', '/port', '港口管理员');
INSERT INTO `mainmenu` VALUES (500, '车队', '/fleet', '车队管理员');
INSERT INTO `mainmenu` VALUES (600, '船务公司', '/shippingcompany', '船主管理员');
INSERT INTO `mainmenu` VALUES (700, '货代公司', '/logisticscompany', '货代管理员');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `place` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transnum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timenow` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inoutside` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-20 16:40:27', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-20 16:41:33', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-20 16:42:25', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-20 18:28:44', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-20 18:31:11', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-20 18:31:12', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-20 18:31:13', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-20 19:11:36', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 09:58:10', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 10:01:21', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 10:01:27', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 10:01:28', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 10:06:36', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 10:08:23', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 14:52:51', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 14:52:54', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 14:52:56', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-21 14:53:03', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-26 10:35:48', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-26 10:35:55', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-04-26 17:55:44', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-9 15:48:30', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-9 15:48:33', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-9 15:48:34', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-9 15:48:35', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-9 15:48:53', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:45:00', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:45:02', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:49:24', '出');
INSERT INTO `message` VALUES ('盐卡港', '鄂A88888', '2021-05-10 18:49:58', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:47', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:47', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:48', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:48', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:49', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:50', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:50', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:51', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:52', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:52', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:53', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:53', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:54', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:55', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:55', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-10 18:51:56', '出');
INSERT INTO `message` VALUES ('盐卡港', '', '2021-05-16 14:43:52', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-16 14:52:48', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-16 14:55:03', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-16 14:56:50', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-05-16 14:59:46', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:12', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:13', '出');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:14', '进');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:15', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:34', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:35', '出');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:35', '进');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:36', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:49', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:50', '出');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:50', '进');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:39:51', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:18', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:19', '出');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:20', '进');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:20', '出');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:27', '进');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:27', '出');
INSERT INTO `message` VALUES ('李埠港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:28', '进');
INSERT INTO `message` VALUES ('李埠港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:28', '出');
INSERT INTO `message` VALUES ('李埠港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:39', '进');
INSERT INTO `message` VALUES ('李埠港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:40', '出');
INSERT INTO `message` VALUES ('亿钧港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:40', '进');
INSERT INTO `message` VALUES ('亿钧港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 18:47:41', '出');
INSERT INTO `message` VALUES ('盐卡港', '鄂A45678', '2021-06-1 19:18:05', '进');
INSERT INTO `message` VALUES ('盐卡港', '鄂A45678', '2021-06-1 19:18:05', '进');
INSERT INTO `message` VALUES ('洪湖港', '鄂A45678', '2021-06-1 19:18:07', '进');
INSERT INTO `message` VALUES ('洪湖港', '鄂A45678', '2021-06-1 19:18:08', '出');
INSERT INTO `message` VALUES ('松滋港', '鄂A34567', '2021-06-1 19:18:10', '进');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 19:18:16', '进');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 19:18:17', '出');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 19:18:17', '进');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-1 19:18:18', '出');
INSERT INTO `message` VALUES ('松滋港', '鄂A34567', '2021-06-1 19:18:21', '出');
INSERT INTO `message` VALUES ('亿钧港', '鄂A34567', '2021-06-1 19:18:22', '进');
INSERT INTO `message` VALUES ('亿钧港', '鄂A34567', '2021-06-1 19:18:22', '出');
INSERT INTO `message` VALUES ('盐卡港', '鄂A45678', '2021-06-2 06:31:42', '进');
INSERT INTO `message` VALUES ('盐卡港', '鄂A45678', '2021-06-2 06:31:44', '出');
INSERT INTO `message` VALUES ('洪湖港', '鄂A45678', '2021-06-2 06:31:44', '进');
INSERT INTO `message` VALUES ('洪湖港', '鄂A45678', '2021-06-2 06:31:46', '出');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:31:56', '进');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:31:58', '出');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:31:59', '进');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:32:00', '出');
INSERT INTO `message` VALUES ('松滋港', '鄂A34532', '2021-06-2 06:32:10', '进');
INSERT INTO `message` VALUES ('松滋港', '鄂A34532', '2021-06-2 06:32:11', '出');
INSERT INTO `message` VALUES ('亿钧港', '鄂A34532', '2021-06-2 06:32:12', '进');
INSERT INTO `message` VALUES ('亿钧港', '鄂A34532', '2021-06-2 06:32:13', '出');
INSERT INTO `message` VALUES ('盐卡港', '鄂A34567', '2021-06-2 06:42:16', '进');
INSERT INTO `message` VALUES ('盐卡港', '鄂A34567', '2021-06-2 06:42:17', '出');
INSERT INTO `message` VALUES ('洪湖港', '鄂A34567', '2021-06-2 06:42:18', '进');
INSERT INTO `message` VALUES ('洪湖港', '鄂A34567', '2021-06-2 06:42:21', '出');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:42:46', '进');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:42:47', '出');
INSERT INTO `message` VALUES ('亿钧港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:42:49', '出');
INSERT INTO `message` VALUES ('亿钧港', '鄂A234567', '2021-06-2 06:42:50', '出');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:42:58', '出');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:42:59', '出');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:45:36', '出');
INSERT INTO `message` VALUES ('洪湖港', '鄂 A12345', '2021-06-2 06:45:36', '出');
INSERT INTO `message` VALUES ('洪湖港', '鄂A216234', '2021-06-2 06:45:39', '出');
INSERT INTO `message` VALUES ('亿钧港', '鄂A345678', '2021-06-2 06:45:44', '出');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:45:49', '出');
INSERT INTO `message` VALUES ('盐卡港', '鄂A12345', '2021-06-2 06:50:59', '进');
INSERT INTO `message` VALUES ('盐卡港', '鄂A12345', '2021-06-2 06:51:00', '出');
INSERT INTO `message` VALUES ('洪湖港', '鄂A12345', '2021-06-2 06:51:01', '进');
INSERT INTO `message` VALUES ('洪湖港', '鄂A12345', '2021-06-2 06:51:02', '出');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:51:08', '进');
INSERT INTO `message` VALUES ('洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:51:09', '出');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:51:09', '进');
INSERT INTO `message` VALUES ('松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 06:51:10', '出');
INSERT INTO `message` VALUES ('松滋港', '鄂A124356', '2021-06-2 06:51:17', '进');
INSERT INTO `message` VALUES ('松滋港', '鄂A124356', '2021-06-2 06:51:18', '出');
INSERT INTO `message` VALUES ('亿钧港', '鄂A124356', '2021-06-2 06:51:18', '进');
INSERT INTO `message` VALUES ('亿钧港', '鄂A124356', '2021-06-2 06:51:19', '出');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 08:58:56', '进');
INSERT INTO `message` VALUES ('盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 08:58:58', '出');
INSERT INTO `message` VALUES ('亿钧港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 08:59:00', '进');
INSERT INTO `message` VALUES ('亿钧港', 'HAN HAI 1 HAO/汉海一号/B048E', '2021-06-2 08:59:08', '出');

-- ----------------------------
-- Table structure for offer
-- ----------------------------
DROP TABLE IF EXISTS `offer`;
CREATE TABLE `offer`  (
  `offerid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `offerman` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(10) NULL DEFAULT NULL,
  `offername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`offerid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of offer
-- ----------------------------
INSERT INTO `offer` VALUES ('20210328183030', '20210325152058', '1', 11001, 'admin');
INSERT INTO `offer` VALUES ('20210329092036', '20210317145403', '11', 11, 'admin');
INSERT INTO `offer` VALUES ('20210329092041', '20210325152058', '11', 1412, 'admin');
INSERT INTO `offer` VALUES ('20210329093723', '20210317161623', '1', 13, 'admin');
INSERT INTO `offer` VALUES ('20210329095545', '20210317145403', '1', 111, 'admin');
INSERT INTO `offer` VALUES ('20210419143421', '20210317145403', '1', 1112000, 'admin');
INSERT INTO `offer` VALUES ('20210422145840', '20210317145403', '1', 2000, 'admin');
INSERT INTO `offer` VALUES ('20210510144853', '20210317145403', '1', 2000, 'admin');
INSERT INTO `offer` VALUES ('20210601184438', '20210519143319', '11', 1600, '顺丰速递');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist`  (
  `orderid` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `route` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personchargenow` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Expecteddeliverytime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `startaddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endaddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receivername` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receivertelnum` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` int(11) NULL DEFAULT NULL,
  `boxid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodssize` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsweight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inoutside` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(10) NULL DEFAULT NULL,
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('1', '正在揽货', '11', '待定送达时间', '北京', '北京BJ', '王小小', '213124', 0, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('12312312', '12313', '123123', '1231231', '武汉', '北京', NULL, NULL, 9, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316103036', '正在揽货', '11', '待定送达时间', '北京', '北京', '吧唧吧唧北京', '123123', 9, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316103153', '正在揽货', '11', '待定送达时间', '北京', '北京', '吧唧吧唧北京', '123123', 0, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316104916', '正在揽货', '10', '待定送达时间', '111', '111', '111', '111', NULL, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316140137', '正在揽货', '11', '待定送达时间', '', '', '', '0', 0, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316140225', '正在揽货', '12', '待定送达时间', '武汉小城', '北京小镇', '王小小', '23141', 9, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316142708', '正在揽货', '24', '待定送达时间', '3123', '1231', '31231', '3132312', 9, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316142718', '正在揽货', '10', '待定送达时间', '31231', '31231', '31231', '3131', 0, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316142721', '正在揽货', '10', '待定送达时间', '31231', '31231', '31231', '3131', 9, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316154315', '正在揽货', '10', '待定送达时间', '12312', '3123', '1231', '123', 0, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316161158', '正在揽货', '12', '待定送达时间', '21312', '31231', '23123', '123123', 13131, NULL, '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316194505', '正在揽货', '12', '待定送达时间', '123123', '131', '3123', '12312', 13131, NULL, '无纺布', '3', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316194735', '正在揽货', '12', '待定送达时间', '3123', '12312', '3123', '12312', 0, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210316195138', '正在揽货', '12', '待定送达时间', '31231', '31231', '3213', '11111111', 0, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210317143945', '正在揽货', '10', '待定送达时间', '31231', '3123', '1231', '31231', 0, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210317144129', '正在揽货', '10', '待定送达时间', '131', '3123', '1231', '31231', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210317145403', '正在等候接单', '10', '待定送达时间', '松滋港', '盐卡港', '1231', '3131', 7, 'COSXU123345', '甘蔗', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210317161623', '正在等候接单', '24', '待定送达时间', '湖北省湖北工业大学', '亿钧港', '12312', '31231', 7, 'COSXU123345', '硫磺', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210317161834', '正在等候接单', '24', '待定送达时间', '盐卡港', '荆州', '3123', '123', 7, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210319142650', '正在等候接单', '24', '待定送达时间', '荆州', '松滋港', '312313', '1313', 1, 'COSXU123345', '棉花', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210325152113', '路线规划完成', '1', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210326102323', '已被接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 413, NULL);
INSERT INTO `orderlist` VALUES ('20210326102428', '路线规划完成', '1', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210326102543', '已被接单', '1', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 3123, NULL);
INSERT INTO `orderlist` VALUES ('20210326102626', '已被接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 1231, NULL);
INSERT INTO `orderlist` VALUES ('20210326104608', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210328150931', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210328152936', '已被接单', '11', '待定送达时间', '武汉1111', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 1312, NULL);
INSERT INTO `orderlist` VALUES ('20210329164537', '正在等候接单', '10', '待定送达时间', '北京', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210331175141', '正在等候接单', '10', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210331191146', '正在等候接单', '10', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210402095214', '正在等候接单', '10', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210402105406', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406103733', '正在等候接单', '待定负责人', '待定送达时间', '徐州', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406142434', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406182416', '正在等候接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406182522', '正在等候接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406182655', '正在等候接单', '11', '待定送达时间', '盐卡港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406182739', '正在等候接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406183552', '正在等候接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 3566, NULL);
INSERT INTO `orderlist` VALUES ('20210406183717', '正在等候接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406183735', '正在等候接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406183829', '正在等候接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406184716', '正在等候接单', '待定负责人', '待定送达时间', '盐卡港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406184721', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 1354, NULL);
INSERT INTO `orderlist` VALUES ('20210406184816', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406184825', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406185534', '正在等候接单', '待定负责人', '待定送达时间', '盐卡港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 3765, NULL);
INSERT INTO `orderlist` VALUES ('20210406190701', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406194805', '正在等候接单', '12', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 1500, NULL);
INSERT INTO `orderlist` VALUES ('20210406201307', '正在等候接单', '12', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406201318', '正在等候接单', '12', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 1400, NULL);
INSERT INTO `orderlist` VALUES ('20210406201411', '正在等候接单', '12', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406201412', '正在等候接单', '12', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406201438', '正在等候接单', '12', '待定送达时间', '盐卡港', '李埠港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210406201524', '正在等候接单', '12', '待定送达时间', '盐卡港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 1300, NULL);
INSERT INTO `orderlist` VALUES ('20210407094005', '正在等候接单', '12', '待定送达时间', '盐卡港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407094800', '正在等候接单', '12', '待定送达时间', '盐卡港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407101755', '正在等候接单', '24', '待定送达时间', '洪湖港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 1288, NULL);
INSERT INTO `orderlist` VALUES ('20210407101913', '正在等候接单', '24', '待定送达时间', '盐卡港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407102058', '正在等候接单', '24', '待定送达时间', '盐卡港', '亿钧港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407102219', '正在等候接单', '24', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407102552', '正在等候接单', '24', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407102827', '正在等候接单', '24', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407102832', '正在等候接单', '24', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407103832', '正在等候接单', '24', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407103835', '正在等候接单', '24', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407104012', '正在等候接单', '24', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407104120', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407104653', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407104747', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407104842', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407104847', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407105217', '正在等候接单', '10', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407115115', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407134603', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407135814', '正在等候接单', '11', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407141342', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, '9', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407141627', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210407142334', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, '8', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210408094022', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210408115930', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, '6', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210408150718', '正在等候接单', '待定负责人', '待定送达时间', '盐卡港', '李埠港', '魏武王', '12345678901', 1, 'COSXU123', '无纺布', '40', '2000', '外贸', 2000, NULL);
INSERT INTO `orderlist` VALUES ('20210412101354', '正在等候接单', '待定负责人', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123', '无纺布', '40', '2000', '外贸', 2000, '已评价');
INSERT INTO `orderlist` VALUES ('20210414180906', '已被接单', '1', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 99999, '已评价');
INSERT INTO `orderlist` VALUES ('20210416111940', '已被接单', '12', '待定送达时间', '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 99999, '已评价');
INSERT INTO `orderlist` VALUES ('20210416111941', '正在等候接单', '10', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, '已评价');
INSERT INTO `orderlist` VALUES ('20210416113952', '正在等候接单', '2', '待定送达时间', '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 2000, '已评价');
INSERT INTO `orderlist` VALUES ('20210419163831', '已被接单', '1', NULL, '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 1231, '已评价');
INSERT INTO `orderlist` VALUES ('20210419181710', '路线规划完成', '1', NULL, '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 16, '已评价');
INSERT INTO `orderlist` VALUES ('20210419181715', '路线规划完成', '1', NULL, '武汉', '荆州', '魏武王', '12312', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 45, '已评价');
INSERT INTO `orderlist` VALUES ('20210419181718', '路线规划完成', '1', NULL, '武汉', '洪湖港', '魏武王', '17643867442', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', 78, '已评价');
INSERT INTO `orderlist` VALUES ('20210420152150', '正在等候接单', NULL, NULL, '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '外贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210422181654', '路线规划完成', '1', NULL, '武汉', '荆州', '魏武王', '12312', 1, 'SDFGG', '无纺布', '40', '2000', '外贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210422184815', '正在等候接单', NULL, NULL, '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210422185230', '货代直发', NULL, NULL, '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210422191850', '正在等候接单', NULL, NULL, '武汉', '荆州', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '外贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210422191950', '正在等候接单', '1313', NULL, '武汉', '荆州', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210422192645', '路线规划完成', '1', NULL, '武汉', '荆州', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '内贸', 232, NULL);
INSERT INTO `orderlist` VALUES ('20210422192821', '正在等候接单', '平台竞标', NULL, '武汉', '荆州', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210422192837', '路线规划完成', '1', NULL, '武汉', '荆州', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '', 3123, NULL);
INSERT INTO `orderlist` VALUES ('20210425205715', '货代直发', NULL, NULL, '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU12345', '无纺布', '40', '2000', '', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210426110933', '货代直发', NULL, NULL, '武汉', '洪湖港', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '', NULL, '已完成');
INSERT INTO `orderlist` VALUES ('20210427154335', '货代直发', NULL, NULL, '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123345', '无纺布', '40', '2000', '', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210510150125', '路线规划完成', '10', NULL, '盐卡港', '亿钧港', '魏武王', '12312', 1, NULL, '无纺布', '40', '1500', '', 1500, NULL);
INSERT INTO `orderlist` VALUES ('20210510163410', '货代直发', NULL, NULL, '武汉', '荆州', '魏武王', '12345678901', 1, 'C', '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210510164022', '货代直发', NULL, NULL, '武汉', '荆州', '魏武王', '12345678901', 1, 'COSXU123678', '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210511093356', '正在等候接单', '平台竞标', NULL, '盐卡港', '亿钧港', '魏武王', '17645643221', 1, NULL, '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210511093525', '已指定货代', 'admin', NULL, '盐卡港', '亿钧港', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210519143319', '已指定货代', '顺丰速递', NULL, '武汉', '荆州', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210601163409', '正在等候接单', '平台竞标', NULL, '盐卡港', '亿钧港', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210601173923', '正在等候接单', '平台竞标', NULL, '盐卡港', '亿钧港', '魏武王', '12312', 1, NULL, '无纺布', '40', '2000', '', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210601182115', '路线规划完成', '11', NULL, '盐卡港', '亿钧港', '魏武王', '17456487332', 0, NULL, '无纺布', '40', '2000', '内贸', 2500, NULL);
INSERT INTO `orderlist` VALUES ('20210601183535', '路线规划完成', '11', NULL, '盐卡港', '亿钧港', '魏武王', '17456487332', 0, 'COS1314141', '无纺布', '40', '2000', '内贸', 1500, NULL);
INSERT INTO `orderlist` VALUES ('20210601184419', '路线规划完成', '11', NULL, '盐卡港', '亿钧港', '魏武王', '17456487332', 0, 'COS144356', '无纺布', '40', '2000', '内贸', 1400, '已评价');
INSERT INTO `orderlist` VALUES ('20210601191451', '货代直发', NULL, NULL, '盐卡港', '亿钧港', '魏武王', '12345678901', 11, 'COSXU123345', '无纺布', '40', '2000', '内贸', NULL, '已完成');
INSERT INTO `orderlist` VALUES ('20210602062632', '正在等候接单', '平台竞标', NULL, '盐卡港', '亿钧港', '魏武王', '17456487332', 0, NULL, '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210602062806', '路线规划完成', '10', NULL, '盐卡港', '亿钧港', '魏武王', '17456487332', 0, 'COSXU123456', '无纺布', '40', '2000', '内贸', 1400, '已评价');
INSERT INTO `orderlist` VALUES ('20210602063431', '路线规划完成', '10', NULL, '盐卡港', '亿钧港', '魏武王', '17456487332', 0, NULL, '无纺布', '40', '2000', '内贸', 1200, NULL);
INSERT INTO `orderlist` VALUES ('20210602063728', '货代直发', NULL, NULL, '盐卡港', '亿钧港', '魏武王', '12345678901', 10, 'COSXU123348', '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210602064020', '货代直发', NULL, NULL, '盐卡港', '亿钧港', '魏武王', '12345678901', 11, 'COSXU123349', '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210602064338', '货代直发', NULL, NULL, '盐卡港', '亿钧港', '魏武王', '12345678901', 12, 'COSXU123344', '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210602064757', '货代直发', NULL, NULL, '盐卡港', '亿钧港', '魏武王', '12345678901', 10, 'COSXU123312', '无纺布', '40', '2000', '内贸', NULL, NULL);
INSERT INTO `orderlist` VALUES ('20210602064913', '货代直发', NULL, NULL, '盐卡港', '亿钧港', '魏武王', '12345678901', 10, 'COSXU123323', '无纺布', '40', '2000', '内贸', NULL, '已完成');
INSERT INTO `orderlist` VALUES ('20210602085705', '路线规划完成', '12', NULL, '盐卡港', '亿钧港', '魏武王', '17456487332', 0, NULL, '无纺布', '40', '2000', '', 1110, '已完成');
INSERT INTO `orderlist` VALUES ('20210602085944', '已指定货代', '中远集团', NULL, '盐卡港', '亿钧港', '魏武王', '17456487332', 0, NULL, '无纺布', '40', '2000', '', NULL, NULL);

-- ----------------------------
-- Table structure for orderstate
-- ----------------------------
DROP TABLE IF EXISTS `orderstate`;
CREATE TABLE `orderstate`  (
  `orderid` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timerecord` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lateststatus` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transportation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderstate
-- ----------------------------
INSERT INTO `orderstate` VALUES ('123', '2021-03-18 10:02:44', '1231', '3123', '123');
INSERT INTO `orderstate` VALUES ('20210316154315', '2021-03-20 10:04:49', 'Last Loaded on Rail under l/B\n', 'Adani Cma Mu ndra Container Terminal, Mundra,GujaratlIndia\n', 'Rail');
INSERT INTO `orderstate` VALUES ('20210316154315', '2021-03-20 10:04:53', 'Discharged at Last POD\n', 'Adani Cma Mu ndira Container Terminal,Mundra,Gujarat,India\n', 'Feeder');
INSERT INTO `orderstate` VALUES ('20210316154315', '2021-03-06 10:04:58', 'Loaded at T/S POL\n', 'ShanghaiPort Ctn Waigaoqiao Tml Brh,Shanghai,Shanghai,China\n', 'Vessel');
INSERT INTO `orderstate` VALUES ('20210316154315', '2021-03-12 10:05:01', 'Loaded at T/S POL\n', 'Wuhan Int1 Ctn Tiransshipment Co.,Wuhan,Hubei. China\n', 'Vessel');
INSERT INTO `orderstate` VALUES ('20210419181718', '2021-04-20 19:09:09', '李埠港', 'CHENG GUANG 7 HAO/晨光7号/B056E', NULL);
INSERT INTO `orderstate` VALUES ('20210419181718', '2021-04-20 19:09:47', '洪湖港', 'XIN CHANG JIANG25020/新长江25020/B134F', NULL);
INSERT INTO `orderstate` VALUES ('20210419181718', '2021-04-20 19:11:36', '亿钧港', 'YU XIN HUO15219/豫信货15219/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210419181718', '2021-04-21 09:24:10', '松滋港', 'JIANG JI YUN1201/江集运1201/B075E', NULL);
INSERT INTO `orderstate` VALUES ('20210419181718', '2021-04-21 10:12:03', '盐卡港', 'JI XIN/集鑫/B056E', NULL);
INSERT INTO `orderstate` VALUES ('20210419181718', '2021-04-21 10:12:08', '洪湖港', 'QIAN KUN99/乾坤99/B126E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 17:55:48', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 17:59:24', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:00:49', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:02:09', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:03:33', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:05:11', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:05:37', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:22:53', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:23:38', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:23:46', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:24:21', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:24:54', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:25:27', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:26:26', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:27:04', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-04-26 18:29:02', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-05-9 15:48:33', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210426110933', '2021-05-9 15:48:35', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210408150718', '2021-05-9 15:48:52', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210408150718', '2021-05-9 15:48:53', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407105217', '2021-05-10 18:51:47', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407105217', '2021-05-10 18:51:48', '亿钧港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407134603', '2021-05-10 18:51:50', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407134603', '2021-05-10 18:51:51', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407135814', '2021-05-10 18:51:52', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407135814', '2021-05-10 18:51:53', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407101755', '2021-05-10 18:51:54', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407101755', '2021-05-10 18:51:55', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407141342', '2021-05-16 14:55:02', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210407141342', '2021-05-16 14:59:41', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601183535', '2021-06-1 18:39:13', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601183535', '2021-06-1 18:39:15', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601183535', '2021-06-1 18:39:34', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601183535', '2021-06-1 18:39:36', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601183535', '2021-06-1 18:39:49', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601183535', '2021-06-1 18:39:51', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601184419', '2021-06-1 18:47:19', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601184419', '2021-06-1 18:47:20', '松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601184419', '2021-06-1 18:47:27', '松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601184419', '2021-06-1 18:47:28', '李埠港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601184419', '2021-06-1 18:47:40', '李埠港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601184419', '2021-06-1 18:47:41', '亿钧港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601191451', '2021-06-1 19:18:06', '盐卡港', '鄂A45678', NULL);
INSERT INTO `orderstate` VALUES ('20210601191451', '2021-06-1 19:18:07', '洪湖港', '鄂A45678', NULL);
INSERT INTO `orderstate` VALUES ('20210601191451', '2021-06-1 19:18:16', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601191451', '2021-06-1 19:18:17', '松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210601191451', '2021-06-1 19:18:22', '亿钧港', '鄂A34567', NULL);
INSERT INTO `orderstate` VALUES ('20210602062806', '2021-06-2 06:31:43', '盐卡港', '鄂A45678', NULL);
INSERT INTO `orderstate` VALUES ('20210602062806', '2021-06-2 06:31:45', '洪湖港', '鄂A45678', NULL);
INSERT INTO `orderstate` VALUES ('20210602062806', '2021-06-2 06:31:57', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210602062806', '2021-06-2 06:32:00', '松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210602062806', '2021-06-2 06:32:11', '松滋港', '鄂A34532', NULL);
INSERT INTO `orderstate` VALUES ('20210602062806', '2021-06-2 06:32:13', '亿钧港', '鄂A34532', NULL);
INSERT INTO `orderstate` VALUES ('20210602063728', '2021-06-2 06:42:17', '盐卡港', '鄂A34567', NULL);
INSERT INTO `orderstate` VALUES ('20210602063728', '2021-06-2 06:42:18', '洪湖港', '鄂A34567', NULL);
INSERT INTO `orderstate` VALUES ('20210602063728', '2021-06-2 06:42:47', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210602064913', '2021-06-2 06:50:59', '盐卡港', '鄂A12345', NULL);
INSERT INTO `orderstate` VALUES ('20210602064913', '2021-06-2 06:51:01', '洪湖港', '鄂A12345', NULL);
INSERT INTO `orderstate` VALUES ('20210602064913', '2021-06-2 06:51:08', '洪湖港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210602064913', '2021-06-2 06:51:09', '松滋港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210602064913', '2021-06-2 06:51:17', '松滋港', '鄂A124356', NULL);
INSERT INTO `orderstate` VALUES ('20210602064913', '2021-06-2 06:51:19', '亿钧港', '鄂A124356', NULL);
INSERT INTO `orderstate` VALUES ('20210602085705', '2021-06-2 08:58:57', '盐卡港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);
INSERT INTO `orderstate` VALUES ('20210602085705', '2021-06-2 08:59:03', '亿钧港', 'HAN HAI 1 HAO/汉海一号/B048E', NULL);

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route`  (
  `orderid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `placeA` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `placeAtime` timestamp NULL DEFAULT NULL,
  `placeB` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `placeBtime` timestamp NULL DEFAULT NULL,
  `way` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transnum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personcharge` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telnum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personchargeid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES ('20210407105217', '盐卡港', '2021-04-05 00:00:00', '洪湖港', '2021-04-07 11:43:47', '公路', '鄂A88888', '李小亮', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407105217', '洪湖港', '2021-04-07 00:00:00', '亿钧港', '2021-04-09 11:43:47', '海运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407115115', '盐卡港', '2021-04-09 00:00:00', '洪湖港', '2021-04-07 11:52:24', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407134603', '盐卡港', '2021-04-07 13:46:24', '洪湖港', '2021-04-07 13:46:27', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407134603', '盐卡港', '2021-04-07 13:46:39', '洪湖港', '2021-04-07 13:46:43', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407135814', '洪湖港', '2021-04-07 13:58:35', '盐卡港', '2021-04-09 00:00:00', '海运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407135814', '盐卡港', '2021-04-12 13:58:35', '亿钧港', '2021-04-15 00:00:00', '船运', '长江一号CJYH', '王五', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407135814', '亿钧港', '2021-04-16 13:58:35', '湖北工业大学', '2021-04-20 00:00:00', '公路', '鄂ABCDEF', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407135814', '湖北工业大学', '2021-04-20 13:58:35', '科技楼303', '2021-04-21 00:00:00', '公路', '校车', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407141342', '盐卡港', '2021-04-08 00:00:00', '洪湖港', '2021-04-16 00:00:00', '公路', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407141342', '盐卡港', '2021-04-08 00:00:00', '洪湖港', '2021-04-16 00:00:00', '停港', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407141342', '盐卡港', '2021-04-08 00:00:00', '洪湖港', '2021-04-16 00:00:00', '公路', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407141627', '盐卡港', '2021-04-09 00:00:00', '洪湖港', '2021-04-16 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407142334', '盐卡港', '2021-04-09 00:00:00', '洪湖港', '2021-04-09 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407142334', '盐卡港', '2021-04-07 17:41:31', '盐卡港', '2021-04-24 00:00:00', '停港', '', '王过', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210408094022', '盐卡港', '2021-04-08 09:41:26', '洪湖港', '2021-04-10 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '2');
INSERT INTO `route` VALUES ('20210408094022', '盐卡港', '2021-04-08 09:41:26', '洪湖港', '2021-04-10 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '3');
INSERT INTO `route` VALUES ('20210408115930', '洪湖港', '2021-04-09 00:00:00', '洪湖港', '2021-04-17 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210408150718', '盐卡港', '2021-04-02 00:00:00', '洪湖港', '2021-04-17 00:00:00', '停港', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210408150718', '盐卡港', '2021-04-02 00:00:00', '洪湖港', '2021-04-17 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210408150718', '盐卡港', '2021-04-02 00:00:00', '洪湖港', '2021-04-17 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210416111940', '盐卡港', '2021-04-09 00:00:00', '松滋港', '2021-04-14 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210416111940', '松滋港', '2021-04-09 00:00:00', '亿钧港', '2021-04-14 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210419181715', '盐卡港', '2021-04-03 00:00:00', '洪湖港', '2021-04-04 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210419181715', '盐卡港', '2021-04-02 00:00:00', '洪湖港', '2021-04-20 09:04:56', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210419181715', '盐卡港', '2021-04-03 00:00:00', '洪湖港', '2021-04-20 09:25:06', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210419181718', '盐卡港', '2021-04-01 00:00:00', '洪湖港', '2021-04-20 09:26:07', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210419181710', '盐卡港', '2021-04-08 00:00:00', '洪湖港', '2021-04-20 10:25:31', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210325152113', '盐卡港', '2021-04-03 00:00:00', '洪湖港', '2021-04-22 15:00:05', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210422181654', '盐卡港', '2021-04-15 00:00:00', '洪湖港', '2021-04-22 18:41:25', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210422184815', '盐卡港', '2021-04-16 00:00:00', '洪湖港', '2021-04-22 18:48:59', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210426110933', '盐卡港', '2021-04-01 00:00:00', '洪湖港', '2021-04-26 11:09:45', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407101755', '洪湖港', '2021-04-07 13:58:35', '盐卡港', '2021-04-09 00:00:00', '海运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1over');
INSERT INTO `route` VALUES ('20210407101755', '松滋港', '2021-04-12 13:58:35', '亿钧港', '2021-04-15 00:00:00', '船运', '长江一号CJYH', '王五', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407101755', '亿钧港', '2021-04-16 13:58:35', '湖北工业大学', '2021-04-20 00:00:00', '公路', '鄂ABCDEF', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210407101755', '湖北工业大学', '2021-04-20 13:58:35', '科技楼303', '2021-04-21 00:00:00', '公路', '校车', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210510150125', '盐卡港', '2021-05-14 00:00:00', '洪湖港', '2021-05-16 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210510150125', '盐卡港', '2021-05-16 00:00:00', '洪湖港', '2021-05-18 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '王一诺', '17554839221', '2');
INSERT INTO `route` VALUES ('20210510163410', '盐卡港', '2021-05-13 00:00:00', '洪湖港', '2021-05-21 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '1');
INSERT INTO `route` VALUES ('20210510164022', '盐卡港', '2021-05-14 00:00:00', '洪湖港', '2021-05-17 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '李云', '17654367554', '5over');
INSERT INTO `route` VALUES ('20210601183535', '盐卡港', '2021-06-05 00:00:00', '洪湖港', '2021-06-06 00:00:00', '公路', 'HAN HAI 1 HAO/汉海一号/B048E', '华美化工汽车队', '12345678901', '5over');
INSERT INTO `route` VALUES ('20210601183535', '盐卡港', '2021-06-06 00:00:00', '洪湖港', '2021-06-08 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '中远集团', '12345678901', '7over');
INSERT INTO `route` VALUES ('20210601183535', '盐卡港', '2021-06-08 00:00:00', '洪湖港', '2021-06-10 00:00:00', '公路', 'HAN HAI 1 HAO/汉海一号/B048E', '公路段汽车队', '12345678901', '6over');
INSERT INTO `route` VALUES ('20210601184419', '盐卡港', '2021-06-04 00:00:00', '松滋港', '2021-06-08 00:00:00', '公路', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '5over');
INSERT INTO `route` VALUES ('20210601184419', '松滋港', '2021-06-06 00:00:00', '李埠港', '2021-06-10 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '7over');
INSERT INTO `route` VALUES ('20210601184419', '李埠港', '2021-06-10 00:00:00', '亿钧港', '2021-06-12 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '6over');
INSERT INTO `route` VALUES ('20210601191451', '盐卡港', '2021-06-11 00:00:00', '洪湖港', '2021-06-13 00:00:00', '船运', '鄂A45678', '张三', '12345678901', '5over');
INSERT INTO `route` VALUES ('20210601191451', '洪湖港', '2021-06-15 00:00:00', '松滋港', '2021-06-17 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '7over');
INSERT INTO `route` VALUES ('20210601191451', '松滋港', '2021-06-17 00:00:00', '亿钧港', '2021-06-19 00:00:00', '公路', '鄂A34567', '张三', '12345678901', '6over');
INSERT INTO `route` VALUES ('20210602062806', '盐卡港', '2021-06-04 00:00:00', '洪湖港', '2021-06-06 00:00:00', '公路', '鄂A45678', '华美日用品', '14567456775', '5over');
INSERT INTO `route` VALUES ('20210602062806', '洪湖港', '2021-06-06 00:00:00', '松滋港', '2021-06-08 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '中远集团', '12345678901', '7over');
INSERT INTO `route` VALUES ('20210602062806', '松滋港', '2021-06-08 00:00:00', '亿钧港', '2021-06-11 00:00:00', '公路', '鄂A34532', '公路段汽车队', '12354356775', '6over');
INSERT INTO `route` VALUES ('20210602063728', '盐卡港', '2021-06-04 00:00:00', '洪湖港', '2021-06-06 00:00:00', '公路', '鄂A34567', '华美日用品', '12345678901', '5over');
INSERT INTO `route` VALUES ('20210602063728', '盐卡港', '2021-06-06 00:00:00', '洪湖港', '2021-06-08 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '中远海运', '12345678901', '7over');
INSERT INTO `route` VALUES ('20210602063728', '洪湖港', '2021-06-08 00:00:00', '亿钧港', '2021-06-10 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '公路段汽车队', '12345678901', '6over');
INSERT INTO `route` VALUES ('20210602064020', '盐卡港', '2021-06-04 00:00:00', '洪湖港', '2021-06-06 00:00:00', '公路', '鄂 A12345', '华美日用品', '12345678901', '5over');
INSERT INTO `route` VALUES ('20210602064020', '洪湖港', '2021-06-06 00:00:00', '松滋港', '2021-06-08 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '中远海运', '12345678901', '7over');
INSERT INTO `route` VALUES ('20210602064020', '松滋港', '2021-06-08 00:00:00', '亿钧港', '2021-06-10 00:00:00', '公路', '鄂A234567', '公路段汽车队', '12345678901', '6over');
INSERT INTO `route` VALUES ('20210602064338', '盐卡港', '2021-06-04 00:00:00', '洪湖港', '2021-06-06 00:00:00', '公路', '鄂A216234', '华美日用品', '12345678901', '5over');
INSERT INTO `route` VALUES ('20210602064338', '洪湖港', '2021-06-06 00:00:00', '松滋港', '2021-06-08 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '中远海运', '12345678901', '7over');
INSERT INTO `route` VALUES ('20210602064338', '松滋港', '2021-06-08 00:00:00', '亿钧港', '2021-06-10 00:00:00', '公路', '鄂A345678', '公路段汽车队', '12345678901', '6over');
INSERT INTO `route` VALUES ('20210602064913', '盐卡港', '2021-06-04 00:00:00', '洪湖港', '2021-06-06 00:00:00', '公路', '鄂A12345', '华美日用品', '12345678901', '5over');
INSERT INTO `route` VALUES ('20210602064913', '洪湖港', '2021-06-06 00:00:00', '松滋港', '2021-06-08 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '中远海运', '12345678901', '7over');
INSERT INTO `route` VALUES ('20210602064913', '松滋港', '2021-06-08 00:00:00', '亿钧港', '2021-06-10 00:00:00', '公路', '鄂A124356', '公路段汽车队', '1234567456', '6over');
INSERT INTO `route` VALUES ('20210602085705', '盐卡港', '2021-06-08 00:00:00', '亿钧港', '2021-06-15 00:00:00', '船运', 'HAN HAI 1 HAO/汉海一号/B048E', '张三', '12345678901', '7over');

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu`  (
  `id` int(20) NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mid` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES (101, '用户列表', '/user', 100);
INSERT INTO `submenu` VALUES (201, '订单查询', '/ordercheck', 200);
INSERT INTO `submenu` VALUES (202, '货箱查询', '/boxcheck', 200);
INSERT INTO `submenu` VALUES (301, '发布订单', '/releaseorder', 300);
INSERT INTO `submenu` VALUES (302, '我的订单', '/myorder', 300);
INSERT INTO `submenu` VALUES (303, '我的报价单', '/myofferlist', 300);
INSERT INTO `submenu` VALUES (304, '已完成订单', '/Completedorder', 300);
INSERT INTO `submenu` VALUES (401, '行程目录', '/Cargoinformation', 400);
INSERT INTO `submenu` VALUES (402, '日志信息', '/Orderstatusupload4', 400);
INSERT INTO `submenu` VALUES (403, '数据分析', '/Neworder', 400);
INSERT INTO `submenu` VALUES (501, '行程目录', '/Receivinglist5', 500);
INSERT INTO `submenu` VALUES (601, '行程目录', '/Receivinglist6', 600);
INSERT INTO `submenu` VALUES (701, '货主需求目录', '/Ownersdemandlist7', 700);
INSERT INTO `submenu` VALUES (702, '私密订单', '/Completedorder7', 700);
INSERT INTO `submenu` VALUES (705, '货代发布订单', '/Proxyadd', 700);
INSERT INTO `submenu` VALUES (706, '规划已竞标路线', '/Orderstatusupload7', 700);

SET FOREIGN_KEY_CHECKS = 1;
