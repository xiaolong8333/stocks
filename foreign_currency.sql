/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50730
Source Host           : 192.168.0.150:3306
Source Database       : foreign_currency

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-07-31 16:10:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '仪表板', 'fa-bar-chart', '/', null, null, '2020-07-15 08:23:08');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '管理员', 'fa-users', 'auth/users', null, null, '2020-07-15 08:21:36');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色', 'fa-user', 'auth/roles', null, null, '2020-07-15 08:21:46');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限', 'fa-ban', 'auth/permissions', null, null, '2020-07-15 08:21:55');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单', 'fa-bars', 'auth/menu', null, null, '2020-07-15 08:22:03');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, null, '2020-07-15 08:22:12');
INSERT INTO `admin_menu` VALUES ('8', '9', '0', '外汇列表', 'fa-server', '/foreign-exchang-lists', '*', '2020-07-16 01:22:53', '2020-07-16 02:37:10');
INSERT INTO `admin_menu` VALUES ('9', '0', '0', '外汇', 'fa-indent', null, null, '2020-07-16 02:36:46', '2020-07-16 02:36:46');
INSERT INTO `admin_menu` VALUES ('10', '0', '0', '用户管理', 'fa-users', '/', null, '2020-07-16 02:38:41', '2020-07-16 03:01:41');
INSERT INTO `admin_menu` VALUES ('11', '10', '0', '用户列表', 'fa-user', '/users', null, '2020-07-16 02:58:19', '2020-07-16 03:04:59');
INSERT INTO `admin_menu` VALUES ('12', '10', '0', '订单列表', 'fa-dollar', '/orders', null, '2020-07-16 08:21:14', '2020-07-20 02:20:56');
INSERT INTO `admin_menu` VALUES ('13', '10', '0', '金流记录', 'fa-shekel', '/money-records', null, '2020-07-20 03:36:56', '2020-07-20 03:36:56');
INSERT INTO `admin_menu` VALUES ('14', '0', '0', '配置管理', 'fa-gear', null, null, '2020-07-20 03:45:31', '2020-07-20 03:47:29');
INSERT INTO `admin_menu` VALUES ('15', '14', '0', '配置设置', 'fa-gears', '/configs', null, '2020-07-20 03:45:53', '2020-07-20 03:47:44');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1040 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:30:58', '2020-07-15 07:30:58');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:32:03', '2020-07-15 07:32:03');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 07:32:07', '2020-07-15 07:32:07');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 07:32:08', '2020-07-15 07:32:08');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:32:40', '2020-07-15 07:32:40');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:32:42', '2020-07-15 07:32:42');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:33:02', '2020-07-15 07:33:02');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 07:33:05', '2020-07-15 07:33:05');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 07:33:06', '2020-07-15 07:33:06');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:33:18', '2020-07-15 07:33:18');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:33:41', '2020-07-15 07:33:41');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:33:57', '2020-07-15 07:33:57');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:34:18', '2020-07-15 07:34:18');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:36:57', '2020-07-15 07:36:57');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-15 07:37:40', '2020-07-15 07:37:40');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:19:24', '2020-07-15 08:19:24');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:19:27', '2020-07-15 08:19:27');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:19:30', '2020-07-15 08:19:30');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:19:34', '2020-07-15 08:19:34');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:21:22', '2020-07-15 08:21:22');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:21:26', '2020-07-15 08:21:26');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu/3', 'PUT', '192.168.0.140', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"IpLB7WeRZoHjcOApxTwsZfByXXJody8RththWCEh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-15 08:21:35', '2020-07-15 08:21:35');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-15 08:21:36', '2020-07-15 08:21:36');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu/4/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:21:39', '2020-07-15 08:21:39');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu/4', 'PUT', '192.168.0.140', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"IpLB7WeRZoHjcOApxTwsZfByXXJody8RththWCEh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-15 08:21:46', '2020-07-15 08:21:46');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-15 08:21:46', '2020-07-15 08:21:46');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu/5/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:21:49', '2020-07-15 08:21:49');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu/5', 'PUT', '192.168.0.140', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"IpLB7WeRZoHjcOApxTwsZfByXXJody8RththWCEh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-15 08:21:55', '2020-07-15 08:21:55');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-15 08:21:55', '2020-07-15 08:21:55');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:21:58', '2020-07-15 08:21:58');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/menu/6', 'PUT', '192.168.0.140', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"IpLB7WeRZoHjcOApxTwsZfByXXJody8RththWCEh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-15 08:22:03', '2020-07-15 08:22:03');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-15 08:22:03', '2020-07-15 08:22:03');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:22:06', '2020-07-15 08:22:06');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu/7', 'PUT', '192.168.0.140', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"IpLB7WeRZoHjcOApxTwsZfByXXJody8RththWCEh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-15 08:22:12', '2020-07-15 08:22:12');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-15 08:22:12', '2020-07-15 08:22:12');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-15 08:22:23', '2020-07-15 08:22:23');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:22:28', '2020-07-15 08:22:28');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:23:00', '2020-07-15 08:23:00');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:23:02', '2020-07-15 08:23:02');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu/1', 'PUT', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u4eea\\u8868\\u677f\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"IpLB7WeRZoHjcOApxTwsZfByXXJody8RththWCEh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-15 08:23:08', '2020-07-15 08:23:08');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-15 08:23:09', '2020-07-15 08:23:09');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-15 08:23:11', '2020-07-15 08:23:11');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:23:18', '2020-07-15 08:23:18');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '[]', '2020-07-15 08:23:49', '2020-07-15 08:23:49');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:24:53', '2020-07-15 08:24:53');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:31:48', '2020-07-15 08:31:48');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:32:14', '2020-07-15 08:32:14');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '[]', '2020-07-15 08:32:17', '2020-07-15 08:32:17');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:32:19', '2020-07-15 08:32:19');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/permissions', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:32:20', '2020-07-15 08:32:20');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:32:20', '2020-07-15 08:32:20');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:32:21', '2020-07-15 08:32:21');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:32:22', '2020-07-15 08:32:22');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:43:08', '2020-07-15 08:43:08');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:43:17', '2020-07-15 08:43:17');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:43:20', '2020-07-15 08:43:20');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/permissions', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:43:21', '2020-07-15 08:43:21');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:43:24', '2020-07-15 08:43:24');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:43:30', '2020-07-15 08:43:30');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:49:27', '2020-07-15 08:49:27');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:49:31', '2020-07-15 08:49:31');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:49:35', '2020-07-15 08:49:35');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:49:37', '2020-07-15 08:49:37');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:49:41', '2020-07-15 08:49:41');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-15 08:49:44', '2020-07-15 08:49:44');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 01:21:27', '2020-07-16 01:21:27');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:21:33', '2020-07-16 01:21:33');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u5916\\u6c47\\u5217\\u8868\",\"icon\":\"fa-server\",\"uri\":\"\\/foreign-exchang-lists\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\"}', '2020-07-16 01:22:53', '2020-07-16 01:22:53');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 01:22:53', '2020-07-16 01:22:53');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:22:58', '2020-07-16 01:22:58');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 01:23:01', '2020-07-16 01:23:01');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:23:03', '2020-07-16 01:23:03');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:24:36', '2020-07-16 01:24:36');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:24:50', '2020-07-16 01:24:50');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:25:17', '2020-07-16 01:25:17');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:25:19', '2020-07-16 01:25:19');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:28:56', '2020-07-16 01:28:56');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:29:40', '2020-07-16 01:29:40');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:34:33', '2020-07-16 01:34:33');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:36:37', '2020-07-16 01:36:37');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:36:40', '2020-07-16 01:36:40');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:36:42', '2020-07-16 01:36:42');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '[]', '2020-07-16 01:37:11', '2020-07-16 01:37:11');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 01:40:04', '2020-07-16 01:40:04');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:40:05', '2020-07-16 01:40:05');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:41:02', '2020-07-16 01:41:02');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:46:32', '2020-07-16 01:46:32');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:47:42', '2020-07-16 01:47:42');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:48:20', '2020-07-16 01:48:20');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:49:01', '2020-07-16 01:49:01');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:50:15', '2020-07-16 01:50:15');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:57:49', '2020-07-16 01:57:49');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:57:52', '2020-07-16 01:57:52');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:57:58', '2020-07-16 01:57:58');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/foreign-exchang-lists/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 01:58:01', '2020-07-16 01:58:01');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/foreign-exchang-lists/1', 'PUT', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 01:58:17', '2020-07-16 01:58:17');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 01:58:17', '2020-07-16 01:58:17');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:03:29', '2020-07-16 02:03:29');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/foreign-exchang-lists/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:03:38', '2020-07-16 02:03:38');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/foreign-exchang-lists/1', 'PUT', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:03:48', '2020-07-16 02:03:48');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:03:48', '2020-07-16 02:03:48');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 02:04:06', '2020-07-16 02:04:06');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/foreign-exchang-lists/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:04:58', '2020-07-16 02:04:58');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/foreign-exchang-lists/1', 'PUT', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:05:22', '2020-07-16 02:05:22');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:05:23', '2020-07-16 02:05:23');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/foreign-exchang-lists/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:06:21', '2020-07-16 02:06:21');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/foreign-exchang-lists/1', 'PUT', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:06:30', '2020-07-16 02:06:30');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:06:30', '2020-07-16 02:06:30');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/foreign-exchang-lists/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:08:20', '2020-07-16 02:08:20');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/foreign-exchang-lists/1', 'PUT', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:08:28', '2020-07-16 02:08:28');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:08:28', '2020-07-16 02:08:28');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/foreign-exchang-lists/1/edit', 'GET', '192.168.0.140', '[]', '2020-07-16 02:10:15', '2020-07-16 02:10:15');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/foreign-exchang-lists/1', 'PUT', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:10:30', '2020-07-16 02:10:30');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:10:30', '2020-07-16 02:10:30');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:19:59', '2020-07-16 02:19:59');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/foreign-exchang-lists/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:20:02', '2020-07-16 02:20:02');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/foreign-exchang-lists/1', 'PUT', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:20:11', '2020-07-16 02:20:11');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:20:11', '2020-07-16 02:20:11');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:20:16', '2020-07-16 02:20:16');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:24:31', '2020-07-16 02:24:31');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/foreign-exchang-lists/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:24:35', '2020-07-16 02:24:35');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/foreign-exchang-lists/1', 'PUT', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"code\":\"USD\",\"name\":\"\\u7f8e\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:24:44', '2020-07-16 02:24:44');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:24:44', '2020-07-16 02:24:44');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:25:28', '2020-07-16 02:25:28');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:25:37', '2020-07-16 02:25:37');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:26:03', '2020-07-16 02:26:03');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:26:15', '2020-07-16 02:26:15');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:26:58', '2020-07-16 02:26:58');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:27:01', '2020-07-16 02:27:01');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:27:12', '2020-07-16 02:27:12');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:27:19', '2020-07-16 02:27:19');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:28:08', '2020-07-16 02:28:08');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:28:36', '2020-07-16 02:28:36');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:29:27', '2020-07-16 02:29:27');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:29:53', '2020-07-16 02:29:53');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:30:06', '2020-07-16 02:30:06');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:30:47', '2020-07-16 02:30:47');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCNH\",\"code\":\"AUD\",\"name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:33:17', '2020-07-16 02:33:17');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:33:17', '2020-07-16 02:33:17');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:33:27', '2020-07-16 02:33:27');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"CADCNH\",\"code\":\"CAD\",\"name\":\"\\u52a0\\u62ff\\u5927\\u5143\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/foreign-exchang-lists\"}', '2020-07-16 02:35:07', '2020-07-16 02:35:07');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-16 02:35:08', '2020-07-16 02:35:08');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:35:35', '2020-07-16 02:35:35');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:35:36', '2020-07-16 02:35:36');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:35:49', '2020-07-16 02:35:49');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:35:58', '2020-07-16 02:35:58');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:36:06', '2020-07-16 02:36:06');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u5916\\u6c47\",\"icon\":\"fa-indent\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\"}', '2020-07-16 02:36:46', '2020-07-16 02:36:46');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 02:36:46', '2020-07-16 02:36:46');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 02:36:50', '2020-07-16 02:36:50');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:36:52', '2020-07-16 02:36:52');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:36:57', '2020-07-16 02:36:57');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:37:02', '2020-07-16 02:37:02');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/auth/menu/8', 'PUT', '192.168.0.140', '{\"parent_id\":\"9\",\"title\":\"\\u5916\\u6c47\\u5217\\u8868\",\"icon\":\"fa-server\",\"uri\":\"\\/foreign-exchang-lists\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-16 02:37:10', '2020-07-16 02:37:10');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 02:37:11', '2020-07-16 02:37:11');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 02:37:12', '2020-07-16 02:37:12');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:37:15', '2020-07-16 02:37:15');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:37:35', '2020-07-16 02:37:35');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\"}', '2020-07-16 02:38:41', '2020-07-16 02:38:41');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 02:38:41', '2020-07-16 02:38:41');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 02:38:46', '2020-07-16 02:38:46');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:38:50', '2020-07-16 02:38:50');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:39:06', '2020-07-16 02:39:06');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:39:13', '2020-07-16 02:39:13');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:39:16', '2020-07-16 02:39:16');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:39:22', '2020-07-16 02:39:22');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:39:46', '2020-07-16 02:39:46');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:39:51', '2020-07-16 02:39:51');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 02:56:10', '2020-07-16 02:56:10');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:56:15', '2020-07-16 02:56:15');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"10\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-user\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\"}', '2020-07-16 02:58:19', '2020-07-16 02:58:19');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 02:58:20', '2020-07-16 02:58:20');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:23', '2020-07-16 02:58:23');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:24', '2020-07-16 02:58:24');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:26', '2020-07-16 02:58:26');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:29', '2020-07-16 02:58:29');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:32', '2020-07-16 02:58:32');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:36', '2020-07-16 02:58:36');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/menu/10/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:40', '2020-07-16 02:58:40');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:51', '2020-07-16 02:58:51');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:58:55', '2020-07-16 02:58:55');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:59:02', '2020-07-16 02:59:02');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:59:13', '2020-07-16 02:59:13');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/auth/menu/10/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:59:19', '2020-07-16 02:59:19');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:59:54', '2020-07-16 02:59:54');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 02:59:59', '2020-07-16 02:59:59');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:03', '2020-07-16 03:00:03');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:05', '2020-07-16 03:00:05');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:09', '2020-07-16 03:00:09');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:13', '2020-07-16 03:00:13');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:19', '2020-07-16 03:00:19');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:34', '2020-07-16 03:00:34');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/auth/menu/10/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:39', '2020-07-16 03:00:39');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:52', '2020-07-16 03:00:52');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:00:56', '2020-07-16 03:00:56');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:04', '2020-07-16 03:01:04');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:08', '2020-07-16 03:01:08');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:12', '2020-07-16 03:01:12');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/auth/menu/10/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:16', '2020-07-16 03:01:16');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/auth/menu/10', 'PUT', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-16 03:01:41', '2020-07-16 03:01:41');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 03:01:41', '2020-07-16 03:01:41');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:44', '2020-07-16 03:01:44');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:45', '2020-07-16 03:01:45');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:49', '2020-07-16 03:01:49');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:54', '2020-07-16 03:01:54');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/auth/menu/11/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:01:58', '2020-07-16 03:01:58');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/auth/menu/11', 'PUT', '192.168.0.140', '{\"parent_id\":\"10\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-user\",\"uri\":\"\\/user\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-16 03:02:08', '2020-07-16 03:02:08');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 03:02:09', '2020-07-16 03:02:09');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:11', '2020-07-16 03:02:11');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:12', '2020-07-16 03:02:12');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:13', '2020-07-16 03:02:13');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:16', '2020-07-16 03:02:16');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:22', '2020-07-16 03:02:22');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:26', '2020-07-16 03:02:26');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:29', '2020-07-16 03:02:29');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:30', '2020-07-16 03:02:30');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:31', '2020-07-16 03:02:31');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:37', '2020-07-16 03:02:37');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:02:40', '2020-07-16 03:02:40');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:03:05', '2020-07-16 03:03:05');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:03:14', '2020-07-16 03:03:14');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:03:16', '2020-07-16 03:03:16');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 03:03:52', '2020-07-16 03:03:52');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 03:03:55', '2020-07-16 03:03:55');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:04:28', '2020-07-16 03:04:28');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-16 03:04:41', '2020-07-16 03:04:41');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:04:48', '2020-07-16 03:04:48');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/auth/menu/11/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:04:52', '2020-07-16 03:04:52');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/auth/menu/11', 'PUT', '192.168.0.140', '{\"parent_id\":\"10\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-user\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\"}', '2020-07-16 03:04:59', '2020-07-16 03:04:59');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 03:04:59', '2020-07-16 03:04:59');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 03:05:06', '2020-07-16 03:05:06');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:05:09', '2020-07-16 03:05:09');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:05:11', '2020-07-16 03:05:11');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:05:15', '2020-07-16 03:05:15');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-16 03:06:52', '2020-07-16 03:06:52');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:06:55', '2020-07-16 03:06:55');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"\\u65e9\\u7c7c\\u7a3b\",\"email\":\"326499439@qq.com\",\"email_verified_at\":\"2020-07-16 03:06:56\",\"password\":\"123456\",\"balance\":\"1\",\"status\":\"on\",\"level\":\"on\",\"end_time\":\"2020-07-16 03:06:56\",\"remember_token\":\"werwrewr\",\"_token\":\"TcYuD5cj1U6TTVi9gKEWrCZCopNU6KJvEr3kRtHe\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/users\"}', '2020-07-16 03:07:16', '2020-07-16 03:07:16');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-16 03:07:16', '2020-07-16 03:07:16');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:07:57', '2020-07-16 03:07:57');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:07:59', '2020-07-16 03:07:59');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:08:17', '2020-07-16 03:08:17');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:08:29', '2020-07-16 03:08:29');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 03:08:55', '2020-07-16 03:08:55');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-16 03:12:08', '2020-07-16 03:12:08');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-16 03:12:29', '2020-07-16 03:12:29');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-16 06:30:15', '2020-07-16 06:30:15');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 06:30:19', '2020-07-16 06:30:19');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 06:37:41', '2020-07-16 06:37:41');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 06:37:47', '2020-07-16 06:37:47');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 06:37:48', '2020-07-16 06:37:48');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 06:38:15', '2020-07-16 06:38:15');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:15:26', '2020-07-16 08:15:26');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:20:15', '2020-07-16 08:20:15');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"10\",\"title\":\"\\u7528\\u6237\\u5916\\u6c47\\u5217\\u8868\",\"icon\":\"fa-dollar\",\"uri\":\"\\/trade-buys\",\"roles\":[null],\"permission\":null,\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\"}', '2020-07-16 08:21:14', '2020-07-16 08:21:14');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 08:21:15', '2020-07-16 08:21:15');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 08:21:19', '2020-07-16 08:21:19');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:21:22', '2020-07-16 08:21:22');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:21:25', '2020-07-16 08:21:25');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:21:27', '2020-07-16 08:21:27');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '[]', '2020-07-16 08:22:31', '2020-07-16 08:22:31');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:22:36', '2020-07-16 08:22:36');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:22:38', '2020-07-16 08:22:38');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '[]', '2020-07-16 08:23:11', '2020-07-16 08:23:11');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:34:06', '2020-07-16 08:34:06');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:34:08', '2020-07-16 08:34:08');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:34:10', '2020-07-16 08:34:10');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:34:13', '2020-07-16 08:34:13');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:34:14', '2020-07-16 08:34:14');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:34:44', '2020-07-16 08:34:44');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/trade-buys', 'POST', '192.168.0.140', '{\"trade_no\":\"645984654\",\"user_id\":\"1\",\"blance\":\"7\",\"code_all\":\"USDCNH\",\"scur\":\"USD\",\"tcur\":\"CNH\",\"buy_price\":\"7.0000\",\"stop_loss\":\"7.2222\",\"stop_profit\":\"7.2333\",\"status\":\"off\",\"remark\":null,\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/trade-buys\"}', '2020-07-16 08:35:18', '2020-07-16 08:35:18');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '[]', '2020-07-16 08:35:18', '2020-07-16 08:35:18');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/trade-buys', 'POST', '192.168.0.140', '{\"trade_no\":\"645984654\",\"user_id\":\"1\",\"blance\":\"7\",\"code_all\":\"USDCNH\",\"scur\":\"USD\",\"tcur\":\"CNH\",\"buy_price\":\"7.0000\",\"stop_loss\":\"7.2222\",\"stop_profit\":\"7.2333\",\"status\":\"on\",\"remark\":\"65465\",\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\"}', '2020-07-16 08:36:08', '2020-07-16 08:36:08');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '[]', '2020-07-16 08:36:09', '2020-07-16 08:36:09');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:36:52', '2020-07-16 08:36:52');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/trade-buys', 'POST', '192.168.0.140', '{\"trade_no\":\"wdsd\",\"user_id\":\"1\",\"blance\":\"7\",\"code_all\":\"USDCNH\",\"scur\":\"USD\",\"tcur\":\"CNH\",\"buy_price\":\"7.0000\",\"stop_loss\":\"7.2222\",\"stop_profit\":\"7.2333\",\"status\":\"off\",\"remark\":\"sdfsdfsf\",\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/trade-buys\"}', '2020-07-16 08:37:05', '2020-07-16 08:37:05');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '[]', '2020-07-16 08:37:05', '2020-07-16 08:37:05');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:37:15', '2020-07-16 08:37:15');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/trade-buys', 'POST', '192.168.0.140', '{\"trade_no\":\"asdfwe\",\"user_id\":\"1\",\"blance\":\"0\",\"code_all\":\"USDCNH\",\"scur\":\"USD\",\"tcur\":\"CNH\",\"buy_price\":\"7.0000\",\"stop_loss\":\"7.2222\",\"stop_profit\":\"7.2333\",\"status\":\"off\",\"remark\":null,\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/trade-buys\"}', '2020-07-16 08:37:29', '2020-07-16 08:37:29');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '[]', '2020-07-16 08:37:29', '2020-07-16 08:37:29');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/trade-buys', 'POST', '192.168.0.140', '{\"trade_no\":\"asdfwe\",\"user_id\":\"1\",\"blance\":\"0\",\"code_all\":\"USDCNH\",\"scur\":\"USD\",\"tcur\":\"CNH\",\"buy_price\":\"7.0000\",\"stop_loss\":\"7.2222\",\"stop_profit\":\"7.2333\",\"status\":\"off\",\"remark\":null,\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\"}', '2020-07-16 08:38:35', '2020-07-16 08:38:35');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '[]', '2020-07-16 08:38:35', '2020-07-16 08:38:35');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '[]', '2020-07-16 08:39:09', '2020-07-16 08:39:09');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/trade-buys', 'POST', '192.168.0.140', '{\"trade_no\":\"wdsd\",\"user_id\":\"1\",\"blance\":\"1\",\"code_all\":\"USDCNH\",\"scur\":\"USD\",\"tcur\":\"CNH\",\"buy_price\":\"7.0000\",\"stop_loss\":\"7.2222\",\"stop_profit\":\"7.2333\",\"status\":\"off\",\"remark\":null,\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/trade-buys\"}', '2020-07-16 08:39:20', '2020-07-16 08:39:20');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '[]', '2020-07-16 08:39:21', '2020-07-16 08:39:21');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/trade-buys/create', 'GET', '192.168.0.140', '[]', '2020-07-16 08:41:55', '2020-07-16 08:41:55');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/trade-buys', 'POST', '192.168.0.140', '{\"trade_no\":\"wdsd\",\"user_id\":\"1\",\"blance\":\"1\",\"code_all\":\"USDCNH\",\"scur\":\"USD\",\"tcur\":\"CNH\",\"buy_price\":\"7.0000\",\"stop_loss\":\"7.2222\",\"stop_profit\":\"7.2333\",\"status\":\"off\",\"remark\":null,\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\"}', '2020-07-16 08:43:54', '2020-07-16 08:43:54');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '[]', '2020-07-16 08:43:54', '2020-07-16 08:43:54');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '[]', '2020-07-16 08:48:54', '2020-07-16 08:48:54');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 08:50:12', '2020-07-16 08:50:12');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:04:02', '2020-07-16 09:04:02');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:04:03', '2020-07-16 09:04:03');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:05:46', '2020-07-16 09:05:46');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:05:47', '2020-07-16 09:05:47');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:05:50', '2020-07-16 09:05:50');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:05:51', '2020-07-16 09:05:51');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:05:53', '2020-07-16 09:05:53');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:05:57', '2020-07-16 09:05:57');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:05:59', '2020-07-16 09:05:59');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:06:03', '2020-07-16 09:06:03');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:06:07', '2020-07-16 09:06:07');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:06:28', '2020-07-16 09:06:28');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-16 09:06:40', '2020-07-16 09:06:40');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:06:42', '2020-07-16 09:06:42');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:06:48', '2020-07-16 09:06:48');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/auth/setting', 'PUT', '192.168.0.140', '{\"name\":\"Administrator\",\"password\":\"$2y$10$2\\/VIsLK1PFAnpJMSX7j8cebL.BmxGLOotwt\\/qC0FQ7eS86tDb.IJW\",\"password_confirmation\":\"$2y$10$2\\/VIsLK1PFAnpJMSX7j8cebL.BmxGLOotwt\\/qC0FQ7eS86tDb.IJW\",\"_token\":\"tGO5Qm6v1zixd1bQIQegyIc1LU6l85RDyhcnQYtD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.172:8081\\/admin\\/auth\\/menu\\/1\\/edit\"}', '2020-07-16 09:09:12', '2020-07-16 09:09:12');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '[]', '2020-07-16 09:09:13', '2020-07-16 09:09:13');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '[]', '2020-07-16 09:09:22', '2020-07-16 09:09:22');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/auth/logout', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:09:28', '2020-07-16 09:09:28');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 09:09:36', '2020-07-16 09:09:36');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/auth/login', 'GET', '192.168.0.140', '[]', '2020-07-16 09:09:42', '2020-07-16 09:09:42');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 09:09:42', '2020-07-16 09:09:42');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 09:09:50', '2020-07-16 09:09:50');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/auth/logout', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:09:57', '2020-07-16 09:09:57');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 09:10:06', '2020-07-16 09:10:06');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-16 09:10:35', '2020-07-16 09:10:35');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:15:35', '2020-07-16 09:15:35');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-16 09:15:39', '2020-07-16 09:15:39');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-17 08:07:42', '2020-07-17 08:07:42');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:07:45', '2020-07-17 08:07:45');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:21:33', '2020-07-17 08:21:33');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-17 08:21:36', '2020-07-17 08:21:36');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-20 02:18:11', '2020-07-20 02:18:11');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:18:19', '2020-07-20 02:18:19');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-20 02:18:20', '2020-07-20 02:18:20');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:18:27', '2020-07-20 02:18:27');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-20 02:18:28', '2020-07-20 02:18:28');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:18:33', '2020-07-20 02:18:33');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/trade-buys', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:18:35', '2020-07-20 02:18:35');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-20 02:18:36', '2020-07-20 02:18:36');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:18:38', '2020-07-20 02:18:38');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/auth/menu/12/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:18:42', '2020-07-20 02:18:42');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/auth/menu/12', 'PUT', '192.168.0.140', '{\"parent_id\":\"10\",\"title\":\"\\u8ba2\\u5355\\u5217\\u8868\",\"icon\":\"fa-dollar\",\"uri\":\"\\/orders\",\"roles\":[null],\"permission\":null,\"_token\":\"eAXHmZRlNTQXzmHhDVEbm1IvbvoG9wvcyaUTRMEN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-07-20 02:20:56', '2020-07-20 02:20:56');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 02:20:57', '2020-07-20 02:20:57');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 02:20:59', '2020-07-20 02:20:59');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:21:30', '2020-07-20 02:21:30');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/auth/setting', 'PUT', '192.168.0.140', '{\"name\":\"Admin\",\"password\":\"$2y$10$2\\/VIsLK1PFAnpJMSX7j8cebL.BmxGLOotwt\\/qC0FQ7eS86tDb.IJW\",\"password_confirmation\":\"$2y$10$2\\/VIsLK1PFAnpJMSX7j8cebL.BmxGLOotwt\\/qC0FQ7eS86tDb.IJW\",\"_token\":\"eAXHmZRlNTQXzmHhDVEbm1IvbvoG9wvcyaUTRMEN\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-07-20 02:22:24', '2020-07-20 02:22:24');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '[]', '2020-07-20 02:22:24', '2020-07-20 02:22:24');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '[]', '2020-07-20 02:22:32', '2020-07-20 02:22:32');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '[]', '2020-07-20 02:27:22', '2020-07-20 02:27:22');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:28:31', '2020-07-20 02:28:31');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:31:09', '2020-07-20 02:31:09');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:31:11', '2020-07-20 02:31:11');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:31:13', '2020-07-20 02:31:13');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/auth/permissions', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:31:15', '2020-07-20 02:31:15');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:31:16', '2020-07-20 02:31:16');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/auth/logout', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:32:58', '2020-07-20 02:32:58');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-20 02:33:18', '2020-07-20 02:33:18');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:33:32', '2020-07-20 02:33:32');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:33:39', '2020-07-20 02:33:39');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:33:41', '2020-07-20 02:33:41');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:33:43', '2020-07-20 02:33:43');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-20 02:37:06', '2020-07-20 02:37:06');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:40:57', '2020-07-20 02:40:57');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:41:51', '2020-07-20 02:41:51');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:42:25', '2020-07-20 02:42:25');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:42:48', '2020-07-20 02:42:48');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:45:18', '2020-07-20 02:45:18');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:45:26', '2020-07-20 02:45:26');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:45:28', '2020-07-20 02:45:28');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-20 02:47:11', '2020-07-20 02:47:11');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:47:14', '2020-07-20 02:47:14');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:47:16', '2020-07-20 02:47:16');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:47:23', '2020-07-20 02:47:23');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:47:26', '2020-07-20 02:47:26');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:49:05', '2020-07-20 02:49:05');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:49:52', '2020-07-20 02:49:52');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/orders/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 02:51:26', '2020-07-20 02:51:26');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/orders', 'POST', '192.168.0.140', '{\"trade_no\":\"3453543\",\"user_id\":\"1\",\"blance\":\"5\",\"new_value\":\"34535\",\"code_all\":\"345354\",\"buy_price\":\"3453543\",\"stop_loss\":\"354354\",\"stop_profit\":\"3543543\",\"type\":\"on\",\"status\":\"on\",\"floating\":null,\"remark\":null,\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/orders\"}', '2020-07-20 02:51:42', '2020-07-20 02:51:42');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/orders/create', 'GET', '192.168.0.140', '[]', '2020-07-20 02:51:43', '2020-07-20 02:51:43');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/orders', 'POST', '192.168.0.140', '{\"trade_no\":\"3453543\",\"user_id\":\"1\",\"blance\":\"5\",\"new_value\":\"34535\",\"code_all\":\"345354\",\"buy_price\":\"3453543\",\"stop_loss\":\"354354\",\"stop_profit\":\"3543543\",\"type\":\"on\",\"status\":\"on\",\"floating\":\"34535\",\"remark\":\"3453543\",\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\"}', '2020-07-20 02:51:48', '2020-07-20 02:51:48');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:51:48', '2020-07-20 02:51:48');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:55:34', '2020-07-20 02:55:34');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:55:54', '2020-07-20 02:55:54');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:56:45', '2020-07-20 02:56:45');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:56:57', '2020-07-20 02:56:57');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:57:42', '2020-07-20 02:57:42');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 02:58:56', '2020-07-20 02:58:56');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:00:54', '2020-07-20 03:00:54');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:02:13', '2020-07-20 03:02:13');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:02:31', '2020-07-20 03:02:31');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:02:52', '2020-07-20 03:02:52');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:03:12', '2020-07-20 03:03:12');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:03:36', '2020-07-20 03:03:36');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:04:07', '2020-07-20 03:04:07');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:04:37', '2020-07-20 03:04:37');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:06:42', '2020-07-20 03:06:42');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:07:02', '2020-07-20 03:07:02');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:07:11', '2020-07-20 03:07:11');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:07:19', '2020-07-20 03:07:19');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:07:42', '2020-07-20 03:07:42');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:09:30', '2020-07-20 03:09:30');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:10:29', '2020-07-20 03:10:29');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:11:39', '2020-07-20 03:11:39');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:12:09', '2020-07-20 03:12:09');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:12:58', '2020-07-20 03:12:58');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:13:28', '2020-07-20 03:13:28');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-20 03:16:53', '2020-07-20 03:16:53');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-20 03:17:14', '2020-07-20 03:17:14');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-20 03:18:00', '2020-07-20 03:18:00');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-20 03:18:14', '2020-07-20 03:18:14');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:18:44', '2020-07-20 03:18:44');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-20 03:19:20', '2020-07-20 03:19:20');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:19:23', '2020-07-20 03:19:23');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:19:28', '2020-07-20 03:19:28');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:19:30', '2020-07-20 03:19:30');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-20 03:20:18', '2020-07-20 03:20:18');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:36:14', '2020-07-20 03:36:14');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"10\",\"title\":\"\\u91d1\\u6d41\\u8bb0\\u5f55\",\"icon\":\"fa-shekel\",\"uri\":\"\\/money-records\",\"roles\":[null],\"permission\":null,\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\"}', '2020-07-20 03:36:55', '2020-07-20 03:36:55');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 03:36:56', '2020-07-20 03:36:56');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 03:36:58', '2020-07-20 03:36:58');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:37:01', '2020-07-20 03:37:01');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/money-records', 'GET', '192.168.0.140', '[]', '2020-07-20 03:37:36', '2020-07-20 03:37:36');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/money-records', 'GET', '192.168.0.140', '[]', '2020-07-20 03:37:56', '2020-07-20 03:37:56');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/money-records', 'GET', '192.168.0.140', '[]', '2020-07-20 03:39:55', '2020-07-20 03:39:55');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:11', '2020-07-20 03:40:11');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:14', '2020-07-20 03:40:14');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:16', '2020-07-20 03:40:16');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:17', '2020-07-20 03:40:17');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:19', '2020-07-20 03:40:19');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:20', '2020-07-20 03:40:20');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:24', '2020-07-20 03:40:24');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:27', '2020-07-20 03:40:27');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:29', '2020-07-20 03:40:29');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:40:30', '2020-07-20 03:40:30');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-20 03:45:03', '2020-07-20 03:45:03');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:45:08', '2020-07-20 03:45:08');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\"}', '2020-07-20 03:45:31', '2020-07-20 03:45:31');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 03:45:32', '2020-07-20 03:45:32');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"14\",\"title\":\"\\u914d\\u7f6e\\u8bbe\\u7f6e\",\"icon\":\"fa-bars\",\"uri\":\"\\/configs\",\"roles\":[null],\"permission\":null,\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\"}', '2020-07-20 03:45:53', '2020-07-20 03:45:53');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 03:45:53', '2020-07-20 03:45:53');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 03:45:57', '2020-07-20 03:45:57');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:46:00', '2020-07-20 03:46:00');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-20 03:46:36', '2020-07-20 03:46:36');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:46:39', '2020-07-20 03:46:39');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:46:43', '2020-07-20 03:46:43');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/auth/menu/14/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:46:48', '2020-07-20 03:46:48');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/auth/menu/14', 'PUT', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa-gear\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-07-20 03:47:29', '2020-07-20 03:47:29');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 03:47:30', '2020-07-20 03:47:30');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/auth/menu/15/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:47:33', '2020-07-20 03:47:33');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/auth/menu/15', 'PUT', '192.168.0.140', '{\"parent_id\":\"14\",\"title\":\"\\u914d\\u7f6e\\u8bbe\\u7f6e\",\"icon\":\"fa-gears\",\"uri\":\"\\/configs\",\"roles\":[null],\"permission\":null,\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-07-20 03:47:43', '2020-07-20 03:47:43');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 03:47:44', '2020-07-20 03:47:44');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-07-20 03:47:47', '2020-07-20 03:47:47');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:47:51', '2020-07-20 03:47:51');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:04', '2020-07-20 03:48:04');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:07', '2020-07-20 03:48:07');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:10', '2020-07-20 03:48:10');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:12', '2020-07-20 03:48:12');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:18', '2020-07-20 03:48:18');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:19', '2020-07-20 03:48:19');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:21', '2020-07-20 03:48:21');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:23', '2020-07-20 03:48:23');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:25', '2020-07-20 03:48:25');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:27', '2020-07-20 03:48:27');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 03:48:31', '2020-07-20 03:48:31');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:39:38', '2020-07-20 05:39:38');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:39:40', '2020-07-20 05:39:40');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:39:42', '2020-07-20 05:39:42');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:54:12', '2020-07-20 05:54:12');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:54:15', '2020-07-20 05:54:15');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:54:17', '2020-07-20 05:54:17');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:54:19', '2020-07-20 05:54:19');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:54:25', '2020-07-20 05:54:25');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:54:26', '2020-07-20 05:54:26');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:54:27', '2020-07-20 05:54:27');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:55:18', '2020-07-20 05:55:18');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 05:55:20', '2020-07-20 05:55:20');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:25:33', '2020-07-20 06:25:33');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:25:36', '2020-07-20 06:25:36');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:25:39', '2020-07-20 06:25:39');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:25:42', '2020-07-20 06:25:42');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:25:45', '2020-07-20 06:25:45');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/configs/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:25:48', '2020-07-20 06:25:48');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/configs', 'POST', '192.168.0.140', '{\"name\":\"\\u624b\\u7eed\\u8d39\",\"value\":\"0.007\",\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-07-20 06:26:02', '2020-07-20 06:26:02');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/configs/create', 'GET', '192.168.0.140', '[]', '2020-07-20 06:26:03', '2020-07-20 06:26:03');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/configs/create', 'GET', '192.168.0.140', '[]', '2020-07-20 06:27:52', '2020-07-20 06:27:52');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/configs', 'POST', '192.168.0.140', '{\"name\":\"\\u624b\\u7eed\\u8d39\",\"value\":\"0.007\",\"_token\":\"4XR2NXt60Pm2E9La6Wr5LIVRpqfs4q7Em5SNcutf\"}', '2020-07-20 06:28:01', '2020-07-20 06:28:01');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-20 06:28:01', '2020-07-20 06:28:01');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:09', '2020-07-20 06:32:09');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:11', '2020-07-20 06:32:11');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:12', '2020-07-20 06:32:12');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:15', '2020-07-20 06:32:15');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:19', '2020-07-20 06:32:19');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:20', '2020-07-20 06:32:20');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/auth/permissions', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:22', '2020-07-20 06:32:22');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:27', '2020-07-20 06:32:27');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 06:32:37', '2020-07-20 06:32:37');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:32:20', '2020-07-20 07:32:20');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:32:23', '2020-07-20 07:32:23');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:32:28', '2020-07-20 07:32:28');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:32:32', '2020-07-20 07:32:32');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:32:33', '2020-07-20 07:32:33');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:32:35', '2020-07-20 07:32:35');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/money-records', 'GET', '192.168.0.140', '[]', '2020-07-20 07:40:29', '2020-07-20 07:40:29');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:40:32', '2020-07-20 07:40:32');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:40:35', '2020-07-20 07:40:35');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:40:37', '2020-07-20 07:40:37');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:40:38', '2020-07-20 07:40:38');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 07:40:40', '2020-07-20 07:40:40');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:07:02', '2020-07-20 08:07:02');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:07:05', '2020-07-20 08:07:05');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:07:07', '2020-07-20 08:07:07');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:07:08', '2020-07-20 08:07:08');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:07:19', '2020-07-20 08:07:19');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:07:21', '2020-07-20 08:07:21');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:07:23', '2020-07-20 08:07:23');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/orders/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:07:24', '2020-07-20 08:07:24');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:33:35', '2020-07-20 08:33:35');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:33:37', '2020-07-20 08:33:37');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:33:39', '2020-07-20 08:33:39');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:33:42', '2020-07-20 08:33:42');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:33:43', '2020-07-20 08:33:43');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:33:56', '2020-07-20 08:33:56');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:33:58', '2020-07-20 08:33:58');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/auth/permissions', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:33:59', '2020-07-20 08:33:59');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:34:01', '2020-07-20 08:34:01');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:47:04', '2020-07-20 08:47:04');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:47:06', '2020-07-20 08:47:06');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:47:07', '2020-07-20 08:47:07');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:47:09', '2020-07-20 08:47:09');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:47:12', '2020-07-20 08:47:12');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:47:15', '2020-07-20 08:47:15');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:47:15', '2020-07-20 08:47:15');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:47:17', '2020-07-20 08:47:17');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:25', '2020-07-20 08:51:25');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:29', '2020-07-20 08:51:29');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:32', '2020-07-20 08:51:32');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:40', '2020-07-20 08:51:40');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/auth/permissions', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:41', '2020-07-20 08:51:41');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:51:43', '2020-07-20 08:51:43');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:57:28', '2020-07-20 08:57:28');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:57:31', '2020-07-20 08:57:31');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:57:32', '2020-07-20 08:57:32');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:57:34', '2020-07-20 08:57:34');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:57:37', '2020-07-20 08:57:37');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 08:57:41', '2020-07-20 08:57:41');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:01:35', '2020-07-20 09:01:35');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:01:37', '2020-07-20 09:01:37');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:01:38', '2020-07-20 09:01:38');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:01:40', '2020-07-20 09:01:40');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:02:06', '2020-07-20 09:02:06');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-20 09:02:08', '2020-07-20 09:02:08');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-21 01:13:52', '2020-07-21 01:13:52');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:13:57', '2020-07-21 01:13:57');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:14:00', '2020-07-21 01:14:00');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:14:01', '2020-07-21 01:14:01');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin', 'GET', '192.168.0.154', '[]', '2020-07-21 01:15:40', '2020-07-21 01:15:40');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:15:48', '2020-07-21 01:15:48');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/orders', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:15:53', '2020-07-21 01:15:53');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/money-records', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:15:56', '2020-07-21 01:15:56');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:15:58', '2020-07-21 01:15:58');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/configs', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:16:03', '2020-07-21 01:16:03');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:16:26', '2020-07-21 01:16:26');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:16:28', '2020-07-21 01:16:28');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:19:01', '2020-07-21 01:19:01');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:19:02', '2020-07-21 01:19:02');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:19:10', '2020-07-21 01:19:10');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:19:36', '2020-07-21 01:19:36');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:33:25', '2020-07-21 01:33:25');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:33:26', '2020-07-21 01:33:26');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:33:26', '2020-07-21 01:33:26');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/orders', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:45:33', '2020-07-21 01:45:33');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/money-records', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:45:36', '2020-07-21 01:45:36');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:45:38', '2020-07-21 01:45:38');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/configs', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:45:42', '2020-07-21 01:45:42');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/auth/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:45:47', '2020-07-21 01:45:47');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/configs', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:45:58', '2020-07-21 01:45:58');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/auth/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:46:06', '2020-07-21 01:46:06');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/auth/roles', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:46:10', '2020-07-21 01:46:10');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/auth/permissions', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:46:13', '2020-07-21 01:46:13');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/auth/menu', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 01:46:43', '2020-07-21 01:46:43');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:03:53', '2020-07-21 02:03:53');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-21 02:04:01', '2020-07-21 02:04:01');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test\",\"email\":\"3654688@qq.com\",\"\\u624b\\u673a\\u53f7\":\"18485632503@qq.com\",\"email_verified_at\":\"2020-07-21 02:04:01\",\"password\":\"123456\",\"balance\":\"7\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-07-21 02:04:01\",\"remember_token\":null,\"_token\":\"AQVYlHwuvkikf9uJAehWbBITirnS7neHoFj5buau\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-07-21 02:04:46', '2020-07-21 02:04:46');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-21 02:04:47', '2020-07-21 02:04:47');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-23 03:04:09', '2020-07-23 03:04:09');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 03:04:12', '2020-07-23 03:04:12');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 03:04:24', '2020-07-23 03:04:24');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-23 03:05:07', '2020-07-23 03:05:07');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-27 05:36:48', '2020-07-27 05:36:48');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:36:53', '2020-07-27 05:36:53');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:36:54', '2020-07-27 05:36:54');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:36:56', '2020-07-27 05:36:56');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:36:59', '2020-07-27 05:36:59');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:37:03', '2020-07-27 05:37:03');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:37:07', '2020-07-27 05:37:07');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:37:08', '2020-07-27 05:37:08');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-27 05:37:09', '2020-07-27 05:37:09');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-28 02:20:47', '2020-07-28 02:20:47');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:21:47', '2020-07-28 02:21:47');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:21:51', '2020-07-28 02:21:51');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:22:07', '2020-07-28 02:22:07');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:22:15', '2020-07-28 02:22:15');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:23:43', '2020-07-28 02:23:43');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"1\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 02:23:48', '2020-07-28 02:23:48');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:23:48', '2020-07-28 02:23:48');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"3\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 02:23:52', '2020-07-28 02:23:52');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:23:53', '2020-07-28 02:23:53');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"2\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 02:23:57', '2020-07-28 02:23:57');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:23:57', '2020-07-28 02:23:57');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:24:00', '2020-07-28 02:24:00');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCAD\",\"name\":null,\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:25:06', '2020-07-28 02:25:06');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '[]', '2020-07-28 02:25:07', '2020-07-28 02:25:07');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCAD\",\"name\":null,\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\"}', '2020-07-28 02:26:16', '2020-07-28 02:26:16');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '[]', '2020-07-28 02:26:16', '2020-07-28 02:26:16');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCAD\",\"name\":null,\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\"}', '2020-07-28 02:26:42', '2020-07-28 02:26:42');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '[]', '2020-07-28 02:26:43', '2020-07-28 02:26:43');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCAD\",\"name\":\"\\u2018\\u2019\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\"}', '2020-07-28 02:26:55', '2020-07-28 02:26:55');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:26:55', '2020-07-28 02:26:55');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:27:06', '2020-07-28 02:27:06');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCHF\",\"name\":null,\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:27:37', '2020-07-28 02:27:37');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '[]', '2020-07-28 02:27:37', '2020-07-28 02:27:37');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '[]', '2020-07-28 02:28:03', '2020-07-28 02:28:03');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCHF\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:28:08', '2020-07-28 02:28:08');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:28:08', '2020-07-28 02:28:08');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:28:13', '2020-07-28 02:28:13');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDJPY\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:28:23', '2020-07-28 02:28:23');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:28:23', '2020-07-28 02:28:23');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:28:30', '2020-07-28 02:28:30');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDNZD\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:28:33', '2020-07-28 02:28:33');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:28:34', '2020-07-28 02:28:34');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:28:40', '2020-07-28 02:28:40');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDUSD\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:28:43', '2020-07-28 02:28:43');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:28:44', '2020-07-28 02:28:44');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:28:49', '2020-07-28 02:28:49');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"BTCUSD\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:28:53', '2020-07-28 02:28:53');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:28:53', '2020-07-28 02:28:53');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:28:59', '2020-07-28 02:28:59');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"CADCHF\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:29:02', '2020-07-28 02:29:02');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:29:02', '2020-07-28 02:29:02');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:29:09', '2020-07-28 02:29:09');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"CADJPY\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:29:12', '2020-07-28 02:29:12');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:29:13', '2020-07-28 02:29:13');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:29:19', '2020-07-28 02:29:19');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"CHFJPY\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:29:22', '2020-07-28 02:29:22');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:29:22', '2020-07-28 02:29:22');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:29:28', '2020-07-28 02:29:28');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"ETHUSD\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:29:32', '2020-07-28 02:29:32');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:29:32', '2020-07-28 02:29:32');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:29:37', '2020-07-28 02:29:37');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"EURAUD\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:29:40', '2020-07-28 02:29:40');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:29:41', '2020-07-28 02:29:41');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:29:46', '2020-07-28 02:29:46');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"EURCAD\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:29:49', '2020-07-28 02:29:49');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:29:50', '2020-07-28 02:29:50');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:29:59', '2020-07-28 02:29:59');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"EURCHF\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 02:30:03', '2020-07-28 02:30:03');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 02:30:03', '2020-07-28 02:30:03');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 02:30:13', '2020-07-28 02:30:13');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:33:40', '2020-07-28 03:33:40');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:34:22', '2020-07-28 03:34:22');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:34:47', '2020-07-28 03:34:47');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-28 03:37:15', '2020-07-28 03:37:15');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:37:30', '2020-07-28 03:37:30');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:37:33', '2020-07-28 03:37:33');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:37:36', '2020-07-28 03:37:36');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:37:37', '2020-07-28 03:37:37');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:37:58', '2020-07-28 03:37:58');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 03:38:10', '2020-07-28 03:38:10');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 05:02:18', '2020-07-28 05:02:18');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:03:15', '2020-07-28 05:03:15');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:03:18', '2020-07-28 05:03:18');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:03:41', '2020-07-28 05:03:41');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:03:46', '2020-07-28 05:03:46');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"4\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:44:35', '2020-07-28 05:44:35');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:44:36', '2020-07-28 05:44:36');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"5\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:44:40', '2020-07-28 05:44:40');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:44:41', '2020-07-28 05:44:41');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"6\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:44:46', '2020-07-28 05:44:46');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:44:46', '2020-07-28 05:44:46');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"7\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:44:50', '2020-07-28 05:44:50');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:44:51', '2020-07-28 05:44:51');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"8\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:44:57', '2020-07-28 05:44:57');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:44:57', '2020-07-28 05:44:57');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"10\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:45:03', '2020-07-28 05:45:03');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:45:03', '2020-07-28 05:45:03');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"12\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:45:11', '2020-07-28 05:45:11');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:45:11', '2020-07-28 05:45:11');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"16\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:45:16', '2020-07-28 05:45:16');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:45:16', '2020-07-28 05:45:16');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"15\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-28 05:45:21', '2020-07-28 05:45:21');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:45:21', '2020-07-28 05:45:21');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/foreign-exchang-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:45:24', '2020-07-28 05:45:24');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/foreign-exchang-lists', 'POST', '192.168.0.140', '{\"code_all\":\"USDCNH\",\"_token\":\"6oHhhD0xhbBjCs97ku7XBEk7WHpZlKTKf7B3Opkz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchang-lists\"}', '2020-07-28 05:45:28', '2020-07-28 05:45:28');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-28 05:45:28', '2020-07-28 05:45:28');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 05:45:46', '2020-07-28 05:45:46');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:08:12', '2020-07-28 06:08:12');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:08:15', '2020-07-28 06:08:15');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:08:16', '2020-07-28 06:08:16');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:08:18', '2020-07-28 06:08:18');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:08:20', '2020-07-28 06:08:20');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:08:21', '2020-07-28 06:08:21');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:08:24', '2020-07-28 06:08:24');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:09:14', '2020-07-28 06:09:14');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 06:24:03', '2020-07-28 06:24:03');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:44:03', '2020-07-28 07:44:03');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:44:06', '2020-07-28 07:44:06');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:44:13', '2020-07-28 07:44:13');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:44:35', '2020-07-28 07:44:35');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:45:31', '2020-07-28 07:45:31');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:45:42', '2020-07-28 07:45:42');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:45:45', '2020-07-28 07:45:45');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 07:49:47', '2020-07-28 07:49:47');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-28 15:50:57', '2020-07-28 15:50:57');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-29 08:55:06', '2020-07-29 08:55:06');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 08:55:11', '2020-07-29 08:55:11');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 08:55:14', '2020-07-29 08:55:14');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 08:55:16', '2020-07-29 08:55:16');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 08:55:21', '2020-07-29 08:55:21');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 08:55:55', '2020-07-29 08:55:55');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-29 08:56:43', '2020-07-29 08:56:43');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-29 08:57:16', '2020-07-29 08:57:16');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-29 08:57:38', '2020-07-29 08:57:38');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"\\u624b\\u673a\\u53f7\":\"18485825848\",\"email_verified_at\":\"2020-07-29 08:57:38\",\"password\":\"123456\",\"balance\":\"0\",\"status\":\"on\",\"level\":\"on\",\"end_time\":\"2020-08-22 08:57:38\",\"remember_token\":null,\"_token\":\"JN3adnaTplTV8M5J2NZHfsZeFRVY2tnSPne0lNH4\"}', '2020-07-29 08:58:00', '2020-07-29 08:58:00');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-29 08:58:00', '2020-07-29 08:58:00');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"\\u624b\\u673a\\u53f7\":\"18485825848\",\"email_verified_at\":\"2020-07-29 08:57:38\",\"password\":\"123456\",\"balance\":\"0\",\"status\":\"on\",\"level\":\"on\",\"end_time\":\"2020-08-22 08:57:38\",\"remember_token\":null,\"_token\":\"JN3adnaTplTV8M5J2NZHfsZeFRVY2tnSPne0lNH4\"}', '2020-07-29 08:58:22', '2020-07-29 08:58:22');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-29 08:58:23', '2020-07-29 08:58:23');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 09:00:26', '2020-07-29 09:00:26');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-07-29 09:00:26\",\"password\":\"123456\",\"balance\":\"3\",\"status\":\"on\",\"level\":\"on\",\"end_time\":\"2020-07-29 09:00:26\",\"remember_token\":null,\"_token\":\"JN3adnaTplTV8M5J2NZHfsZeFRVY2tnSPne0lNH4\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-07-29 09:00:58', '2020-07-29 09:00:58');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-29 09:00:58', '2020-07-29 09:00:58');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-07-29 09:00:26\",\"password\":\"123456\",\"balance\":\"3\",\"status\":\"on\",\"level\":\"on\",\"end_time\":\"2020-07-29 09:00:26\",\"remember_token\":null,\"_token\":\"JN3adnaTplTV8M5J2NZHfsZeFRVY2tnSPne0lNH4\"}', '2020-07-29 09:01:20', '2020-07-29 09:01:20');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-29 09:01:21', '2020-07-29 09:01:21');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 09:03:29', '2020-07-29 09:03:29');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-07-29 09:03:29\",\"password\":\"123456\",\"balance\":\"1\",\"status\":\"on\",\"level\":\"on\",\"end_time\":\"2020-07-29 09:03:29\",\"remember_token\":null,\"_token\":\"JN3adnaTplTV8M5J2NZHfsZeFRVY2tnSPne0lNH4\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-07-29 09:03:40', '2020-07-29 09:03:40');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-29 09:03:40', '2020-07-29 09:03:40');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-29 09:25:30', '2020-07-29 09:25:30');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-29 09:29:45', '2020-07-29 09:29:45');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 09:30:08', '2020-07-29 09:30:08');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-29 09:30:15', '2020-07-29 09:30:15');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 09:30:25', '2020-07-29 09:30:25');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 09:50:44', '2020-07-29 09:50:44');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '[]', '2020-07-29 09:51:22', '2020-07-29 09:51:22');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 10:59:07', '2020-07-29 10:59:07');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 10:59:07', '2020-07-29 10:59:07');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 10:59:10', '2020-07-29 10:59:10');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-08-22 10:59:10\",\"password\":\"123456\",\"balance\":\"888\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-07-29 10:59:10\",\"remember_token\":null,\"_token\":\"JN3adnaTplTV8M5J2NZHfsZeFRVY2tnSPne0lNH4\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-07-29 10:59:33', '2020-07-29 10:59:33');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-29 10:59:34', '2020-07-29 10:59:34');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:14:13', '2020-07-29 13:14:13');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:14:14', '2020-07-29 13:14:14');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:14:54', '2020-07-29 13:14:54');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:15:25', '2020-07-29 13:15:25');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-29 13:16:31', '2020-07-29 13:16:31');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:16:33', '2020-07-29 13:16:33');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:16:54', '2020-07-29 13:16:54');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/money-records', 'GET', '192.168.0.140', '[]', '2020-07-29 13:19:53', '2020-07-29 13:19:53');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:19:56', '2020-07-29 13:19:56');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:21:34', '2020-07-29 13:21:34');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin/orders/3', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:22:46', '2020-07-29 13:22:46');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 13:22:55', '2020-07-29 13:22:55');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-29 13:23:49', '2020-07-29 13:23:49');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:36:52', '2020-07-29 14:36:52');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:47:10', '2020-07-29 14:47:10');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:47:14', '2020-07-29 14:47:14');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:47:17', '2020-07-29 14:47:17');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:47:18', '2020-07-29 14:47:18');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:47:19', '2020-07-29 14:47:19');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:47:22', '2020-07-29 14:47:22');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:47:27', '2020-07-29 14:47:27');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:47:32', '2020-07-29 14:47:32');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:49:18', '2020-07-29 14:49:18');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"11\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"Mr9QDaZBFEtqBhqU3YDQpeasP9oabCBLKwMxx3F8\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-29 14:49:26', '2020-07-29 14:49:26');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:49:26', '2020-07-29 14:49:26');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"14\",\"_model\":\"App_Models_ForeignExchangList\",\"_token\":\"Mr9QDaZBFEtqBhqU3YDQpeasP9oabCBLKwMxx3F8\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-29 14:49:33', '2020-07-29 14:49:33');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:49:34', '2020-07-29 14:49:34');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:50:34', '2020-07-29 14:50:34');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:50:48', '2020-07-29 14:50:48');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:52:11', '2020-07-29 14:52:11');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:52:14', '2020-07-29 14:52:14');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:52:15', '2020-07-29 14:52:15');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:52:17', '2020-07-29 14:52:17');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 14:52:19', '2020-07-29 14:52:19');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-07-29 14:59:57', '2020-07-29 14:59:57');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 15:00:01', '2020-07-29 15:00:01');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 15:00:22', '2020-07-29 15:00:22');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 16:16:06', '2020-07-29 16:16:06');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 16:16:08', '2020-07-29 16:16:08');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 16:16:11', '2020-07-29 16:16:11');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 16:16:13', '2020-07-29 16:16:13');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-29 16:28:52', '2020-07-29 16:28:52');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:38:21', '2020-07-29 17:38:21');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:38:24', '2020-07-29 17:38:24');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:38:26', '2020-07-29 17:38:26');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:38:33', '2020-07-29 17:38:33');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:38:40', '2020-07-29 17:38:40');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:39:35', '2020-07-29 17:39:35');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:39:37', '2020-07-29 17:39:37');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:39:38', '2020-07-29 17:39:38');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-29 17:39:41', '2020-07-29 17:39:41');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-30 10:09:27', '2020-07-30 10:09:27');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:09:33', '2020-07-30 10:09:33');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/configs/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:09:36', '2020-07-30 10:09:36');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/configs', 'POST', '192.168.0.140', '{\"name\":\"\\u5356\\u51fa\\u4ef7\\u683c\\u6bd4\\u4f8b\",\"value\":\"0.98\",\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-07-30 10:09:58', '2020-07-30 10:09:58');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-30 10:09:59', '2020-07-30 10:09:59');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-30 10:12:56', '2020-07-30 10:12:56');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/configs/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:13:03', '2020-07-30 10:13:03');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:16:46', '2020-07-30 10:16:46');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:17:30', '2020-07-30 10:17:30');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/configs/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:17:57', '2020-07-30 10:17:57');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/configs', 'POST', '192.168.0.140', '{\"name\":\"fees\",\"value\":\"0.007\",\"remark\":\"\\u624b\\u7eed\\u8d39\\u6bd4\\u4f8b\",\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-07-30 10:18:39', '2020-07-30 10:18:39');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-30 10:18:39', '2020-07-30 10:18:39');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/configs/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:18:56', '2020-07-30 10:18:56');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/configs', 'POST', '192.168.0.140', '{\"name\":\"sellrate\",\"value\":\"0.007\",\"remark\":\"\\u5356\\u51fa\\u4ef7\\u683c\\u6bd4\\u4f8b\",\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-07-30 10:19:17', '2020-07-30 10:19:17');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-30 10:19:18', '2020-07-30 10:19:18');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-30 10:48:18', '2020-07-30 10:48:18');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:48:22', '2020-07-30 10:48:22');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:48:23', '2020-07-30 10:48:23');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 10:48:25', '2020-07-30 10:48:25');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:19:57', '2020-07-30 11:19:57');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:22:44', '2020-07-30 11:22:44');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:24:06', '2020-07-30 11:24:06');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:24:10', '2020-07-30 11:24:10');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:29:37', '2020-07-30 11:29:37');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:29:53', '2020-07-30 11:29:53');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:29:59', '2020-07-30 11:29:59');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:30:03', '2020-07-30 11:30:03');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:30:10', '2020-07-30 11:30:10');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:30:16', '2020-07-30 11:30:16');
INSERT INTO `admin_operation_log` VALUES ('817', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:30:18', '2020-07-30 11:30:18');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:32:14', '2020-07-30 11:32:14');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:32:17', '2020-07-30 11:32:17');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:32:31', '2020-07-30 11:32:31');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:37:14', '2020-07-30 11:37:14');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:37:15', '2020-07-30 11:37:15');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:37:16', '2020-07-30 11:37:16');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:37:17', '2020-07-30 11:37:17');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"2\",\"_model\":\"App_Models_MoneyRecord\",\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-07-30 11:37:40', '2020-07-30 11:37:40');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:37:40', '2020-07-30 11:37:40');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:38:48', '2020-07-30 11:38:48');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:38:50', '2020-07-30 11:38:50');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-10-10 11:38:50\",\"password\":\"123456\",\"balance\":\"90000000\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-07-30 11:38:50\",\"remember_token\":null,\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-07-30 11:39:15', '2020-07-30 11:39:15');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-30 11:39:15', '2020-07-30 11:39:15');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-10-10 11:38:50\",\"password\":\"123456\",\"balance\":\"9000000\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-07-30 11:38:50\",\"remember_token\":null,\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\"}', '2020-07-30 11:39:29', '2020-07-30 11:39:29');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-30 11:39:29', '2020-07-30 11:39:29');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-10-10 11:38:50\",\"password\":\"123456\",\"balance\":\"900000\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-07-30 11:38:50\",\"remember_token\":null,\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\"}', '2020-07-30 11:39:38', '2020-07-30 11:39:38');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-07-30 11:39:39', '2020-07-30 11:39:39');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-10-10 11:38:50\",\"password\":\"123456\",\"balance\":\"90000\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-07-30 11:38:50\",\"remember_token\":null,\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\"}', '2020-07-30 11:40:42', '2020-07-30 11:40:42');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-30 11:40:43', '2020-07-30 11:40:43');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/users/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:43:52', '2020-07-30 11:43:52');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/users/1', 'PUT', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-10-10 11:38:50\",\"password\":null,\"balance\":\"90000000\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-07-30 11:38:50\",\"remember_token\":null,\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-07-30 11:43:58', '2020-07-30 11:43:58');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/users/1/edit', 'GET', '192.168.0.140', '[]', '2020-07-30 11:43:59', '2020-07-30 11:43:59');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/users/1', 'PUT', '192.168.0.140', '{\"name\":\"test0001\",\"email\":\"3654688@qq.com\",\"phone\":\"18482526545\",\"email_verified_at\":\"2020-10-10 11:38:50\",\"password\":\"123456\",\"balance\":\"90000000\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-07-30 11:38:50\",\"remember_token\":null,\"_token\":\"w5n8Nmd7mAKDnz1dV0sDCr2GMkRXxUhomRDGBIAe\",\"_method\":\"PUT\"}', '2020-07-30 11:44:06', '2020-07-30 11:44:06');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-30 11:44:07', '2020-07-30 11:44:07');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:44:22', '2020-07-30 11:44:22');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:45:07', '2020-07-30 11:45:07');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:45:31', '2020-07-30 11:45:31');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:45:45', '2020-07-30 11:45:45');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:47:11', '2020-07-30 11:47:11');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:48:11', '2020-07-30 11:48:11');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:48:58', '2020-07-30 11:48:58');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:50:39', '2020-07-30 11:50:39');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 11:50:50', '2020-07-30 11:50:50');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:42:08', '2020-07-30 13:42:08');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:42:10', '2020-07-30 13:42:10');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:43:22', '2020-07-30 13:43:22');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:45:00', '2020-07-30 13:45:00');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:45:15', '2020-07-30 13:45:15');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:46:47', '2020-07-30 13:46:47');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:46:59', '2020-07-30 13:46:59');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:47:34', '2020-07-30 13:47:34');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:50:42', '2020-07-30 13:50:42');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:52:48', '2020-07-30 13:52:48');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:53:26', '2020-07-30 13:53:26');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/orders/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:54:46', '2020-07-30 13:54:46');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 13:54:56', '2020-07-30 13:54:56');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:00:44', '2020-07-30 14:00:44');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:00:47', '2020-07-30 14:00:47');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:00:49', '2020-07-30 14:00:49');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:00:52', '2020-07-30 14:00:52');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:00:53', '2020-07-30 14:00:53');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:10:45', '2020-07-30 14:10:45');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:10:47', '2020-07-30 14:10:47');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:10:48', '2020-07-30 14:10:48');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:10:50', '2020-07-30 14:10:50');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:10:51', '2020-07-30 14:10:51');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:10:53', '2020-07-30 14:10:53');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:10:54', '2020-07-30 14:10:54');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:10:56', '2020-07-30 14:10:56');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:28:15', '2020-07-30 14:28:15');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:28:17', '2020-07-30 14:28:17');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:28:19', '2020-07-30 14:28:19');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:28:22', '2020-07-30 14:28:22');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:28:32', '2020-07-30 14:28:32');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:28:40', '2020-07-30 14:28:40');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:28:42', '2020-07-30 14:28:42');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:28:44', '2020-07-30 14:28:44');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 14:47:11', '2020-07-30 14:47:11');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:57:07', '2020-07-30 15:57:07');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:57:21', '2020-07-30 15:57:21');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:57:23', '2020-07-30 15:57:23');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:57:25', '2020-07-30 15:57:25');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:57:31', '2020-07-30 15:57:31');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:57:32', '2020-07-30 15:57:32');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:57:34', '2020-07-30 15:57:34');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:41:10', '2020-07-30 16:41:10');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:41:21', '2020-07-30 16:41:21');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:43:29', '2020-07-30 16:43:29');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:43:48', '2020-07-30 16:43:48');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:43:59', '2020-07-30 16:43:59');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:44:17', '2020-07-30 16:44:17');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:44:44', '2020-07-30 16:44:44');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:45:23', '2020-07-30 16:45:23');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/orders/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:47:15', '2020-07-30 16:47:15');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:50:35', '2020-07-30 16:50:35');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/orders/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:51:17', '2020-07-30 16:51:17');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:51:23', '2020-07-30 16:51:23');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:51:24', '2020-07-30 16:51:24');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:51:57', '2020-07-30 16:51:57');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:51:59', '2020-07-30 16:51:59');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:52:01', '2020-07-30 16:52:01');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:52:02', '2020-07-30 16:52:02');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:52:05', '2020-07-30 16:52:05');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/orders/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:52:08', '2020-07-30 16:52:08');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:52:30', '2020-07-30 16:52:30');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_columns_\":\"code_all,created_at,floating,id,new_value,number,remark,status,status_type,trade_no,type,updated_at\",\"_pjax\":\"#pjax-container\"}', '2020-07-30 17:08:08', '2020-07-30 17:08:08');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-07-31 09:01:53', '2020-07-31 09:01:53');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 09:01:59', '2020-07-31 09:01:59');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 09:35:47', '2020-07-31 09:35:47');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 09:35:49', '2020-07-31 09:35:49');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 10:51:56', '2020-07-31 10:51:56');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 10:52:36', '2020-07-31 10:52:36');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 10:54:21', '2020-07-31 10:54:21');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 10:54:23', '2020-07-31 10:54:23');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:02:57', '2020-07-31 11:02:57');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:09:34', '2020-07-31 11:09:34');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:09:43', '2020-07-31 11:09:43');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:09:49', '2020-07-31 11:09:49');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:09:50', '2020-07-31 11:09:50');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:09:52', '2020-07-31 11:09:52');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:10:04', '2020-07-31 11:10:04');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:10:12', '2020-07-31 11:10:12');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:10:25', '2020-07-31 11:10:25');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:10:28', '2020-07-31 11:10:28');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:19:18', '2020-07-31 11:19:18');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:21:29', '2020-07-31 11:21:29');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:22:10', '2020-07-31 11:22:10');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:22:19', '2020-07-31 11:22:19');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:22:30', '2020-07-31 11:22:30');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:26:42', '2020-07-31 11:26:42');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:26:49', '2020-07-31 11:26:49');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:27:49', '2020-07-31 11:27:49');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:27:51', '2020-07-31 11:27:51');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:27:52', '2020-07-31 11:27:52');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:28:10', '2020-07-31 11:28:10');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:31:16', '2020-07-31 11:31:16');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:32:31', '2020-07-31 11:32:31');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 11:32:38', '2020-07-31 11:32:38');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:19', '2020-07-31 13:03:19');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:22', '2020-07-31 13:03:22');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:25', '2020-07-31 13:03:25');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:27', '2020-07-31 13:03:27');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:30', '2020-07-31 13:03:30');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:36', '2020-07-31 13:03:36');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:39', '2020-07-31 13:03:39');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:41', '2020-07-31 13:03:41');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin/orders/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:03:58', '2020-07-31 13:03:58');
INSERT INTO `admin_operation_log` VALUES ('955', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:04:01', '2020-07-31 13:04:01');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin', 'GET', '192.168.0.154', '[]', '2020-07-31 13:48:10', '2020-07-31 13:48:10');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:16', '2020-07-31 13:48:16');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:20', '2020-07-31 13:48:20');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/orders', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:24', '2020-07-31 13:48:24');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/money-records', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:26', '2020-07-31 13:48:26');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:29', '2020-07-31 13:48:29');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/configs', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:32', '2020-07-31 13:48:32');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:35', '2020-07-31 13:48:35');
INSERT INTO `admin_operation_log` VALUES ('964', '1', 'admin/auth/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:38', '2020-07-31 13:48:38');
INSERT INTO `admin_operation_log` VALUES ('965', '1', 'admin/auth/roles', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:40', '2020-07-31 13:48:40');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin/auth/permissions', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:43', '2020-07-31 13:48:43');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/auth/menu', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:46', '2020-07-31 13:48:46');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/auth/menu', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:52', '2020-07-31 13:48:52');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/orders', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:48:58', '2020-07-31 13:48:58');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/auth/menu', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:49:01', '2020-07-31 13:49:01');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:51:15', '2020-07-31 13:51:15');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:52:26', '2020-07-31 13:52:26');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:23:26', '2020-07-31 14:23:26');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:29:38', '2020-07-31 14:29:38');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:32:52', '2020-07-31 14:32:52');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:35:34', '2020-07-31 14:35:34');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:37:34', '2020-07-31 14:37:34');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:37:45', '2020-07-31 14:37:45');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:37:47', '2020-07-31 14:37:47');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:37:59', '2020-07-31 14:37:59');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:38:01', '2020-07-31 14:38:01');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:38:12', '2020-07-31 14:38:12');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:39:14', '2020-07-31 14:39:14');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:39:24', '2020-07-31 14:39:24');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:39:51', '2020-07-31 14:39:51');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:40:16', '2020-07-31 14:40:16');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:43:31', '2020-07-31 14:43:31');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:43:43', '2020-07-31 14:43:43');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:44:53', '2020-07-31 14:44:53');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:45:35', '2020-07-31 14:45:35');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:46:45', '2020-07-31 14:46:45');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:46:53', '2020-07-31 14:46:53');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:47:38', '2020-07-31 14:47:38');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:48:06', '2020-07-31 14:48:06');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:48:08', '2020-07-31 14:48:08');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:51:03', '2020-07-31 14:51:03');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:53:35', '2020-07-31 14:53:35');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:56:03', '2020-07-31 14:56:03');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:56:05', '2020-07-31 14:56:05');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:02:41', '2020-07-31 15:02:41');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/configs/64/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:02:44', '2020-07-31 15:02:44');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin/configs/64', 'PUT', '192.168.0.140', '{\"name\":\"fees\",\"value\":\"0\",\"remark\":\"\\u624b\\u7eed\\u8d39\\u6bd4\\u4f8b\",\"_token\":\"nuohkRxPPQOaVnBnxzkCtQSMBgi0S774i7w88pIO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-07-31 15:02:49', '2020-07-31 15:02:49');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-31 15:02:49', '2020-07-31 15:02:49');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/configs/65/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:02:52', '2020-07-31 15:02:52');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin/configs/65', 'PUT', '192.168.0.140', '{\"name\":\"sellrate\",\"value\":\"0\",\"remark\":\"\\u5356\\u51fa\\u4ef7\\u683c\\u6bd4\\u4f8b\",\"_token\":\"nuohkRxPPQOaVnBnxzkCtQSMBgi0S774i7w88pIO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-07-31 15:02:57', '2020-07-31 15:02:57');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-07-31 15:02:58', '2020-07-31 15:02:58');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:03:55', '2020-07-31 15:03:55');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:04:01', '2020-07-31 15:04:01');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:04:11', '2020-07-31 15:04:11');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:04:15', '2020-07-31 15:04:15');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:04:27', '2020-07-31 15:04:27');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:04:31', '2020-07-31 15:04:31');
INSERT INTO `admin_operation_log` VALUES ('1013', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:04:56', '2020-07-31 15:04:56');
INSERT INTO `admin_operation_log` VALUES ('1014', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:05:02', '2020-07-31 15:05:02');
INSERT INTO `admin_operation_log` VALUES ('1015', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:05:24', '2020-07-31 15:05:24');
INSERT INTO `admin_operation_log` VALUES ('1016', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:05:27', '2020-07-31 15:05:27');
INSERT INTO `admin_operation_log` VALUES ('1017', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:07:25', '2020-07-31 15:07:25');
INSERT INTO `admin_operation_log` VALUES ('1018', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:07:31', '2020-07-31 15:07:31');
INSERT INTO `admin_operation_log` VALUES ('1019', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:07:41', '2020-07-31 15:07:41');
INSERT INTO `admin_operation_log` VALUES ('1020', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:07:44', '2020-07-31 15:07:44');
INSERT INTO `admin_operation_log` VALUES ('1021', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:07:45', '2020-07-31 15:07:45');
INSERT INTO `admin_operation_log` VALUES ('1022', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:08:21', '2020-07-31 15:08:21');
INSERT INTO `admin_operation_log` VALUES ('1023', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:08:30', '2020-07-31 15:08:30');
INSERT INTO `admin_operation_log` VALUES ('1024', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:09:07', '2020-07-31 15:09:07');
INSERT INTO `admin_operation_log` VALUES ('1025', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:09:16', '2020-07-31 15:09:16');
INSERT INTO `admin_operation_log` VALUES ('1026', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:09:20', '2020-07-31 15:09:20');
INSERT INTO `admin_operation_log` VALUES ('1027', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:09:21', '2020-07-31 15:09:21');
INSERT INTO `admin_operation_log` VALUES ('1028', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:09:30', '2020-07-31 15:09:30');
INSERT INTO `admin_operation_log` VALUES ('1029', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:09:33', '2020-07-31 15:09:33');
INSERT INTO `admin_operation_log` VALUES ('1030', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:09:35', '2020-07-31 15:09:35');
INSERT INTO `admin_operation_log` VALUES ('1031', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:10:31', '2020-07-31 15:10:31');
INSERT INTO `admin_operation_log` VALUES ('1032', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:10:49', '2020-07-31 15:10:49');
INSERT INTO `admin_operation_log` VALUES ('1033', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:10:50', '2020-07-31 15:10:50');
INSERT INTO `admin_operation_log` VALUES ('1034', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:12:24', '2020-07-31 15:12:24');
INSERT INTO `admin_operation_log` VALUES ('1035', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:12:26', '2020-07-31 15:12:26');
INSERT INTO `admin_operation_log` VALUES ('1036', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:12:40', '2020-07-31 15:12:40');
INSERT INTO `admin_operation_log` VALUES ('1037', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-07-31 15:13:39', '2020-07-31 15:13:39');
INSERT INTO `admin_operation_log` VALUES ('1038', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:13:44', '2020-07-31 15:13:44');
INSERT INTO `admin_operation_log` VALUES ('1039', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:13:47', '2020-07-31 15:13:47');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '11', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2020-07-15 07:30:47', '2020-07-15 07:30:47');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$2/VIsLK1PFAnpJMSX7j8cebL.BmxGLOotwt/qC0FQ7eS86tDb.IJW', 'Admin', 'images/2016315115856097190.jpg', '6F2ygKRdYaBLLwJnmENRzzfNKz4E07Yeys8GfipKbSFU6bG8u499vMRQPZor', '2020-07-15 07:30:47', '2020-07-20 02:22:24');

-- ----------------------------
-- Table structure for configs
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `value` varchar(255) DEFAULT NULL COMMENT '配置值',
  `remark` text COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES ('64', 'fees', '0', '手续费比例', '2020-07-30 10:18:39', '2020-07-31 15:02:49');
INSERT INTO `configs` VALUES ('65', 'sellrate', '0', '卖出价格比例', '2020-07-30 10:19:17', '2020-07-31 15:02:58');

-- ----------------------------
-- Table structure for foreign_exchang_lists
-- ----------------------------
DROP TABLE IF EXISTS `foreign_exchang_lists`;
CREATE TABLE `foreign_exchang_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code_all` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码全称',
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '汇率',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of foreign_exchang_lists
-- ----------------------------
INSERT INTO `foreign_exchang_lists` VALUES ('9', 'BTCUSD', '比特币/美元', '10856.88', '2020-07-28 02:28:53', '2020-07-28 15:50:51');
INSERT INTO `foreign_exchang_lists` VALUES ('13', 'ETHUSD', '以太坊/美元', '50000', '2020-07-28 02:29:32', '2020-07-28 15:50:51');
INSERT INTO `foreign_exchang_lists` VALUES ('17', 'USDCNH', '美元/人民币', '7.00789', '2020-07-28 05:45:28', '2020-07-28 15:50:50');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('5', '2020_07_16_005936_create_foreign_exchange_list_table', '2');
INSERT INTO `migrations` VALUES ('6', '2020_07_16_024236_create_add_column_to_users_table', '3');
INSERT INTO `migrations` VALUES ('7', '2020_04_13_022015_add_phone_to_users_table', '4');
INSERT INTO `migrations` VALUES ('8', '2020_07_16_050939_create_add_rate_to_foreign_exchange_list_table', '5');
INSERT INTO `migrations` VALUES ('14', '2020_07_16_080325_create_trade_buy_table', '6');

-- ----------------------------
-- Table structure for money_records
-- ----------------------------
DROP TABLE IF EXISTS `money_records`;
CREATE TABLE `money_records` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(5) DEFAULT '0' COMMENT '类型',
  `title` varchar(90) DEFAULT '' COMMENT '内容标题',
  `trade_number` varchar(30) DEFAULT '' COMMENT '交易单号',
  `pre_user_money` decimal(15,5) DEFAULT '0.00000' COMMENT '交易前用户可用余额',
  `user_money` decimal(15,5) DEFAULT '0.00000' COMMENT '交易后用户可用余额',
  `pre_frozen_money` decimal(15,5) DEFAULT '0.00000' COMMENT '交易前冻结金额',
  `after_frozen_money` decimal(15,5) DEFAULT '0.00000' COMMENT '交易后冻结金额',
  `frozen_money` decimal(15,5) DEFAULT '0.00000' COMMENT '变动结金额',
  `money` decimal(15,5) DEFAULT '0.00000' COMMENT '变动余额',
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `in_out_id` int(11) DEFAULT '0',
  `is_show` int(3) DEFAULT '1',
  `sx` decimal(10,5) DEFAULT '0.00000' COMMENT '手续费',
  `yh` decimal(10,5) DEFAULT '0.00000' COMMENT '印花税',
  `ghf` decimal(10,5) DEFAULT '0.00000' COMMENT '过户费',
  `weituo_id` int(10) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户资金变动记录表';

-- ----------------------------
-- Records of money_records
-- ----------------------------
INSERT INTO `money_records` VALUES ('1', '0', '购买外汇-ETHUSD', 'J731794023817831', '750000.00000', '720000.00000', '0.00000', '0.00000', '0.00000', '30000.00000', '1', null, '0', '1', '0.00000', '0.00000', '0.00000', '0', '2020-07-31 15:10:02', '2020-07-31 15:10:02');
INSERT INTO `money_records` VALUES ('2', '3', '委托交易-ETHUSD', 'J731794369442952', '720000.00000', '720000.00000', '0.00000', '0.00000', '5000000.00000', '0.00000', '1', null, '0', '1', '0.00000', '0.00000', '0.00000', '0', '2020-07-31 15:10:36', '2020-07-31 15:10:36');
INSERT INTO `money_records` VALUES ('3', '3', '委托卖出外汇-ETHUSD', 'J731794369442952', '720000.00000', '5720000.00000', '0.00000', '0.00000', '0.00000', '5000000.00000', '1', null, '0', '1', '0.00000', '0.00000', '0.00000', '0', '2020-07-31 15:12:19', '2020-07-31 15:12:19');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trade_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `buy_trade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '买入订单号',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '币种数量',
  `new_value` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '当前价值',
  `code_all` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '交易品种',
  `buy_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '购买价格',
  `buy_total_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '购买总价',
  `sell_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '卖出价格',
  `sell_total_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '卖出总价',
  `rate` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '手续费',
  `stop_loss` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '止损',
  `stop_profit` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '盈利',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0=>买，1=>卖,2=> 委托买, 3=> 委托卖',
  `status_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0=>未持仓 1=>持仓',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0=>交易未完成 1=>交易完成',
  `floating` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '浮动价格',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_buys_trade_no_unique` (`trade_no`),
  KEY `trade_buys_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'J731794023817831', '', '1', '100', '0.00000', 'ETHUSD', '300.00000', '30000.00000', '200.00000', '5000000.00000', '0.00000', '312.00000', '317.00000', '0', '0', '1', '200.00000', '买币，，，', '2020-07-31 15:10:02', '2020-07-31 15:10:36');
INSERT INTO `orders` VALUES ('2', 'J731794369442952', 'J731794023817831', '1', '100', '0.00000', 'ETHUSD', '0.00000', '0.00000', '200.00000', '5000000.00000', '0.00000', '0.00000', '0.00000', '3', '1', '1', '200.00000', '5449879', '2020-07-31 15:10:36', '2020-07-31 15:12:19');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for trade_buys
-- ----------------------------
DROP TABLE IF EXISTS `trade_buys`;
CREATE TABLE `trade_buys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trade_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `blance` int(11) NOT NULL DEFAULT '0' COMMENT '币种数量',
  `new_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '当前价值',
  `code_all` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码全称',
  `scur` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原币种',
  `tcur` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '目标币种',
  `buy_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '购买价格',
  `stop_loss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '止损',
  `stop_profit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '盈利',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0=>正常持仓 1=>已卖',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_buys_trade_no_unique` (`trade_no`),
  KEY `trade_buys_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of trade_buys
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '余额',
  `frozen_balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '冻结资金',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0 正常 1 冻结',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '等级 0 普通会员 1 超级会员',
  `end_time` timestamp NOT NULL COMMENT '到期时间',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'test0001', '18482526545', '3654688@qq.com', '2020-10-10 11:38:50', '$2y$10$t0PrWwRbpQv/e7Wyuw/CvOSoHqxPmuNe8Jt97cZt3Wd/pYtcWQkpO', '5720000.00000', '0.00000', '0', '0', '2020-07-30 11:38:50', null, '2020-07-30 11:40:43', '2020-07-31 15:12:19');
