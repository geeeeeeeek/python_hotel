/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_hotel

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 13/06/2023 18:46:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add order log', 17, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (66, 'Can change order log', 17, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete order log', 17, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (68, 'Can view order log', 17, 'view_orderlog');
INSERT INTO `auth_permission` VALUES (69, 'Can add order', 18, 'add_order');
INSERT INTO `auth_permission` VALUES (70, 'Can change order', 18, 'change_order');
INSERT INTO `auth_permission` VALUES (71, 'Can delete order', 18, 'delete_order');
INSERT INTO `auth_permission` VALUES (72, 'Can view order', 18, 'view_order');
INSERT INTO `auth_permission` VALUES (73, 'Can add comment', 19, 'add_comment');
INSERT INTO `auth_permission` VALUES (74, 'Can change comment', 19, 'change_comment');
INSERT INTO `auth_permission` VALUES (75, 'Can delete comment', 19, 'delete_comment');
INSERT INTO `auth_permission` VALUES (76, 'Can view comment', 19, 'view_comment');
INSERT INTO `auth_permission` VALUES (77, 'Can add banner', 20, 'add_banner');
INSERT INTO `auth_permission` VALUES (78, 'Can change banner', 20, 'change_banner');
INSERT INTO `auth_permission` VALUES (79, 'Can delete banner', 20, 'delete_banner');
INSERT INTO `auth_permission` VALUES (80, 'Can view banner', 20, 'view_banner');
INSERT INTO `auth_permission` VALUES (81, 'Can add address', 21, 'add_address');
INSERT INTO `auth_permission` VALUES (82, 'Can change address', 21, 'change_address');
INSERT INTO `auth_permission` VALUES (83, 'Can delete address', 21, 'delete_address');
INSERT INTO `auth_permission` VALUES (84, 'Can view address', 21, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '普通房', '2023-06-11 21:56:59.485437');
INSERT INTO `b_classification` VALUES (2, '大床房', '2023-06-11 21:57:18.533252');
INSERT INTO `b_classification` VALUES (3, '三人房', '2023-06-11 21:58:11.123305');
INSERT INTO `b_classification` VALUES (4, '情侣房', '2023-06-11 21:58:17.885961');
INSERT INTO `b_classification` VALUES (5, '豪华房', '2023-06-11 21:58:42.133351');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '11', '2023-06-12 19:09:06.819730', 0, 8, 4);
INSERT INTO `b_comment` VALUES (2, 'dd', '2023-06-13 18:29:27.805946', 0, 9, 5);
INSERT INTO `b_comment` VALUES (3, '哈哈哈很好', '2023-06-13 18:30:21.436212', 0, 2, 5);
INSERT INTO `b_comment` VALUES (4, 'abcd1111', '2023-06-13 18:30:25.618017', 0, 2, 5);
INSERT INTO `b_comment` VALUES (5, '111', '2023-06-13 18:30:34.427356', 0, 2, 5);
INSERT INTO `b_comment` VALUES (6, '2222', '2023-06-13 18:30:35.954635', 0, 2, 5);
INSERT INTO `b_comment` VALUES (7, '3333', '2023-06-13 18:30:37.367669', 0, 2, 5);
INSERT INTO `b_comment` VALUES (8, '4444', '2023-06-13 18:30:38.764099', 0, 2, 5);
INSERT INTO `b_comment` VALUES (9, '5555', '2023-06-13 18:30:40.138801', 0, 2, 5);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-12 18:34:00.171511');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-12 19:08:47.175257');
INSERT INTO `b_login_log` VALUES (3, 'ccc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-13 18:26:51.803066');
INSERT INTO `b_login_log` VALUES (4, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-13 18:34:15.007273');
INSERT INTO `b_login_log` VALUES (5, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-13 18:39:54.991781');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, 'aaa', 'abcd11111', '2023-06-13 17:50:57.362453');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 881 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-06-11 21:48:46.413896', '/', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-06-11 21:50:40.467338', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-06-11 21:50:40.473063', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-06-11 21:50:40.485295', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-06-11 21:50:40.487332', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-06-11 21:50:49.933790', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-06-11 21:50:49.931792', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-06-11 21:50:49.936791', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-06-11 21:50:53.103104', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-06-11 21:50:54.817567', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-06-11 21:50:56.033485', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-06-11 21:50:56.034951', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-06-11 21:50:56.034951', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-06-11 21:51:04.262881', '/myapp/admin/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-06-11 21:51:05.744430', '/myapp/admin/tag/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-06-11 21:51:05.749075', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-06-11 21:51:05.762095', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-06-11 21:54:49.215507', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-06-11 21:54:50.727527', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-06-11 21:54:52.615234', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-06-11 21:55:38.257913', '/myapp/admin/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-06-11 21:55:43.177827', '/myapp/admin/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-06-11 21:55:45.163009', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-06-11 21:55:46.917548', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-06-11 21:55:46.921321', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-06-11 21:55:46.927103', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-06-11 21:55:48.402204', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-06-11 21:56:04.342554', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-06-11 21:56:05.035274', '/myapp/admin/classification/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-06-11 21:56:59.498549', '/myapp/admin/classification/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-06-11 21:56:59.511860', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-06-11 21:57:18.545728', '/myapp/admin/classification/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-06-11 21:57:18.565892', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-06-11 21:57:45.205204', '/myapp/admin/classification/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-06-11 21:57:45.228529', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-06-11 21:57:57.983418', '/myapp/admin/classification/update', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-06-11 21:57:58.005143', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-06-11 21:58:11.136354', '/myapp/admin/classification/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-06-11 21:58:11.154462', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-06-11 21:58:17.901315', '/myapp/admin/classification/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-06-11 21:58:17.922145', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-06-11 21:58:42.138710', '/myapp/admin/classification/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-06-11 21:58:42.159018', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-06-11 21:58:49.559647', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-06-11 21:58:56.454980', '/myapp/admin/tag/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-06-11 21:58:56.468445', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-06-11 21:59:02.205898', '/myapp/admin/tag/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-06-11 21:59:02.243822', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-06-11 21:59:10.713503', '/myapp/admin/tag/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-06-11 21:59:10.748111', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-06-11 21:59:19.226799', '/myapp/admin/tag/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-06-11 21:59:19.247996', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-06-11 21:59:35.712062', '/myapp/admin/tag/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-06-11 21:59:35.759087', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-06-11 21:59:39.313795', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-06-11 21:59:39.320262', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-06-11 21:59:39.323576', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-06-11 21:59:39.325879', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-06-11 21:59:52.793865', '/myapp/admin/tag/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-06-11 21:59:52.814225', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-06-11 21:59:57.945227', '/myapp/admin/tag/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-06-11 21:59:57.969880', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-06-11 21:59:59.639322', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-06-11 21:59:59.643122', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-06-11 21:59:59.645146', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-06-11 21:59:59.647486', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-06-11 22:00:14.403276', '/myapp/admin/tag/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-06-11 22:00:14.451831', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-06-11 22:00:16.272915', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-06-11 22:00:16.275842', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-06-11 22:00:16.277876', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-06-11 22:00:16.279869', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-06-11 22:00:42.724089', '/myapp/admin/tag/update', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-06-11 22:00:42.746985', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-06-11 22:00:44.308545', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-06-11 22:00:44.312216', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-06-11 22:00:44.314227', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-06-11 22:00:44.316441', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-06-11 22:01:09.713148', '/myapp/admin/tag/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-06-11 22:01:09.730731', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-06-11 22:01:11.669179', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-06-11 22:01:11.671940', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-06-11 22:01:11.674463', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-06-11 22:01:11.675975', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-06-11 22:01:30.981443', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-06-11 22:01:30.985509', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-06-11 22:01:30.987625', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-06-11 22:01:36.194661', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-06-11 22:01:52.566985', '/myapp/admin/user/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-06-11 22:01:52.591157', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-06-11 22:02:07.353373', '/myapp/admin/user/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-06-11 22:02:07.377525', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-06-11 22:02:22.208737', '/myapp/admin/user/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-06-11 22:02:22.240092', '/myapp/admin/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-06-11 22:02:26.811748', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-06-11 22:02:29.084016', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-06-11 22:02:29.087741', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-06-11 22:02:29.101140', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-06-11 22:08:13.887630', '/myapp/admin/thing/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-06-11 22:08:13.928182', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-06-11 22:08:24.027154', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-06-11 22:08:24.065446', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-06-11 22:09:30.729061', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-06-11 22:09:30.772406', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-06-11 22:09:30.778225', '/myapp/admin/tag/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-06-11 22:09:49.012755', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-06-11 22:09:49.016898', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-06-11 22:09:49.029721', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-06-11 22:10:01.074795', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-06-11 22:10:01.079201', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-06-11 22:10:01.109014', '/myapp/admin/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-06-11 22:10:09.635005', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-06-11 22:10:09.682176', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-06-11 22:12:59.465663', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-06-11 22:12:59.470742', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-06-11 22:12:59.483138', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-06-11 22:13:06.767972', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-06-11 22:13:06.770333', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-06-11 22:13:06.776135', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-06-11 22:13:20.908122', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-06-11 22:13:20.971479', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-06-11 22:13:48.773556', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-06-11 22:13:48.815292', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-06-11 22:14:00.499249', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-06-11 22:14:00.539950', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-06-12 18:33:51.141214', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-06-12 18:33:51.143246', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-06-12 18:33:51.140202', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-06-12 18:33:51.152254', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-06-12 18:34:00.179180', '/myapp/admin/adminLogin', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-06-12 18:34:00.647456', '/myapp/admin/overview/count', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-06-12 18:34:02.575346', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-06-12 18:34:02.579809', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-06-12 18:34:02.591509', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-06-12 18:34:03.212035', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-06-12 18:34:05.657011', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-06-12 18:34:05.660288', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-06-12 18:34:05.676854', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-06-12 18:38:03.546933', '/myapp/admin/thing/create', 'POST', NULL, '284');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-06-12 18:38:03.625028', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-06-12 18:38:05.533344', '/upload/cover/1686566201202.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-06-12 18:55:07.190185', '/myapp/admin/thing/update', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-06-12 18:55:07.276455', '/myapp/admin/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-06-12 18:55:47.237872', '/myapp/admin/thing/create', 'POST', NULL, '88');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-06-12 18:55:47.305790', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-06-12 18:56:17.944366', '/myapp/admin/thing/create', 'POST', NULL, '88');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-06-12 18:56:18.080257', '/myapp/admin/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-06-12 18:57:00.302514', '/myapp/admin/thing/create', 'POST', NULL, '107');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-06-12 18:57:00.400733', '/myapp/admin/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-06-12 18:57:32.536248', '/myapp/admin/thing/create', 'POST', NULL, '83');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-06-12 18:57:32.633871', '/myapp/admin/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-06-12 18:57:34.049411', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-06-12 18:57:34.062223', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-06-12 18:57:34.066687', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-06-12 18:57:34.102770', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-06-12 18:57:34.141431', '/upload/cover/1686567336148.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-06-12 18:57:34.142452', '/upload/cover/1686567336148.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-06-12 18:57:34.175301', '/upload/cover/1686567367320.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-06-12 18:57:34.188702', '/upload/cover/1686566201202.png', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-06-12 18:57:34.192695', '/upload/cover/1686567295847.png', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-06-12 18:57:34.207073', '/upload/cover/1686566201202.png', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-06-12 18:57:48.280200', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-06-12 18:57:49.294346', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-06-12 18:57:50.249878', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-06-12 18:57:53.209248', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-06-12 18:57:53.210346', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-06-12 18:57:53.292949', '/myapp/admin/tag/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-06-12 18:57:54.736641', '/myapp/admin/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-06-12 18:57:58.064791', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-06-12 18:57:58.066440', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-06-12 18:57:58.099448', '/myapp/admin/tag/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-06-12 18:58:58.471117', '/myapp/admin/thing/create', 'POST', NULL, '86');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-06-12 18:58:58.590495', '/myapp/admin/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-06-12 18:59:24.562005', '/myapp/admin/thing/create', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-06-12 18:59:24.719769', '/myapp/admin/thing/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-06-12 18:59:29.182503', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-06-12 18:59:29.186571', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-06-12 18:59:29.185551', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-06-12 18:59:29.210831', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-06-12 18:59:29.246733', '/upload/cover/1686567336148.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-06-12 18:59:29.247732', '/upload/cover/1686567336148.png', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-06-12 18:59:29.248733', '/upload/cover/1686567336148.png', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-06-12 18:59:29.250733', '/upload/cover/1686567336148.png', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-06-12 18:59:29.249735', '/upload/cover/1686567336148.png', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-06-12 18:59:29.251734', '/upload/cover/1686567336148.png', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-06-12 18:59:29.296111', '/upload/cover/1686567295847.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-06-12 19:00:06.981738', '/myapp/admin/thing/create', 'POST', NULL, '74');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-06-12 19:00:07.151415', '/myapp/admin/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-06-12 19:00:08.773142', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-06-12 19:00:08.783682', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-06-12 19:00:08.791680', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-06-12 19:00:08.824682', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-06-12 19:00:08.862684', '/upload/cover/1686567409207.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-06-12 19:00:08.862684', '/upload/cover/1686567409207.png', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-06-12 19:00:08.863683', '/upload/cover/1686567409207.png', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-06-12 19:00:08.864676', '/upload/cover/1686567367320.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-06-12 19:00:08.864676', '/upload/cover/1686567409207.png', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-06-12 19:00:08.864676', '/upload/cover/1686567409207.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-06-12 19:00:08.888474', '/upload/cover/1686566201202.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-06-12 19:00:08.891478', '/upload/cover/1686567295847.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-06-12 19:00:08.895480', '/upload/cover/1686567295847.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-06-12 19:00:20.187129', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-06-12 19:00:21.196848', '/myapp/admin/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-06-12 19:00:24.266838', '/upload/cover/1686567594332.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-06-12 19:00:40.094089', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-06-12 19:00:40.199503', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-06-12 19:01:25.498795', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-06-12 19:01:25.502794', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-06-12 19:01:25.562908', '/myapp/admin/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-06-12 19:01:36.454389', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-06-12 19:01:36.470932', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-06-12 19:01:36.488948', '/myapp/admin/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-06-12 19:02:27.903914', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-06-12 19:02:29.417821', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-06-12 19:02:30.507805', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-06-12 19:02:30.510810', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-06-12 19:02:30.581740', '/myapp/admin/tag/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-06-12 19:02:31.802294', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-06-12 19:02:32.470467', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-06-12 19:02:33.365773', '/myapp/admin/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-06-12 19:02:34.141478', '/myapp/admin/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-06-12 19:02:35.245179', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-06-12 19:02:36.179920', '/myapp/admin/overview/count', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-06-12 19:02:39.761829', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1042');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-06-12 19:02:40.514784', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-06-12 19:02:40.516788', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-06-12 19:02:40.575883', '/myapp/admin/tag/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-06-12 19:02:50.377408', '/myapp/admin/overview/count', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-06-12 19:03:00.387712', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-06-12 19:03:00.390704', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-06-12 19:03:00.393705', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-06-12 19:03:00.435724', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-06-12 19:03:00.463393', '/upload/cover/1686567409207.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-06-12 19:03:00.464404', '/upload/cover/1686567409207.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-06-12 19:03:00.469388', '/upload/cover/1686567409207.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-06-12 19:03:00.470389', '/upload/cover/1686567409207.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-06-12 19:03:00.472393', '/upload/cover/1686567409207.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-06-12 19:03:00.475394', '/upload/cover/1686567409207.png', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-06-12 19:03:00.481387', '/upload/cover/1686567336148.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-06-12 19:03:00.490559', '/upload/cover/1686566201202.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-06-12 19:03:00.498588', '/upload/cover/1686567295847.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-06-12 19:03:01.868663', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-06-12 19:03:01.889788', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-06-12 19:03:01.905659', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-06-12 19:03:01.922972', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-06-12 19:03:04.711899', '/myapp/admin/overview/count', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-06-12 19:03:08.874674', '/myapp/index/thing/addWishUser', 'POST', NULL, '197');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-06-12 19:03:14.699433', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-06-12 19:03:15.135031', '/myapp/admin/overview/count', 'GET', NULL, '463');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-06-12 19:03:35.264506', '/myapp/admin/user/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-06-12 19:03:36.174341', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-06-12 19:03:36.180907', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-06-12 19:03:36.263209', '/myapp/admin/tag/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-06-12 19:03:47.706198', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-06-12 19:03:47.711619', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-06-12 19:03:47.728378', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-06-12 19:03:47.750334', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-06-12 19:03:47.765485', '/upload/cover/1686567367320.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-06-12 19:03:47.766517', '/upload/cover/1686567367320.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-06-12 19:03:47.770485', '/upload/cover/1686567367320.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-06-12 19:03:47.774537', '/upload/cover/1686567367320.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-06-12 19:03:47.774537', '/upload/cover/1686567367320.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-06-12 19:03:47.781568', '/upload/cover/1686567336148.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-06-12 19:03:47.790179', '/upload/cover/1686567295847.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-06-12 19:03:47.794170', '/upload/cover/1686567367320.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-06-12 19:05:04.061308', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-06-12 19:05:04.063345', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-06-12 19:05:04.080084', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-06-12 19:05:04.092510', '/myapp/index/notice/list_api', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-06-12 19:05:04.131220', '/upload/cover/1686567367320.png', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-06-12 19:05:04.132299', '/upload/cover/1686567367320.png', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-06-12 19:05:04.132299', '/upload/cover/1686567367320.png', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-06-12 19:05:04.134360', '/upload/cover/1686567367320.png', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-06-12 19:05:04.136392', '/upload/cover/1686567367320.png', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-06-12 19:05:04.137405', '/upload/cover/1686567367320.png', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-06-12 19:05:04.185755', '/upload/cover/1686567336148.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-06-12 19:05:04.186914', '/upload/cover/1686566201202.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-06-12 19:05:04.194413', '/upload/cover/1686567295847.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-06-12 19:05:07.813463', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-06-12 19:05:11.960427', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-06-12 19:05:32.851505', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-06-12 19:05:32.862498', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-06-12 19:05:32.885507', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-06-12 19:05:32.909072', '/myapp/index/thing/detail', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-06-12 19:05:39.041102', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-06-12 19:05:39.072647', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-06-12 19:05:39.085952', '/upload/cover/1686567554002.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-06-12 19:05:39.086952', '/upload/cover/1686567554002.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-06-12 19:05:49.066498', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-06-12 19:05:49.096775', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-06-12 19:05:49.140728', '/upload/cover/1686567528337.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-06-12 19:05:54.102933', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-06-12 19:05:54.111599', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-06-12 19:05:54.121748', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-06-12 19:05:54.154730', '/myapp/index/thing/detail', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-06-12 19:05:54.178342', '/upload/cover/1686567441225.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-06-12 19:05:54.179342', '/upload/cover/1686567441225.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-06-12 19:06:02.378576', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-06-12 19:06:02.385831', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-06-12 19:06:02.387891', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-06-12 19:06:02.398936', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-06-12 19:06:02.408936', '/upload/cover/1686567367320.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-06-12 19:06:02.408936', '/upload/cover/1686567367320.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-06-12 19:07:47.406581', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-06-12 19:07:47.409580', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-06-12 19:07:47.411580', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-06-12 19:07:47.439283', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-06-12 19:07:47.463283', '/upload/cover/1686567367320.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-06-12 19:07:47.464285', '/upload/cover/1686567367320.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-06-12 19:07:47.464285', '/upload/cover/1686567367320.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-06-12 19:07:47.464285', '/upload/cover/1686567367320.png', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-06-12 19:07:47.465427', '/upload/cover/1686567367320.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-06-12 19:07:47.465427', '/upload/cover/1686567367320.png', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-06-12 19:07:47.474533', '/upload/cover/1686567336148.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-06-12 19:07:47.486693', '/upload/cover/1686567295847.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-06-12 19:07:47.496598', '/upload/cover/1686566201202.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-06-12 19:08:27.373265', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-06-12 19:08:27.379068', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-06-12 19:08:27.385229', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-06-12 19:08:27.423801', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-06-12 19:08:31.541113', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-06-12 19:08:31.551392', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-06-12 19:08:31.579939', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-06-12 19:08:31.606545', '/myapp/index/thing/detail', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-06-12 19:08:34.501281', '/myapp/index/thing/addWishUser', 'POST', NULL, '74');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-06-12 19:08:36.350997', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-06-12 19:08:36.359997', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-06-12 19:08:36.362996', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-06-12 19:08:36.405023', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-06-12 19:08:37.734376', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-06-12 19:08:37.737439', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-06-12 19:08:37.740459', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-06-12 19:08:37.789962', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-06-12 19:08:37.808958', '/upload/cover/1686567554002.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-06-12 19:08:37.809984', '/upload/cover/1686567594332.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-06-12 19:08:43.603895', '/myapp/index/user/register', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-06-12 19:08:47.182255', '/myapp/index/user/login', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-06-12 19:08:47.233567', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-06-12 19:08:47.236629', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-06-12 19:08:47.240781', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-06-12 19:08:47.289521', '/myapp/index/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-06-12 19:09:02.222769', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-06-12 19:09:02.233565', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-06-12 19:09:02.243381', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-06-12 19:09:02.259630', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-06-12 19:09:02.275009', '/upload/cover/1686567409207.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-06-12 19:09:02.275009', '/upload/cover/1686567409207.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-06-12 19:09:02.276009', '/upload/cover/1686567409207.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-06-12 19:09:02.291489', '/upload/cover/1686567409207.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-06-12 19:09:02.884265', '/myapp/index/thing/addWishUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-06-12 19:09:02.941901', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-06-12 19:09:03.265262', '/myapp/index/thing/addCollectUser', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-06-12 19:09:03.308451', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-06-12 19:09:06.835876', '/myapp/index/comment/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-06-12 19:09:06.899179', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-06-12 19:09:39.902401', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-06-12 19:09:39.925923', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-06-12 19:09:39.931242', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-06-12 19:09:39.941957', '/upload/cover/1686567554002.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-06-12 19:09:39.946340', '/upload/cover/1686567554002.png', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-06-12 19:09:39.954755', '/upload/cover/1686567295847.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-06-12 19:09:41.729074', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-06-12 19:09:41.753820', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-06-12 19:09:41.772952', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-06-12 19:09:41.783519', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-06-12 19:09:42.468057', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-06-12 19:09:42.484334', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-06-12 19:09:42.487334', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-06-12 19:09:42.503953', '/myapp/index/thing/detail', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-06-12 19:09:43.091025', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-06-12 19:09:43.101681', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-06-12 19:09:43.104889', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-06-12 19:09:43.125821', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-06-12 19:12:10.290223', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-06-12 19:12:10.313281', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-06-12 19:12:20.290555', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-06-12 19:12:20.292569', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-06-12 19:12:20.304564', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-06-12 19:12:20.322568', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-06-12 19:12:48.546384', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-06-12 19:12:48.568938', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-06-12 19:12:48.583269', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-06-12 19:12:48.605385', '/upload/cover/1686567554002.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-06-12 19:12:48.607388', '/upload/cover/1686567554002.png', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-06-12 19:12:48.638653', '/upload/cover/1686567409207.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-06-12 19:12:48.639654', '/upload/cover/1686567409207.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-06-12 19:12:48.640949', '/upload/cover/1686567409207.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-06-12 19:12:48.640949', '/upload/cover/1686567409207.png', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-06-12 19:12:48.642323', '/upload/cover/1686567409207.png', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-06-12 19:12:48.644473', '/upload/cover/1686567441225.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-06-12 19:12:53.445792', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-06-12 19:12:53.462655', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-06-12 19:12:53.477448', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-06-12 19:12:53.498471', '/myapp/index/comment/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-06-12 19:12:55.936109', '/myapp/admin/overview/count', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-06-12 19:13:18.026425', '/upload/cover/1686567554002.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-06-12 19:13:24.787078', '/myapp/index/thing/addWishUser', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-06-12 19:13:24.845739', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-06-12 19:13:25.124285', '/myapp/index/thing/addCollectUser', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-06-12 19:13:25.178880', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-06-12 19:13:38.788179', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-06-12 19:13:38.806694', '/myapp/index/address/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-06-12 19:15:34.095857', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-06-12 19:15:34.104680', '/myapp/index/address/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-06-12 19:15:35.581821', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-06-12 19:15:35.583838', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-06-12 19:15:35.596481', '/upload/cover/1686567554002.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-06-12 19:15:36.751575', '/myapp/index/order/create', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-06-12 19:15:43.500746', '/myapp/index/order/create', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-06-12 19:16:59.717283', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-06-12 19:16:59.717283', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-06-12 19:16:59.719301', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-06-12 19:17:02.245733', '/myapp/index/order/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-06-12 19:17:02.370473', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-06-12 19:17:14.144349', '/myapp/admin/overview/count', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-06-12 19:17:16.648468', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-06-12 19:17:29.426163', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-06-12 19:17:29.455859', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-06-12 19:17:29.463212', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-06-12 19:17:29.470488', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-06-12 19:17:36.207062', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-06-12 19:17:36.230589', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-06-12 19:17:36.239594', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-06-12 19:17:36.265587', '/myapp/index/comment/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-06-12 19:17:36.300886', '/upload/cover/1686566201202.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-06-12 19:17:36.306074', '/upload/cover/1686566201202.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-06-12 19:17:36.309143', '/upload/cover/1686567336148.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-06-12 19:17:36.314138', '/upload/cover/1686567367320.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-06-12 19:17:36.315142', '/upload/cover/1686567367320.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-06-12 19:17:36.327720', '/upload/cover/1686567441225.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-06-12 19:18:19.931315', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-06-12 19:18:32.573096', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-06-12 19:18:47.248666', '/myapp/index/comment/listMyComments', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-06-12 19:18:49.320554', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-06-12 19:18:50.057341', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-06-12 19:18:51.062774', '/myapp/index/order/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-06-12 19:20:42.807969', '/myapp/index/order/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-06-12 19:20:43.425996', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-06-12 19:20:45.028905', '/myapp/index/order/cancel_order', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-06-12 19:20:45.082619', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-06-12 19:20:52.256648', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-06-12 19:20:52.291674', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-06-12 19:20:52.294667', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-06-12 19:20:52.324008', '/upload/cover/1686567554002.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-06-12 19:20:52.335006', '/upload/cover/1686567554002.png', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-06-12 19:20:52.367963', '/upload/cover/1686567409207.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-06-12 19:20:52.375330', '/upload/cover/1686567336148.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-06-12 19:20:52.376691', '/upload/cover/1686567295847.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-06-12 19:20:52.379695', '/upload/cover/1686567367320.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-06-12 19:20:52.380199', '/upload/cover/1686567367320.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-06-12 19:20:57.841985', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-06-12 19:20:58.492501', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-06-12 19:21:01.136470', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-06-12 19:21:02.837914', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-06-12 19:21:02.850915', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-06-12 19:21:02.865916', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-06-12 19:21:02.892277', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-06-13 17:47:54.980651', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-06-13 17:47:54.982651', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-06-13 17:47:54.981651', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-06-13 17:47:55.000660', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-06-13 17:47:55.031330', '/upload/cover/1686567367320.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-06-13 17:47:55.032329', '/upload/cover/1686567367320.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-06-13 17:47:55.032329', '/upload/cover/1686567367320.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-06-13 17:47:55.032329', '/upload/cover/1686567367320.png', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-06-13 17:47:55.032329', '/upload/cover/1686567367320.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-06-13 17:47:55.059715', '/upload/cover/1686567367320.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-06-13 17:47:55.060715', '/upload/cover/1686566201202.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-06-13 17:47:55.061715', '/upload/cover/1686566201202.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-06-13 17:47:55.061715', '/upload/cover/1686567295847.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-06-13 17:48:04.125068', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-06-13 17:48:04.155106', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-06-13 17:48:04.171941', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-06-13 17:48:04.177070', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-06-13 17:48:07.864413', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-06-13 17:48:08.473588', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-06-13 17:48:09.960164', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-06-13 17:48:11.452231', '/myapp/index/comment/listMyComments', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-06-13 17:48:12.727728', '/myapp/index/address/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-06-13 17:48:14.077691', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-06-13 17:48:15.140222', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-06-13 17:48:16.794082', '/myapp/index/order/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-06-13 17:48:43.741902', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-06-13 17:48:43.762900', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-06-13 17:48:43.772900', '/myapp/index/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-06-13 17:48:43.780018', '/myapp/index/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-06-13 17:48:45.004104', '/myapp/index/thing/getWishThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-06-13 17:48:46.229565', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-06-13 17:49:33.967008', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-06-13 17:49:33.973207', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-06-13 17:49:33.987890', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-06-13 17:49:34.019909', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-06-13 17:49:35.814014', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-06-13 17:49:36.275242', '/myapp/index/comment/listMyComments', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-06-13 17:50:30.056487', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-06-13 17:50:30.957896', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2023-06-13 17:50:32.881028', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2023-06-13 17:50:33.436205', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2023-06-13 17:50:34.489783', '/myapp/index/notice/list_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2023-06-13 17:50:45.307296', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2023-06-13 17:50:50.020293', '/myapp/admin/notice/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2023-06-13 17:50:57.368439', '/myapp/admin/notice/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2023-06-13 17:50:57.428598', '/myapp/admin/notice/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2023-06-13 17:51:02.615857', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2023-06-13 17:51:02.619001', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2023-06-13 17:51:02.622161', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2023-06-13 17:51:02.664246', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2023-06-13 17:51:57.746999', '/myapp/admin/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2023-06-13 17:52:04.126247', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2023-06-13 17:52:04.139244', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2023-06-13 17:52:04.167243', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2023-06-13 18:22:05.997798', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2023-06-13 18:22:05.999756', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2023-06-13 18:22:06.011569', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2023-06-13 18:22:06.058720', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2023-06-13 18:22:08.835738', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2023-06-13 18:22:08.850978', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2023-06-13 18:22:08.860981', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2023-06-13 18:22:08.861981', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2023-06-13 18:22:11.309509', '/myapp/index/comment/listMyComments', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2023-06-13 18:22:12.350121', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2023-06-13 18:22:13.591778', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2023-06-13 18:22:22.755369', '/myapp/index/user/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2023-06-13 18:22:22.812906', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2023-06-13 18:22:23.079518', '/myapp/index/user/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2023-06-13 18:22:23.128057', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2023-06-13 18:22:24.492953', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2023-06-13 18:22:24.918413', '/myapp/index/comment/listMyComments', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2023-06-13 18:22:25.568346', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2023-06-13 18:22:26.517295', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2023-06-13 18:22:26.970216', '/myapp/index/comment/listMyComments', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2023-06-13 18:22:28.061797', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2023-06-13 18:22:28.651666', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2023-06-13 18:22:29.728787', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2023-06-13 18:22:30.238837', '/myapp/index/comment/listMyComments', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2023-06-13 18:22:30.918812', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2023-06-13 18:22:31.649890', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2023-06-13 18:22:32.335500', '/myapp/index/comment/listMyComments', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2023-06-13 18:22:32.903055', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2023-06-13 18:22:43.238628', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2023-06-13 18:22:43.921947', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2023-06-13 18:22:45.241163', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2023-06-13 18:22:46.588765', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2023-06-13 18:22:48.961715', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2023-06-13 18:22:48.964717', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2023-06-13 18:22:48.968723', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2023-06-13 18:22:49.015915', '/myapp/index/tag/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2023-06-13 18:22:51.569486', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2023-06-13 18:22:51.594494', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2023-06-13 18:22:51.601502', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2023-06-13 18:22:51.612656', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2023-06-13 18:22:54.170425', '/myapp/index/thing/addWishUser', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2023-06-13 18:22:54.234006', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2023-06-13 18:22:55.317342', '/myapp/index/address/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2023-06-13 18:22:55.320342', '/myapp/index/address/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2023-06-13 18:22:58.266419', '/myapp/index/order/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2023-06-13 18:22:58.357761', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2023-06-13 18:23:01.351148', '/myapp/index/address/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2023-06-13 18:23:01.353487', '/myapp/index/address/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2023-06-13 18:23:04.365793', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2023-06-13 18:23:04.368793', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2023-06-13 18:23:04.388792', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2023-06-13 18:23:04.415330', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2023-06-13 18:23:06.990817', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2023-06-13 18:23:07.010804', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2023-06-13 18:23:07.012845', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2023-06-13 18:23:07.017708', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2023-06-13 18:23:35.130751', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2023-06-13 18:23:35.136751', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2023-06-13 18:23:35.160278', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2023-06-13 18:23:35.193280', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2023-06-13 18:23:38.995346', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2023-06-13 18:23:39.033078', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2023-06-13 18:23:39.035108', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2023-06-13 18:23:39.047207', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2023-06-13 18:24:02.548763', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2023-06-13 18:24:03.975872', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2023-06-13 18:24:04.708368', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2023-06-13 18:24:06.007293', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2023-06-13 18:24:06.550421', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2023-06-13 18:24:07.246761', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2023-06-13 18:24:08.122947', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2023-06-13 18:24:08.546216', '/myapp/index/comment/listMyComments', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2023-06-13 18:24:09.051827', '/myapp/index/order/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2023-06-13 18:24:09.774020', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2023-06-13 18:24:11.045550', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2023-06-13 18:24:11.875958', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2023-06-13 18:24:19.138355', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2023-06-13 18:24:19.149238', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2023-06-13 18:24:19.162245', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2023-06-13 18:24:19.173245', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2023-06-13 18:24:20.091609', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2023-06-13 18:24:20.115852', '/myapp/index/address/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2023-06-13 18:24:21.904183', '/myapp/index/order/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2023-06-13 18:24:21.993407', '/myapp/index/notice/list_api', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2023-06-13 18:24:25.520907', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2023-06-13 18:24:25.538600', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2023-06-13 18:24:25.540755', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2023-06-13 18:24:25.552829', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2023-06-13 18:24:30.384720', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2023-06-13 18:24:31.178192', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2023-06-13 18:24:32.340161', '/myapp/index/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2023-06-13 18:24:34.552284', '/myapp/index/order/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2023-06-13 18:24:39.680470', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2023-06-13 18:24:39.685882', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2023-06-13 18:24:39.696015', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2023-06-13 18:24:39.724234', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2023-06-13 18:24:41.552040', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2023-06-13 18:24:41.582042', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2023-06-13 18:24:43.796443', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2023-06-13 18:24:43.806735', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2023-06-13 18:24:43.824304', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2023-06-13 18:24:43.868311', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2023-06-13 18:24:49.979260', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2023-06-13 18:24:50.004384', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2023-06-13 18:24:50.024920', '/myapp/index/thing/getWishThingList', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2023-06-13 18:24:50.027919', '/myapp/index/thing/getWishThingList', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2023-06-13 18:24:51.553698', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2023-06-13 18:24:52.719350', '/myapp/index/order/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2023-06-13 18:24:55.103491', '/myapp/index/comment/listMyComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2023-06-13 18:24:56.021215', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2023-06-13 18:24:57.695022', '/myapp/index/order/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2023-06-13 18:24:59.378045', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2023-06-13 18:25:00.314390', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2023-06-13 18:25:01.629729', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2023-06-13 18:25:02.239826', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2023-06-13 18:25:02.856607', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2023-06-13 18:25:04.476650', '/myapp/index/thing/getWishThingList', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2023-06-13 18:25:05.074292', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2023-06-13 18:25:06.157831', '/myapp/index/comment/listMyComments', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2023-06-13 18:25:06.546115', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2023-06-13 18:25:12.046825', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2023-06-13 18:25:19.091324', '/myapp/index/user/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2023-06-13 18:25:19.142944', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2023-06-13 18:25:19.169928', '/upload/avatar/1686651918244.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2023-06-13 18:25:20.322309', '/myapp/index/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2023-06-13 18:25:20.778431', '/myapp/index/comment/listMyComments', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2023-06-13 18:25:21.332826', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2023-06-13 18:25:21.879919', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2023-06-13 18:25:23.627503', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2023-06-13 18:25:23.629803', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2023-06-13 18:25:23.650249', '/myapp/index/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2023-06-13 18:25:23.685249', '/myapp/index/tag/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2023-06-13 18:26:17.207333', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2023-06-13 18:26:17.231053', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2023-06-13 18:26:17.237339', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2023-06-13 18:26:17.276012', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2023-06-13 18:26:31.214628', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2023-06-13 18:26:31.216678', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2023-06-13 18:26:31.218739', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2023-06-13 18:26:31.258697', '/myapp/index/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2023-06-13 18:26:31.871916', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2023-06-13 18:26:31.902558', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2023-06-13 18:26:31.910770', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2023-06-13 18:26:31.944132', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2023-06-13 18:26:34.140640', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2023-06-13 18:26:34.173552', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2023-06-13 18:26:34.182638', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2023-06-13 18:26:34.220095', '/myapp/index/thing/detail', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2023-06-13 18:26:49.115694', '/myapp/index/user/register', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2023-06-13 18:26:51.811899', '/myapp/index/user/login', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2023-06-13 18:26:51.919782', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2023-06-13 18:26:51.932816', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2023-06-13 18:26:51.936314', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2023-06-13 18:26:51.963298', '/myapp/index/tag/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2023-06-13 18:26:56.326986', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2023-06-13 18:26:56.364531', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2023-06-13 18:26:56.368588', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2023-06-13 18:26:56.389116', '/myapp/index/thing/detail', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2023-06-13 18:26:59.435108', '/myapp/index/thing/addWishUser', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2023-06-13 18:26:59.497631', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2023-06-13 18:26:59.864114', '/myapp/index/thing/addCollectUser', 'POST', NULL, '75');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2023-06-13 18:26:59.891905', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2023-06-13 18:27:01.460907', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2023-06-13 18:27:01.488016', '/myapp/index/address/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2023-06-13 18:27:05.032631', '/myapp/index/order/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2023-06-13 18:27:05.093630', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2023-06-13 18:27:54.300250', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2023-06-13 18:27:54.302847', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2023-06-13 18:27:54.307953', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2023-06-13 18:27:54.349606', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2023-06-13 18:28:01.055297', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2023-06-13 18:28:01.059336', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2023-06-13 18:28:01.063418', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2023-06-13 18:28:01.118382', '/myapp/index/classification/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2023-06-13 18:29:12.459479', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2023-06-13 18:29:14.069244', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2023-06-13 18:29:14.071288', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2023-06-13 18:29:14.073313', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2023-06-13 18:29:14.099353', '/myapp/index/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2023-06-13 18:29:17.380438', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2023-06-13 18:29:19.251813', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2023-06-13 18:29:22.198269', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2023-06-13 18:29:22.212493', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2023-06-13 18:29:22.224488', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2023-06-13 18:29:22.250501', '/myapp/index/thing/detail', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2023-06-13 18:29:27.820838', '/myapp/index/comment/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2023-06-13 18:29:27.869396', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2023-06-13 18:29:30.217774', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2023-06-13 18:29:30.225776', '/myapp/index/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2023-06-13 18:29:30.229767', '/myapp/index/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2023-06-13 18:29:30.256487', '/myapp/index/tag/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2023-06-13 18:29:40.609457', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2023-06-13 18:29:40.636089', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2023-06-13 18:29:40.657162', '/myapp/admin/tag/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2023-06-13 18:29:43.322530', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2023-06-13 18:29:44.205517', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2023-06-13 18:29:45.501938', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2023-06-13 18:29:50.714164', '/myapp/admin/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2023-06-13 18:29:51.770814', '/myapp/admin/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2023-06-13 18:29:57.049293', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2023-06-13 18:29:57.053287', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2023-06-13 18:29:57.063293', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2023-06-13 18:29:57.099303', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2023-06-13 18:29:59.567997', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2023-06-13 18:29:59.583996', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2023-06-13 18:29:59.597998', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2023-06-13 18:29:59.609445', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2023-06-13 18:30:00.678861', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2023-06-13 18:30:00.692887', '/myapp/index/address/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2023-06-13 18:30:02.348235', '/myapp/index/order/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2023-06-13 18:30:02.410313', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2023-06-13 18:30:05.647965', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2023-06-13 18:30:05.653974', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2023-06-13 18:30:05.665973', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2023-06-13 18:30:05.681972', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2023-06-13 18:30:06.533592', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2023-06-13 18:30:06.536594', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2023-06-13 18:30:07.649688', '/myapp/index/order/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2023-06-13 18:30:07.709077', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2023-06-13 18:30:11.402148', '/myapp/admin/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2023-06-13 18:30:12.322783', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2023-06-13 18:30:14.476598', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2023-06-13 18:30:14.480598', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2023-06-13 18:30:14.511022', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2023-06-13 18:30:14.540555', '/myapp/index/thing/detail', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2023-06-13 18:30:21.441531', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2023-06-13 18:30:21.488194', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2023-06-13 18:30:25.623946', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2023-06-13 18:30:25.671458', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2023-06-13 18:30:28.336369', '/myapp/admin/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2023-06-13 18:30:29.197451', '/myapp/admin/order/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2023-06-13 18:30:34.440115', '/myapp/index/comment/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2023-06-13 18:30:34.479124', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2023-06-13 18:30:35.962411', '/myapp/index/comment/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2023-06-13 18:30:36.011525', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2023-06-13 18:30:37.381263', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2023-06-13 18:30:37.431128', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2023-06-13 18:30:38.778076', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2023-06-13 18:30:38.837295', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2023-06-13 18:30:40.145147', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2023-06-13 18:30:40.209858', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2023-06-13 18:30:42.923774', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2023-06-13 18:30:43.417723', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2023-06-13 18:30:44.000112', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2023-06-13 18:30:44.428759', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2023-06-13 18:30:44.907015', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2023-06-13 18:30:45.847206', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2023-06-13 18:30:46.256560', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2023-06-13 18:30:47.262647', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2023-06-13 18:30:47.700275', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2023-06-13 18:30:48.217746', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2023-06-13 18:30:48.658547', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2023-06-13 18:30:49.095173', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2023-06-13 18:30:49.420007', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2023-06-13 18:30:49.875368', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2023-06-13 18:30:50.293383', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2023-06-13 18:30:51.521409', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2023-06-13 18:30:52.651340', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2023-06-13 18:30:54.435619', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2023-06-13 18:30:54.954851', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2023-06-13 18:30:55.990766', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2023-06-13 18:30:56.513665', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2023-06-13 18:30:59.277044', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2023-06-13 18:30:59.285038', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2023-06-13 18:30:59.365873', '/myapp/admin/classification/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2023-06-13 18:31:05.465181', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2023-06-13 18:31:05.651206', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2023-06-13 18:31:11.281928', '/myapp/admin/thing/update', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2023-06-13 18:31:11.411960', '/myapp/admin/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2023-06-13 18:31:12.559110', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2023-06-13 18:31:13.612845', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2023-06-13 18:31:14.766930', '/myapp/admin/order/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2023-06-13 18:31:15.504593', '/myapp/admin/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2023-06-13 18:31:16.619928', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2023-06-13 18:31:19.508286', '/myapp/admin/overview/count', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2023-06-13 18:31:32.059392', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2023-06-13 18:31:32.063010', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2023-06-13 18:31:32.145996', '/myapp/admin/tag/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2023-06-13 18:34:05.118859', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2023-06-13 18:34:15.016308', '/myapp/admin/adminLogin', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2023-06-13 18:34:15.177583', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2023-06-13 18:34:15.200954', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2023-06-13 18:34:15.271277', '/myapp/admin/classification/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2023-06-13 18:34:20.599389', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2023-06-13 18:34:21.043759', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2023-06-13 18:34:21.047669', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2023-06-13 18:34:21.135050', '/myapp/admin/classification/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2023-06-13 18:34:23.273530', '/myapp/admin/thing/update', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2023-06-13 18:34:26.483299', '/myapp/admin/thing/delete', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2023-06-13 18:34:34.014103', '/myapp/admin/thing/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2023-06-13 18:34:36.399365', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2023-06-13 18:34:38.571395', '/myapp/admin/classification/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2023-06-13 18:34:41.190371', '/myapp/admin/classification/delete', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2023-06-13 18:34:42.416373', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2023-06-13 18:34:44.699254', '/myapp/admin/tag/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2023-06-13 18:34:47.060040', '/myapp/admin/order/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2023-06-13 18:34:49.182315', '/myapp/admin/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2023-06-13 18:34:50.632160', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2023-06-13 18:34:51.270503', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2023-06-13 18:34:52.372817', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2023-06-13 18:34:52.402675', '/myapp/admin/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2023-06-13 18:34:52.473456', '/myapp/admin/tag/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2023-06-13 18:35:01.499342', '/myapp/admin/user/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2023-06-13 18:35:03.928875', '/myapp/admin/user/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2023-06-13 18:35:07.275557', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2023-06-13 18:35:07.985637', '/myapp/admin/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2023-06-13 18:35:08.866633', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2023-06-13 18:35:11.924892', '/myapp/admin/ad/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2023-06-13 18:35:15.016938', '/myapp/admin/overview/count', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2023-06-13 18:35:16.361599', '/myapp/admin/loginLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2023-06-13 18:35:16.977112', '/myapp/admin/opLog/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2023-06-13 18:35:17.807512', '/myapp/admin/errorLog/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2023-06-13 18:35:18.305185', '/myapp/admin/loginLog/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2023-06-13 18:35:21.665904', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1069');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2023-06-13 18:35:24.206700', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2023-06-13 18:35:24.208475', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2023-06-13 18:35:24.283292', '/myapp/admin/classification/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2023-06-13 18:37:55.422678', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2023-06-13 18:37:56.319393', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2023-06-13 18:37:56.348291', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2023-06-13 18:37:56.398300', '/myapp/admin/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2023-06-13 18:38:06.301076', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2023-06-13 18:38:09.382701', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2023-06-13 18:38:12.420150', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2023-06-13 18:38:13.874544', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2023-06-13 18:38:14.788004', '/myapp/admin/order/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2023-06-13 18:38:15.645028', '/myapp/admin/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2023-06-13 18:38:16.357303', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2023-06-13 18:38:17.635907', '/myapp/admin/overview/count', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2023-06-13 18:38:19.966338', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1019');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2023-06-13 18:38:21.080558', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2023-06-13 18:38:21.089191', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2023-06-13 18:38:21.140188', '/myapp/admin/tag/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2023-06-13 18:39:54.997549', '/myapp/admin/adminLogin', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2023-06-13 18:39:55.132571', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2023-06-13 18:39:55.135520', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2023-06-13 18:39:55.184255', '/myapp/admin/tag/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2023-06-13 18:39:57.462193', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2023-06-13 18:39:57.466709', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2023-06-13 18:39:57.468702', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2023-06-13 18:39:57.511995', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2023-06-13 18:40:20.383508', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2023-06-13 18:40:20.408344', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2023-06-13 18:40:20.464824', '/myapp/admin/classification/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2023-06-13 18:40:20.644195', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2023-06-13 18:40:20.647253', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2023-06-13 18:40:20.650283', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2023-06-13 18:40:20.675418', '/myapp/index/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2023-06-13 18:40:29.912540', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2023-06-13 18:40:29.916538', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2023-06-13 18:40:29.919539', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2023-06-13 18:40:29.963905', '/myapp/index/classification/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2023-06-13 18:40:32.809496', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2023-06-13 18:40:33.842064', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2023-06-13 18:40:34.369309', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2023-06-13 18:40:35.563971', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2023-06-13 18:40:36.669265', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2023-06-13 18:40:37.788984', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2023-06-13 18:40:38.219692', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2023-06-13 18:40:39.221791', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2023-06-13 18:40:39.710184', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2023-06-13 18:40:40.367332', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2023-06-13 18:40:47.027543', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2023-06-13 18:40:47.028988', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2023-06-13 18:40:47.032089', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2023-06-13 18:40:47.066414', '/myapp/index/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2023-06-13 18:40:49.760553', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2023-06-13 18:40:49.779413', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2023-06-13 18:40:49.823793', '/myapp/admin/tag/list', 'GET', NULL, '66');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1686568622237', 1, '7', '2023-06-12 19:17:02.239724', NULL, NULL, NULL, NULL, NULL, 8, 4);
INSERT INTO `b_order` VALUES (2, '1686651778255', 1, '1', '2023-06-13 18:22:58.261423', NULL, NULL, NULL, NULL, NULL, 2, 4);
INSERT INTO `b_order` VALUES (3, '1686651861885', 1, '1', '2023-06-13 18:24:21.890524', NULL, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO `b_order` VALUES (4, '1686652025008', 2, '1', '2023-06-13 18:27:05.011078', NULL, NULL, NULL, NULL, NULL, 9, 5);
INSERT INTO `b_order` VALUES (5, '1686652202335', 1, '1', '2023-06-13 18:30:02.341198', NULL, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO `b_order` VALUES (6, '1686652207639', 1, '1', '2023-06-13 18:30:07.644687', NULL, NULL, NULL, NULL, NULL, 2, 5);

-- ----------------------------
-- Table structure for b_order_log
-- ----------------------------
DROP TABLE IF EXISTS `b_order_log`;
CREATE TABLE `b_order_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_log_thing_id_7306f624_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_log_user_id_1003e839_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_log_thing_id_7306f624_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_log_user_id_1003e839_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (1, '热水', '2023-06-11 21:58:56.441980');
INSERT INTO `b_tag` VALUES (2, '空调', '2023-06-11 21:59:02.191450');
INSERT INTO `b_tag` VALUES (3, '电视', '2023-06-11 21:59:10.699057');
INSERT INTO `b_tag` VALUES (4, '独立卫浴', '2023-06-11 21:59:19.214431');
INSERT INTO `b_tag` VALUES (5, '靠窗', '2023-06-11 21:59:35.697687');
INSERT INTO `b_tag` VALUES (6, '宽带', '2023-06-11 21:59:52.779035');
INSERT INTO `b_tag` VALUES (7, '电脑', '2023-06-11 21:59:57.932536');
INSERT INTO `b_tag` VALUES (8, '早餐', '2023-06-11 22:00:14.390170');
INSERT INTO `b_tag` VALUES (9, '带阳台', '2023-06-11 22:01:09.699814');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `window` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `sheshi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '温馨情侣房', 'cover/1686567295847.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '330', '有', '上海市南京路104号', '0', '2023-06-11 22:08:13.846563', 0, 0, 0, 0, 4, '空调、热水、电视');
INSERT INTO `b_thing` VALUES (2, '豪华双床房', 'cover/1686566201202.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '200', '有', '上海市南京路104号', '0', '2023-06-12 18:38:03.524310', 0, 0, 1, 0, 5, '空调、热水、电视');
INSERT INTO `b_thing` VALUES (3, '普通房间（带窗）', 'cover/1686567336148.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '200', '有', '上海市南京路104号', '0', '2023-06-12 18:55:47.205747', 0, 0, 0, 0, 3, '空调、热水、电视');
INSERT INTO `b_thing` VALUES (4, '豪华总统套房', 'cover/1686567367320.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '800', '有', '上海市南京路104号', '0', '2023-06-12 18:56:17.914221', 0, 0, 0, 0, 2, '空调、热水、电视');
INSERT INTO `b_thing` VALUES (5, '豪华房间带电视', 'cover/1686567409207.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '300', '有', '上海市南京路104号', '0', '2023-06-12 18:57:00.248384', 0, 0, 0, 0, 2, '空调、热水、电视');
INSERT INTO `b_thing` VALUES (6, '豪华海景房', 'cover/1686567441225.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '400', '有', '上海市南京路104号', '0', '2023-06-12 18:57:32.511750', 0, 0, 0, 0, 1, '空调、热水、电视');
INSERT INTO `b_thing` VALUES (7, '普通房间带空调', 'cover/1686567528337.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '300', '有', '上海市南京路104号', '0', '2023-06-12 18:58:58.433253', 0, 0, 0, 0, 1, '空调、热水、电视');
INSERT INTO `b_thing` VALUES (8, '普通房间带电视', 'cover/1686567554002.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '200', '有', '上海市南京路104号', '0', '2023-06-12 18:59:24.527898', 0, 0, 1, 1, 2, '空调、热水、电视');
INSERT INTO `b_thing` VALUES (9, '浪漫情侣套间', 'cover/1686567594332.png', '米白色的墙壁，装饰着暖色调的贴纸，桔黄色的灯光散落在房间，舒适柔软的大床，床上洒满了五颜六色的花瓣，摆着卡哇伊的动物造型，茶几上写着温馨舒适的语句，悠扬的钢琴曲在房间响起。一走进去，你就会不自觉的放松下来，慢下来，享受着舒适的环境。', '399', '有', '上海市南京路104号', '0', '2023-06-12 19:00:06.938271', 0, 0, 1, 1, 4, '空调、热水、电视、卫浴');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 8, 4);
INSERT INTO `b_thing_collect` VALUES (2, 9, 5);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` VALUES (5, 1, 2);
INSERT INTO `b_thing_tag` VALUES (6, 1, 3);
INSERT INTO `b_thing_tag` VALUES (7, 1, 6);
INSERT INTO `b_thing_tag` VALUES (1, 1, 7);
INSERT INTO `b_thing_tag` VALUES (3, 2, 5);
INSERT INTO `b_thing_tag` VALUES (4, 2, 7);
INSERT INTO `b_thing_tag` VALUES (2, 2, 8);
INSERT INTO `b_thing_tag` VALUES (37, 3, 1);
INSERT INTO `b_thing_tag` VALUES (8, 3, 4);
INSERT INTO `b_thing_tag` VALUES (9, 3, 6);
INSERT INTO `b_thing_tag` VALUES (10, 3, 7);
INSERT INTO `b_thing_tag` VALUES (11, 4, 2);
INSERT INTO `b_thing_tag` VALUES (12, 4, 3);
INSERT INTO `b_thing_tag` VALUES (13, 4, 6);
INSERT INTO `b_thing_tag` VALUES (14, 4, 7);
INSERT INTO `b_thing_tag` VALUES (15, 5, 2);
INSERT INTO `b_thing_tag` VALUES (16, 5, 3);
INSERT INTO `b_thing_tag` VALUES (17, 5, 4);
INSERT INTO `b_thing_tag` VALUES (18, 5, 5);
INSERT INTO `b_thing_tag` VALUES (19, 5, 6);
INSERT INTO `b_thing_tag` VALUES (20, 5, 7);
INSERT INTO `b_thing_tag` VALUES (21, 5, 8);
INSERT INTO `b_thing_tag` VALUES (22, 5, 9);
INSERT INTO `b_thing_tag` VALUES (23, 6, 2);
INSERT INTO `b_thing_tag` VALUES (24, 6, 6);
INSERT INTO `b_thing_tag` VALUES (25, 6, 7);
INSERT INTO `b_thing_tag` VALUES (26, 6, 8);
INSERT INTO `b_thing_tag` VALUES (27, 6, 9);
INSERT INTO `b_thing_tag` VALUES (36, 7, 1);
INSERT INTO `b_thing_tag` VALUES (28, 7, 3);
INSERT INTO `b_thing_tag` VALUES (29, 7, 5);
INSERT INTO `b_thing_tag` VALUES (30, 7, 7);
INSERT INTO `b_thing_tag` VALUES (32, 8, 7);
INSERT INTO `b_thing_tag` VALUES (31, 8, 8);
INSERT INTO `b_thing_tag` VALUES (34, 9, 4);
INSERT INTO `b_thing_tag` VALUES (35, 9, 6);
INSERT INTO `b_thing_tag` VALUES (33, 9, 9);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 2, 4);
INSERT INTO `b_thing_wish` VALUES (1, 8, 4);
INSERT INTO `b_thing_wish` VALUES (3, 9, 5);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-11 22:01:52.553701', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-11 22:02:07.338117', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'ddddd', '50f84daf3a6dfd6a9f20c9f8ef428942', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-11 22:02:22.195921', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (4, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'dawd', 'avatar/1686651918244.jpeg', '132', 'a', NULL, 'a', '2023-06-12 19:08:43.599953', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (5, 'ccc', '9df62e693988eb4e1e1444ece0578579', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-13 18:26:49.110312', 0, NULL, 0, NULL, '9df62e693988eb4e1e1444ece0578579');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-06-11 21:47:06.557541');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-06-11 21:47:06.863006');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-06-11 21:47:06.937607');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-11 21:47:06.947871');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-11 21:47:06.954823');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-11 21:47:07.038812');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-06-11 21:47:07.093456');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-06-11 21:47:07.153032');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-06-11 21:47:07.165982');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-06-11 21:47:07.207186');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-06-11 21:47:07.211070');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-11 21:47:07.218624');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-06-11 21:47:07.273641');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-11 21:47:07.337958');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-06-11 21:47:07.396361');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-06-11 21:47:07.402628');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-11 21:47:07.456736');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-06-11 21:47:08.390633');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2023-06-11 21:47:08.433561');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0002_thing_sheshi', '2023-06-11 22:11:44.838091');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
