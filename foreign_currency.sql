/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50730
Source Host           : 192.168.0.150:3306
Source Database       : foreign_currency

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-09-04 13:26:15
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_menu` VALUES ('8', '9', '0', '外汇列表', 'fa-server', '/foreign-exchange-lists', '*', '2020-07-16 01:22:53', '2020-08-03 11:21:54');
INSERT INTO `admin_menu` VALUES ('9', '0', '0', '外汇', 'fa-indent', null, null, '2020-07-16 02:36:46', '2020-07-16 02:36:46');
INSERT INTO `admin_menu` VALUES ('10', '0', '0', '用户管理', 'fa-users', '/', null, '2020-07-16 02:38:41', '2020-07-16 03:01:41');
INSERT INTO `admin_menu` VALUES ('11', '10', '0', '用户列表', 'fa-user', '/users', null, '2020-07-16 02:58:19', '2020-07-16 03:04:59');
INSERT INTO `admin_menu` VALUES ('12', '10', '0', '订单列表', 'fa-dollar', '/orders', null, '2020-07-16 08:21:14', '2020-07-20 02:20:56');
INSERT INTO `admin_menu` VALUES ('13', '10', '0', '金流记录', 'fa-shekel', '/money-records', null, '2020-07-20 03:36:56', '2020-07-20 03:36:56');
INSERT INTO `admin_menu` VALUES ('14', '0', '0', '配置管理', 'fa-gear', null, null, '2020-07-20 03:45:31', '2020-07-20 03:47:29');
INSERT INTO `admin_menu` VALUES ('15', '14', '0', '配置设置', 'fa-gears', '/configs', null, '2020-07-20 03:45:53', '2020-07-20 03:47:44');
INSERT INTO `admin_menu` VALUES ('16', '0', '0', '日志消息', 'fa-envelope-o', null, null, '2020-08-04 09:33:31', '2020-08-04 09:33:31');
INSERT INTO `admin_menu` VALUES ('17', '16', '0', '消息中心', 'fa-commenting-o', 'announcements', null, '2020-08-04 09:34:26', '2020-08-04 09:37:22');
INSERT INTO `admin_menu` VALUES ('18', '16', '0', '用户日志', 'fa-wpforms', 'user-operation-logs', null, '2020-08-04 10:03:30', '2020-08-04 10:23:00');
INSERT INTO `admin_menu` VALUES ('19', '14', '0', '用户名默认外汇列表', 'fa-arrow-circle-down', 'default-foreign-exchange-lists', null, '2020-08-26 10:47:40', '2020-08-26 10:47:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=2122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_operation_log` VALUES ('1040', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:59:17', '2020-07-31 16:59:17');
INSERT INTO `admin_operation_log` VALUES ('1041', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:59:22', '2020-07-31 16:59:22');
INSERT INTO `admin_operation_log` VALUES ('1042', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:59:24', '2020-07-31 16:59:24');
INSERT INTO `admin_operation_log` VALUES ('1043', '1', 'admin/foreign-exchang-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:59:27', '2020-07-31 16:59:27');
INSERT INTO `admin_operation_log` VALUES ('1044', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:11:54', '2020-07-31 17:11:54');
INSERT INTO `admin_operation_log` VALUES ('1045', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-03 09:12:20', '2020-08-03 09:12:20');
INSERT INTO `admin_operation_log` VALUES ('1046', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:12:28', '2020-08-03 09:12:28');
INSERT INTO `admin_operation_log` VALUES ('1047', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:13:03', '2020-08-03 09:13:03');
INSERT INTO `admin_operation_log` VALUES ('1048', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:15:08', '2020-08-03 09:15:08');
INSERT INTO `admin_operation_log` VALUES ('1049', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:16:25', '2020-08-03 09:16:25');
INSERT INTO `admin_operation_log` VALUES ('1050', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:19:25', '2020-08-03 09:19:25');
INSERT INTO `admin_operation_log` VALUES ('1051', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:19:28', '2020-08-03 09:19:28');
INSERT INTO `admin_operation_log` VALUES ('1052', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:21:00', '2020-08-03 09:21:00');
INSERT INTO `admin_operation_log` VALUES ('1053', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:21:33', '2020-08-03 09:21:33');
INSERT INTO `admin_operation_log` VALUES ('1054', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:30:40', '2020-08-03 09:30:40');
INSERT INTO `admin_operation_log` VALUES ('1055', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-03 09:33:52', '2020-08-03 09:33:52');
INSERT INTO `admin_operation_log` VALUES ('1056', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-03 09:35:36', '2020-08-03 09:35:36');
INSERT INTO `admin_operation_log` VALUES ('1057', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:35:49', '2020-08-03 09:35:49');
INSERT INTO `admin_operation_log` VALUES ('1058', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:36:10', '2020-08-03 09:36:10');
INSERT INTO `admin_operation_log` VALUES ('1059', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:37:43', '2020-08-03 09:37:43');
INSERT INTO `admin_operation_log` VALUES ('1060', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:38:11', '2020-08-03 09:38:11');
INSERT INTO `admin_operation_log` VALUES ('1061', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:38:37', '2020-08-03 09:38:37');
INSERT INTO `admin_operation_log` VALUES ('1062', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:38:55', '2020-08-03 09:38:55');
INSERT INTO `admin_operation_log` VALUES ('1063', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:39:05', '2020-08-03 09:39:05');
INSERT INTO `admin_operation_log` VALUES ('1064', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:41:14', '2020-08-03 09:41:14');
INSERT INTO `admin_operation_log` VALUES ('1065', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:47:13', '2020-08-03 09:47:13');
INSERT INTO `admin_operation_log` VALUES ('1066', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:09:24', '2020-08-03 10:09:24');
INSERT INTO `admin_operation_log` VALUES ('1067', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:10:57', '2020-08-03 10:10:57');
INSERT INTO `admin_operation_log` VALUES ('1068', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:11:00', '2020-08-03 10:11:00');
INSERT INTO `admin_operation_log` VALUES ('1069', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:11:14', '2020-08-03 10:11:14');
INSERT INTO `admin_operation_log` VALUES ('1070', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:00:31', '2020-08-03 11:00:31');
INSERT INTO `admin_operation_log` VALUES ('1071', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:00:33', '2020-08-03 11:00:33');
INSERT INTO `admin_operation_log` VALUES ('1072', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:00:36', '2020-08-03 11:00:36');
INSERT INTO `admin_operation_log` VALUES ('1073', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:00:38', '2020-08-03 11:00:38');
INSERT INTO `admin_operation_log` VALUES ('1074', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:21:11', '2020-08-03 11:21:11');
INSERT INTO `admin_operation_log` VALUES ('1075', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-03 11:21:36', '2020-08-03 11:21:36');
INSERT INTO `admin_operation_log` VALUES ('1076', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:21:43', '2020-08-03 11:21:43');
INSERT INTO `admin_operation_log` VALUES ('1077', '1', 'admin/auth/menu/8', 'PUT', '192.168.0.140', '{\"parent_id\":\"9\",\"title\":\"\\u5916\\u6c47\\u5217\\u8868\",\"icon\":\"fa-server\",\"uri\":\"\\/foreign-exchange-lists\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"8QToyLHX7s9q2L3prMfz4WuX5MfUpvCD7bgrEOnz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-08-03 11:21:54', '2020-08-03 11:21:54');
INSERT INTO `admin_operation_log` VALUES ('1078', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-03 11:21:54', '2020-08-03 11:21:54');
INSERT INTO `admin_operation_log` VALUES ('1079', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-03 11:22:42', '2020-08-03 11:22:42');
INSERT INTO `admin_operation_log` VALUES ('1080', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:22:46', '2020-08-03 11:22:46');
INSERT INTO `admin_operation_log` VALUES ('1081', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:22:47', '2020-08-03 11:22:47');
INSERT INTO `admin_operation_log` VALUES ('1082', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:22:49', '2020-08-03 11:22:49');
INSERT INTO `admin_operation_log` VALUES ('1083', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:24:34', '2020-08-03 11:24:34');
INSERT INTO `admin_operation_log` VALUES ('1084', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:24:36', '2020-08-03 11:24:36');
INSERT INTO `admin_operation_log` VALUES ('1085', '1', 'admin/foreign-exchange-lists/9', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:26:34', '2020-08-03 11:26:34');
INSERT INTO `admin_operation_log` VALUES ('1086', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 13:01:49', '2020-08-03 13:01:49');
INSERT INTO `admin_operation_log` VALUES ('1087', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 13:01:51', '2020-08-03 13:01:51');
INSERT INTO `admin_operation_log` VALUES ('1088', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 13:01:52', '2020-08-03 13:01:52');
INSERT INTO `admin_operation_log` VALUES ('1089', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 13:01:54', '2020-08-03 13:01:54');
INSERT INTO `admin_operation_log` VALUES ('1090', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 13:01:56', '2020-08-03 13:01:56');
INSERT INTO `admin_operation_log` VALUES ('1091', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 14:44:11', '2020-08-03 14:44:11');
INSERT INTO `admin_operation_log` VALUES ('1092', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 14:44:44', '2020-08-03 14:44:44');
INSERT INTO `admin_operation_log` VALUES ('1093', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 14:45:17', '2020-08-03 14:45:17');
INSERT INTO `admin_operation_log` VALUES ('1094', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 14:47:06', '2020-08-03 14:47:06');
INSERT INTO `admin_operation_log` VALUES ('1095', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 14:47:35', '2020-08-03 14:47:35');
INSERT INTO `admin_operation_log` VALUES ('1096', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 14:47:41', '2020-08-03 14:47:41');
INSERT INTO `admin_operation_log` VALUES ('1097', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:17:28', '2020-08-03 15:17:28');
INSERT INTO `admin_operation_log` VALUES ('1098', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-03 15:18:36', '2020-08-03 15:18:36');
INSERT INTO `admin_operation_log` VALUES ('1099', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-03 15:19:17', '2020-08-03 15:19:17');
INSERT INTO `admin_operation_log` VALUES ('1100', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:26:33', '2020-08-03 15:26:33');
INSERT INTO `admin_operation_log` VALUES ('1101', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:27:08', '2020-08-03 15:27:08');
INSERT INTO `admin_operation_log` VALUES ('1102', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:31:01', '2020-08-03 15:31:01');
INSERT INTO `admin_operation_log` VALUES ('1103', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-08-03 15:41:51', '2020-08-03 15:41:51');
INSERT INTO `admin_operation_log` VALUES ('1104', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:42:01', '2020-08-03 15:42:01');
INSERT INTO `admin_operation_log` VALUES ('1105', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:42:26', '2020-08-03 15:42:26');
INSERT INTO `admin_operation_log` VALUES ('1106', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:42:28', '2020-08-03 15:42:28');
INSERT INTO `admin_operation_log` VALUES ('1107', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:42:32', '2020-08-03 15:42:32');
INSERT INTO `admin_operation_log` VALUES ('1108', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0002\",\"email\":\"3654685558@qq.com\",\"phone\":\"18482526546\",\"email_verified_at\":\"2020-08-03 15:42:33\",\"password\":null,\"balance\":null,\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-10-23 15:42:33\",\"remember_token\":null,\"_token\":\"8QToyLHX7s9q2L3prMfz4WuX5MfUpvCD7bgrEOnz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-08-03 15:43:02', '2020-08-03 15:43:02');
INSERT INTO `admin_operation_log` VALUES ('1109', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-08-03 15:43:02', '2020-08-03 15:43:02');
INSERT INTO `admin_operation_log` VALUES ('1110', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0002\",\"email\":\"3654685558@qq.com\",\"phone\":\"18482526546\",\"email_verified_at\":\"2020-08-03 15:42:33\",\"password\":\"123456\",\"balance\":null,\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-10-23 15:42:33\",\"remember_token\":null,\"_token\":\"8QToyLHX7s9q2L3prMfz4WuX5MfUpvCD7bgrEOnz\"}', '2020-08-03 15:43:08', '2020-08-03 15:43:08');
INSERT INTO `admin_operation_log` VALUES ('1111', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-08-03 15:43:08', '2020-08-03 15:43:08');
INSERT INTO `admin_operation_log` VALUES ('1112', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0002\",\"email\":\"3654685558@qq.com\",\"phone\":\"18482526546\",\"email_verified_at\":\"2020-08-03 15:42:33\",\"password\":\"123456\",\"balance\":\"8000\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-10-23 15:42:33\",\"remember_token\":null,\"_token\":\"8QToyLHX7s9q2L3prMfz4WuX5MfUpvCD7bgrEOnz\"}', '2020-08-03 15:43:26', '2020-08-03 15:43:26');
INSERT INTO `admin_operation_log` VALUES ('1113', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-03 15:43:27', '2020-08-03 15:43:27');
INSERT INTO `admin_operation_log` VALUES ('1114', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:43:48', '2020-08-03 15:43:48');
INSERT INTO `admin_operation_log` VALUES ('1115', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":null,\"email\":null,\"phone\":null,\"email_verified_at\":\"2020-08-03 15:43:48\",\"password\":null,\"balance\":null,\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-08-03 15:43:48\",\"remember_token\":null,\"_token\":\"8QToyLHX7s9q2L3prMfz4WuX5MfUpvCD7bgrEOnz\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-08-03 15:43:52', '2020-08-03 15:43:52');
INSERT INTO `admin_operation_log` VALUES ('1116', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-08-03 15:43:52', '2020-08-03 15:43:52');
INSERT INTO `admin_operation_log` VALUES ('1117', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0003\",\"email\":\"3654682238@qq.com\",\"phone\":\"18482526588\",\"email_verified_at\":\"2020-08-03 15:43:48\",\"password\":\"123456\",\"balance\":null,\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-08-03 15:43:48\",\"remember_token\":null,\"_token\":\"8QToyLHX7s9q2L3prMfz4WuX5MfUpvCD7bgrEOnz\"}', '2020-08-03 15:47:17', '2020-08-03 15:47:17');
INSERT INTO `admin_operation_log` VALUES ('1118', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-08-03 15:47:18', '2020-08-03 15:47:18');
INSERT INTO `admin_operation_log` VALUES ('1119', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:48:32', '2020-08-03 15:48:32');
INSERT INTO `admin_operation_log` VALUES ('1120', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0003\",\"email\":\"3654682228@qq.com\",\"phone\":\"18482526599\",\"email_verified_at\":\"2020-08-03 15:48:32\",\"password\":\"123456\",\"balance\":\"0\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-08-03 15:48:32\",\"remember_token\":null,\"_token\":\"8QToyLHX7s9q2L3prMfz4WuX5MfUpvCD7bgrEOnz\"}', '2020-08-03 15:48:49', '2020-08-03 15:48:49');
INSERT INTO `admin_operation_log` VALUES ('1121', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-03 15:48:49', '2020-08-03 15:48:49');
INSERT INTO `admin_operation_log` VALUES ('1122', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:51:00', '2020-08-03 15:51:00');
INSERT INTO `admin_operation_log` VALUES ('1123', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:51:51', '2020-08-03 15:51:51');
INSERT INTO `admin_operation_log` VALUES ('1124', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:52:08', '2020-08-03 15:52:08');
INSERT INTO `admin_operation_log` VALUES ('1125', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-08-03 15:52:11', '2020-08-03 15:52:11');
INSERT INTO `admin_operation_log` VALUES ('1126', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:55:07', '2020-08-03 15:55:07');
INSERT INTO `admin_operation_log` VALUES ('1127', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:55:07', '2020-08-03 15:55:07');
INSERT INTO `admin_operation_log` VALUES ('1128', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:55:22', '2020-08-03 15:55:22');
INSERT INTO `admin_operation_log` VALUES ('1129', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:55:54', '2020-08-03 15:55:54');
INSERT INTO `admin_operation_log` VALUES ('1130', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:55:56', '2020-08-03 15:55:56');
INSERT INTO `admin_operation_log` VALUES ('1131', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:58:58', '2020-08-03 15:58:58');
INSERT INTO `admin_operation_log` VALUES ('1132', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:00', '2020-08-03 15:59:00');
INSERT INTO `admin_operation_log` VALUES ('1133', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:03', '2020-08-03 15:59:03');
INSERT INTO `admin_operation_log` VALUES ('1134', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:06', '2020-08-03 15:59:06');
INSERT INTO `admin_operation_log` VALUES ('1135', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:08', '2020-08-03 15:59:08');
INSERT INTO `admin_operation_log` VALUES ('1136', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:09', '2020-08-03 15:59:09');
INSERT INTO `admin_operation_log` VALUES ('1137', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:44', '2020-08-03 15:59:44');
INSERT INTO `admin_operation_log` VALUES ('1138', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:45', '2020-08-03 15:59:45');
INSERT INTO `admin_operation_log` VALUES ('1139', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:47', '2020-08-03 15:59:47');
INSERT INTO `admin_operation_log` VALUES ('1140', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:59:50', '2020-08-03 15:59:50');
INSERT INTO `admin_operation_log` VALUES ('1141', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:00:02', '2020-08-03 16:00:02');
INSERT INTO `admin_operation_log` VALUES ('1142', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:00:03', '2020-08-03 16:00:03');
INSERT INTO `admin_operation_log` VALUES ('1143', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:00:04', '2020-08-03 16:00:04');
INSERT INTO `admin_operation_log` VALUES ('1144', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:09:15', '2020-08-03 16:09:15');
INSERT INTO `admin_operation_log` VALUES ('1145', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:09:20', '2020-08-03 16:09:20');
INSERT INTO `admin_operation_log` VALUES ('1146', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:09:29', '2020-08-03 16:09:29');
INSERT INTO `admin_operation_log` VALUES ('1147', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:09:45', '2020-08-03 16:09:45');
INSERT INTO `admin_operation_log` VALUES ('1148', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:09:48', '2020-08-03 16:09:48');
INSERT INTO `admin_operation_log` VALUES ('1149', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:09:56', '2020-08-03 16:09:56');
INSERT INTO `admin_operation_log` VALUES ('1150', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:21:51', '2020-08-03 16:21:51');
INSERT INTO `admin_operation_log` VALUES ('1151', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:21:53', '2020-08-03 16:21:53');
INSERT INTO `admin_operation_log` VALUES ('1152', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:21:55', '2020-08-03 16:21:55');
INSERT INTO `admin_operation_log` VALUES ('1153', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:21:56', '2020-08-03 16:21:56');
INSERT INTO `admin_operation_log` VALUES ('1154', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:21:58', '2020-08-03 16:21:58');
INSERT INTO `admin_operation_log` VALUES ('1155', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:22:01', '2020-08-03 16:22:01');
INSERT INTO `admin_operation_log` VALUES ('1156', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:22:13', '2020-08-03 16:22:13');
INSERT INTO `admin_operation_log` VALUES ('1157', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:22:16', '2020-08-03 16:22:16');
INSERT INTO `admin_operation_log` VALUES ('1158', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:22:17', '2020-08-03 16:22:17');
INSERT INTO `admin_operation_log` VALUES ('1159', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:22:18', '2020-08-03 16:22:18');
INSERT INTO `admin_operation_log` VALUES ('1160', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:35:43', '2020-08-03 16:35:43');
INSERT INTO `admin_operation_log` VALUES ('1161', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:48:37', '2020-08-03 16:48:37');
INSERT INTO `admin_operation_log` VALUES ('1162', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:48:43', '2020-08-03 16:48:43');
INSERT INTO `admin_operation_log` VALUES ('1163', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:48:48', '2020-08-03 16:48:48');
INSERT INTO `admin_operation_log` VALUES ('1164', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:48:51', '2020-08-03 16:48:51');
INSERT INTO `admin_operation_log` VALUES ('1165', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:48:53', '2020-08-03 16:48:53');
INSERT INTO `admin_operation_log` VALUES ('1166', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:48:56', '2020-08-03 16:48:56');
INSERT INTO `admin_operation_log` VALUES ('1167', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:50:24', '2020-08-03 16:50:24');
INSERT INTO `admin_operation_log` VALUES ('1168', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:50:51', '2020-08-03 16:50:51');
INSERT INTO `admin_operation_log` VALUES ('1169', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 16:50:59', '2020-08-03 16:50:59');
INSERT INTO `admin_operation_log` VALUES ('1170', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:02:48', '2020-08-03 17:02:48');
INSERT INTO `admin_operation_log` VALUES ('1171', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:02:52', '2020-08-03 17:02:52');
INSERT INTO `admin_operation_log` VALUES ('1172', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:02:56', '2020-08-03 17:02:56');
INSERT INTO `admin_operation_log` VALUES ('1173', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:03:00', '2020-08-03 17:03:00');
INSERT INTO `admin_operation_log` VALUES ('1174', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-08-03 17:03:54', '2020-08-03 17:03:54');
INSERT INTO `admin_operation_log` VALUES ('1175', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:04:07', '2020-08-03 17:04:07');
INSERT INTO `admin_operation_log` VALUES ('1176', '1', 'admin/configs/64/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:04:10', '2020-08-03 17:04:10');
INSERT INTO `admin_operation_log` VALUES ('1177', '1', 'admin/configs/64', 'PUT', '192.168.0.140', '{\"name\":\"fees\",\"value\":\"0.2\",\"remark\":\"\\u624b\\u7eed\\u8d39\\u6bd4\\u4f8b\",\"_token\":\"8QToyLHX7s9q2L3prMfz4WuX5MfUpvCD7bgrEOnz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-08-03 17:04:18', '2020-08-03 17:04:18');
INSERT INTO `admin_operation_log` VALUES ('1178', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-08-03 17:04:18', '2020-08-03 17:04:18');
INSERT INTO `admin_operation_log` VALUES ('1179', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:04:33', '2020-08-03 17:04:33');
INSERT INTO `admin_operation_log` VALUES ('1180', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-04 09:31:23', '2020-08-04 09:31:23');
INSERT INTO `admin_operation_log` VALUES ('1181', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:31:31', '2020-08-04 09:31:31');
INSERT INTO `admin_operation_log` VALUES ('1182', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u65e5\\u5fd7\\u6d88\\u606f\",\"icon\":\"fa-envelope-o\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\"}', '2020-08-04 09:33:30', '2020-08-04 09:33:30');
INSERT INTO `admin_operation_log` VALUES ('1183', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 09:33:31', '2020-08-04 09:33:31');
INSERT INTO `admin_operation_log` VALUES ('1184', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 09:33:35', '2020-08-04 09:33:35');
INSERT INTO `admin_operation_log` VALUES ('1185', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:33:40', '2020-08-04 09:33:40');
INSERT INTO `admin_operation_log` VALUES ('1186', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:33:43', '2020-08-04 09:33:43');
INSERT INTO `admin_operation_log` VALUES ('1187', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:33:47', '2020-08-04 09:33:47');
INSERT INTO `admin_operation_log` VALUES ('1188', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:33:49', '2020-08-04 09:33:49');
INSERT INTO `admin_operation_log` VALUES ('1189', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:33:51', '2020-08-04 09:33:51');
INSERT INTO `admin_operation_log` VALUES ('1190', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"0\",\"title\":\"\\u6d88\\u606f\\u4e2d\\u5fc3\",\"icon\":\"fa-commenting-o\",\"uri\":\"announcements\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\"}', '2020-08-04 09:34:26', '2020-08-04 09:34:26');
INSERT INTO `admin_operation_log` VALUES ('1191', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 09:34:27', '2020-08-04 09:34:27');
INSERT INTO `admin_operation_log` VALUES ('1192', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:34:30', '2020-08-04 09:34:30');
INSERT INTO `admin_operation_log` VALUES ('1193', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-04 09:34:31', '2020-08-04 09:34:31');
INSERT INTO `admin_operation_log` VALUES ('1194', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:34:33', '2020-08-04 09:34:33');
INSERT INTO `admin_operation_log` VALUES ('1195', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:34:34', '2020-08-04 09:34:34');
INSERT INTO `admin_operation_log` VALUES ('1196', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:34:36', '2020-08-04 09:34:36');
INSERT INTO `admin_operation_log` VALUES ('1197', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:34:51', '2020-08-04 09:34:51');
INSERT INTO `admin_operation_log` VALUES ('1198', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:36:43', '2020-08-04 09:36:43');
INSERT INTO `admin_operation_log` VALUES ('1199', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:36:45', '2020-08-04 09:36:45');
INSERT INTO `admin_operation_log` VALUES ('1200', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:36:52', '2020-08-04 09:36:52');
INSERT INTO `admin_operation_log` VALUES ('1201', '1', 'admin/auth/menu/17/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:37:00', '2020-08-04 09:37:00');
INSERT INTO `admin_operation_log` VALUES ('1202', '1', 'admin/auth/menu/17', 'PUT', '192.168.0.140', '{\"parent_id\":\"17\",\"title\":\"\\u6d88\\u606f\\u4e2d\\u5fc3\",\"icon\":\"fa-commenting-o\",\"uri\":\"announcements\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-08-04 09:37:07', '2020-08-04 09:37:07');
INSERT INTO `admin_operation_log` VALUES ('1203', '1', 'admin/auth/menu/17/edit', 'GET', '192.168.0.140', '[]', '2020-08-04 09:37:08', '2020-08-04 09:37:08');
INSERT INTO `admin_operation_log` VALUES ('1204', '1', 'admin/auth/menu/17', 'PUT', '192.168.0.140', '{\"parent_id\":\"16\",\"title\":\"\\u6d88\\u606f\\u4e2d\\u5fc3\",\"icon\":\"fa-commenting-o\",\"uri\":\"announcements\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\",\"_method\":\"PUT\"}', '2020-08-04 09:37:21', '2020-08-04 09:37:21');
INSERT INTO `admin_operation_log` VALUES ('1205', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 09:37:22', '2020-08-04 09:37:22');
INSERT INTO `admin_operation_log` VALUES ('1206', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 09:37:25', '2020-08-04 09:37:25');
INSERT INTO `admin_operation_log` VALUES ('1207', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:37:27', '2020-08-04 09:37:27');
INSERT INTO `admin_operation_log` VALUES ('1208', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:39:49', '2020-08-04 09:39:49');
INSERT INTO `admin_operation_log` VALUES ('1209', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:42:01', '2020-08-04 09:42:01');
INSERT INTO `admin_operation_log` VALUES ('1210', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:00:07', '2020-08-04 10:00:07');
INSERT INTO `admin_operation_log` VALUES ('1211', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:00:08', '2020-08-04 10:00:08');
INSERT INTO `admin_operation_log` VALUES ('1212', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"16\",\"title\":\"\\u7528\\u6237\\u767b\\u5f55\\u65e5\\u5fd7\",\"icon\":\"fa-wpforms\",\"uri\":\"user-login-logs\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\"}', '2020-08-04 10:03:30', '2020-08-04 10:03:30');
INSERT INTO `admin_operation_log` VALUES ('1213', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 10:03:30', '2020-08-04 10:03:30');
INSERT INTO `admin_operation_log` VALUES ('1214', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 10:03:35', '2020-08-04 10:03:35');
INSERT INTO `admin_operation_log` VALUES ('1215', '1', 'admin/user-login-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:03:37', '2020-08-04 10:03:37');
INSERT INTO `admin_operation_log` VALUES ('1216', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:10:39', '2020-08-04 10:10:39');
INSERT INTO `admin_operation_log` VALUES ('1217', '1', 'admin/auth/menu/18/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:10:46', '2020-08-04 10:10:46');
INSERT INTO `admin_operation_log` VALUES ('1218', '1', 'admin/auth/menu/18', 'PUT', '192.168.0.140', '{\"parent_id\":\"16\",\"title\":\"\\u7528\\u6237\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-wpforms\",\"uri\":\"user-operation-logs\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-08-04 10:10:58', '2020-08-04 10:10:58');
INSERT INTO `admin_operation_log` VALUES ('1219', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 10:10:59', '2020-08-04 10:10:59');
INSERT INTO `admin_operation_log` VALUES ('1220', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 10:11:07', '2020-08-04 10:11:07');
INSERT INTO `admin_operation_log` VALUES ('1221', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:11:11', '2020-08-04 10:11:11');
INSERT INTO `admin_operation_log` VALUES ('1222', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:21:37', '2020-08-04 10:21:37');
INSERT INTO `admin_operation_log` VALUES ('1223', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:22:42', '2020-08-04 10:22:42');
INSERT INTO `admin_operation_log` VALUES ('1224', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:22:50', '2020-08-04 10:22:50');
INSERT INTO `admin_operation_log` VALUES ('1225', '1', 'admin/auth/menu/18/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:22:55', '2020-08-04 10:22:55');
INSERT INTO `admin_operation_log` VALUES ('1226', '1', 'admin/auth/menu/18', 'PUT', '192.168.0.140', '{\"parent_id\":\"16\",\"title\":\"\\u7528\\u6237\\u65e5\\u5fd7\",\"icon\":\"fa-wpforms\",\"uri\":\"user-operation-logs\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-08-04 10:23:00', '2020-08-04 10:23:00');
INSERT INTO `admin_operation_log` VALUES ('1227', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 10:23:00', '2020-08-04 10:23:00');
INSERT INTO `admin_operation_log` VALUES ('1228', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:23:16', '2020-08-04 10:23:16');
INSERT INTO `admin_operation_log` VALUES ('1229', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:23:18', '2020-08-04 10:23:18');
INSERT INTO `admin_operation_log` VALUES ('1230', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:23:19', '2020-08-04 10:23:19');
INSERT INTO `admin_operation_log` VALUES ('1231', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:23:27', '2020-08-04 10:23:27');
INSERT INTO `admin_operation_log` VALUES ('1232', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:24:35', '2020-08-04 10:24:35');
INSERT INTO `admin_operation_log` VALUES ('1233', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:25:31', '2020-08-04 10:25:31');
INSERT INTO `admin_operation_log` VALUES ('1234', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:28:44', '2020-08-04 10:28:44');
INSERT INTO `admin_operation_log` VALUES ('1235', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:28:46', '2020-08-04 10:28:46');
INSERT INTO `admin_operation_log` VALUES ('1236', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:28:48', '2020-08-04 10:28:48');
INSERT INTO `admin_operation_log` VALUES ('1237', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:28:50', '2020-08-04 10:28:50');
INSERT INTO `admin_operation_log` VALUES ('1238', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:29:53', '2020-08-04 10:29:53');
INSERT INTO `admin_operation_log` VALUES ('1239', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"id\":\"2\"}', '2020-08-04 10:30:12', '2020-08-04 10:30:12');
INSERT INTO `admin_operation_log` VALUES ('1240', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"id\":\"2\"}', '2020-08-04 10:46:12', '2020-08-04 10:46:12');
INSERT INTO `admin_operation_log` VALUES ('1241', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:56:13', '2020-08-04 10:56:13');
INSERT INTO `admin_operation_log` VALUES ('1242', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:00:31', '2020-08-04 11:00:31');
INSERT INTO `admin_operation_log` VALUES ('1243', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:01:07', '2020-08-04 11:01:07');
INSERT INTO `admin_operation_log` VALUES ('1244', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:01:11', '2020-08-04 11:01:11');
INSERT INTO `admin_operation_log` VALUES ('1245', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:01:14', '2020-08-04 11:01:14');
INSERT INTO `admin_operation_log` VALUES ('1246', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:01:16', '2020-08-04 11:01:16');
INSERT INTO `admin_operation_log` VALUES ('1247', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:01:32', '2020-08-04 11:01:32');
INSERT INTO `admin_operation_log` VALUES ('1248', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:01:34', '2020-08-04 11:01:34');
INSERT INTO `admin_operation_log` VALUES ('1249', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:01:35', '2020-08-04 11:01:35');
INSERT INTO `admin_operation_log` VALUES ('1250', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:01:41', '2020-08-04 11:01:41');
INSERT INTO `admin_operation_log` VALUES ('1251', '1', 'admin/announcements', 'GET', '192.168.0.140', '[]', '2020-08-04 11:29:35', '2020-08-04 11:29:35');
INSERT INTO `admin_operation_log` VALUES ('1252', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 11:48:38', '2020-08-04 11:48:38');
INSERT INTO `admin_operation_log` VALUES ('1253', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:10:47', '2020-08-04 13:10:47');
INSERT INTO `admin_operation_log` VALUES ('1254', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:10:49', '2020-08-04 13:10:49');
INSERT INTO `admin_operation_log` VALUES ('1255', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:10:54', '2020-08-04 13:10:54');
INSERT INTO `admin_operation_log` VALUES ('1256', '1', 'admin/foreign-exchange-lists/9/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:10:59', '2020-08-04 13:10:59');
INSERT INTO `admin_operation_log` VALUES ('1257', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:11:09', '2020-08-04 13:11:09');
INSERT INTO `admin_operation_log` VALUES ('1258', '1', 'admin/foreign-exchange-lists/9', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:11:13', '2020-08-04 13:11:13');
INSERT INTO `admin_operation_log` VALUES ('1259', '1', 'admin/foreign-exchange-lists/9', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:11:57', '2020-08-04 13:11:57');
INSERT INTO `admin_operation_log` VALUES ('1260', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:12:00', '2020-08-04 13:12:00');
INSERT INTO `admin_operation_log` VALUES ('1261', '1', 'admin/users/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:12:04', '2020-08-04 13:12:04');
INSERT INTO `admin_operation_log` VALUES ('1262', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:13:09', '2020-08-04 13:13:09');
INSERT INTO `admin_operation_log` VALUES ('1263', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:15:00', '2020-08-04 13:15:00');
INSERT INTO `admin_operation_log` VALUES ('1264', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:16:03', '2020-08-04 13:16:03');
INSERT INTO `admin_operation_log` VALUES ('1265', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0005\",\"phone\":\"18483638888\",\"password\":\"123456\",\"balance\":\"0\",\"status\":\"off\",\"level\":\"off\",\"end_time\":\"2020-08-04 13:16:03\",\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\"}', '2020-08-04 13:16:28', '2020-08-04 13:16:28');
INSERT INTO `admin_operation_log` VALUES ('1266', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-04 13:16:29', '2020-08-04 13:16:29');
INSERT INTO `admin_operation_log` VALUES ('1267', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:16:53', '2020-08-04 13:16:53');
INSERT INTO `admin_operation_log` VALUES ('1268', '1', 'admin/users/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:17:23', '2020-08-04 13:17:23');
INSERT INTO `admin_operation_log` VALUES ('1269', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-04 13:17:23', '2020-08-04 13:17:23');
INSERT INTO `admin_operation_log` VALUES ('1270', '1', 'admin/users/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:17:27', '2020-08-04 13:17:27');
INSERT INTO `admin_operation_log` VALUES ('1271', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-04 13:17:28', '2020-08-04 13:17:28');
INSERT INTO `admin_operation_log` VALUES ('1272', '1', 'admin/users/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:18:04', '2020-08-04 13:18:04');
INSERT INTO `admin_operation_log` VALUES ('1273', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:04', '2020-08-04 13:18:04');
INSERT INTO `admin_operation_log` VALUES ('1274', '1', 'admin/users/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:18:17', '2020-08-04 13:18:17');
INSERT INTO `admin_operation_log` VALUES ('1275', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:18', '2020-08-04 13:18:18');
INSERT INTO `admin_operation_log` VALUES ('1276', '1', 'admin/users/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:18:34', '2020-08-04 13:18:34');
INSERT INTO `admin_operation_log` VALUES ('1277', '1', 'admin/users/1', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:18:47', '2020-08-04 13:18:47');
INSERT INTO `admin_operation_log` VALUES ('1278', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:48', '2020-08-04 13:18:48');
INSERT INTO `admin_operation_log` VALUES ('1279', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:49', '2020-08-04 13:18:49');
INSERT INTO `admin_operation_log` VALUES ('1280', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:49', '2020-08-04 13:18:49');
INSERT INTO `admin_operation_log` VALUES ('1281', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:50', '2020-08-04 13:18:50');
INSERT INTO `admin_operation_log` VALUES ('1282', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:51', '2020-08-04 13:18:51');
INSERT INTO `admin_operation_log` VALUES ('1283', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:51', '2020-08-04 13:18:51');
INSERT INTO `admin_operation_log` VALUES ('1284', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:52', '2020-08-04 13:18:52');
INSERT INTO `admin_operation_log` VALUES ('1285', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:53', '2020-08-04 13:18:53');
INSERT INTO `admin_operation_log` VALUES ('1286', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:53', '2020-08-04 13:18:53');
INSERT INTO `admin_operation_log` VALUES ('1287', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:54', '2020-08-04 13:18:54');
INSERT INTO `admin_operation_log` VALUES ('1288', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:55', '2020-08-04 13:18:55');
INSERT INTO `admin_operation_log` VALUES ('1289', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:55', '2020-08-04 13:18:55');
INSERT INTO `admin_operation_log` VALUES ('1290', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:56', '2020-08-04 13:18:56');
INSERT INTO `admin_operation_log` VALUES ('1291', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:56', '2020-08-04 13:18:56');
INSERT INTO `admin_operation_log` VALUES ('1292', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:57', '2020-08-04 13:18:57');
INSERT INTO `admin_operation_log` VALUES ('1293', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:58', '2020-08-04 13:18:58');
INSERT INTO `admin_operation_log` VALUES ('1294', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:58', '2020-08-04 13:18:58');
INSERT INTO `admin_operation_log` VALUES ('1295', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:18:59', '2020-08-04 13:18:59');
INSERT INTO `admin_operation_log` VALUES ('1296', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:19:00', '2020-08-04 13:19:00');
INSERT INTO `admin_operation_log` VALUES ('1297', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:19:00', '2020-08-04 13:19:00');
INSERT INTO `admin_operation_log` VALUES ('1298', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:19:01', '2020-08-04 13:19:01');
INSERT INTO `admin_operation_log` VALUES ('1299', '1', 'admin/users/1', 'GET', '192.168.0.140', '[]', '2020-08-04 13:19:13', '2020-08-04 13:19:13');
INSERT INTO `admin_operation_log` VALUES ('1300', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:21:15', '2020-08-04 13:21:15');
INSERT INTO `admin_operation_log` VALUES ('1301', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:21:17', '2020-08-04 13:21:17');
INSERT INTO `admin_operation_log` VALUES ('1302', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:22:14', '2020-08-04 13:22:14');
INSERT INTO `admin_operation_log` VALUES ('1303', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:24:50', '2020-08-04 13:24:50');
INSERT INTO `admin_operation_log` VALUES ('1304', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:27:48', '2020-08-04 13:27:48');
INSERT INTO `admin_operation_log` VALUES ('1305', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:28:16', '2020-08-04 13:28:16');
INSERT INTO `admin_operation_log` VALUES ('1306', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0011\",\"phone\":\"18482526542\",\"password\":\"123456\",\"balance\":\"0\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-08-04 13:28:16\",\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\"}', '2020-08-04 13:28:38', '2020-08-04 13:28:38');
INSERT INTO `admin_operation_log` VALUES ('1307', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-04 13:28:38', '2020-08-04 13:28:38');
INSERT INTO `admin_operation_log` VALUES ('1308', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:28:43', '2020-08-04 13:28:43');
INSERT INTO `admin_operation_log` VALUES ('1309', '1', 'admin/configs/64', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:28:49', '2020-08-04 13:28:49');
INSERT INTO `admin_operation_log` VALUES ('1310', '1', 'admin/configs/64', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:29:54', '2020-08-04 13:29:54');
INSERT INTO `admin_operation_log` VALUES ('1311', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:29:58', '2020-08-04 13:29:58');
INSERT INTO `admin_operation_log` VALUES ('1312', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:30:00', '2020-08-04 13:30:00');
INSERT INTO `admin_operation_log` VALUES ('1313', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:30:06', '2020-08-04 13:30:06');
INSERT INTO `admin_operation_log` VALUES ('1314', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:30:10', '2020-08-04 13:30:10');
INSERT INTO `admin_operation_log` VALUES ('1315', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:30:12', '2020-08-04 13:30:12');
INSERT INTO `admin_operation_log` VALUES ('1316', '1', 'admin/orders/16/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:30:16', '2020-08-04 13:30:16');
INSERT INTO `admin_operation_log` VALUES ('1317', '1', 'admin/orders/16/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:33:37', '2020-08-04 13:33:37');
INSERT INTO `admin_operation_log` VALUES ('1318', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:39:45', '2020-08-04 13:39:45');
INSERT INTO `admin_operation_log` VALUES ('1319', '1', 'admin/orders/16', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:39:48', '2020-08-04 13:39:48');
INSERT INTO `admin_operation_log` VALUES ('1320', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:39:57', '2020-08-04 13:39:57');
INSERT INTO `admin_operation_log` VALUES ('1321', '1', 'admin/money-records/27', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 13:40:03', '2020-08-04 13:40:03');
INSERT INTO `admin_operation_log` VALUES ('1322', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:10:00', '2020-08-04 14:10:00');
INSERT INTO `admin_operation_log` VALUES ('1323', '1', 'admin/money-records/27', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:21:19', '2020-08-04 14:21:19');
INSERT INTO `admin_operation_log` VALUES ('1324', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:21:26', '2020-08-04 14:21:26');
INSERT INTO `admin_operation_log` VALUES ('1325', '1', 'admin/auth/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:42:37', '2020-08-04 14:42:37');
INSERT INTO `admin_operation_log` VALUES ('1326', '1', 'admin/auth/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:42:40', '2020-08-04 14:42:40');
INSERT INTO `admin_operation_log` VALUES ('1327', '1', 'admin/auth/roles', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:42:42', '2020-08-04 14:42:42');
INSERT INTO `admin_operation_log` VALUES ('1328', '1', 'admin/auth/roles/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:42:44', '2020-08-04 14:42:44');
INSERT INTO `admin_operation_log` VALUES ('1329', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:43:23', '2020-08-04 14:43:23');
INSERT INTO `admin_operation_log` VALUES ('1330', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:43:28', '2020-08-04 14:43:28');
INSERT INTO `admin_operation_log` VALUES ('1331', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:43:30', '2020-08-04 14:43:30');
INSERT INTO `admin_operation_log` VALUES ('1332', '1', 'admin/auth/menu/8', 'PUT', '192.168.0.140', '{\"parent_id\":\"9\",\"title\":\"\\u5916\\u6c47\\u5217\\u8868\",\"icon\":\"fa-server\",\"uri\":\"\\/foreign-exchange-lists\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/auth\\/menu\"}', '2020-08-04 14:43:55', '2020-08-04 14:43:55');
INSERT INTO `admin_operation_log` VALUES ('1333', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-04 14:43:55', '2020-08-04 14:43:55');
INSERT INTO `admin_operation_log` VALUES ('1334', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:43:59', '2020-08-04 14:43:59');
INSERT INTO `admin_operation_log` VALUES ('1335', '1', 'admin/auth/permissions', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 14:44:17', '2020-08-04 14:44:17');
INSERT INTO `admin_operation_log` VALUES ('1336', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 15:31:09', '2020-08-04 15:31:09');
INSERT INTO `admin_operation_log` VALUES ('1337', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 15:31:14', '2020-08-04 15:31:14');
INSERT INTO `admin_operation_log` VALUES ('1338', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 15:34:22', '2020-08-04 15:34:22');
INSERT INTO `admin_operation_log` VALUES ('1339', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 15:44:46', '2020-08-04 15:44:46');
INSERT INTO `admin_operation_log` VALUES ('1340', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 15:45:18', '2020-08-04 15:45:18');
INSERT INTO `admin_operation_log` VALUES ('1341', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 15:46:14', '2020-08-04 15:46:14');
INSERT INTO `admin_operation_log` VALUES ('1342', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 15:50:00', '2020-08-04 15:50:00');
INSERT INTO `admin_operation_log` VALUES ('1343', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:37:45', '2020-08-04 16:37:45');
INSERT INTO `admin_operation_log` VALUES ('1344', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:42:49', '2020-08-04 16:42:49');
INSERT INTO `admin_operation_log` VALUES ('1345', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:42:51', '2020-08-04 16:42:51');
INSERT INTO `admin_operation_log` VALUES ('1346', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:42:53', '2020-08-04 16:42:53');
INSERT INTO `admin_operation_log` VALUES ('1347', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:42:56', '2020-08-04 16:42:56');
INSERT INTO `admin_operation_log` VALUES ('1348', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:42:57', '2020-08-04 16:42:57');
INSERT INTO `admin_operation_log` VALUES ('1349', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:42:58', '2020-08-04 16:42:58');
INSERT INTO `admin_operation_log` VALUES ('1350', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:26', '2020-08-04 16:44:26');
INSERT INTO `admin_operation_log` VALUES ('1351', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:28', '2020-08-04 16:44:28');
INSERT INTO `admin_operation_log` VALUES ('1352', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:29', '2020-08-04 16:44:29');
INSERT INTO `admin_operation_log` VALUES ('1353', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:34', '2020-08-04 16:44:34');
INSERT INTO `admin_operation_log` VALUES ('1354', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:37', '2020-08-04 16:44:37');
INSERT INTO `admin_operation_log` VALUES ('1355', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:38', '2020-08-04 16:44:38');
INSERT INTO `admin_operation_log` VALUES ('1356', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:40', '2020-08-04 16:44:40');
INSERT INTO `admin_operation_log` VALUES ('1357', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:41', '2020-08-04 16:44:41');
INSERT INTO `admin_operation_log` VALUES ('1358', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:44:43', '2020-08-04 16:44:43');
INSERT INTO `admin_operation_log` VALUES ('1359', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:56:59', '2020-08-04 16:56:59');
INSERT INTO `admin_operation_log` VALUES ('1360', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:58:01', '2020-08-04 16:58:01');
INSERT INTO `admin_operation_log` VALUES ('1361', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:58:05', '2020-08-04 16:58:05');
INSERT INTO `admin_operation_log` VALUES ('1362', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:11:37', '2020-08-04 17:11:37');
INSERT INTO `admin_operation_log` VALUES ('1363', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:19:36', '2020-08-04 17:19:36');
INSERT INTO `admin_operation_log` VALUES ('1364', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:24:19', '2020-08-04 17:24:19');
INSERT INTO `admin_operation_log` VALUES ('1365', '1', 'admin/users/4/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:24:51', '2020-08-04 17:24:51');
INSERT INTO `admin_operation_log` VALUES ('1366', '1', 'admin/users/4', 'PUT', '192.168.0.140', '{\"name\":\"test0005\",\"phone\":\"18483638888\",\"password\":null,\"balance\":\"888888\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-08-04 13:16:03\",\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-08-04 17:24:57', '2020-08-04 17:24:57');
INSERT INTO `admin_operation_log` VALUES ('1367', '1', 'admin/users/4/edit', 'GET', '192.168.0.140', '[]', '2020-08-04 17:24:57', '2020-08-04 17:24:57');
INSERT INTO `admin_operation_log` VALUES ('1368', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:25:32', '2020-08-04 17:25:32');
INSERT INTO `admin_operation_log` VALUES ('1369', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:25:38', '2020-08-04 17:25:38');
INSERT INTO `admin_operation_log` VALUES ('1370', '1', 'admin/users/1/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:25:41', '2020-08-04 17:25:41');
INSERT INTO `admin_operation_log` VALUES ('1371', '1', 'admin/users/1', 'PUT', '192.168.0.140', '{\"name\":\"test0001\",\"phone\":\"18482526545\",\"password\":null,\"balance\":\"25562190.46000\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-07-30 11:38:50\",\"_token\":\"0xzY3ZnHudctpmdFV6bhqShiKvwOWw1A0t7EXg8N\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-08-04 17:26:57', '2020-08-04 17:26:57');
INSERT INTO `admin_operation_log` VALUES ('1372', '1', 'admin/users/1/edit', 'GET', '192.168.0.140', '[]', '2020-08-04 17:26:58', '2020-08-04 17:26:58');
INSERT INTO `admin_operation_log` VALUES ('1373', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:27:53', '2020-08-04 17:27:53');
INSERT INTO `admin_operation_log` VALUES ('1374', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:29:02', '2020-08-04 17:29:02');
INSERT INTO `admin_operation_log` VALUES ('1375', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:29:08', '2020-08-04 17:29:08');
INSERT INTO `admin_operation_log` VALUES ('1376', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-08-04 17:29:12', '2020-08-04 17:29:12');
INSERT INTO `admin_operation_log` VALUES ('1377', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:29:18', '2020-08-04 17:29:18');
INSERT INTO `admin_operation_log` VALUES ('1378', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:31:57', '2020-08-04 17:31:57');
INSERT INTO `admin_operation_log` VALUES ('1379', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:32:00', '2020-08-04 17:32:00');
INSERT INTO `admin_operation_log` VALUES ('1380', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:32:02', '2020-08-04 17:32:02');
INSERT INTO `admin_operation_log` VALUES ('1381', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:32:04', '2020-08-04 17:32:04');
INSERT INTO `admin_operation_log` VALUES ('1382', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:32:06', '2020-08-04 17:32:06');
INSERT INTO `admin_operation_log` VALUES ('1383', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:32:09', '2020-08-04 17:32:09');
INSERT INTO `admin_operation_log` VALUES ('1384', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:32:10', '2020-08-04 17:32:10');
INSERT INTO `admin_operation_log` VALUES ('1385', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:38:57', '2020-08-04 17:38:57');
INSERT INTO `admin_operation_log` VALUES ('1386', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:38:59', '2020-08-04 17:38:59');
INSERT INTO `admin_operation_log` VALUES ('1387', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:39:02', '2020-08-04 17:39:02');
INSERT INTO `admin_operation_log` VALUES ('1388', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:39:03', '2020-08-04 17:39:03');
INSERT INTO `admin_operation_log` VALUES ('1389', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 17:39:05', '2020-08-04 17:39:05');
INSERT INTO `admin_operation_log` VALUES ('1390', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-05 09:05:28', '2020-08-05 09:05:28');
INSERT INTO `admin_operation_log` VALUES ('1391', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:05:34', '2020-08-05 09:05:34');
INSERT INTO `admin_operation_log` VALUES ('1392', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:05:36', '2020-08-05 09:05:36');
INSERT INTO `admin_operation_log` VALUES ('1393', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:05:40', '2020-08-05 09:05:40');
INSERT INTO `admin_operation_log` VALUES ('1394', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:05:46', '2020-08-05 09:05:46');
INSERT INTO `admin_operation_log` VALUES ('1395', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:06:17', '2020-08-05 09:06:17');
INSERT INTO `admin_operation_log` VALUES ('1396', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:06:49', '2020-08-05 09:06:49');
INSERT INTO `admin_operation_log` VALUES ('1397', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:07:09', '2020-08-05 09:07:09');
INSERT INTO `admin_operation_log` VALUES ('1398', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:07:12', '2020-08-05 09:07:12');
INSERT INTO `admin_operation_log` VALUES ('1399', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:07:14', '2020-08-05 09:07:14');
INSERT INTO `admin_operation_log` VALUES ('1400', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:07:17', '2020-08-05 09:07:17');
INSERT INTO `admin_operation_log` VALUES ('1401', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:07:18', '2020-08-05 09:07:18');
INSERT INTO `admin_operation_log` VALUES ('1402', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:17:44', '2020-08-05 09:17:44');
INSERT INTO `admin_operation_log` VALUES ('1403', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:17:45', '2020-08-05 09:17:45');
INSERT INTO `admin_operation_log` VALUES ('1404', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:17:47', '2020-08-05 09:17:47');
INSERT INTO `admin_operation_log` VALUES ('1405', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:17:48', '2020-08-05 09:17:48');
INSERT INTO `admin_operation_log` VALUES ('1406', '1', 'admin/orders/21/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:17:51', '2020-08-05 09:17:51');
INSERT INTO `admin_operation_log` VALUES ('1407', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:17:54', '2020-08-05 09:17:54');
INSERT INTO `admin_operation_log` VALUES ('1408', '1', 'admin/orders/21', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:17:56', '2020-08-05 09:17:56');
INSERT INTO `admin_operation_log` VALUES ('1409', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:18:00', '2020-08-05 09:18:00');
INSERT INTO `admin_operation_log` VALUES ('1410', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:18:03', '2020-08-05 09:18:03');
INSERT INTO `admin_operation_log` VALUES ('1411', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:17:29', '2020-08-05 10:17:29');
INSERT INTO `admin_operation_log` VALUES ('1412', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:20:28', '2020-08-05 10:20:28');
INSERT INTO `admin_operation_log` VALUES ('1413', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:20:35', '2020-08-05 10:20:35');
INSERT INTO `admin_operation_log` VALUES ('1414', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:24:39', '2020-08-05 10:24:39');
INSERT INTO `admin_operation_log` VALUES ('1415', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:25:04', '2020-08-05 10:25:04');
INSERT INTO `admin_operation_log` VALUES ('1416', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:25:11', '2020-08-05 10:25:11');
INSERT INTO `admin_operation_log` VALUES ('1417', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:25:14', '2020-08-05 10:25:14');
INSERT INTO `admin_operation_log` VALUES ('1418', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:26:13', '2020-08-05 10:26:13');
INSERT INTO `admin_operation_log` VALUES ('1419', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:26:14', '2020-08-05 10:26:14');
INSERT INTO `admin_operation_log` VALUES ('1420', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:33:27', '2020-08-05 10:33:27');
INSERT INTO `admin_operation_log` VALUES ('1421', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:33:32', '2020-08-05 10:33:32');
INSERT INTO `admin_operation_log` VALUES ('1422', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:33:35', '2020-08-05 10:33:35');
INSERT INTO `admin_operation_log` VALUES ('1423', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:33:41', '2020-08-05 10:33:41');
INSERT INTO `admin_operation_log` VALUES ('1424', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:33:59', '2020-08-05 10:33:59');
INSERT INTO `admin_operation_log` VALUES ('1425', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:34:03', '2020-08-05 10:34:03');
INSERT INTO `admin_operation_log` VALUES ('1426', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:34:04', '2020-08-05 10:34:04');
INSERT INTO `admin_operation_log` VALUES ('1427', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:39:36', '2020-08-05 10:39:36');
INSERT INTO `admin_operation_log` VALUES ('1428', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:40:57', '2020-08-05 10:40:57');
INSERT INTO `admin_operation_log` VALUES ('1429', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:40:59', '2020-08-05 10:40:59');
INSERT INTO `admin_operation_log` VALUES ('1430', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:41:03', '2020-08-05 10:41:03');
INSERT INTO `admin_operation_log` VALUES ('1431', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:41:07', '2020-08-05 10:41:07');
INSERT INTO `admin_operation_log` VALUES ('1432', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:42:18', '2020-08-05 10:42:18');
INSERT INTO `admin_operation_log` VALUES ('1433', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:42:40', '2020-08-05 10:42:40');
INSERT INTO `admin_operation_log` VALUES ('1434', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:43:13', '2020-08-05 10:43:13');
INSERT INTO `admin_operation_log` VALUES ('1435', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:43:34', '2020-08-05 10:43:34');
INSERT INTO `admin_operation_log` VALUES ('1436', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:44:31', '2020-08-05 10:44:31');
INSERT INTO `admin_operation_log` VALUES ('1437', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:45:12', '2020-08-05 10:45:12');
INSERT INTO `admin_operation_log` VALUES ('1438', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:45:53', '2020-08-05 10:45:53');
INSERT INTO `admin_operation_log` VALUES ('1439', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:46:17', '2020-08-05 10:46:17');
INSERT INTO `admin_operation_log` VALUES ('1440', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:46:34', '2020-08-05 10:46:34');
INSERT INTO `admin_operation_log` VALUES ('1441', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:46:44', '2020-08-05 10:46:44');
INSERT INTO `admin_operation_log` VALUES ('1442', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:47:19', '2020-08-05 10:47:19');
INSERT INTO `admin_operation_log` VALUES ('1443', '1', 'admin/orders/5/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:48:21', '2020-08-05 10:48:21');
INSERT INTO `admin_operation_log` VALUES ('1444', '1', 'admin/orders/5', 'PUT', '192.168.0.140', '{\"trade_no\":\"J805956243673146\",\"buy_trade\":null,\"user_id\":\"1\",\"number\":\"100\",\"code_all\":\"ETHUSD\",\"buy_price\":\"10000.00000\",\"stop_loss\":\"312.00000\",\"stop_profit\":\"380.00000\",\"type\":\"2\",\"status\":\"off\",\"floating\":\"200\",\"remark\":\"\\u4e70\\u5e01\\uff0c\\uff0c\\uff0c\",\"_token\":\"XN6PnuKFzImSBSU9VPjb5O1q52LtsrT77WJRieyg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/orders\"}', '2020-08-05 10:48:27', '2020-08-05 10:48:27');
INSERT INTO `admin_operation_log` VALUES ('1445', '1', 'admin/orders/5/edit', 'GET', '192.168.0.140', '[]', '2020-08-05 10:48:28', '2020-08-05 10:48:28');
INSERT INTO `admin_operation_log` VALUES ('1446', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:50:27', '2020-08-05 10:50:27');
INSERT INTO `admin_operation_log` VALUES ('1447', '1', 'admin/orders/5', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:50:42', '2020-08-05 10:50:42');
INSERT INTO `admin_operation_log` VALUES ('1448', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:51:05', '2020-08-05 10:51:05');
INSERT INTO `admin_operation_log` VALUES ('1449', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:54:01', '2020-08-05 10:54:01');
INSERT INTO `admin_operation_log` VALUES ('1450', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:54:04', '2020-08-05 10:54:04');
INSERT INTO `admin_operation_log` VALUES ('1451', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:59:47', '2020-08-05 10:59:47');
INSERT INTO `admin_operation_log` VALUES ('1452', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:59:51', '2020-08-05 10:59:51');
INSERT INTO `admin_operation_log` VALUES ('1453', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:59:53', '2020-08-05 10:59:53');
INSERT INTO `admin_operation_log` VALUES ('1454', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 10:59:53', '2020-08-05 10:59:53');
INSERT INTO `admin_operation_log` VALUES ('1455', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 11:00:05', '2020-08-05 11:00:05');
INSERT INTO `admin_operation_log` VALUES ('1456', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 11:38:07', '2020-08-05 11:38:07');
INSERT INTO `admin_operation_log` VALUES ('1457', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 11:38:07', '2020-08-05 11:38:07');
INSERT INTO `admin_operation_log` VALUES ('1458', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 11:38:09', '2020-08-05 11:38:09');
INSERT INTO `admin_operation_log` VALUES ('1459', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 11:38:09', '2020-08-05 11:38:09');
INSERT INTO `admin_operation_log` VALUES ('1460', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 11:38:11', '2020-08-05 11:38:11');
INSERT INTO `admin_operation_log` VALUES ('1461', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 11:38:13', '2020-08-05 11:38:13');
INSERT INTO `admin_operation_log` VALUES ('1462', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 11:38:15', '2020-08-05 11:38:15');
INSERT INTO `admin_operation_log` VALUES ('1463', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:17', '2020-08-05 13:04:17');
INSERT INTO `admin_operation_log` VALUES ('1464', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:19', '2020-08-05 13:04:19');
INSERT INTO `admin_operation_log` VALUES ('1465', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:21', '2020-08-05 13:04:21');
INSERT INTO `admin_operation_log` VALUES ('1466', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:22', '2020-08-05 13:04:22');
INSERT INTO `admin_operation_log` VALUES ('1467', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:23', '2020-08-05 13:04:23');
INSERT INTO `admin_operation_log` VALUES ('1468', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:27', '2020-08-05 13:04:27');
INSERT INTO `admin_operation_log` VALUES ('1469', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:28', '2020-08-05 13:04:28');
INSERT INTO `admin_operation_log` VALUES ('1470', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:29', '2020-08-05 13:04:29');
INSERT INTO `admin_operation_log` VALUES ('1471', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:32', '2020-08-05 13:04:32');
INSERT INTO `admin_operation_log` VALUES ('1472', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:33', '2020-08-05 13:04:33');
INSERT INTO `admin_operation_log` VALUES ('1473', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 13:04:34', '2020-08-05 13:04:34');
INSERT INTO `admin_operation_log` VALUES ('1474', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:05:09', '2020-08-05 15:05:09');
INSERT INTO `admin_operation_log` VALUES ('1475', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:05:43', '2020-08-05 15:05:43');
INSERT INTO `admin_operation_log` VALUES ('1476', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:08:16', '2020-08-05 15:08:16');
INSERT INTO `admin_operation_log` VALUES ('1477', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:09:11', '2020-08-05 15:09:11');
INSERT INTO `admin_operation_log` VALUES ('1478', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:09:23', '2020-08-05 15:09:23');
INSERT INTO `admin_operation_log` VALUES ('1479', '1', 'admin/orders/2', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:09:47', '2020-08-05 15:09:47');
INSERT INTO `admin_operation_log` VALUES ('1480', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:10:02', '2020-08-05 15:10:02');
INSERT INTO `admin_operation_log` VALUES ('1481', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:11:53', '2020-08-05 15:11:53');
INSERT INTO `admin_operation_log` VALUES ('1482', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:12:07', '2020-08-05 15:12:07');
INSERT INTO `admin_operation_log` VALUES ('1483', '1', 'admin/orders/21', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:12:13', '2020-08-05 15:12:13');
INSERT INTO `admin_operation_log` VALUES ('1484', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:12:57', '2020-08-05 15:12:57');
INSERT INTO `admin_operation_log` VALUES ('1485', '1', 'admin/configs/65/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:13:01', '2020-08-05 15:13:01');
INSERT INTO `admin_operation_log` VALUES ('1486', '1', 'admin/configs/65', 'PUT', '192.168.0.140', '{\"name\":\"sellrate\",\"value\":\"0.1\",\"remark\":\"\\u5356\\u51fa\\u4ef7\\u683c\\u6bd4\\u4f8b\",\"_token\":\"abORMVIJ7Iy51dUHJS34dIL5CMQGseSR9MubjBUc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-08-05 15:13:07', '2020-08-05 15:13:07');
INSERT INTO `admin_operation_log` VALUES ('1487', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-08-05 15:13:07', '2020-08-05 15:13:07');
INSERT INTO `admin_operation_log` VALUES ('1488', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:14:39', '2020-08-05 15:14:39');
INSERT INTO `admin_operation_log` VALUES ('1489', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:21:16', '2020-08-05 15:21:16');
INSERT INTO `admin_operation_log` VALUES ('1490', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:21:21', '2020-08-05 15:21:21');
INSERT INTO `admin_operation_log` VALUES ('1491', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 17:56:34', '2020-08-05 17:56:34');
INSERT INTO `admin_operation_log` VALUES ('1492', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-06 09:08:44', '2020-08-06 09:08:44');
INSERT INTO `admin_operation_log` VALUES ('1493', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-06 09:08:49', '2020-08-06 09:08:49');
INSERT INTO `admin_operation_log` VALUES ('1494', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:08:52', '2020-08-06 09:08:52');
INSERT INTO `admin_operation_log` VALUES ('1495', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:09:06', '2020-08-06 09:09:06');
INSERT INTO `admin_operation_log` VALUES ('1496', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:09:10', '2020-08-06 09:09:10');
INSERT INTO `admin_operation_log` VALUES ('1497', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:09:14', '2020-08-06 09:09:14');
INSERT INTO `admin_operation_log` VALUES ('1498', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:10:06', '2020-08-06 09:10:06');
INSERT INTO `admin_operation_log` VALUES ('1499', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:10:13', '2020-08-06 09:10:13');
INSERT INTO `admin_operation_log` VALUES ('1500', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:32:36', '2020-08-06 09:32:36');
INSERT INTO `admin_operation_log` VALUES ('1501', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:32:39', '2020-08-06 09:32:39');
INSERT INTO `admin_operation_log` VALUES ('1502', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:32:41', '2020-08-06 09:32:41');
INSERT INTO `admin_operation_log` VALUES ('1503', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 09:32:43', '2020-08-06 09:32:43');
INSERT INTO `admin_operation_log` VALUES ('1504', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 10:15:15', '2020-08-06 10:15:15');
INSERT INTO `admin_operation_log` VALUES ('1505', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 10:15:18', '2020-08-06 10:15:18');
INSERT INTO `admin_operation_log` VALUES ('1506', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 10:15:21', '2020-08-06 10:15:21');
INSERT INTO `admin_operation_log` VALUES ('1507', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 10:15:22', '2020-08-06 10:15:22');
INSERT INTO `admin_operation_log` VALUES ('1508', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 10:16:30', '2020-08-06 10:16:30');
INSERT INTO `admin_operation_log` VALUES ('1509', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 10:46:30', '2020-08-06 10:46:30');
INSERT INTO `admin_operation_log` VALUES ('1510', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 13:17:11', '2020-08-06 13:17:11');
INSERT INTO `admin_operation_log` VALUES ('1511', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 13:17:21', '2020-08-06 13:17:21');
INSERT INTO `admin_operation_log` VALUES ('1512', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 14:29:19', '2020-08-06 14:29:19');
INSERT INTO `admin_operation_log` VALUES ('1513', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 14:29:21', '2020-08-06 14:29:21');
INSERT INTO `admin_operation_log` VALUES ('1514', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 14:29:24', '2020-08-06 14:29:24');
INSERT INTO `admin_operation_log` VALUES ('1515', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 14:29:25', '2020-08-06 14:29:25');
INSERT INTO `admin_operation_log` VALUES ('1516', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 14:29:26', '2020-08-06 14:29:26');
INSERT INTO `admin_operation_log` VALUES ('1517', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 14:29:28', '2020-08-06 14:29:28');
INSERT INTO `admin_operation_log` VALUES ('1518', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 17:27:53', '2020-08-06 17:27:53');
INSERT INTO `admin_operation_log` VALUES ('1519', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 17:28:08', '2020-08-06 17:28:08');
INSERT INTO `admin_operation_log` VALUES ('1520', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 17:30:02', '2020-08-06 17:30:02');
INSERT INTO `admin_operation_log` VALUES ('1521', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-06 17:30:08', '2020-08-06 17:30:08');
INSERT INTO `admin_operation_log` VALUES ('1522', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-07 09:23:20', '2020-08-07 09:23:20');
INSERT INTO `admin_operation_log` VALUES ('1523', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 09:23:26', '2020-08-07 09:23:26');
INSERT INTO `admin_operation_log` VALUES ('1524', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 09:23:27', '2020-08-07 09:23:27');
INSERT INTO `admin_operation_log` VALUES ('1525', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 09:23:29', '2020-08-07 09:23:29');
INSERT INTO `admin_operation_log` VALUES ('1526', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 09:23:30', '2020-08-07 09:23:30');
INSERT INTO `admin_operation_log` VALUES ('1527', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-07 11:05:39', '2020-08-07 11:05:39');
INSERT INTO `admin_operation_log` VALUES ('1528', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 11:05:43', '2020-08-07 11:05:43');
INSERT INTO `admin_operation_log` VALUES ('1529', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 11:05:44', '2020-08-07 11:05:44');
INSERT INTO `admin_operation_log` VALUES ('1530', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-07 13:08:14', '2020-08-07 13:08:14');
INSERT INTO `admin_operation_log` VALUES ('1531', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:30:34', '2020-08-07 13:30:34');
INSERT INTO `admin_operation_log` VALUES ('1532', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:30:39', '2020-08-07 13:30:39');
INSERT INTO `admin_operation_log` VALUES ('1533', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:30:46', '2020-08-07 13:30:46');
INSERT INTO `admin_operation_log` VALUES ('1534', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:30:49', '2020-08-07 13:30:49');
INSERT INTO `admin_operation_log` VALUES ('1535', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:30:50', '2020-08-07 13:30:50');
INSERT INTO `admin_operation_log` VALUES ('1536', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:30:52', '2020-08-07 13:30:52');
INSERT INTO `admin_operation_log` VALUES ('1537', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:30:54', '2020-08-07 13:30:54');
INSERT INTO `admin_operation_log` VALUES ('1538', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:30:59', '2020-08-07 13:30:59');
INSERT INTO `admin_operation_log` VALUES ('1539', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:31:00', '2020-08-07 13:31:00');
INSERT INTO `admin_operation_log` VALUES ('1540', '1', 'admin/orders/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:31:07', '2020-08-07 13:31:07');
INSERT INTO `admin_operation_log` VALUES ('1541', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:52:25', '2020-08-07 13:52:25');
INSERT INTO `admin_operation_log` VALUES ('1542', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:52:27', '2020-08-07 13:52:27');
INSERT INTO `admin_operation_log` VALUES ('1543', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:52:29', '2020-08-07 13:52:29');
INSERT INTO `admin_operation_log` VALUES ('1544', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:52:32', '2020-08-07 13:52:32');
INSERT INTO `admin_operation_log` VALUES ('1545', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:52:35', '2020-08-07 13:52:35');
INSERT INTO `admin_operation_log` VALUES ('1546', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 13:52:43', '2020-08-07 13:52:43');
INSERT INTO `admin_operation_log` VALUES ('1547', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 15:13:44', '2020-08-07 15:13:44');
INSERT INTO `admin_operation_log` VALUES ('1548', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 15:13:44', '2020-08-07 15:13:44');
INSERT INTO `admin_operation_log` VALUES ('1549', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 15:13:45', '2020-08-07 15:13:45');
INSERT INTO `admin_operation_log` VALUES ('1550', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 15:13:49', '2020-08-07 15:13:49');
INSERT INTO `admin_operation_log` VALUES ('1551', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 15:13:52', '2020-08-07 15:13:52');
INSERT INTO `admin_operation_log` VALUES ('1552', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 15:13:54', '2020-08-07 15:13:54');
INSERT INTO `admin_operation_log` VALUES ('1553', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-07 15:23:43', '2020-08-07 15:23:43');
INSERT INTO `admin_operation_log` VALUES ('1554', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-10 08:58:41', '2020-08-10 08:58:41');
INSERT INTO `admin_operation_log` VALUES ('1555', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 08:58:48', '2020-08-10 08:58:48');
INSERT INTO `admin_operation_log` VALUES ('1556', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 08:58:49', '2020-08-10 08:58:49');
INSERT INTO `admin_operation_log` VALUES ('1557', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 08:58:51', '2020-08-10 08:58:51');
INSERT INTO `admin_operation_log` VALUES ('1558', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 08:58:56', '2020-08-10 08:58:56');
INSERT INTO `admin_operation_log` VALUES ('1559', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:01:19', '2020-08-10 09:01:19');
INSERT INTO `admin_operation_log` VALUES ('1560', '1', 'admin', 'GET', '192.168.0.154', '[]', '2020-08-10 09:02:35', '2020-08-10 09:02:35');
INSERT INTO `admin_operation_log` VALUES ('1561', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:02:53', '2020-08-10 09:02:53');
INSERT INTO `admin_operation_log` VALUES ('1562', '1', 'admin/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:03:23', '2020-08-10 09:03:23');
INSERT INTO `admin_operation_log` VALUES ('1563', '1', 'admin/orders', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:03:31', '2020-08-10 09:03:31');
INSERT INTO `admin_operation_log` VALUES ('1564', '1', 'admin/money-records', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:03:54', '2020-08-10 09:03:54');
INSERT INTO `admin_operation_log` VALUES ('1565', '1', 'admin/configs', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:04:10', '2020-08-10 09:04:10');
INSERT INTO `admin_operation_log` VALUES ('1566', '1', 'admin/configs', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:04:14', '2020-08-10 09:04:14');
INSERT INTO `admin_operation_log` VALUES ('1567', '1', 'admin/announcements', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:04:23', '2020-08-10 09:04:23');
INSERT INTO `admin_operation_log` VALUES ('1568', '1', 'admin/user-operation-logs', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:04:26', '2020-08-10 09:04:26');
INSERT INTO `admin_operation_log` VALUES ('1569', '1', 'admin/auth/users', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:04:31', '2020-08-10 09:04:31');
INSERT INTO `admin_operation_log` VALUES ('1570', '1', 'admin/auth/roles', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:04:33', '2020-08-10 09:04:33');
INSERT INTO `admin_operation_log` VALUES ('1571', '1', 'admin/auth/permissions', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:04:36', '2020-08-10 09:04:36');
INSERT INTO `admin_operation_log` VALUES ('1572', '1', 'admin/auth/menu', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:04:40', '2020-08-10 09:04:40');
INSERT INTO `admin_operation_log` VALUES ('1573', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:05:08', '2020-08-10 09:05:08');
INSERT INTO `admin_operation_log` VALUES ('1574', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:05:10', '2020-08-10 09:05:10');
INSERT INTO `admin_operation_log` VALUES ('1575', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:05:12', '2020-08-10 09:05:12');
INSERT INTO `admin_operation_log` VALUES ('1576', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:05:14', '2020-08-10 09:05:14');
INSERT INTO `admin_operation_log` VALUES ('1577', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:05:19', '2020-08-10 09:05:19');
INSERT INTO `admin_operation_log` VALUES ('1578', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:05:20', '2020-08-10 09:05:20');
INSERT INTO `admin_operation_log` VALUES ('1579', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:05:22', '2020-08-10 09:05:22');
INSERT INTO `admin_operation_log` VALUES ('1580', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:09:00', '2020-08-10 09:09:00');
INSERT INTO `admin_operation_log` VALUES ('1581', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:09:03', '2020-08-10 09:09:03');
INSERT INTO `admin_operation_log` VALUES ('1582', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:09:05', '2020-08-10 09:09:05');
INSERT INTO `admin_operation_log` VALUES ('1583', '1', 'admin', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:21:39', '2020-08-10 09:21:39');
INSERT INTO `admin_operation_log` VALUES ('1584', '1', 'admin/auth/setting', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:21:45', '2020-08-10 09:21:45');
INSERT INTO `admin_operation_log` VALUES ('1585', '1', 'admin/auth/menu', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:22:30', '2020-08-10 09:22:30');
INSERT INTO `admin_operation_log` VALUES ('1586', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.154', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:23:07', '2020-08-10 09:23:07');
INSERT INTO `admin_operation_log` VALUES ('1587', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-10 09:53:46', '2020-08-10 09:53:46');
INSERT INTO `admin_operation_log` VALUES ('1588', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 09:53:52', '2020-08-10 09:53:52');
INSERT INTO `admin_operation_log` VALUES ('1589', '1', 'admin/orders/24', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 10:38:26', '2020-08-10 10:38:26');
INSERT INTO `admin_operation_log` VALUES ('1590', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 10:38:37', '2020-08-10 10:38:37');
INSERT INTO `admin_operation_log` VALUES ('1591', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 10:38:38', '2020-08-10 10:38:38');
INSERT INTO `admin_operation_log` VALUES ('1592', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 11:27:57', '2020-08-10 11:27:57');
INSERT INTO `admin_operation_log` VALUES ('1593', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 11:28:03', '2020-08-10 11:28:03');
INSERT INTO `admin_operation_log` VALUES ('1594', '1', 'admin/announcements', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 11:28:06', '2020-08-10 11:28:06');
INSERT INTO `admin_operation_log` VALUES ('1595', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 11:28:10', '2020-08-10 11:28:10');
INSERT INTO `admin_operation_log` VALUES ('1596', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 13:11:21', '2020-08-10 13:11:21');
INSERT INTO `admin_operation_log` VALUES ('1597', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 13:21:15', '2020-08-10 13:21:15');
INSERT INTO `admin_operation_log` VALUES ('1598', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 13:21:20', '2020-08-10 13:21:20');
INSERT INTO `admin_operation_log` VALUES ('1599', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 13:21:28', '2020-08-10 13:21:28');
INSERT INTO `admin_operation_log` VALUES ('1600', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 13:27:17', '2020-08-10 13:27:17');
INSERT INTO `admin_operation_log` VALUES ('1601', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 13:54:00', '2020-08-10 13:54:00');
INSERT INTO `admin_operation_log` VALUES ('1602', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 13:54:08', '2020-08-10 13:54:08');
INSERT INTO `admin_operation_log` VALUES ('1603', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 13:54:15', '2020-08-10 13:54:15');
INSERT INTO `admin_operation_log` VALUES ('1604', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 14:05:03', '2020-08-10 14:05:03');
INSERT INTO `admin_operation_log` VALUES ('1605', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-10 14:34:58', '2020-08-10 14:34:58');
INSERT INTO `admin_operation_log` VALUES ('1606', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-10 15:14:31', '2020-08-10 15:14:31');
INSERT INTO `admin_operation_log` VALUES ('1607', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-11 09:25:33', '2020-08-11 09:25:33');
INSERT INTO `admin_operation_log` VALUES ('1608', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-11 09:25:42', '2020-08-11 09:25:42');
INSERT INTO `admin_operation_log` VALUES ('1609', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-11 11:09:00', '2020-08-11 11:09:00');
INSERT INTO `admin_operation_log` VALUES ('1610', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-11 11:09:01', '2020-08-11 11:09:01');
INSERT INTO `admin_operation_log` VALUES ('1611', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-11 11:09:03', '2020-08-11 11:09:03');
INSERT INTO `admin_operation_log` VALUES ('1612', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-11 14:29:41', '2020-08-11 14:29:41');
INSERT INTO `admin_operation_log` VALUES ('1613', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-11 15:29:47', '2020-08-11 15:29:47');
INSERT INTO `admin_operation_log` VALUES ('1614', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-12 09:11:20', '2020-08-12 09:11:20');
INSERT INTO `admin_operation_log` VALUES ('1615', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-12 09:11:25', '2020-08-12 09:11:25');
INSERT INTO `admin_operation_log` VALUES ('1616', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-12 10:22:34', '2020-08-12 10:22:34');
INSERT INTO `admin_operation_log` VALUES ('1617', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-12 11:02:10', '2020-08-12 11:02:10');
INSERT INTO `admin_operation_log` VALUES ('1618', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-12 16:16:23', '2020-08-12 16:16:23');
INSERT INTO `admin_operation_log` VALUES ('1619', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-13 08:54:44', '2020-08-13 08:54:44');
INSERT INTO `admin_operation_log` VALUES ('1620', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-13 08:54:50', '2020-08-13 08:54:50');
INSERT INTO `admin_operation_log` VALUES ('1621', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-13 16:27:51', '2020-08-13 16:27:51');
INSERT INTO `admin_operation_log` VALUES ('1622', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-13 16:27:59', '2020-08-13 16:27:59');
INSERT INTO `admin_operation_log` VALUES ('1623', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-14 09:23:07', '2020-08-14 09:23:07');
INSERT INTO `admin_operation_log` VALUES ('1624', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-14 09:23:13', '2020-08-14 09:23:13');
INSERT INTO `admin_operation_log` VALUES ('1625', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 09:23:17', '2020-08-14 09:23:17');
INSERT INTO `admin_operation_log` VALUES ('1626', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 09:23:20', '2020-08-14 09:23:20');
INSERT INTO `admin_operation_log` VALUES ('1627', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 09:23:24', '2020-08-14 09:23:24');
INSERT INTO `admin_operation_log` VALUES ('1628', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 09:23:28', '2020-08-14 09:23:28');
INSERT INTO `admin_operation_log` VALUES ('1629', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 09:30:40', '2020-08-14 09:30:40');
INSERT INTO `admin_operation_log` VALUES ('1630', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 09:30:43', '2020-08-14 09:30:43');
INSERT INTO `admin_operation_log` VALUES ('1631', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 09:30:44', '2020-08-14 09:30:44');
INSERT INTO `admin_operation_log` VALUES ('1632', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 09:30:46', '2020-08-14 09:30:46');
INSERT INTO `admin_operation_log` VALUES ('1633', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-14 10:31:54', '2020-08-14 10:31:54');
INSERT INTO `admin_operation_log` VALUES ('1634', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 13:12:10', '2020-08-14 13:12:10');
INSERT INTO `admin_operation_log` VALUES ('1635', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-14 16:20:41', '2020-08-14 16:20:41');
INSERT INTO `admin_operation_log` VALUES ('1636', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:41:09', '2020-08-14 17:41:09');
INSERT INTO `admin_operation_log` VALUES ('1637', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:42:01', '2020-08-14 17:42:01');
INSERT INTO `admin_operation_log` VALUES ('1638', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:42:04', '2020-08-14 17:42:04');
INSERT INTO `admin_operation_log` VALUES ('1639', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"code_all\":\"USDHKD\",\"_token\":\"51okZPUWVfIyEkJtaB5uC3lBFWKpcDuItPXF17sI\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-14 17:42:10', '2020-08-14 17:42:10');
INSERT INTO `admin_operation_log` VALUES ('1640', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-14 17:42:11', '2020-08-14 17:42:11');
INSERT INTO `admin_operation_log` VALUES ('1641', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:43:08', '2020-08-14 17:43:08');
INSERT INTO `admin_operation_log` VALUES ('1642', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:43:57', '2020-08-14 17:43:57');
INSERT INTO `admin_operation_log` VALUES ('1643', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:44:07', '2020-08-14 17:44:07');
INSERT INTO `admin_operation_log` VALUES ('1644', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:45:53', '2020-08-14 17:45:53');
INSERT INTO `admin_operation_log` VALUES ('1645', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:46:47', '2020-08-14 17:46:47');
INSERT INTO `admin_operation_log` VALUES ('1646', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:48:11', '2020-08-14 17:48:11');
INSERT INTO `admin_operation_log` VALUES ('1647', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-14 17:48:34', '2020-08-14 17:48:34');
INSERT INTO `admin_operation_log` VALUES ('1648', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-17 09:27:33', '2020-08-17 09:27:33');
INSERT INTO `admin_operation_log` VALUES ('1649', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-17 09:27:38', '2020-08-17 09:27:38');
INSERT INTO `admin_operation_log` VALUES ('1650', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 09:27:42', '2020-08-17 09:27:42');
INSERT INTO `admin_operation_log` VALUES ('1651', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 09:27:44', '2020-08-17 09:27:44');
INSERT INTO `admin_operation_log` VALUES ('1652', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 09:27:46', '2020-08-17 09:27:46');
INSERT INTO `admin_operation_log` VALUES ('1653', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 09:27:48', '2020-08-17 09:27:48');
INSERT INTO `admin_operation_log` VALUES ('1654', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 09:27:49', '2020-08-17 09:27:49');
INSERT INTO `admin_operation_log` VALUES ('1655', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 09:48:57', '2020-08-17 09:48:57');
INSERT INTO `admin_operation_log` VALUES ('1656', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 09:48:58', '2020-08-17 09:48:58');
INSERT INTO `admin_operation_log` VALUES ('1657', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-17 11:14:20', '2020-08-17 11:14:20');
INSERT INTO `admin_operation_log` VALUES ('1658', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-17 11:14:23', '2020-08-17 11:14:23');
INSERT INTO `admin_operation_log` VALUES ('1659', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-18 09:41:34', '2020-08-18 09:41:34');
INSERT INTO `admin_operation_log` VALUES ('1660', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 09:41:37', '2020-08-18 09:41:37');
INSERT INTO `admin_operation_log` VALUES ('1661', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 09:46:03', '2020-08-18 09:46:03');
INSERT INTO `admin_operation_log` VALUES ('1662', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-18 13:44:58', '2020-08-18 13:44:58');
INSERT INTO `admin_operation_log` VALUES ('1663', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 13:50:24', '2020-08-18 13:50:24');
INSERT INTO `admin_operation_log` VALUES ('1664', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"test0001\"}', '2020-08-18 13:50:37', '2020-08-18 13:50:37');
INSERT INTO `admin_operation_log` VALUES ('1665', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_pjax\":\"#pjax-container\"}', '2020-08-18 13:52:46', '2020-08-18 13:52:46');
INSERT INTO `admin_operation_log` VALUES ('1666', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_pjax\":\"#pjax-container\"}', '2020-08-18 13:54:51', '2020-08-18 13:54:51');
INSERT INTO `admin_operation_log` VALUES ('1667', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_pjax\":\"#pjax-container\",\"_selector\":{\"brand\":\"3\"}}', '2020-08-18 13:54:55', '2020-08-18 13:54:55');
INSERT INTO `admin_operation_log` VALUES ('1668', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_selector\":{\"brand\":\"3\"},\"_pjax\":\"#pjax-container\"}', '2020-08-18 13:57:57', '2020-08-18 13:57:57');
INSERT INTO `admin_operation_log` VALUES ('1669', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_selector\":{\"brand\":\"3\"},\"_pjax\":\"#pjax-container\"}', '2020-08-18 13:58:19', '2020-08-18 13:58:19');
INSERT INTO `admin_operation_log` VALUES ('1670', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_selector\":{\"brand\":\"3\"},\"_pjax\":\"#pjax-container\"}', '2020-08-18 13:58:37', '2020-08-18 13:58:37');
INSERT INTO `admin_operation_log` VALUES ('1671', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_selector\":{\"brand\":\"3\"},\"_pjax\":\"#pjax-container\"}', '2020-08-18 13:58:39', '2020-08-18 13:58:39');
INSERT INTO `admin_operation_log` VALUES ('1672', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_selector\":{\"brand\":\"3\"},\"_pjax\":\"#pjax-container\"}', '2020-08-18 13:59:36', '2020-08-18 13:59:36');
INSERT INTO `admin_operation_log` VALUES ('1673', '1', 'admin/users', 'GET', '192.168.0.140', '{\"__search__\":\"test0001\",\"_selector\":{\"brand\":\"3\"},\"_pjax\":\"#pjax-container\",\"name\":\"test0001\"}', '2020-08-18 13:59:42', '2020-08-18 13:59:42');
INSERT INTO `admin_operation_log` VALUES ('1674', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:00:50', '2020-08-18 14:00:50');
INSERT INTO `admin_operation_log` VALUES ('1675', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:01:24', '2020-08-18 14:01:24');
INSERT INTO `admin_operation_log` VALUES ('1676', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:01:56', '2020-08-18 14:01:56');
INSERT INTO `admin_operation_log` VALUES ('1677', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"user\":{\"name\":null},\"trade_no\":\"J806061738637440\",\"created_at\":{\"start\":\"2020-08-18 00:00:00\",\"end\":null}}', '2020-08-18 14:02:12', '2020-08-18 14:02:12');
INSERT INTO `admin_operation_log` VALUES ('1678', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"user\":{\"name\":null},\"trade_no\":\"J806061738637440\",\"created_at\":{\"start\":\"2020-08-18 00:00:00\",\"end\":null}}', '2020-08-18 14:02:18', '2020-08-18 14:02:18');
INSERT INTO `admin_operation_log` VALUES ('1679', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"user\":{\"name\":null},\"trade_no\":\"J806061738637440\",\"created_at\":{\"start\":\"2018-12-14 00:00:00\",\"end\":\"2020-08-14 00:00:00\"}}', '2020-08-18 14:02:37', '2020-08-18 14:02:37');
INSERT INTO `admin_operation_log` VALUES ('1680', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"user\":{\"name\":null},\"trade_no\":\"J806061738637440\",\"created_at\":{\"start\":\"2018-12-14 00:00:00\",\"end\":\"2020-08-14 00:00:00\"},\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:05:00', '2020-08-18 14:05:00');
INSERT INTO `admin_operation_log` VALUES ('1681', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:05:03', '2020-08-18 14:05:03');
INSERT INTO `admin_operation_log` VALUES ('1682', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"number\",\"type\":\"desc\"}}', '2020-08-18 14:05:07', '2020-08-18 14:05:07');
INSERT INTO `admin_operation_log` VALUES ('1683', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"number\",\"type\":\"asc\"}}', '2020-08-18 14:05:09', '2020-08-18 14:05:09');
INSERT INTO `admin_operation_log` VALUES ('1684', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"number\",\"type\":\"desc\"}}', '2020-08-18 14:05:14', '2020-08-18 14:05:14');
INSERT INTO `admin_operation_log` VALUES ('1685', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"number\",\"type\":\"asc\"}}', '2020-08-18 14:05:32', '2020-08-18 14:05:32');
INSERT INTO `admin_operation_log` VALUES ('1686', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:09:48', '2020-08-18 14:09:48');
INSERT INTO `admin_operation_log` VALUES ('1687', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:09:54', '2020-08-18 14:09:54');
INSERT INTO `admin_operation_log` VALUES ('1688', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:10:00', '2020-08-18 14:10:00');
INSERT INTO `admin_operation_log` VALUES ('1689', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 14:24:15', '2020-08-18 14:24:15');
INSERT INTO `admin_operation_log` VALUES ('1690', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 15:04:48', '2020-08-18 15:04:48');
INSERT INTO `admin_operation_log` VALUES ('1691', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 15:05:34', '2020-08-18 15:05:34');
INSERT INTO `admin_operation_log` VALUES ('1692', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 15:05:37', '2020-08-18 15:05:37');
INSERT INTO `admin_operation_log` VALUES ('1693', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"code_all\":\"USDHKD\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-18 15:05:49', '2020-08-18 15:05:49');
INSERT INTO `admin_operation_log` VALUES ('1694', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 15:05:49', '2020-08-18 15:05:49');
INSERT INTO `admin_operation_log` VALUES ('1695', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 15:06:41', '2020-08-18 15:06:41');
INSERT INTO `admin_operation_log` VALUES ('1696', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 15:06:51', '2020-08-18 15:06:51');
INSERT INTO `admin_operation_log` VALUES ('1697', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 15:14:18', '2020-08-18 15:14:18');
INSERT INTO `admin_operation_log` VALUES ('1698', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"code_all\":\"USDHKD\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-18 15:14:22', '2020-08-18 15:14:22');
INSERT INTO `admin_operation_log` VALUES ('1699', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 15:14:23', '2020-08-18 15:14:23');
INSERT INTO `admin_operation_log` VALUES ('1700', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 15:34:48', '2020-08-18 15:34:48');
INSERT INTO `admin_operation_log` VALUES ('1701', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCHF\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-18 15:34:56', '2020-08-18 15:34:56');
INSERT INTO `admin_operation_log` VALUES ('1702', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 15:34:56', '2020-08-18 15:34:56');
INSERT INTO `admin_operation_log` VALUES ('1703', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 15:35:03', '2020-08-18 15:35:03');
INSERT INTO `admin_operation_log` VALUES ('1704', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 16:08:48', '2020-08-18 16:08:48');
INSERT INTO `admin_operation_log` VALUES ('1705', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 16:08:51', '2020-08-18 16:08:51');
INSERT INTO `admin_operation_log` VALUES ('1706', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 16:08:54', '2020-08-18 16:08:54');
INSERT INTO `admin_operation_log` VALUES ('1707', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 16:08:57', '2020-08-18 16:08:57');
INSERT INTO `admin_operation_log` VALUES ('1708', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"2\",\"_model\":\"App_Models_ForeignExchangeList\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-08-18 16:09:09', '2020-08-18 16:09:09');
INSERT INTO `admin_operation_log` VALUES ('1709', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:09:10', '2020-08-18 16:09:10');
INSERT INTO `admin_operation_log` VALUES ('1710', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:09:13', '2020-08-18 16:09:13');
INSERT INTO `admin_operation_log` VALUES ('1711', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"code_all\":\"AUDCHF\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-18 16:09:18', '2020-08-18 16:09:18');
INSERT INTO `admin_operation_log` VALUES ('1712', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 16:09:18', '2020-08-18 16:09:18');
INSERT INTO `admin_operation_log` VALUES ('1713', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:09:25', '2020-08-18 16:09:25');
INSERT INTO `admin_operation_log` VALUES ('1714', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:09:27', '2020-08-18 16:09:27');
INSERT INTO `admin_operation_log` VALUES ('1715', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:09:55', '2020-08-18 16:09:55');
INSERT INTO `admin_operation_log` VALUES ('1716', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:30:09', '2020-08-18 16:30:09');
INSERT INTO `admin_operation_log` VALUES ('1717', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:30:09', '2020-08-18 16:30:09');
INSERT INTO `admin_operation_log` VALUES ('1718', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:30:12', '2020-08-18 16:30:12');
INSERT INTO `admin_operation_log` VALUES ('1719', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:30:13', '2020-08-18 16:30:13');
INSERT INTO `admin_operation_log` VALUES ('1720', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:32:03', '2020-08-18 16:32:03');
INSERT INTO `admin_operation_log` VALUES ('1721', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"phone\":\"18482526545\",\"password\":\"123457\",\"last_balance\":\"100000\",\"balance\":\"100000\",\"advance\":\"0\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-12-19 16:32:03\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\"}', '2020-08-18 16:32:31', '2020-08-18 16:32:31');
INSERT INTO `admin_operation_log` VALUES ('1722', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-18 16:32:32', '2020-08-18 16:32:32');
INSERT INTO `admin_operation_log` VALUES ('1723', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"1\",\"_model\":\"App_Models_User\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-08-18 16:38:22', '2020-08-18 16:38:22');
INSERT INTO `admin_operation_log` VALUES ('1724', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:38:22', '2020-08-18 16:38:22');
INSERT INTO `admin_operation_log` VALUES ('1725', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:38:26', '2020-08-18 16:38:26');
INSERT INTO `admin_operation_log` VALUES ('1726', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0001\",\"phone\":\"18482526545\",\"password\":\"123456\",\"last_balance\":\"100000\",\"balance\":\"100000\",\"advance\":\"0\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-08-18 16:38:26\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-08-18 16:38:42', '2020-08-18 16:38:42');
INSERT INTO `admin_operation_log` VALUES ('1727', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-18 16:38:43', '2020-08-18 16:38:43');
INSERT INTO `admin_operation_log` VALUES ('1728', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:39:22', '2020-08-18 16:39:22');
INSERT INTO `admin_operation_log` VALUES ('1729', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:39:31', '2020-08-18 16:39:31');
INSERT INTO `admin_operation_log` VALUES ('1730', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:44:25', '2020-08-18 16:44:25');
INSERT INTO `admin_operation_log` VALUES ('1731', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:48:38', '2020-08-18 16:48:38');
INSERT INTO `admin_operation_log` VALUES ('1732', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0002\",\"phone\":\"18482526588\",\"password\":\"123456\",\"last_balance\":\"100000\",\"balance\":\"100000\",\"advance\":\"0\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-08-18 16:48:39\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-08-18 16:48:59', '2020-08-18 16:48:59');
INSERT INTO `admin_operation_log` VALUES ('1733', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-18 16:48:59', '2020-08-18 16:48:59');
INSERT INTO `admin_operation_log` VALUES ('1734', '1', 'admin', 'GET', '192.168.0.181', '[]', '2020-08-18 16:49:33', '2020-08-18 16:49:33');
INSERT INTO `admin_operation_log` VALUES ('1735', '1', 'admin/users', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:49:43', '2020-08-18 16:49:43');
INSERT INTO `admin_operation_log` VALUES ('1736', '1', 'admin', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:49:53', '2020-08-18 16:49:53');
INSERT INTO `admin_operation_log` VALUES ('1737', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:49:57', '2020-08-18 16:49:57');
INSERT INTO `admin_operation_log` VALUES ('1738', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:49:58', '2020-08-18 16:49:58');
INSERT INTO `admin_operation_log` VALUES ('1739', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:50:01', '2020-08-18 16:50:01');
INSERT INTO `admin_operation_log` VALUES ('1740', '1', 'admin/users', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:53:31', '2020-08-18 16:53:31');
INSERT INTO `admin_operation_log` VALUES ('1741', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:02:51', '2020-08-18 17:02:51');
INSERT INTO `admin_operation_log` VALUES ('1742', '1', 'admin/configs/64/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:02:57', '2020-08-18 17:02:57');
INSERT INTO `admin_operation_log` VALUES ('1743', '1', 'admin/configs/64', 'PUT', '192.168.0.140', '{\"name\":\"fees\",\"value\":\"20\",\"remark\":\"\\u624b\\u7eed\\u8d39\\u6bd4\\u4f8b\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-08-18 17:03:03', '2020-08-18 17:03:03');
INSERT INTO `admin_operation_log` VALUES ('1744', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-08-18 17:03:03', '2020-08-18 17:03:03');
INSERT INTO `admin_operation_log` VALUES ('1745', '1', 'admin/configs', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:07:38', '2020-08-18 17:07:38');
INSERT INTO `admin_operation_log` VALUES ('1746', '1', 'admin', 'GET', '192.168.0.181', '[]', '2020-08-18 17:10:39', '2020-08-18 17:10:39');
INSERT INTO `admin_operation_log` VALUES ('1747', '1', 'admin/orders', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:22:02', '2020-08-18 17:22:02');
INSERT INTO `admin_operation_log` VALUES ('1748', '1', 'admin/users', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:22:03', '2020-08-18 17:22:03');
INSERT INTO `admin_operation_log` VALUES ('1749', '1', 'admin/orders', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:22:05', '2020-08-18 17:22:05');
INSERT INTO `admin_operation_log` VALUES ('1750', '1', 'admin/configs/64/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:36:34', '2020-08-18 17:36:34');
INSERT INTO `admin_operation_log` VALUES ('1751', '1', 'admin/configs/64', 'PUT', '192.168.0.140', '{\"name\":\"fees\",\"value\":\"0\",\"remark\":\"\\u624b\\u7eed\\u8d39\\u6bd4\\u4f8b\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-08-18 17:36:38', '2020-08-18 17:36:38');
INSERT INTO `admin_operation_log` VALUES ('1752', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-08-18 17:36:39', '2020-08-18 17:36:39');
INSERT INTO `admin_operation_log` VALUES ('1753', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:45:28', '2020-08-18 17:45:28');
INSERT INTO `admin_operation_log` VALUES ('1754', '1', 'admin/users', 'GET', '192.168.0.181', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:46:46', '2020-08-18 17:46:46');
INSERT INTO `admin_operation_log` VALUES ('1755', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:50:49', '2020-08-18 17:50:49');
INSERT INTO `admin_operation_log` VALUES ('1756', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:51:12', '2020-08-18 17:51:12');
INSERT INTO `admin_operation_log` VALUES ('1757', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:51:18', '2020-08-18 17:51:18');
INSERT INTO `admin_operation_log` VALUES ('1758', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:51:24', '2020-08-18 17:51:24');
INSERT INTO `admin_operation_log` VALUES ('1759', '1', 'admin/users/2/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:51:37', '2020-08-18 17:51:37');
INSERT INTO `admin_operation_log` VALUES ('1760', '1', 'admin/users/2', 'PUT', '192.168.0.140', '{\"name\":\"test0001\",\"phone\":\"18482526545\",\"password\":null,\"last_balance\":\"100000.00000\",\"balance\":\"100000\",\"advance\":\"0\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-08-18 16:38:26\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/users\"}', '2020-08-18 17:51:51', '2020-08-18 17:51:51');
INSERT INTO `admin_operation_log` VALUES ('1761', '1', 'admin/users/2/edit', 'GET', '192.168.0.140', '[]', '2020-08-18 17:51:52', '2020-08-18 17:51:52');
INSERT INTO `admin_operation_log` VALUES ('1762', '1', 'admin/users/2', 'PUT', '192.168.0.140', '{\"name\":\"test0001\",\"phone\":\"18482526545\",\"password\":\"123456\",\"last_balance\":\"100000.00000\",\"balance\":\"100000\",\"advance\":\"0\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-08-18 16:38:26\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_method\":\"PUT\"}', '2020-08-18 17:56:50', '2020-08-18 17:56:50');
INSERT INTO `admin_operation_log` VALUES ('1763', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-18 17:56:51', '2020-08-18 17:56:51');
INSERT INTO `admin_operation_log` VALUES ('1764', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:57:18', '2020-08-18 17:57:18');
INSERT INTO `admin_operation_log` VALUES ('1765', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:57:28', '2020-08-18 17:57:28');
INSERT INTO `admin_operation_log` VALUES ('1766', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:57:54', '2020-08-18 17:57:54');
INSERT INTO `admin_operation_log` VALUES ('1767', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"code_all\":\"USDCHF\",\"_token\":\"BZVBstXq6QIM8NzRiKOXLFcJbJtW9hSsuy2tebkG\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-18 17:58:00', '2020-08-18 17:58:00');
INSERT INTO `admin_operation_log` VALUES ('1768', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-18 17:58:01', '2020-08-18 17:58:01');
INSERT INTO `admin_operation_log` VALUES ('1769', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:58:20', '2020-08-18 17:58:20');
INSERT INTO `admin_operation_log` VALUES ('1770', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-19 08:55:48', '2020-08-19 08:55:48');
INSERT INTO `admin_operation_log` VALUES ('1771', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:08:55', '2020-08-19 09:08:55');
INSERT INTO `admin_operation_log` VALUES ('1772', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:12:52', '2020-08-19 09:12:52');
INSERT INTO `admin_operation_log` VALUES ('1773', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:41:11', '2020-08-19 09:41:11');
INSERT INTO `admin_operation_log` VALUES ('1774', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:44:16', '2020-08-19 09:44:16');
INSERT INTO `admin_operation_log` VALUES ('1775', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:44:16', '2020-08-19 09:44:16');
INSERT INTO `admin_operation_log` VALUES ('1776', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:44:22', '2020-08-19 09:44:22');
INSERT INTO `admin_operation_log` VALUES ('1777', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:45:48', '2020-08-19 09:45:48');
INSERT INTO `admin_operation_log` VALUES ('1778', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:46:22', '2020-08-19 09:46:22');
INSERT INTO `admin_operation_log` VALUES ('1779', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:46:24', '2020-08-19 09:46:24');
INSERT INTO `admin_operation_log` VALUES ('1780', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:47:23', '2020-08-19 09:47:23');
INSERT INTO `admin_operation_log` VALUES ('1781', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:47:26', '2020-08-19 09:47:26');
INSERT INTO `admin_operation_log` VALUES ('1782', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:47:27', '2020-08-19 09:47:27');
INSERT INTO `admin_operation_log` VALUES ('1783', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 09:47:46', '2020-08-19 09:47:46');
INSERT INTO `admin_operation_log` VALUES ('1784', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-19 14:11:50', '2020-08-19 14:11:50');
INSERT INTO `admin_operation_log` VALUES ('1785', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:11:54', '2020-08-19 14:11:54');
INSERT INTO `admin_operation_log` VALUES ('1786', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:12:03', '2020-08-19 14:12:03');
INSERT INTO `admin_operation_log` VALUES ('1787', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:12:08', '2020-08-19 14:12:08');
INSERT INTO `admin_operation_log` VALUES ('1788', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:16:57', '2020-08-19 14:16:57');
INSERT INTO `admin_operation_log` VALUES ('1789', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"S\":\"EURUSD\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-19 14:17:19', '2020-08-19 14:17:19');
INSERT INTO `admin_operation_log` VALUES ('1790', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-19 14:17:20', '2020-08-19 14:17:20');
INSERT INTO `admin_operation_log` VALUES ('1791', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:19:02', '2020-08-19 14:19:02');
INSERT INTO `admin_operation_log` VALUES ('1792', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"EURUSD\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-19 14:19:06', '2020-08-19 14:19:06');
INSERT INTO `admin_operation_log` VALUES ('1793', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-19 14:19:06', '2020-08-19 14:19:06');
INSERT INTO `admin_operation_log` VALUES ('1794', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:20:07', '2020-08-19 14:20:07');
INSERT INTO `admin_operation_log` VALUES ('1795', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:20:55', '2020-08-19 14:20:55');
INSERT INTO `admin_operation_log` VALUES ('1796', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:31:08', '2020-08-19 14:31:08');
INSERT INTO `admin_operation_log` VALUES ('1797', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:32:10', '2020-08-19 14:32:10');
INSERT INTO `admin_operation_log` VALUES ('1798', '1', 'admin/configs/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:32:16', '2020-08-19 14:32:16');
INSERT INTO `admin_operation_log` VALUES ('1799', '1', 'admin/configs', 'POST', '192.168.0.140', '{\"name\":\"bar\",\"value\":\"100\",\"remark\":\"\\u6746\\u6760\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-08-19 14:32:41', '2020-08-19 14:32:41');
INSERT INTO `admin_operation_log` VALUES ('1800', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-08-19 14:32:41', '2020-08-19 14:32:41');
INSERT INTO `admin_operation_log` VALUES ('1801', '1', 'admin/configs/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:33:07', '2020-08-19 14:33:07');
INSERT INTO `admin_operation_log` VALUES ('1802', '1', 'admin/configs', 'POST', '192.168.0.140', '{\"name\":\"hand\",\"value\":\"100000\",\"remark\":\"\\u4e00\\u624b\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-08-19 14:33:26', '2020-08-19 14:33:26');
INSERT INTO `admin_operation_log` VALUES ('1803', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-08-19 14:33:26', '2020-08-19 14:33:26');
INSERT INTO `admin_operation_log` VALUES ('1804', '1', 'admin/configs/64/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:33:43', '2020-08-19 14:33:43');
INSERT INTO `admin_operation_log` VALUES ('1805', '1', 'admin/configs/64', 'PUT', '192.168.0.140', '{\"name\":\"fees\",\"value\":\"20\",\"remark\":\"1000\\u4fdd\\u8bc1\\u91d1\\u5bf9\\u5e94\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-08-19 14:34:12', '2020-08-19 14:34:12');
INSERT INTO `admin_operation_log` VALUES ('1806', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-08-19 14:34:12', '2020-08-19 14:34:12');
INSERT INTO `admin_operation_log` VALUES ('1807', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"65\",\"_model\":\"App_Models_Configs\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-08-19 14:34:20', '2020-08-19 14:34:20');
INSERT INTO `admin_operation_log` VALUES ('1808', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 14:34:21', '2020-08-19 14:34:21');
INSERT INTO `admin_operation_log` VALUES ('1809', '1', 'admin/configs/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:01:49', '2020-08-19 15:01:49');
INSERT INTO `admin_operation_log` VALUES ('1810', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:01:55', '2020-08-19 15:01:55');
INSERT INTO `admin_operation_log` VALUES ('1811', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:01:57', '2020-08-19 15:01:57');
INSERT INTO `admin_operation_log` VALUES ('1812', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"AUDUSD\",\"type\":\"Forex1\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-19 15:02:40', '2020-08-19 15:02:40');
INSERT INTO `admin_operation_log` VALUES ('1813', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-19 15:02:40', '2020-08-19 15:02:40');
INSERT INTO `admin_operation_log` VALUES ('1814', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:02:53', '2020-08-19 15:02:53');
INSERT INTO `admin_operation_log` VALUES ('1815', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:03:06', '2020-08-19 15:03:06');
INSERT INTO `admin_operation_log` VALUES ('1816', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"EURUSD\",\"type\":\"Forex1\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-19 15:03:12', '2020-08-19 15:03:12');
INSERT INTO `admin_operation_log` VALUES ('1817', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-19 15:03:13', '2020-08-19 15:03:13');
INSERT INTO `admin_operation_log` VALUES ('1818', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:03:16', '2020-08-19 15:03:16');
INSERT INTO `admin_operation_log` VALUES ('1819', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"GBPUSD\",\"type\":\"Forex1\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-19 15:03:29', '2020-08-19 15:03:29');
INSERT INTO `admin_operation_log` VALUES ('1820', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-19 15:03:30', '2020-08-19 15:03:30');
INSERT INTO `admin_operation_log` VALUES ('1821', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:03:39', '2020-08-19 15:03:39');
INSERT INTO `admin_operation_log` VALUES ('1822', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"NZDUSD\",\"type\":null,\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-19 15:03:45', '2020-08-19 15:03:45');
INSERT INTO `admin_operation_log` VALUES ('1823', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-19 15:03:46', '2020-08-19 15:03:46');
INSERT INTO `admin_operation_log` VALUES ('1824', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"NZDUSD\",\"type\":\"Forex1\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\"}', '2020-08-19 15:03:51', '2020-08-19 15:03:51');
INSERT INTO `admin_operation_log` VALUES ('1825', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-19 15:03:51', '2020-08-19 15:03:51');
INSERT INTO `admin_operation_log` VALUES ('1826', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:04:30', '2020-08-19 15:04:30');
INSERT INTO `admin_operation_log` VALUES ('1827', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"USDCAD\",\"type\":\"Forex1\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-19 15:04:37', '2020-08-19 15:04:37');
INSERT INTO `admin_operation_log` VALUES ('1828', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-19 15:04:37', '2020-08-19 15:04:37');
INSERT INTO `admin_operation_log` VALUES ('1829', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:05:02', '2020-08-19 15:05:02');
INSERT INTO `admin_operation_log` VALUES ('1830', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 15:32:53', '2020-08-19 15:32:53');
INSERT INTO `admin_operation_log` VALUES ('1831', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 16:50:40', '2020-08-19 16:50:40');
INSERT INTO `admin_operation_log` VALUES ('1832', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 16:50:43', '2020-08-19 16:50:43');
INSERT INTO `admin_operation_log` VALUES ('1833', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 16:50:46', '2020-08-19 16:50:46');
INSERT INTO `admin_operation_log` VALUES ('1834', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 17:34:18', '2020-08-19 17:34:18');
INSERT INTO `admin_operation_log` VALUES ('1835', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"1\",\"_model\":\"App_Models_ForeignExchangeList\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-08-19 17:37:30', '2020-08-19 17:37:30');
INSERT INTO `admin_operation_log` VALUES ('1836', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 17:37:30', '2020-08-19 17:37:30');
INSERT INTO `admin_operation_log` VALUES ('1837', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"4\",\"_model\":\"App_Models_ForeignExchangeList\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-08-19 17:37:40', '2020-08-19 17:37:40');
INSERT INTO `admin_operation_log` VALUES ('1838', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 17:37:41', '2020-08-19 17:37:41');
INSERT INTO `admin_operation_log` VALUES ('1839', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"5\",\"_model\":\"App_Models_ForeignExchangeList\",\"_token\":\"gJtoh7o3XCeLiHRjt7ZNpEcEOe487okKfx0vv0UO\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-08-19 17:37:47', '2020-08-19 17:37:47');
INSERT INTO `admin_operation_log` VALUES ('1840', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 17:37:48', '2020-08-19 17:37:48');
INSERT INTO `admin_operation_log` VALUES ('1841', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-19 17:38:16', '2020-08-19 17:38:16');
INSERT INTO `admin_operation_log` VALUES ('1842', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-20 08:55:43', '2020-08-20 08:55:43');
INSERT INTO `admin_operation_log` VALUES ('1843', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 08:55:52', '2020-08-20 08:55:52');
INSERT INTO `admin_operation_log` VALUES ('1844', '1', 'admin/configs/64/edit', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 08:56:11', '2020-08-20 08:56:11');
INSERT INTO `admin_operation_log` VALUES ('1845', '1', 'admin/configs/64', 'PUT', '192.168.0.140', '{\"name\":\"fees\",\"value\":\"20\",\"remark\":\"1000\\u4fdd\\u8bc1\\u91d1\\u5bf9\\u5e94\\u624b\\u7eed\\u8d39\",\"_token\":\"vm2nmKlD2WuSlTpPgZxi7YPWjujPxOFeXP7JWH1t\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/configs\"}', '2020-08-20 08:56:21', '2020-08-20 08:56:21');
INSERT INTO `admin_operation_log` VALUES ('1846', '1', 'admin/configs', 'GET', '192.168.0.140', '[]', '2020-08-20 08:56:21', '2020-08-20 08:56:21');
INSERT INTO `admin_operation_log` VALUES ('1847', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 08:58:13', '2020-08-20 08:58:13');
INSERT INTO `admin_operation_log` VALUES ('1848', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:13:05', '2020-08-20 09:13:05');
INSERT INTO `admin_operation_log` VALUES ('1849', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:14:51', '2020-08-20 09:14:51');
INSERT INTO `admin_operation_log` VALUES ('1850', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:15:45', '2020-08-20 09:15:45');
INSERT INTO `admin_operation_log` VALUES ('1851', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"AUDCAD\",\"type\":\"Forex2\",\"_token\":\"vm2nmKlD2WuSlTpPgZxi7YPWjujPxOFeXP7JWH1t\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-20 09:16:02', '2020-08-20 09:16:02');
INSERT INTO `admin_operation_log` VALUES ('1852', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-20 09:16:03', '2020-08-20 09:16:03');
INSERT INTO `admin_operation_log` VALUES ('1853', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:16:51', '2020-08-20 09:16:51');
INSERT INTO `admin_operation_log` VALUES ('1854', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:20:13', '2020-08-20 09:20:13');
INSERT INTO `admin_operation_log` VALUES ('1855', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"AUDUSD\",\"type\":\"Forex1\",\"_token\":\"vm2nmKlD2WuSlTpPgZxi7YPWjujPxOFeXP7JWH1t\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-20 09:20:18', '2020-08-20 09:20:18');
INSERT INTO `admin_operation_log` VALUES ('1856', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-20 09:20:18', '2020-08-20 09:20:18');
INSERT INTO `admin_operation_log` VALUES ('1857', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:20:29', '2020-08-20 09:20:29');
INSERT INTO `admin_operation_log` VALUES ('1858', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:31:55', '2020-08-20 09:31:55');
INSERT INTO `admin_operation_log` VALUES ('1859', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:34:05', '2020-08-20 09:34:05');
INSERT INTO `admin_operation_log` VALUES ('1860', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 09:34:12', '2020-08-20 09:34:12');
INSERT INTO `admin_operation_log` VALUES ('1861', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"USDCAD\",\"type\":\"Forex1\",\"_token\":\"vm2nmKlD2WuSlTpPgZxi7YPWjujPxOFeXP7JWH1t\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-20 09:34:32', '2020-08-20 09:34:32');
INSERT INTO `admin_operation_log` VALUES ('1862', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-20 09:34:33', '2020-08-20 09:34:33');
INSERT INTO `admin_operation_log` VALUES ('1863', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:18:09', '2020-08-20 11:18:09');
INSERT INTO `admin_operation_log` VALUES ('1864', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:19:31', '2020-08-20 11:19:31');
INSERT INTO `admin_operation_log` VALUES ('1865', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:19:36', '2020-08-20 11:19:36');
INSERT INTO `admin_operation_log` VALUES ('1866', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:20:20', '2020-08-20 11:20:20');
INSERT INTO `admin_operation_log` VALUES ('1867', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:20:22', '2020-08-20 11:20:22');
INSERT INTO `admin_operation_log` VALUES ('1868', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:20:23', '2020-08-20 11:20:23');
INSERT INTO `admin_operation_log` VALUES ('1869', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:20:25', '2020-08-20 11:20:25');
INSERT INTO `admin_operation_log` VALUES ('1870', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:22:11', '2020-08-20 11:22:11');
INSERT INTO `admin_operation_log` VALUES ('1871', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:22:23', '2020-08-20 11:22:23');
INSERT INTO `admin_operation_log` VALUES ('1872', '1', 'admin/auth/setting', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:22:37', '2020-08-20 11:22:37');
INSERT INTO `admin_operation_log` VALUES ('1873', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:22:41', '2020-08-20 11:22:41');
INSERT INTO `admin_operation_log` VALUES ('1874', '1', 'admin', 'GET', '192.168.0.140', '[]', '2020-08-20 11:23:10', '2020-08-20 11:23:10');
INSERT INTO `admin_operation_log` VALUES ('1875', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:23:13', '2020-08-20 11:23:13');
INSERT INTO `admin_operation_log` VALUES ('1876', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:24:16', '2020-08-20 11:24:16');
INSERT INTO `admin_operation_log` VALUES ('1877', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:25:16', '2020-08-20 11:25:16');
INSERT INTO `admin_operation_log` VALUES ('1878', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-20 11:31:15', '2020-08-20 11:31:15');
INSERT INTO `admin_operation_log` VALUES ('1879', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:32:46', '2020-08-20 11:32:46');
INSERT INTO `admin_operation_log` VALUES ('1880', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:33:23', '2020-08-20 11:33:23');
INSERT INTO `admin_operation_log` VALUES ('1881', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:34:31', '2020-08-20 11:34:31');
INSERT INTO `admin_operation_log` VALUES ('1882', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:34:52', '2020-08-20 11:34:52');
INSERT INTO `admin_operation_log` VALUES ('1883', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:38:42', '2020-08-20 11:38:42');
INSERT INTO `admin_operation_log` VALUES ('1884', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:39:00', '2020-08-20 11:39:00');
INSERT INTO `admin_operation_log` VALUES ('1885', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:40:28', '2020-08-20 11:40:28');
INSERT INTO `admin_operation_log` VALUES ('1886', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:42:06', '2020-08-20 11:42:06');
INSERT INTO `admin_operation_log` VALUES ('1887', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 11:42:11', '2020-08-20 11:42:11');
INSERT INTO `admin_operation_log` VALUES ('1888', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:04:02', '2020-08-20 13:04:02');
INSERT INTO `admin_operation_log` VALUES ('1889', '1', 'admin/money-records', 'GET', '192.168.0.140', '[]', '2020-08-20 13:15:42', '2020-08-20 13:15:42');
INSERT INTO `admin_operation_log` VALUES ('1890', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:24:38', '2020-08-20 13:24:38');
INSERT INTO `admin_operation_log` VALUES ('1891', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:25:52', '2020-08-20 13:25:52');
INSERT INTO `admin_operation_log` VALUES ('1892', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:25:56', '2020-08-20 13:25:56');
INSERT INTO `admin_operation_log` VALUES ('1893', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:26:25', '2020-08-20 13:26:25');
INSERT INTO `admin_operation_log` VALUES ('1894', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:27:44', '2020-08-20 13:27:44');
INSERT INTO `admin_operation_log` VALUES ('1895', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:28:31', '2020-08-20 13:28:31');
INSERT INTO `admin_operation_log` VALUES ('1896', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:32:40', '2020-08-20 13:32:40');
INSERT INTO `admin_operation_log` VALUES ('1897', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:32:48', '2020-08-20 13:32:48');
INSERT INTO `admin_operation_log` VALUES ('1898', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:34:20', '2020-08-20 13:34:20');
INSERT INTO `admin_operation_log` VALUES ('1899', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 13:37:02', '2020-08-20 13:37:02');
INSERT INTO `admin_operation_log` VALUES ('1900', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:46:56', '2020-08-20 14:46:56');
INSERT INTO `admin_operation_log` VALUES ('1901', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:49:30', '2020-08-20 14:49:30');
INSERT INTO `admin_operation_log` VALUES ('1902', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:50:49', '2020-08-20 14:50:49');
INSERT INTO `admin_operation_log` VALUES ('1903', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:50:52', '2020-08-20 14:50:52');
INSERT INTO `admin_operation_log` VALUES ('1904', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:51:48', '2020-08-20 14:51:48');
INSERT INTO `admin_operation_log` VALUES ('1905', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:52:42', '2020-08-20 14:52:42');
INSERT INTO `admin_operation_log` VALUES ('1906', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:52:58', '2020-08-20 14:52:58');
INSERT INTO `admin_operation_log` VALUES ('1907', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"7\",\"_model\":\"App_Models_Order\",\"_token\":\"6zS5ZhHXK6T3lTWqyw6lGdpLtLJgkLQ3Rst7aYNJ\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-08-20 14:54:13', '2020-08-20 14:54:13');
INSERT INTO `admin_operation_log` VALUES ('1908', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:54:14', '2020-08-20 14:54:14');
INSERT INTO `admin_operation_log` VALUES ('1909', '1', 'admin/_handle_action_', 'POST', '192.168.0.140', '{\"_key\":\"8\",\"_model\":\"App_Models_Order\",\"_token\":\"6zS5ZhHXK6T3lTWqyw6lGdpLtLJgkLQ3Rst7aYNJ\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2020-08-20 14:54:18', '2020-08-20 14:54:18');
INSERT INTO `admin_operation_log` VALUES ('1910', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 14:54:18', '2020-08-20 14:54:18');
INSERT INTO `admin_operation_log` VALUES ('1911', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:07:09', '2020-08-20 15:07:09');
INSERT INTO `admin_operation_log` VALUES ('1912', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:14:34', '2020-08-20 15:14:34');
INSERT INTO `admin_operation_log` VALUES ('1913', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:22:58', '2020-08-20 15:22:58');
INSERT INTO `admin_operation_log` VALUES ('1914', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:31:24', '2020-08-20 15:31:24');
INSERT INTO `admin_operation_log` VALUES ('1915', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:31:31', '2020-08-20 15:31:31');
INSERT INTO `admin_operation_log` VALUES ('1916', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:39:07', '2020-08-20 15:39:07');
INSERT INTO `admin_operation_log` VALUES ('1917', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:41:06', '2020-08-20 15:41:06');
INSERT INTO `admin_operation_log` VALUES ('1918', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:42:32', '2020-08-20 15:42:32');
INSERT INTO `admin_operation_log` VALUES ('1919', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:43:05', '2020-08-20 15:43:05');
INSERT INTO `admin_operation_log` VALUES ('1920', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:43:08', '2020-08-20 15:43:08');
INSERT INTO `admin_operation_log` VALUES ('1921', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:44:17', '2020-08-20 15:44:17');
INSERT INTO `admin_operation_log` VALUES ('1922', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:44:26', '2020-08-20 15:44:26');
INSERT INTO `admin_operation_log` VALUES ('1923', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:44:52', '2020-08-20 15:44:52');
INSERT INTO `admin_operation_log` VALUES ('1924', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:45:33', '2020-08-20 15:45:33');
INSERT INTO `admin_operation_log` VALUES ('1925', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 15:59:27', '2020-08-20 15:59:27');
INSERT INTO `admin_operation_log` VALUES ('1926', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:00:11', '2020-08-20 16:00:11');
INSERT INTO `admin_operation_log` VALUES ('1927', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:00:46', '2020-08-20 16:00:46');
INSERT INTO `admin_operation_log` VALUES ('1928', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:02:52', '2020-08-20 16:02:52');
INSERT INTO `admin_operation_log` VALUES ('1929', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:03:26', '2020-08-20 16:03:26');
INSERT INTO `admin_operation_log` VALUES ('1930', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:03:55', '2020-08-20 16:03:55');
INSERT INTO `admin_operation_log` VALUES ('1931', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:04:05', '2020-08-20 16:04:05');
INSERT INTO `admin_operation_log` VALUES ('1932', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:04:45', '2020-08-20 16:04:45');
INSERT INTO `admin_operation_log` VALUES ('1933', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:04:48', '2020-08-20 16:04:48');
INSERT INTO `admin_operation_log` VALUES ('1934', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:07:27', '2020-08-20 16:07:27');
INSERT INTO `admin_operation_log` VALUES ('1935', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:07:30', '2020-08-20 16:07:30');
INSERT INTO `admin_operation_log` VALUES ('1936', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:07:32', '2020-08-20 16:07:32');
INSERT INTO `admin_operation_log` VALUES ('1937', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:07:33', '2020-08-20 16:07:33');
INSERT INTO `admin_operation_log` VALUES ('1938', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:07:36', '2020-08-20 16:07:36');
INSERT INTO `admin_operation_log` VALUES ('1939', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:08:38', '2020-08-20 16:08:38');
INSERT INTO `admin_operation_log` VALUES ('1940', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:08:40', '2020-08-20 16:08:40');
INSERT INTO `admin_operation_log` VALUES ('1941', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:08:41', '2020-08-20 16:08:41');
INSERT INTO `admin_operation_log` VALUES ('1942', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 16:08:48', '2020-08-20 16:08:48');
INSERT INTO `admin_operation_log` VALUES ('1943', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 17:32:02', '2020-08-20 17:32:02');
INSERT INTO `admin_operation_log` VALUES ('1944', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 17:35:57', '2020-08-20 17:35:57');
INSERT INTO `admin_operation_log` VALUES ('1945', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 17:36:08', '2020-08-20 17:36:08');
INSERT INTO `admin_operation_log` VALUES ('1946', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 17:36:28', '2020-08-20 17:36:28');
INSERT INTO `admin_operation_log` VALUES ('1947', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 17:36:36', '2020-08-20 17:36:36');
INSERT INTO `admin_operation_log` VALUES ('1948', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-20 17:59:16', '2020-08-20 17:59:16');
INSERT INTO `admin_operation_log` VALUES ('1949', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-21 09:08:49', '2020-08-21 09:08:49');
INSERT INTO `admin_operation_log` VALUES ('1950', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:20:36', '2020-08-21 09:20:36');
INSERT INTO `admin_operation_log` VALUES ('1951', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:29:56', '2020-08-21 09:29:56');
INSERT INTO `admin_operation_log` VALUES ('1952', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:49:32', '2020-08-21 09:49:32');
INSERT INTO `admin_operation_log` VALUES ('1953', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:49:53', '2020-08-21 09:49:53');
INSERT INTO `admin_operation_log` VALUES ('1954', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:52:01', '2020-08-21 09:52:01');
INSERT INTO `admin_operation_log` VALUES ('1955', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:52:04', '2020-08-21 09:52:04');
INSERT INTO `admin_operation_log` VALUES ('1956', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:57:39', '2020-08-21 09:57:39');
INSERT INTO `admin_operation_log` VALUES ('1957', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:57:52', '2020-08-21 09:57:52');
INSERT INTO `admin_operation_log` VALUES ('1958', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:57:53', '2020-08-21 09:57:53');
INSERT INTO `admin_operation_log` VALUES ('1959', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:58:22', '2020-08-21 09:58:22');
INSERT INTO `admin_operation_log` VALUES ('1960', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:58:52', '2020-08-21 09:58:52');
INSERT INTO `admin_operation_log` VALUES ('1961', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:59:44', '2020-08-21 09:59:44');
INSERT INTO `admin_operation_log` VALUES ('1962', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:59:49', '2020-08-21 09:59:49');
INSERT INTO `admin_operation_log` VALUES ('1963', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 09:59:55', '2020-08-21 09:59:55');
INSERT INTO `admin_operation_log` VALUES ('1964', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:01:00', '2020-08-21 10:01:00');
INSERT INTO `admin_operation_log` VALUES ('1965', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:01:12', '2020-08-21 10:01:12');
INSERT INTO `admin_operation_log` VALUES ('1966', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:01:16', '2020-08-21 10:01:16');
INSERT INTO `admin_operation_log` VALUES ('1967', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:02:26', '2020-08-21 10:02:26');
INSERT INTO `admin_operation_log` VALUES ('1968', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:02:44', '2020-08-21 10:02:44');
INSERT INTO `admin_operation_log` VALUES ('1969', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:08:25', '2020-08-21 10:08:25');
INSERT INTO `admin_operation_log` VALUES ('1970', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:08:29', '2020-08-21 10:08:29');
INSERT INTO `admin_operation_log` VALUES ('1971', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:08:33', '2020-08-21 10:08:33');
INSERT INTO `admin_operation_log` VALUES ('1972', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:09:13', '2020-08-21 10:09:13');
INSERT INTO `admin_operation_log` VALUES ('1973', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:09:20', '2020-08-21 10:09:20');
INSERT INTO `admin_operation_log` VALUES ('1974', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:09:55', '2020-08-21 10:09:55');
INSERT INTO `admin_operation_log` VALUES ('1975', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:12:32', '2020-08-21 10:12:32');
INSERT INTO `admin_operation_log` VALUES ('1976', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:12:33', '2020-08-21 10:12:33');
INSERT INTO `admin_operation_log` VALUES ('1977', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:12:35', '2020-08-21 10:12:35');
INSERT INTO `admin_operation_log` VALUES ('1978', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 10:41:41', '2020-08-21 10:41:41');
INSERT INTO `admin_operation_log` VALUES ('1979', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:02:50', '2020-08-21 11:02:50');
INSERT INTO `admin_operation_log` VALUES ('1980', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:13:36', '2020-08-21 11:13:36');
INSERT INTO `admin_operation_log` VALUES ('1981', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:13:40', '2020-08-21 11:13:40');
INSERT INTO `admin_operation_log` VALUES ('1982', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:13:41', '2020-08-21 11:13:41');
INSERT INTO `admin_operation_log` VALUES ('1983', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:13:44', '2020-08-21 11:13:44');
INSERT INTO `admin_operation_log` VALUES ('1984', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:16:07', '2020-08-21 11:16:07');
INSERT INTO `admin_operation_log` VALUES ('1985', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:16:11', '2020-08-21 11:16:11');
INSERT INTO `admin_operation_log` VALUES ('1986', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:32:32', '2020-08-21 11:32:32');
INSERT INTO `admin_operation_log` VALUES ('1987', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:40:34', '2020-08-21 11:40:34');
INSERT INTO `admin_operation_log` VALUES ('1988', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:40:35', '2020-08-21 11:40:35');
INSERT INTO `admin_operation_log` VALUES ('1989', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 11:43:32', '2020-08-21 11:43:32');
INSERT INTO `admin_operation_log` VALUES ('1990', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 13:52:46', '2020-08-21 13:52:46');
INSERT INTO `admin_operation_log` VALUES ('1991', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-21 13:54:06', '2020-08-21 13:54:06');
INSERT INTO `admin_operation_log` VALUES ('1992', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-24 11:16:02', '2020-08-24 11:16:02');
INSERT INTO `admin_operation_log` VALUES ('1993', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-24 11:16:07', '2020-08-24 11:16:07');
INSERT INTO `admin_operation_log` VALUES ('1994', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-24 14:24:27', '2020-08-24 14:24:27');
INSERT INTO `admin_operation_log` VALUES ('1995', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-24 14:24:30', '2020-08-24 14:24:30');
INSERT INTO `admin_operation_log` VALUES ('1996', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-24 14:24:31', '2020-08-24 14:24:31');
INSERT INTO `admin_operation_log` VALUES ('1997', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-24 14:24:33', '2020-08-24 14:24:33');
INSERT INTO `admin_operation_log` VALUES ('1998', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-24 14:24:36', '2020-08-24 14:24:36');
INSERT INTO `admin_operation_log` VALUES ('1999', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-24 14:24:40', '2020-08-24 14:24:40');
INSERT INTO `admin_operation_log` VALUES ('2000', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-25 10:01:03', '2020-08-25 10:01:03');
INSERT INTO `admin_operation_log` VALUES ('2001', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-25 10:01:11', '2020-08-25 10:01:11');
INSERT INTO `admin_operation_log` VALUES ('2002', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-25 10:01:11', '2020-08-25 10:01:11');
INSERT INTO `admin_operation_log` VALUES ('2003', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-25 10:01:12', '2020-08-25 10:01:12');
INSERT INTO `admin_operation_log` VALUES ('2004', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-25 10:01:14', '2020-08-25 10:01:14');
INSERT INTO `admin_operation_log` VALUES ('2005', '1', 'admin', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-25 10:01:16', '2020-08-25 10:01:16');
INSERT INTO `admin_operation_log` VALUES ('2006', '1', 'admin/configs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-25 10:01:18', '2020-08-25 10:01:18');
INSERT INTO `admin_operation_log` VALUES ('2007', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-26 10:03:17', '2020-08-26 10:03:17');
INSERT INTO `admin_operation_log` VALUES ('2008', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-26 10:25:25', '2020-08-26 10:25:25');
INSERT INTO `admin_operation_log` VALUES ('2009', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:25:28', '2020-08-26 10:25:28');
INSERT INTO `admin_operation_log` VALUES ('2010', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:25:43', '2020-08-26 10:25:43');
INSERT INTO `admin_operation_log` VALUES ('2011', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:25:45', '2020-08-26 10:25:45');
INSERT INTO `admin_operation_log` VALUES ('2012', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"EURUSD\",\"type\":\"Forex1\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-26 10:26:07', '2020-08-26 10:26:07');
INSERT INTO `admin_operation_log` VALUES ('2013', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:26:08', '2020-08-26 10:26:08');
INSERT INTO `admin_operation_log` VALUES ('2014', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:26:10', '2020-08-26 10:26:10');
INSERT INTO `admin_operation_log` VALUES ('2015', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"AUDUSD\",\"type\":\"Forex1\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-26 10:26:13', '2020-08-26 10:26:13');
INSERT INTO `admin_operation_log` VALUES ('2016', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:26:14', '2020-08-26 10:26:14');
INSERT INTO `admin_operation_log` VALUES ('2017', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:26:15', '2020-08-26 10:26:15');
INSERT INTO `admin_operation_log` VALUES ('2018', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"USDCAD\",\"type\":\"Forex1\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-26 10:26:19', '2020-08-26 10:26:19');
INSERT INTO `admin_operation_log` VALUES ('2019', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:26:19', '2020-08-26 10:26:19');
INSERT INTO `admin_operation_log` VALUES ('2020', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:26:21', '2020-08-26 10:26:21');
INSERT INTO `admin_operation_log` VALUES ('2021', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"GBPUSD\",\"type\":\"Forex1\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-26 10:26:25', '2020-08-26 10:26:25');
INSERT INTO `admin_operation_log` VALUES ('2022', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:26:26', '2020-08-26 10:26:26');
INSERT INTO `admin_operation_log` VALUES ('2023', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:26:28', '2020-08-26 10:26:28');
INSERT INTO `admin_operation_log` VALUES ('2024', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"AUDCAD\",\"type\":\"Forex2\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-26 10:26:34', '2020-08-26 10:26:34');
INSERT INTO `admin_operation_log` VALUES ('2025', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:26:35', '2020-08-26 10:26:35');
INSERT INTO `admin_operation_log` VALUES ('2026', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:26:37', '2020-08-26 10:26:37');
INSERT INTO `admin_operation_log` VALUES ('2027', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:27:14', '2020-08-26 10:27:14');
INSERT INTO `admin_operation_log` VALUES ('2028', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:46:50', '2020-08-26 10:46:50');
INSERT INTO `admin_operation_log` VALUES ('2029', '1', 'admin/auth/menu', 'POST', '192.168.0.140', '{\"parent_id\":\"14\",\"title\":\"\\u7528\\u6237\\u540d\\u9ed8\\u8ba4\\u5916\\u6c47\\u5217\\u8868\",\"icon\":\"fa-arrow-circle-down\",\"uri\":\"default-foreign-exchange-lists\",\"roles\":[null],\"permission\":null,\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\"}', '2020-08-26 10:47:40', '2020-08-26 10:47:40');
INSERT INTO `admin_operation_log` VALUES ('2030', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-26 10:47:41', '2020-08-26 10:47:41');
INSERT INTO `admin_operation_log` VALUES ('2031', '1', 'admin/auth/menu', 'GET', '192.168.0.140', '[]', '2020-08-26 10:47:43', '2020-08-26 10:47:43');
INSERT INTO `admin_operation_log` VALUES ('2032', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:47:48', '2020-08-26 10:47:48');
INSERT INTO `admin_operation_log` VALUES ('2033', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:51:13', '2020-08-26 10:51:13');
INSERT INTO `admin_operation_log` VALUES ('2034', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:51:16', '2020-08-26 10:51:16');
INSERT INTO `admin_operation_log` VALUES ('2035', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:51:37', '2020-08-26 10:51:37');
INSERT INTO `admin_operation_log` VALUES ('2036', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:51:55', '2020-08-26 10:51:55');
INSERT INTO `admin_operation_log` VALUES ('2037', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:53:54', '2020-08-26 10:53:54');
INSERT INTO `admin_operation_log` VALUES ('2038', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:54', '2020-08-26 10:53:54');
INSERT INTO `admin_operation_log` VALUES ('2039', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:55', '2020-08-26 10:53:55');
INSERT INTO `admin_operation_log` VALUES ('2040', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:55', '2020-08-26 10:53:55');
INSERT INTO `admin_operation_log` VALUES ('2041', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:56', '2020-08-26 10:53:56');
INSERT INTO `admin_operation_log` VALUES ('2042', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:57', '2020-08-26 10:53:57');
INSERT INTO `admin_operation_log` VALUES ('2043', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:57', '2020-08-26 10:53:57');
INSERT INTO `admin_operation_log` VALUES ('2044', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:58', '2020-08-26 10:53:58');
INSERT INTO `admin_operation_log` VALUES ('2045', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:58', '2020-08-26 10:53:58');
INSERT INTO `admin_operation_log` VALUES ('2046', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:59', '2020-08-26 10:53:59');
INSERT INTO `admin_operation_log` VALUES ('2047', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:53:59', '2020-08-26 10:53:59');
INSERT INTO `admin_operation_log` VALUES ('2048', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:00', '2020-08-26 10:54:00');
INSERT INTO `admin_operation_log` VALUES ('2049', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:00', '2020-08-26 10:54:00');
INSERT INTO `admin_operation_log` VALUES ('2050', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:01', '2020-08-26 10:54:01');
INSERT INTO `admin_operation_log` VALUES ('2051', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:02', '2020-08-26 10:54:02');
INSERT INTO `admin_operation_log` VALUES ('2052', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:02', '2020-08-26 10:54:02');
INSERT INTO `admin_operation_log` VALUES ('2053', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:03', '2020-08-26 10:54:03');
INSERT INTO `admin_operation_log` VALUES ('2054', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:03', '2020-08-26 10:54:03');
INSERT INTO `admin_operation_log` VALUES ('2055', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:04', '2020-08-26 10:54:04');
INSERT INTO `admin_operation_log` VALUES ('2056', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:04', '2020-08-26 10:54:04');
INSERT INTO `admin_operation_log` VALUES ('2057', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:05', '2020-08-26 10:54:05');
INSERT INTO `admin_operation_log` VALUES ('2058', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:06', '2020-08-26 10:54:06');
INSERT INTO `admin_operation_log` VALUES ('2059', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:35', '2020-08-26 10:54:35');
INSERT INTO `admin_operation_log` VALUES ('2060', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:45', '2020-08-26 10:54:45');
INSERT INTO `admin_operation_log` VALUES ('2061', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 10:54:58', '2020-08-26 10:54:58');
INSERT INTO `admin_operation_log` VALUES ('2062', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:55:17', '2020-08-26 10:55:17');
INSERT INTO `admin_operation_log` VALUES ('2063', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:55:27', '2020-08-26 10:55:27');
INSERT INTO `admin_operation_log` VALUES ('2064', '1', 'admin/default-foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"AUDUSD\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\"}', '2020-08-26 10:55:30', '2020-08-26 10:55:30');
INSERT INTO `admin_operation_log` VALUES ('2065', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:55:31', '2020-08-26 10:55:31');
INSERT INTO `admin_operation_log` VALUES ('2066', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:55:34', '2020-08-26 10:55:34');
INSERT INTO `admin_operation_log` VALUES ('2067', '1', 'admin/default-foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"USDCAD\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/default-foreign-exchange-lists\"}', '2020-08-26 10:55:37', '2020-08-26 10:55:37');
INSERT INTO `admin_operation_log` VALUES ('2068', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:55:38', '2020-08-26 10:55:38');
INSERT INTO `admin_operation_log` VALUES ('2069', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:56:21', '2020-08-26 10:56:21');
INSERT INTO `admin_operation_log` VALUES ('2070', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:56:22', '2020-08-26 10:56:22');
INSERT INTO `admin_operation_log` VALUES ('2071', '1', 'admin/default-foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"AUDUSD\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/default-foreign-exchange-lists\"}', '2020-08-26 10:56:26', '2020-08-26 10:56:26');
INSERT INTO `admin_operation_log` VALUES ('2072', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:56:26', '2020-08-26 10:56:26');
INSERT INTO `admin_operation_log` VALUES ('2073', '1', 'admin/default-foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 10:56:28', '2020-08-26 10:56:28');
INSERT INTO `admin_operation_log` VALUES ('2074', '1', 'admin/default-foreign-exchange-lists', 'POST', '192.168.0.140', '{\"FS\":\"USDCAD\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/default-foreign-exchange-lists\"}', '2020-08-26 10:56:31', '2020-08-26 10:56:31');
INSERT INTO `admin_operation_log` VALUES ('2075', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 10:56:31', '2020-08-26 10:56:31');
INSERT INTO `admin_operation_log` VALUES ('2076', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 11:03:34', '2020-08-26 11:03:34');
INSERT INTO `admin_operation_log` VALUES ('2077', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 11:03:36', '2020-08-26 11:03:36');
INSERT INTO `admin_operation_log` VALUES ('2078', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 11:03:43', '2020-08-26 11:03:43');
INSERT INTO `admin_operation_log` VALUES ('2079', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 11:03:59', '2020-08-26 11:03:59');
INSERT INTO `admin_operation_log` VALUES ('2080', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 11:04:21', '2020-08-26 11:04:21');
INSERT INTO `admin_operation_log` VALUES ('2081', '1', 'admin/users/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 11:05:31', '2020-08-26 11:05:31');
INSERT INTO `admin_operation_log` VALUES ('2082', '1', 'admin/users/create', 'GET', '192.168.0.140', '[]', '2020-08-26 11:07:05', '2020-08-26 11:07:05');
INSERT INTO `admin_operation_log` VALUES ('2083', '1', 'admin/users', 'POST', '192.168.0.140', '{\"name\":\"test0003\",\"phone\":\"18483631555\",\"password\":\"123456\",\"last_balance\":\"0\",\"balance\":\"0\",\"advance\":\"0\",\"status\":\"on\",\"level\":\"0\",\"end_time\":\"2020-08-26 11:07:05\",\"_token\":\"JpB8zgHfhC19zFPIxdAwdQkNYpod9nU6dGzJCAb7\"}', '2020-08-26 11:07:20', '2020-08-26 11:07:20');
INSERT INTO `admin_operation_log` VALUES ('2084', '1', 'admin/users', 'GET', '192.168.0.140', '[]', '2020-08-26 11:07:21', '2020-08-26 11:07:21');
INSERT INTO `admin_operation_log` VALUES ('2085', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 13:19:25', '2020-08-26 13:19:25');
INSERT INTO `admin_operation_log` VALUES ('2086', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 13:43:46', '2020-08-26 13:43:46');
INSERT INTO `admin_operation_log` VALUES ('2087', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 13:44:34', '2020-08-26 13:44:34');
INSERT INTO `admin_operation_log` VALUES ('2088', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 13:45:18', '2020-08-26 13:45:18');
INSERT INTO `admin_operation_log` VALUES ('2089', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 13:45:27', '2020-08-26 13:45:27');
INSERT INTO `admin_operation_log` VALUES ('2090', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 13:46:54', '2020-08-26 13:46:54');
INSERT INTO `admin_operation_log` VALUES ('2091', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"type\":\"Forex1\",\"FS\":\"AUDUSD\",\"EN\":null,\"CH\":null,\"HY\":\"100000\",\"DC\":\"50000\",\"JJ\":\"Forex\",\"buyInventoryFee\":\"0.17\",\"SellInventoryFee\":\"-0.73\",\"untilOrder\":\"\\u662f\",\"InventoryFeeType\":\"\\u70b9\\u6a21\\u5f0f\",\"_token\":\"Ke9z3so2iFcvmIOkXsFPRDCwMIfNEID1l0QMgHMI\"}', '2020-08-26 13:47:29', '2020-08-26 13:47:29');
INSERT INTO `admin_operation_log` VALUES ('2092', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '[]', '2020-08-26 13:47:30', '2020-08-26 13:47:30');
INSERT INTO `admin_operation_log` VALUES ('2093', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"type\":\"Forex1\",\"FS\":\"AUDUSD\",\"EN\":\"wewewewe\",\"CH\":\"\\u8bf7\\u95ee\\u4f01\\u9e45\",\"HY\":\"100000\",\"DC\":\"50000\",\"JJ\":\"Forex\",\"buyInventoryFee\":\"0.17\",\"SellInventoryFee\":\"-0.73\",\"untilOrder\":\"\\u662f\",\"InventoryFeeType\":\"\\u70b9\\u6a21\\u5f0f\",\"_token\":\"Ke9z3so2iFcvmIOkXsFPRDCwMIfNEID1l0QMgHMI\"}', '2020-08-26 13:47:44', '2020-08-26 13:47:44');
INSERT INTO `admin_operation_log` VALUES ('2094', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 13:47:44', '2020-08-26 13:47:44');
INSERT INTO `admin_operation_log` VALUES ('2095', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 13:47:50', '2020-08-26 13:47:50');
INSERT INTO `admin_operation_log` VALUES ('2096', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"type\":\"Forex1\",\"FS\":\"EURUSD\",\"EN\":\"\\u8bf7\\u95ee\",\"CH\":\"\\u9a71\\u868a\\u5668\",\"HY\":\"100000\",\"DC\":\"50000\",\"JJ\":\"Forex\",\"buyInventoryFee\":\"0.00\",\"SellInventoryFee\":\"0.00\",\"untilOrder\":\"0.00\",\"InventoryFeeType\":\"\\u70b9\\u6a21\\u5f0f\",\"_token\":\"Ke9z3so2iFcvmIOkXsFPRDCwMIfNEID1l0QMgHMI\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-26 13:47:59', '2020-08-26 13:47:59');
INSERT INTO `admin_operation_log` VALUES ('2097', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 13:48:00', '2020-08-26 13:48:00');
INSERT INTO `admin_operation_log` VALUES ('2098', '1', 'admin/foreign-exchange-lists/create', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 13:48:02', '2020-08-26 13:48:02');
INSERT INTO `admin_operation_log` VALUES ('2099', '1', 'admin/foreign-exchange-lists', 'POST', '192.168.0.140', '{\"type\":\"Forex1\",\"FS\":\"USDCAD\",\"EN\":\"\\u8bf7\\u95ee\\u4f01\\u9e45\",\"CH\":\"\\u8bf7\\u95ee\\u8bf7\\u95ee\",\"HY\":\"100000\",\"DC\":\"50000\",\"JJ\":\"Forex\",\"buyInventoryFee\":\"0.00\",\"SellInventoryFee\":\"0.00\",\"untilOrder\":\"0.00\",\"InventoryFeeType\":\"\\u70b9\\u6a21\\u5f0f\",\"_token\":\"Ke9z3so2iFcvmIOkXsFPRDCwMIfNEID1l0QMgHMI\",\"_previous_\":\"http:\\/\\/192.168.0.150:8005\\/admin\\/foreign-exchange-lists\"}', '2020-08-26 13:48:08', '2020-08-26 13:48:08');
INSERT INTO `admin_operation_log` VALUES ('2100', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 13:48:08', '2020-08-26 13:48:08');
INSERT INTO `admin_operation_log` VALUES ('2101', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '[]', '2020-08-26 14:29:26', '2020-08-26 14:29:26');
INSERT INTO `admin_operation_log` VALUES ('2102', '1', 'admin/foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 14:29:38', '2020-08-26 14:29:38');
INSERT INTO `admin_operation_log` VALUES ('2103', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 16:41:25', '2020-08-26 16:41:25');
INSERT INTO `admin_operation_log` VALUES ('2104', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 17:57:49', '2020-08-26 17:57:49');
INSERT INTO `admin_operation_log` VALUES ('2105', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 17:57:51', '2020-08-26 17:57:51');
INSERT INTO `admin_operation_log` VALUES ('2106', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 17:57:58', '2020-08-26 17:57:58');
INSERT INTO `admin_operation_log` VALUES ('2107', '1', 'admin/user-operation-logs', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-26 17:58:03', '2020-08-26 17:58:03');
INSERT INTO `admin_operation_log` VALUES ('2108', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-27 10:34:40', '2020-08-27 10:34:40');
INSERT INTO `admin_operation_log` VALUES ('2109', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-27 10:34:44', '2020-08-27 10:34:44');
INSERT INTO `admin_operation_log` VALUES ('2110', '1', 'admin/default-foreign-exchange-lists', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-08-27 10:34:48', '2020-08-27 10:34:48');
INSERT INTO `admin_operation_log` VALUES ('2111', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-08-31 09:03:56', '2020-08-31 09:03:56');
INSERT INTO `admin_operation_log` VALUES ('2112', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-09-02 10:24:19', '2020-09-02 10:24:19');
INSERT INTO `admin_operation_log` VALUES ('2113', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-09-02 10:24:23', '2020-09-02 10:24:23');
INSERT INTO `admin_operation_log` VALUES ('2114', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-09-02 10:24:25', '2020-09-02 10:24:25');
INSERT INTO `admin_operation_log` VALUES ('2115', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-09-02 10:24:28', '2020-09-02 10:24:28');
INSERT INTO `admin_operation_log` VALUES ('2116', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-09-02 10:24:28', '2020-09-02 10:24:28');
INSERT INTO `admin_operation_log` VALUES ('2117', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-09-02 10:24:36', '2020-09-02 10:24:36');
INSERT INTO `admin_operation_log` VALUES ('2118', '1', 'admin/money-records', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-09-02 10:24:39', '2020-09-02 10:24:39');
INSERT INTO `admin_operation_log` VALUES ('2119', '1', 'admin/users', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-09-02 10:24:41', '2020-09-02 10:24:41');
INSERT INTO `admin_operation_log` VALUES ('2120', '1', 'admin/orders', 'GET', '192.168.0.140', '{\"_pjax\":\"#pjax-container\"}', '2020-09-02 11:36:08', '2020-09-02 11:36:08');
INSERT INTO `admin_operation_log` VALUES ('2121', '1', 'admin/orders', 'GET', '192.168.0.140', '[]', '2020-09-04 10:06:05', '2020-09-04 10:06:05');

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
INSERT INTO `admin_role_menu` VALUES ('1', '17', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '18', null, null);

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
-- Table structure for announcements
-- ----------------------------
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text,
  `if_cancel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否撤销',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cancel_time` timestamp NULL DEFAULT NULL COMMENT '撤销时间',
  `priority` tinyint(1) NOT NULL DEFAULT '0' COMMENT '优先级',
  `cement_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '消息类型',
  `user_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户类型',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告表';

-- ----------------------------
-- Records of announcements
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES ('64', 'fees', '20', '1000保证金对应手续费', '2020-07-30 10:18:39', '2020-08-20 08:56:21');
INSERT INTO `configs` VALUES ('66', 'bar', '100', '杆杠', '2020-08-19 14:32:41', '2020-08-19 14:32:41');
INSERT INTO `configs` VALUES ('67', 'hand', '100000', '一手', '2020-08-19 14:33:26', '2020-08-19 14:33:26');

-- ----------------------------
-- Table structure for default_foreign_exchange_lists
-- ----------------------------
DROP TABLE IF EXISTS `default_foreign_exchange_lists`;
CREATE TABLE `default_foreign_exchange_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `FS` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '品种代码',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `FS` (`FS`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of default_foreign_exchange_lists
-- ----------------------------
INSERT INTO `default_foreign_exchange_lists` VALUES ('1', 'AUDUSD', '2020-08-26 10:56:26', '2020-08-26 10:56:26');
INSERT INTO `default_foreign_exchange_lists` VALUES ('2', 'USDCAD', '2020-08-26 10:56:31', '2020-08-26 10:56:31');

-- ----------------------------
-- Table structure for foreign_exchange_lists
-- ----------------------------
DROP TABLE IF EXISTS `foreign_exchange_lists`;
CREATE TABLE `foreign_exchange_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类',
  `FS` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '品种代码',
  `S` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '唯一完整编码 =M+S+C',
  `N` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中文名',
  `H` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '--当天最高价',
  `L` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '--当天最低价',
  `O` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '开盘价',
  `P` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最新价',
  `V` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '当天交易量',
  `NV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最新成交量',
  `B1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最高价',
  `S1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最低价',
  `EN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '英文名',
  `CH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '中文名',
  `HY` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '100000' COMMENT '合约数量',
  `DC` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '50000' COMMENT '预付款对冲',
  `JJ` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Forex' COMMENT '计价模式',
  `XS` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5' COMMENT '小数位数',
  `ZS` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '22' COMMENT '止损水平',
  `buyInventoryFee` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00' COMMENT '买入库存费',
  `SellInventoryFee` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00' COMMENT '卖出库存费',
  `untilOrder` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00' COMMENT '直到挂单取消',
  `InventoryFeeType` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '点模式' COMMENT '库存费类型',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of foreign_exchange_lists
-- ----------------------------
INSERT INTO `foreign_exchange_lists` VALUES ('12', 'Forex1', 'AUDUSD', 'AUDUSD', '澳元/美元', '0.72064', '0.71867', '0.71927', '0.7191', '36118', '1', '0.7191', '0.71931', 'wewewewe', '请问企鹅', '100000', '50000', 'Forex', '5', '22', '0.17', '-0.73', '是', '点模式', '2020-08-26 13:47:44', '2020-08-26 13:53:18');
INSERT INTO `foreign_exchange_lists` VALUES ('13', 'Forex1', 'EURUSD', 'EURUSD', '欧元/美元', '1.18382', '1.1806', '1.18324', '1.18095', '26647', '1', '1.18095', '1.18115', '请问', '驱蚊器', '100000', '50000', 'Forex', '5', '22', '0.00', '0.00', '0.00', '点模式', '2020-08-26 13:47:59', '2020-08-26 13:53:18');
INSERT INTO `foreign_exchange_lists` VALUES ('14', 'Forex1', 'USDCAD', 'USDCAD', '美元/加元', '1.3185', '1.31586', '1.31708', '1.31849', '22951', '3', '1.31849', '1.31869', '请问企鹅', '请问请问', '100000', '50000', 'Forex', '5', '22', '0.00', '0.00', '0.00', '点模式', '2020-08-26 13:48:08', '2020-08-26 13:53:17');

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
  `trade_no` varchar(30) DEFAULT '' COMMENT '交易单号',
  `pre_last_balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '交易前结余',
  `pre_advance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '交易前预付款',
  `last_balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '结余',
  `balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '可用预付款',
  `pre_balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '交易前可用预付款',
  `advance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '预付款',
  `money` decimal(15,5) DEFAULT '0.00000' COMMENT '变动预付款',
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `inventory_charges` decimal(10,5) DEFAULT '0.00000' COMMENT '库存费',
  `tax` decimal(10,5) DEFAULT '0.00000' COMMENT '税金',
  `fees` decimal(10,5) DEFAULT '0.00000' COMMENT '手续费',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户资金变动记录表';

-- ----------------------------
-- Records of money_records
-- ----------------------------
INSERT INTO `money_records` VALUES ('1', '0', '即时执行', 'J821897141474534', '100263.87765', '4000.00000', '100263.87765', '95263.87765', '96263.87765', '5000.00000', '1000.00000', '2', null, '0.00000', '0.00000', '20.00000', '2020-08-21 14:01:54', '2020-08-21 14:01:54');
INSERT INTO `money_records` VALUES ('2', '0', '即时执行', 'J824338643029196', '100263.87765', '5000.00000', '100263.87765', '94263.87765', '95263.87765', '6000.00000', '1000.00000', '2', null, '0.00000', '0.00000', '20.00000', '2020-08-24 09:51:04', '2020-08-24 09:51:04');
INSERT INTO `money_records` VALUES ('3', '0', '即时执行', 'J824343268277567', '100263.87765', '6000.00000', '100263.87765', '93263.87765', '94263.87765', '7000.00000', '1000.00000', '2', null, '0.00000', '0.00000', '20.00000', '2020-08-24 09:58:46', '2020-08-24 09:58:46');
INSERT INTO `money_records` VALUES ('4', '0', '即时执行平仓', 'J821897141474534', '100263.87765', '7000.00000', '126722.73851', '120722.73851', '93263.87765', '6000.00000', '27458.86086', '2', null, '0.00000', '0.00000', '20.00000', '2020-08-24 09:58:57', '2020-08-24 09:58:57');
INSERT INTO `money_records` VALUES ('5', '0', '即时执行', 'J824368359256375', '126722.73851', '6000.00000', '126722.73851', '119722.73851', '120722.73851', '7000.00000', '1000.00000', '2', null, '0.00000', '0.00000', '20.00000', '2020-08-24 10:40:35', '2020-08-24 10:40:35');
INSERT INTO `money_records` VALUES ('6', '0', '即时执行平仓', 'J824343268277567', '126722.73851', '7000.00000', '153181.59937', '147181.59937', '119722.73851', '6000.00000', '27458.86086', '2', null, '0.00000', '0.00000', '20.00000', '2020-08-24 10:40:41', '2020-08-24 10:40:41');
INSERT INTO `money_records` VALUES ('7', '0', '即时执行', 'J827933754402702', '153181.59937', '6000.00000', '153181.59937', '146181.59937', '147181.59937', '7000.00000', '1000.00000', '2', null, '0.00000', '0.00000', '20.00000', '2020-08-27 09:56:15', '2020-08-27 09:56:15');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trade_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `trouble` int(11) NOT NULL DEFAULT '0' COMMENT '手数',
  `new_value` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '当前价值',
  `FS` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '交易品种',
  `create_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '建仓价格',
  `create_total_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '购买总价',
  `close_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '平仓价格',
  `close_total_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '平仓总价',
  `inventory_charges` decimal(10,5) DEFAULT '0.00000' COMMENT '库存费',
  `tax` decimal(10,5) DEFAULT '0.00000' COMMENT '税金',
  `fees` decimal(10,5) DEFAULT '0.00000' COMMENT '手续费',
  `stop_loss` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '止损',
  `stop_profit` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '盈利',
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'buy' COMMENT '订单类型',
  `create_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '建仓类型',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0=>交易未完成 1=>交易持仓阶段 2=>交易已结算',
  `deviation` int(5) NOT NULL DEFAULT '0' COMMENT '偏差',
  `profit` decimal(10,5) DEFAULT '0.00000' COMMENT '盈亏',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `cancel_time` int(11) NOT NULL DEFAULT '0' COMMENT '订单自动取消时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `newProfit` decimal(15,5) DEFAULT NULL,
  `toprice` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_buys_trade_no_unique` (`trade_no`),
  KEY `trade_buys_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'J821897141474534', '2', '1', '0.00000', 'USDCAD', '1.33832', '1000.00000', '1.82032', '27478.86086', '0.00000', '0.00000', '20.00000', '1.31432', '1.31632', 'buy', '0', '2', '200', '26458.86086', '买币，，，', '0', '2020-08-21 14:01:54', '2020-08-24 09:58:57', null, null);
INSERT INTO `orders` VALUES ('2', 'J824338643029196', '2', '1', '0.00000', 'USDCAD', '1.33832', '1000.00000', '0.00000', '0.00000', '0.00000', '0.00000', '20.00000', '1.31432', '1.31632', 'buy', '0', '1', '200', '0.00000', '买币，，，', '0', '2020-08-24 09:51:04', '2020-09-02 09:11:26', '-1523.99320', null);
INSERT INTO `orders` VALUES ('3', 'J824343268277567', '3', '1', '0.00000', 'USDCAD', '1.33832', '1000.00000', '1.82032', '27478.86086', '0.00000', '0.00000', '20.00000', '1.31432', '1.31632', 'buy', '0', '2', '200', '26458.86086', '买币，，，', '0', '2020-08-24 09:58:46', '2020-08-24 10:40:41', null, null);
INSERT INTO `orders` VALUES ('4', 'J824368359256375', '2', '1', '0.00000', 'USDCAD', '1.33832', '1000.00000', '0.00000', '0.00000', '0.00000', '0.00000', '20.00000', '1.31432', '1.31632', 'buy', '0', '1', '200', '0.00000', '买币，，，', '0', '2020-08-24 10:40:35', '2020-09-02 09:11:26', '-1523.99320', null);
INSERT INTO `orders` VALUES ('5', 'J827933754402702', '2', '1', '0.00000', 'USDCAD', '1.31869', '1000.00000', '0.00000', '0.00000', '0.00000', '0.00000', '20.00000', '1.31432', '1.31632', 'buy', '0', '1', '200', '0.00000', '买币，，，', '0', '2020-08-27 09:56:15', '2020-09-02 09:11:26', '-35.16887', null);

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
-- Table structure for user_announcements
-- ----------------------------
DROP TABLE IF EXISTS `user_announcements`;
CREATE TABLE `user_announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `announcement_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `if_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户消息表';

-- ----------------------------
-- Records of user_announcements
-- ----------------------------

-- ----------------------------
-- Table structure for user_foreign_exchange_lists
-- ----------------------------
DROP TABLE IF EXISTS `user_foreign_exchange_lists`;
CREATE TABLE `user_foreign_exchange_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `FS` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码全称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_foreign_exchange_lists
-- ----------------------------
INSERT INTO `user_foreign_exchange_lists` VALUES ('23', '3', 'EURUSD', '2020-08-21 11:37:05', '2020-08-21 11:37:05');
INSERT INTO `user_foreign_exchange_lists` VALUES ('24', '2', 'AUDUSD', '2020-08-26 11:07:21', '2020-08-26 11:07:21');
INSERT INTO `user_foreign_exchange_lists` VALUES ('25', '2', 'USDCAD', '2020-08-26 11:07:21', '2020-08-26 11:07:21');

-- ----------------------------
-- Table structure for user_operation_logs
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_logs`;
CREATE TABLE `user_operation_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `log_type` tinyint(1) NOT NULL DEFAULT '0',
  `login_ip` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='用户日志表';

-- ----------------------------
-- Records of user_operation_logs
-- ----------------------------
INSERT INTO `user_operation_logs` VALUES ('1', '1', 'test0001', '登录', '0', '192.168.0.140', '2020-08-04 11:46:28', '2020-08-04 11:46:28');
INSERT INTO `user_operation_logs` VALUES ('2', '1', 'test0001', '登录', '0', '192.168.0.140', '2020-08-04 11:46:49', '2020-08-04 11:46:49');
INSERT INTO `user_operation_logs` VALUES ('3', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-18 16:38:49', '2020-08-18 16:38:49');
INSERT INTO `user_operation_logs` VALUES ('4', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-18 16:58:57', '2020-08-18 16:58:57');
INSERT INTO `user_operation_logs` VALUES ('5', '3', 'test0002', '登录', '0', '192.168.0.140', '2020-08-21 15:19:20', '2020-08-21 15:19:20');
INSERT INTO `user_operation_logs` VALUES ('6', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 09:26:06', '2020-08-24 09:26:06');
INSERT INTO `user_operation_logs` VALUES ('7', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 09:30:40', '2020-08-24 09:30:40');
INSERT INTO `user_operation_logs` VALUES ('8', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 09:30:50', '2020-08-24 09:30:50');
INSERT INTO `user_operation_logs` VALUES ('9', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 09:36:37', '2020-08-24 09:36:37');
INSERT INTO `user_operation_logs` VALUES ('10', '3', 'test0002', '登录', '0', '192.168.0.140', '2020-08-24 09:42:34', '2020-08-24 09:42:34');
INSERT INTO `user_operation_logs` VALUES ('11', '3', 'test0002', '登录', '0', '192.168.0.140', '2020-08-24 09:51:28', '2020-08-24 09:51:28');
INSERT INTO `user_operation_logs` VALUES ('12', '3', 'test0002', '登录', '0', '192.168.0.140', '2020-08-24 09:54:28', '2020-08-24 09:54:28');
INSERT INTO `user_operation_logs` VALUES ('13', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 10:01:09', '2020-08-24 10:01:09');
INSERT INTO `user_operation_logs` VALUES ('14', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 10:12:15', '2020-08-24 10:12:15');
INSERT INTO `user_operation_logs` VALUES ('15', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 10:13:48', '2020-08-24 10:13:48');
INSERT INTO `user_operation_logs` VALUES ('16', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 10:15:09', '2020-08-24 10:15:09');
INSERT INTO `user_operation_logs` VALUES ('17', '3', 'test0002', '登录', '0', '192.168.0.140', '2020-08-24 10:17:17', '2020-08-24 10:17:17');
INSERT INTO `user_operation_logs` VALUES ('18', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-24 10:30:23', '2020-08-24 10:30:23');
INSERT INTO `user_operation_logs` VALUES ('19', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-24 10:32:44', '2020-08-24 10:32:44');
INSERT INTO `user_operation_logs` VALUES ('20', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-24 10:33:40', '2020-08-24 10:33:40');
INSERT INTO `user_operation_logs` VALUES ('21', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-24 10:34:30', '2020-08-24 10:34:30');
INSERT INTO `user_operation_logs` VALUES ('22', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-24 10:35:40', '2020-08-24 10:35:40');
INSERT INTO `user_operation_logs` VALUES ('23', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-24 10:35:41', '2020-08-24 10:35:41');
INSERT INTO `user_operation_logs` VALUES ('24', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-24 10:39:26', '2020-08-24 10:39:26');
INSERT INTO `user_operation_logs` VALUES ('25', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-24 10:42:22', '2020-08-24 10:42:22');
INSERT INTO `user_operation_logs` VALUES ('26', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 15:35:23', '2020-08-24 15:35:23');
INSERT INTO `user_operation_logs` VALUES ('27', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 15:44:25', '2020-08-24 15:44:25');
INSERT INTO `user_operation_logs` VALUES ('28', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 15:45:22', '2020-08-24 15:45:22');
INSERT INTO `user_operation_logs` VALUES ('29', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 15:46:26', '2020-08-24 15:46:26');
INSERT INTO `user_operation_logs` VALUES ('30', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 15:47:10', '2020-08-24 15:47:10');
INSERT INTO `user_operation_logs` VALUES ('31', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 15:48:49', '2020-08-24 15:48:49');
INSERT INTO `user_operation_logs` VALUES ('32', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-08-24 15:49:04', '2020-08-24 15:49:04');
INSERT INTO `user_operation_logs` VALUES ('33', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-08-24 15:49:14', '2020-08-24 15:49:14');
INSERT INTO `user_operation_logs` VALUES ('34', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-24 15:49:17', '2020-08-24 15:49:17');
INSERT INTO `user_operation_logs` VALUES ('35', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-25 10:51:14', '2020-08-25 10:51:14');
INSERT INTO `user_operation_logs` VALUES ('36', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-25 13:51:08', '2020-08-25 13:51:08');
INSERT INTO `user_operation_logs` VALUES ('37', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-25 16:30:26', '2020-08-25 16:30:26');
INSERT INTO `user_operation_logs` VALUES ('38', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-25 16:45:56', '2020-08-25 16:45:56');
INSERT INTO `user_operation_logs` VALUES ('39', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-25 16:46:46', '2020-08-25 16:46:46');
INSERT INTO `user_operation_logs` VALUES ('40', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-08-25 17:59:49', '2020-08-25 17:59:49');
INSERT INTO `user_operation_logs` VALUES ('41', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-26 09:03:08', '2020-08-26 09:03:08');
INSERT INTO `user_operation_logs` VALUES ('42', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 09:30:23', '2020-08-26 09:30:23');
INSERT INTO `user_operation_logs` VALUES ('43', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 09:32:19', '2020-08-26 09:32:19');
INSERT INTO `user_operation_logs` VALUES ('44', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 09:32:41', '2020-08-26 09:32:41');
INSERT INTO `user_operation_logs` VALUES ('45', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 09:33:28', '2020-08-26 09:33:28');
INSERT INTO `user_operation_logs` VALUES ('46', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 09:34:30', '2020-08-26 09:34:30');
INSERT INTO `user_operation_logs` VALUES ('47', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 09:34:52', '2020-08-26 09:34:52');
INSERT INTO `user_operation_logs` VALUES ('48', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 09:35:37', '2020-08-26 09:35:37');
INSERT INTO `user_operation_logs` VALUES ('49', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 09:54:56', '2020-08-26 09:54:56');
INSERT INTO `user_operation_logs` VALUES ('50', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 12:48:48', '2020-08-26 12:48:48');
INSERT INTO `user_operation_logs` VALUES ('51', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-08-26 13:28:42', '2020-08-26 13:28:42');
INSERT INTO `user_operation_logs` VALUES ('52', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 13:33:43', '2020-08-26 13:33:43');
INSERT INTO `user_operation_logs` VALUES ('53', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-08-26 13:33:52', '2020-08-26 13:33:52');
INSERT INTO `user_operation_logs` VALUES ('54', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-08-26 13:33:57', '2020-08-26 13:33:57');
INSERT INTO `user_operation_logs` VALUES ('55', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-08-26 13:34:27', '2020-08-26 13:34:27');
INSERT INTO `user_operation_logs` VALUES ('56', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-08-26 13:34:38', '2020-08-26 13:34:38');
INSERT INTO `user_operation_logs` VALUES ('57', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 13:36:39', '2020-08-26 13:36:39');
INSERT INTO `user_operation_logs` VALUES ('58', '3', 'test0002', '登录', '0', '192.168.0.137', '2020-08-26 13:38:43', '2020-08-26 13:38:43');
INSERT INTO `user_operation_logs` VALUES ('59', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-08-26 13:40:18', '2020-08-26 13:40:18');
INSERT INTO `user_operation_logs` VALUES ('60', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-27 09:55:05', '2020-08-27 09:55:05');
INSERT INTO `user_operation_logs` VALUES ('61', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-08-31 13:25:33', '2020-08-31 13:25:33');
INSERT INTO `user_operation_logs` VALUES ('62', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 09:53:08', '2020-09-01 09:53:08');
INSERT INTO `user_operation_logs` VALUES ('63', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 09:55:17', '2020-09-01 09:55:17');
INSERT INTO `user_operation_logs` VALUES ('64', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 09:56:07', '2020-09-01 09:56:07');
INSERT INTO `user_operation_logs` VALUES ('65', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 09:58:36', '2020-09-01 09:58:36');
INSERT INTO `user_operation_logs` VALUES ('66', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 10:21:04', '2020-09-01 10:21:04');
INSERT INTO `user_operation_logs` VALUES ('67', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 10:34:02', '2020-09-01 10:34:02');
INSERT INTO `user_operation_logs` VALUES ('68', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 10:34:23', '2020-09-01 10:34:23');
INSERT INTO `user_operation_logs` VALUES ('69', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-09-01 10:37:24', '2020-09-01 10:37:24');
INSERT INTO `user_operation_logs` VALUES ('70', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 10:37:27', '2020-09-01 10:37:27');
INSERT INTO `user_operation_logs` VALUES ('71', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-09-01 10:39:13', '2020-09-01 10:39:13');
INSERT INTO `user_operation_logs` VALUES ('72', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 10:55:33', '2020-09-01 10:55:33');
INSERT INTO `user_operation_logs` VALUES ('73', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:05:34', '2020-09-01 11:05:34');
INSERT INTO `user_operation_logs` VALUES ('74', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:05:47', '2020-09-01 11:05:47');
INSERT INTO `user_operation_logs` VALUES ('75', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:06:32', '2020-09-01 11:06:32');
INSERT INTO `user_operation_logs` VALUES ('76', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:07:44', '2020-09-01 11:07:44');
INSERT INTO `user_operation_logs` VALUES ('77', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:08:34', '2020-09-01 11:08:34');
INSERT INTO `user_operation_logs` VALUES ('78', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:09:54', '2020-09-01 11:09:54');
INSERT INTO `user_operation_logs` VALUES ('79', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:10:40', '2020-09-01 11:10:40');
INSERT INTO `user_operation_logs` VALUES ('80', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-09-01 11:11:31', '2020-09-01 11:11:31');
INSERT INTO `user_operation_logs` VALUES ('81', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:11:38', '2020-09-01 11:11:38');
INSERT INTO `user_operation_logs` VALUES ('82', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-01 11:13:56', '2020-09-01 11:13:56');
INSERT INTO `user_operation_logs` VALUES ('83', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-09-02 10:44:48', '2020-09-02 10:44:48');
INSERT INTO `user_operation_logs` VALUES ('84', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-09-02 10:53:04', '2020-09-02 10:53:04');
INSERT INTO `user_operation_logs` VALUES ('85', '2', 'test0001', '登录', '0', '192.168.0.181', '2020-09-02 10:53:54', '2020-09-02 10:53:54');
INSERT INTO `user_operation_logs` VALUES ('86', '3', 'test0002', '登录', '0', '192.168.0.181', '2020-09-02 15:28:14', '2020-09-02 15:28:14');
INSERT INTO `user_operation_logs` VALUES ('87', '2', 'test0001', '登录', '0', '192.168.0.140', '2020-09-03 11:12:02', '2020-09-03 11:12:02');

-- ----------------------------
-- Table structure for user_poositions
-- ----------------------------
DROP TABLE IF EXISTS `user_poositions`;
CREATE TABLE `user_poositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `code_all` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '币种数量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_poosition_user_id_code_all_unique` (`user_id`,`code_all`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_poositions
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '结余',
  `balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '可用预付款',
  `advance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '预付款',
  `frozen_balance` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT '冻结资金',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0 正常 1 冻结',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '等级 0 普通会员 1 超级会员',
  `end_time` timestamp NOT NULL COMMENT '到期时间',
  `remember_token` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'test0001', '18482526545', null, null, '$2y$10$KWmYwp4C34vIduTsWtPCLOJdrUTserThHaZ05xNOFFFbn7dAQztVG', '153181.59937', '146181.59937', '7000.00000', '0.00000', '0', '0', '2020-08-18 16:38:26', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjAuMTUwOjgwMDVcL2FwaVwvYXV0aG9yaXphdGlvbnMiLCJpYXQiOjE1OTkxMDI3MjIsImV4cCI6MTYwMjcwMjcyMiwibmJmIjoxNTk5MTAyNzIyLCJqdGkiOiJ5c2ZQYjNHWkI3WVNLVUpHIiwic3ViIjoyLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.e1_9EHavSpHiPINi2LuiG3TXe3kOoMUHjrznejzMntM', '2020-08-18 16:38:42', '2020-09-03 11:12:02');
INSERT INTO `users` VALUES ('3', 'test0002', '18482526588', null, null, '$2y$10$aJ5ioAT6WkZSGF67R30vhuEYUqibeVgf.1GZIov7pN7xCKUhRAISq', '100000.00000', '100000.00000', '0.00000', '0.00000', '0', '0', '2020-08-18 16:48:39', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjAuMTUwOjgwMDVcL2FwaVwvYXV0aG9yaXphdGlvbnMiLCJpYXQiOjE1OTkwMzE2OTQsImV4cCI6MTYwMjYzMTY5NCwibmJmIjoxNTk5MDMxNjk0LCJqdGkiOiJFTVdsU0l5NWFSeUlwMENvIiwic3ViIjozLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.COGau-enp0czNr4cpkDT3H1S46ClbLpgM9BoZ_X3jH4', '2020-08-18 16:48:59', '2020-09-02 15:28:14');
INSERT INTO `users` VALUES ('4', 'test0003', '18483631555', null, null, '$2y$10$cg6fRmzxVpepppAI9eNADuV30ldGQkLAr3DyvPE2SvTf.8sZgZax6', '0.00000', '0.00000', '0.00000', '0.00000', '0', '0', '2020-08-26 11:07:05', null, '2020-08-26 11:07:21', '2020-08-26 11:07:21');

-- ----------------------------
-- Procedure structure for get_one_for_list
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_one_for_list`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_one_for_list`(_id int(11))
BEGIN
select * from foreign_exchange_lists where id = _id;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for get_user_for_count
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_user_for_count`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_user_for_count`(_id int(11))
begin
select count(*) as total_count from user_foreign_exchange_lists where id=_id;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for get_user_order_count
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_user_order_count`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_user_order_count`(_id int(11))
begin
select count(*) as total_count from orders where user_id=_id && status!=2;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for user_for_list
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_for_list`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `user_for_list`(_user_id int(11),_begin int(11),_limit int(2))
begin
     declare __count int default 0;
     select count(*) into __count from user_foreign_exchange_lists where user_id=_user_id;
	 if _begin>= __count then
	 set _begin = 0;
	 end if;
select b.* from user_foreign_exchange_lists a
left join foreign_exchange_lists b 
on a.FS = b.FS
where a.user_id =_user_id
	 limit _begin,_limit;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for user_order_list
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_order_list`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `user_order_list`(_user_id int(11),_begin int(11),_limit int(2))
begin
     declare __count int default 0;
     select count(*) into __count from orders where user_id=_user_id;
	 if _begin>= __count then
	 set _begin = 0;
	 end if;
select a.*,b.* from orders a
left join foreign_exchange_lists b 
on a.FS = b.FS
where a.user_id =_user_id && status!=2
	 limit _begin,_limit ;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for user_token
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_token`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `user_token`( _remember_token varchar(1000))
begin
select id,name from users where  remember_token=_remember_token;
end
;;
DELIMITER ;
