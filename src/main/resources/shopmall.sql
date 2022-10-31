/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : shopmall

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 29/10/2022 13:06:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'orderid',
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for good_size
-- ----------------------------
DROP TABLE IF EXISTS `good_size`;
CREATE TABLE `good_size`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增',
  `gsize` int NULL DEFAULT NULL COMMENT '商品规格',
  `gid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good_size
-- ----------------------------

-- ----------------------------
-- Table structure for good_type
-- ----------------------------
DROP TABLE IF EXISTS `good_type`;
CREATE TABLE `good_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增',
  `gtype` int NULL DEFAULT NULL COMMENT '商品类别，1，2，3，4，5具体代表什么',
  `gid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品id与类别对应',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of good_type
-- ----------------------------
INSERT INTO `good_type` VALUES (1, 1, 'airPods1');
INSERT INTO `good_type` VALUES (2, 1, 'airPods2');
INSERT INTO `good_type` VALUES (3, 1, 'airPods3');
INSERT INTO `good_type` VALUES (4, 1, 'airPods4');
INSERT INTO `good_type` VALUES (5, 2, 'AppleWatch1');
INSERT INTO `good_type` VALUES (6, 2, 'AppleWatch2');
INSERT INTO `good_type` VALUES (7, 2, 'AppleWatch3');
INSERT INTO `good_type` VALUES (8, 2, 'AppleWatch4');
INSERT INTO `good_type` VALUES (9, 3, 'iPad1');
INSERT INTO `good_type` VALUES (10, 3, 'iPad2');
INSERT INTO `good_type` VALUES (11, 3, 'iPad3');
INSERT INTO `good_type` VALUES (12, 3, 'iPad4');
INSERT INTO `good_type` VALUES (13, 4, 'iphone1');
INSERT INTO `good_type` VALUES (14, 4, 'iphone2');
INSERT INTO `good_type` VALUES (15, 4, 'iphone3');
INSERT INTO `good_type` VALUES (16, 4, 'iphone4');
INSERT INTO `good_type` VALUES (17, 4, 'iphone5');
INSERT INTO `good_type` VALUES (18, 4, 'iphone6');
INSERT INTO `good_type` VALUES (19, 4, 'iphone7');
INSERT INTO `good_type` VALUES (20, 4, 'iphone8');
INSERT INTO `good_type` VALUES (21, 5, 'MacBook1');
INSERT INTO `good_type` VALUES (22, 5, 'MacBook2');
INSERT INTO `good_type` VALUES (23, 5, 'MacBook3');
INSERT INTO `good_type` VALUES (24, 5, 'MacBook4');
INSERT INTO `good_type` VALUES (36, 1, '0D0341E227CB4D87A55281519B3BF8ED');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品主键用uuid',
  `gname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '商品单价',
  `num` int NULL DEFAULT NULL COMMENT '商品数量',
  `createtime` datetime NULL DEFAULT NULL COMMENT '生产日期',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品介绍',
  `gpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `status` int NULL DEFAULT NULL COMMENT '1在售0下架',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('0D0341E227CB4D87A55281519B3BF8ED', 'airpod12', 134.00, 123, '2022-10-29 13:04:56', 'HomePage/images/product/detail/AirPods3-1667019895973.png', 'HomePage/images/product/AirPods/AirPods-Pro2-1667019895977.png', 1);
INSERT INTO `goods` VALUES ('airPods1', 'AirPods2', 9999.00, 1000, '2022-10-20 22:10:50', 'HomePage/images/product/detail/2-1666768661918.jpg', 'HomePage/images/product/AirPods/AirPods2.png', 1);
INSERT INTO `goods` VALUES ('airPods2', 'AirPods3', 1349.00, 100, '2022-10-20 22:11:22', 'null', 'HomePage/images/product/AirPods/AirPods3.png', 1);
INSERT INTO `goods` VALUES ('airPods3', 'AirPods-Pro2', 1899.00, 100, '2022-10-20 22:11:56', 'null', 'HomePage/images/product/AirPods/AirPods-Pro2.png', 1);
INSERT INTO `goods` VALUES ('airPods4', 'AirPodsMax', 3999.00, 100, '2022-10-20 22:13:01', 'null', 'HomePage/images/product/AirPods/AirPodsMax.png', 1);
INSERT INTO `goods` VALUES ('AppleWatch1', 'Apple-Watch-Ultra', 6299.00, 100, '2022-10-20 22:25:47', 'null', 'HomePage/images/product/AppleWatch/Apple-Watch-Ultra.png', 1);
INSERT INTO `goods` VALUES ('AppleWatch2', 'Apple-Watch-Series8', 2999.00, 100, '2022-10-20 22:27:19', 'null', 'HomePage/images/product/AppleWatch/Apple-Watch-Series8.jpg', 1);
INSERT INTO `goods` VALUES ('AppleWatch3', 'Apple-Watch-SE', 1999.00, 100, '2022-10-20 22:27:54', 'null', 'HomePage/images/product/AppleWatch/Apple-Watch-SE.png', 1);
INSERT INTO `goods` VALUES ('AppleWatch4', 'Apple-Watch-Hermes', 9799.00, 100, '2022-10-20 22:29:08', 'null', 'HomePage/images/product/AppleWatch/Apple-Watch-Hermes.jpg', 1);
INSERT INTO `goods` VALUES ('iPad1', 'iPadPro', 6799.00, 100, '2022-10-21 14:32:45', 'null', 'HomePage/images/product/iPad/iPadPro.png', 1);
INSERT INTO `goods` VALUES ('iPad2', 'iPadAir', 4799.00, 100, '2022-10-21 14:33:19', 'null', 'HomePage/images/product/iPad/iPadAir.png', 1);
INSERT INTO `goods` VALUES ('iPad3', 'iPad', 3599.00, 100, '2022-10-21 14:33:51', 'null', 'HomePage/images/product/iPad/iPad.png', 1);
INSERT INTO `goods` VALUES ('iPad4', 'iPadmini', 3999.00, 100, '2022-10-21 14:34:20', 'null', 'HomePage/images/product/iPad/iPadmini.png', 1);
INSERT INTO `goods` VALUES ('iphone1', 'iPhone14Pro', 7999.00, 100, '2022-10-27 19:18:06', 'null', 'HomePage/images/product/iPhone/iPhone14Pro.jpg', 1);
INSERT INTO `goods` VALUES ('iphone2', 'iPhone14Pro-Max', 8999.00, 100, '2022-10-04 19:19:20', 'null', 'HomePage/images/product/iPhone/iPhone14Pro-Max.png', 1);
INSERT INTO `goods` VALUES ('iphone3', 'iPhone14', 5999.00, 100, '2022-10-15 19:19:24', 'null', 'HomePage/images/product/iPhone/iPhone14.jpg', 1);
INSERT INTO `goods` VALUES ('iphone4', 'iPhone14Plus', 6999.00, 100, '2022-10-19 21:17:26', 'null', 'HomePage/images/product/iPhone/iPhone14Plus.png', 1);
INSERT INTO `goods` VALUES ('iphone5', 'iPhone13', 5399.00, 100, '2022-10-31 21:18:23', 'null', 'HomePage/images/product/iPhone/iPhone13.jpg', 1);
INSERT INTO `goods` VALUES ('iphone6', 'iPhone13-mini', 4699.00, 100, '2022-10-11 21:19:19', 'null', 'HomePage/images/product/iPhone/iPhone13-mini.png', 1);
INSERT INTO `goods` VALUES ('iphone7', 'iPhoneSE', 3499.00, 100, '2022-10-25 21:20:20', 'null', 'HomePage/images/product/iPhone/iPhoneSE.jpg', 1);
INSERT INTO `goods` VALUES ('iphone8', 'iPhone12', 4699.00, 100, '2022-10-03 21:21:56', 'null', 'HomePage/images/product/iPhone/iPhone12.jpg', 1);
INSERT INTO `goods` VALUES ('MacBook1', 'MacBookAirM1', 7999.00, 100, '2022-10-20 22:16:43', 'HomePage/images/product/detail/MakbookAirdetail-1666794397347.png', 'HomePage/images/product/MacBook/MacBookAirM1.jpg', 1);
INSERT INTO `goods` VALUES ('MacBook2', 'MacBookAirM2', 9499.00, 100, '2022-10-20 22:17:11', 'HomePage/images/product/detail/MakbookAirM2detail-1666794884689.png', 'HomePage/images/product/MacBook/MacBookAirM2.jpg', 1);
INSERT INTO `goods` VALUES ('MacBook3', 'MacBookPro13IN', 9999.00, 100, '2022-10-20 22:17:56', 'HomePage/images/product/detail/makbookpro14寸detail-1666795043470.png', 'HomePage/images/product/MacBook/MacBookPro13c.jpg', 1);
INSERT INTO `goods` VALUES ('MacBook4', 'MacBookPro14,16IN', 14999.00, 100, '2022-10-20 22:18:51', 'HomePage/images/product/detail/MakBOOKprodetail-1666795053517.png', 'HomePage/images/product/MacBook/MacBookPro14c16c.jpg', 1);

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增',
  `gid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `gnum` int NULL DEFAULT NULL COMMENT '商品数量',
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES (31, 'iphone3', 1, '5ed3ce0bcdc44026aff58b0331cb297c');
INSERT INTO `order_goods` VALUES (32, 'iPad3', 1, '5ed3ce0bcdc44026aff58b0331cb297c');
INSERT INTO `order_goods` VALUES (33, 'iPad2', 1, '5ed3ce0bcdc44026aff58b0331cb297c');
INSERT INTO `order_goods` VALUES (34, 'iphone2', 1, '5ed3ce0bcdc44026aff58b0331cb297c');
INSERT INTO `order_goods` VALUES (35, 'iphone1', 1, '5ed3ce0bcdc44026aff58b0331cb297c');

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
  `gid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `gnum` int NULL DEFAULT NULL COMMENT '商品数量',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcart
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单idUUID',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `createtime` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `statue` int NULL DEFAULT NULL COMMENT '订单状态1完成，0未完成',
  `totalprice` double(10, 2) NULL DEFAULT NULL COMMENT '总金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('5ed3ce0bcdc44026aff58b0331cb297c', '5498A9D20C7B4F1286CB3CCDA40D44F7', '2022-10-29 13:01:04', 1, 31395.00);

-- ----------------------------
-- Table structure for u_address
-- ----------------------------
DROP TABLE IF EXISTS `u_address`;
CREATE TABLE `u_address`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `addressee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `Telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收获人手机',
  `status` int NULL DEFAULT NULL COMMENT '地址状态',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of u_address
-- ----------------------------
INSERT INTO `u_address` VALUES (1, '保利象', '周大', '13459531289', 1, '5498A9D20C7B4F1286CB3CCDA40D44F7');
INSERT INTO `u_address` VALUES (2, '闽侯县', '周大生', '13459521393', 0, 'undefined');
INSERT INTO `u_address` VALUES (3, '福州', '李零', '13450531932', 1, 'undefined');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户iu-UUID',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码MD5加密',
  `createtime` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '用户注册时间',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `hpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `umail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `statue` int NULL DEFAULT NULL COMMENT '用户状态1为可用0为注销',
  `menber` int NULL DEFAULT NULL COMMENT '1会员0不是会员',
  `score` int NULL DEFAULT NULL COMMENT '积分',
  `account` double NULL DEFAULT NULL COMMENT '账户金额',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('01B27078F7DD46C098B4F13909C68833', 'admin2', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 10:16:36', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '15260946956', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('1', '老板', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-27 22:29:01', '6666', '/WEB-INF/hpic/Apple-Watch-Hermes-52EDE7AC5721422DB375BF811FDB9DF8.jpg', '362296118@qq.com', '13459521392', 1, 1, 1, 50001);
INSERT INTO `user` VALUES ('1AB6ED4DA7EB45B383C8A87485F80502', '管理员6', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-27 22:28:25', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('2', '2', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-27 22:28:27', NULL, NULL, '14134', '123441424', 1, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('2B4062A98F8E4756BFA952986E9B7558', '管理员1', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-20 13:46:38', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('3', 'admin3', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-17 19:05:10', NULL, '/WEB-INF/hpic/inithead.png', NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `user` VALUES ('4465D95CCC6D4763BB907F40A8E06608', '管理员11', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-20 20:19:52', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 0, 0, 0, 0);
INSERT INTO `user` VALUES ('5498A9D20C7B4F1286CB3CCDA40D44F7', '普通用户', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-29 13:01:04', '3141', '/WEB-INF/hpic/Apple-Watch-Series8-4EEDB55DF4D24B349DAFA2159E603FCE.jpg', '362296118@qq.com', '13960568500', 1, 1, 1, 68496.2);
INSERT INTO `user` VALUES ('680F1521406E4F27AFB1AB2132412D05', '管理员2', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-20 14:14:22', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('6A433956BD0F459CB0E79B09948070D6', '管理123', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 09:58:29', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('7', '134', '124', '2022-10-04 11:59:07', NULL, NULL, '124', '124', 1, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('71764D9F2F78483C880BE5A57DCB9594', '管理员15', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 09:52:58', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('75F983C0112C434A9365903FE5376A90', 'admin4', '2126E74528C47628230CC5CD3EB316F6', '2022-10-26 22:46:39', NULL, '/WEB-INF/hpic/inithead.png', 'lmr6956@qq.com', '13960568500', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('78D1B9F1E77C4B4F8009B76D9F1A981C', '管理员16', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 10:00:06', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('7D218CD5265E4DD9B880C08E37863822', '管理员1323', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 16:41:05', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('82457869C2364EC098A0D59F59EAB383', '管理员三', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 09:44:19', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('8489B3A5FEEF49F9B586FA878864CAE1', '管理2', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-20 13:48:21', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('8E630BC4032440DEB33D78DF44ECE049', '管理员5', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-20 20:01:17', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('9011291E210B4E54AEDBE32F50BB650B', '管理员4', 'D6D005563BD19522B11E329C8A753782', '2022-10-26 15:10:40', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13960568500', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('9BB2EE73609049DDBDFD8B6E38F44473', '管理员3', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-20 19:42:48', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('9CCFEB006511440B8170D4444B1AB7A9', '管理员112', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 09:54:32', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('aacaaavsv', '123', '14', '2022-10-19 20:29:32', NULL, NULL, '41', '413', 1, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('aacaaavsvs', '123', '123', '2022-10-19 20:30:56', NULL, NULL, '123', '123', 1, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('AC7C4DBCA808466281A5C0F508A4AD74', '管理员', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-27 22:28:47', '大', '/WEB-INF/hpic/Apple-Watch-Ultra-4D46DD241F214FC8A5709692AF7136F4.png', '362296118@qq.com', '13455323443', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('CCCD508974F6443A94C37D442E4013D1', '管理4', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 09:49:05', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('DA130FD1D7AE4F9BABA2571760EA8E93', '管理员13', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-21 10:01:40', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);
INSERT INTO `user` VALUES ('DACEE40BB1B741EE84317BA589F6D48B', '管理20', 'FD6F761672C1BC1D8CB5707413218510', '2022-10-20 20:16:59', NULL, '/WEB-INF/hpic/inithead.png', '362296118@qq.com', '13459521354', 1, 0, 0, 0);

-- ----------------------------
-- Table structure for user_record
-- ----------------------------
DROP TABLE IF EXISTS `user_record`;
CREATE TABLE `user_record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `currentpage` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_record
-- ----------------------------
INSERT INTO `user_record` VALUES (4, 'AC7C4DBCA808466281A5C0F508A4AD74', 1);
INSERT INTO `user_record` VALUES (5, '5498A9D20C7B4F1286CB3CCDA40D44F7', 1);

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `utype` int NULL DEFAULT NULL COMMENT '类别1超管，2管理，3普通用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES (1, '1', 1);
INSERT INTO `user_type` VALUES (2, '2', 1);
INSERT INTO `user_type` VALUES (3, '3', 3);
INSERT INTO `user_type` VALUES (4, '75F983C0112C434A9365903FE5376A90', 2);
INSERT INTO `user_type` VALUES (5, '9011291E210B4E54AEDBE32F50BB650B', 2);
INSERT INTO `user_type` VALUES (6, '01FB2940D0D24FD087B76C78F10EE358', 2);
INSERT INTO `user_type` VALUES (7, '01B27078F7DD46C098B4F13909C68833', 2);
INSERT INTO `user_type` VALUES (9, '9', 2);
INSERT INTO `user_type` VALUES (10, '10', 2);
INSERT INTO `user_type` VALUES (14, '7', 3);
INSERT INTO `user_type` VALUES (22, '2B4062A98F8E4756BFA952986E9B7558', 2);
INSERT INTO `user_type` VALUES (23, '8489B3A5FEEF49F9B586FA878864CAE1', 2);
INSERT INTO `user_type` VALUES (25, '680F1521406E4F27AFB1AB2132412D05', 2);
INSERT INTO `user_type` VALUES (26, '9BB2EE73609049DDBDFD8B6E38F44473', 2);
INSERT INTO `user_type` VALUES (27, '4465D95CCC6D4763BB907F40A8E06608', 2);
INSERT INTO `user_type` VALUES (28, '8E630BC4032440DEB33D78DF44ECE049', 2);
INSERT INTO `user_type` VALUES (29, '1AB6ED4DA7EB45B383C8A87485F80502', 2);
INSERT INTO `user_type` VALUES (30, 'DACEE40BB1B741EE84317BA589F6D48B', 2);
INSERT INTO `user_type` VALUES (31, '82457869C2364EC098A0D59F59EAB383', 2);
INSERT INTO `user_type` VALUES (32, 'CCCD508974F6443A94C37D442E4013D1', 2);
INSERT INTO `user_type` VALUES (33, '71764D9F2F78483C880BE5A57DCB9594', 2);
INSERT INTO `user_type` VALUES (34, '9CCFEB006511440B8170D4444B1AB7A9', 2);
INSERT INTO `user_type` VALUES (35, '6A433956BD0F459CB0E79B09948070D6', 2);
INSERT INTO `user_type` VALUES (36, '78D1B9F1E77C4B4F8009B76D9F1A981C', 2);
INSERT INTO `user_type` VALUES (37, 'DA130FD1D7AE4F9BABA2571760EA8E93', 2);
INSERT INTO `user_type` VALUES (38, 'AC7C4DBCA808466281A5C0F508A4AD74', 2);
INSERT INTO `user_type` VALUES (39, '5498A9D20C7B4F1286CB3CCDA40D44F7', 3);
INSERT INTO `user_type` VALUES (41, '7D218CD5265E4DD9B880C08E37863822', 2);

SET FOREIGN_KEY_CHECKS = 1;
