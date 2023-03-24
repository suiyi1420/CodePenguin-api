/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 19/03/2023 21:41:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_class
-- ----------------------------
DROP TABLE IF EXISTS `sys_class`;
CREATE TABLE `sys_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subject_id` bigint(20) NULL DEFAULT NULL COMMENT '课程',
  `class_rel_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级课程名称',
  `teacher_id` bigint(20) NULL DEFAULT NULL COMMENT '教师',
  `create_time` datetime NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `creater_id` bigint(20) NULL DEFAULT NULL,
  `class_time` datetime NULL DEFAULT NULL COMMENT '上课时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_class
-- ----------------------------
INSERT INTO `sys_class` VALUES (1, '1班', 1, '111', 2, '2022-12-22 15:43:59', '1', 1, '2023-01-11 16:34:05');
INSERT INTO `sys_class` VALUES (2, '2班', 1, '111', 2, '2022-12-22 16:19:53', '1', 1, '2023-01-10 16:34:09');
INSERT INTO `sys_class` VALUES (3, '3班', 2, 'dfsfdsfds', 2, '2022-12-22 16:19:53', '1', 2, '2023-01-10 16:34:09');
INSERT INTO `sys_class` VALUES (6, '4班', 3, NULL, 2, '2023-01-15 20:09:38', '1', 2, '2023-01-15 20:09:34');

-- ----------------------------
-- Table structure for sys_class_student
-- ----------------------------
DROP TABLE IF EXISTS `sys_class_student`;
CREATE TABLE `sys_class_student`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `class_id` int(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_class_student
-- ----------------------------

-- ----------------------------
-- Table structure for sys_class_subject
-- ----------------------------
DROP TABLE IF EXISTS `sys_class_subject`;
CREATE TABLE `sys_class_subject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级id',
  `open_time` datetime NULL DEFAULT NULL COMMENT '开课时间',
  `subject_info_id` int(11) NULL DEFAULT NULL COMMENT '课程小节id',
  `rel_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课时名称',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态：0隐藏，1显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_class_subject
-- ----------------------------
INSERT INTO `sys_class_subject` VALUES (1, 1, '2023-01-11 17:25:46', 1, '第一课时1', '1');
INSERT INTO `sys_class_subject` VALUES (2, 1, '2023-01-12 09:25:46', 2, '第二课时', '1');
INSERT INTO `sys_class_subject` VALUES (3, 1, '2023-01-12 10:25:46', 3, '第三课时', '1');
INSERT INTO `sys_class_subject` VALUES (4, 1, '2023-01-12 11:25:46', 4, '第一课时', '1');
INSERT INTO `sys_class_subject` VALUES (5, 1, '2023-01-12 17:25:46', 5, '第二课时', '1');
INSERT INTO `sys_class_subject` VALUES (6, 2, '2023-01-12 17:25:46', 6, '第一课时', '1');
INSERT INTO `sys_class_subject` VALUES (7, 2, '2023-01-12 17:25:46', 7, '第二课时', '1');
INSERT INTO `sys_class_subject` VALUES (8, 2, '2023-01-12 17:25:46', 8, '第三课时', '1');
INSERT INTO `sys_class_subject` VALUES (9, 1, '2023-01-14 16:53:57', 3, '第四课时', '1');
INSERT INTO `sys_class_subject` VALUES (10, 3, '2023-01-26 21:58:08', 4, '第一课时', '1');
INSERT INTO `sys_class_subject` VALUES (11, 1, '2023-01-15 19:52:28', 2, '第五课时', '1');
INSERT INTO `sys_class_subject` VALUES (12, 6, '2023-03-09 11:15:04', 13, '123123123', '1');
INSERT INTO `sys_class_subject` VALUES (13, 1, '2023-03-12 15:33:03', 12, '1111111', '1');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-12-21 18:19:34', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-12-21 18:19:34', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-12-21 18:19:34', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2022-12-21 18:19:34', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-12-21 18:19:34', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (0, NULL, '0', '东莞市编程鹅信息技术有限公司', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', 'liyd', '2022-12-21 18:34:46');
INSERT INTO `sys_dept` VALUES (101, 0, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 0, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 0, '0,100', '123123', 6, NULL, NULL, NULL, '0', '0', 'ry', '2022-12-21 18:31:49', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-12-21 18:19:34', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-12-21 18:19:34', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-12-21 18:19:34', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-12-21 18:19:34', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 379 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-21 18:20:17');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-21 18:29:52');
INSERT INTO `sys_logininfor` VALUES (102, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-21 18:29:57');
INSERT INTO `sys_logininfor` VALUES (103, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-21 18:32:38');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-21 18:32:41');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-21 18:34:03');
INSERT INTO `sys_logininfor` VALUES (106, 'liyd', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-21 18:34:09');
INSERT INTO `sys_logininfor` VALUES (107, 'liyd', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-12-21 18:55:35');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-21 18:55:40');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-22 09:59:08');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-22 10:38:04');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-22 15:30:03');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-22 17:19:51');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-23 14:45:24');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-31 11:22:54');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-31 13:33:14');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-12-31 17:21:40');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-03 16:55:05');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-03 18:15:19');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-03 18:15:24');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-03 18:33:31');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-03 18:33:37');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-04 10:03:54');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-04 11:14:44');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-05 09:39:34');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-06 17:53:56');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-11 15:56:10');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-11 17:24:04');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-12 18:04:01');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-13 10:44:47');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-13 11:20:37');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-13 14:38:21');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-13 14:38:25');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 12:33:16');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 14:06:17');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 15:20:15');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-15 18:00:46');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-16 10:23:25');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-20 22:12:58');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-21 12:43:59');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-21 12:44:06');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-21 12:44:11');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-21 12:44:17');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-24 12:23:54');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-24 19:29:02');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-24 20:31:02');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-25 11:34:53');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-25 15:57:36');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-25 19:34:21');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 10:53:30');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-28 11:56:11');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 11:56:19');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-28 12:00:01');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 12:04:06');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-28 15:21:31');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-28 15:21:33');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-28 15:21:36');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 15:21:39');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 15:00:22');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 16:44:12');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:02:14');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 17:02:57');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-29 17:05:23');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:05:29');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 17:05:34');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:07:21');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 17:07:24');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:07:29');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 17:07:54');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:08:05');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 17:08:08');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:08:13');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 17:08:18');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-29 17:08:22');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:08:26');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 17:09:06');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:17:22');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-29 17:17:40');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-29 17:20:35');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 14:42:30');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 16:38:37');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 18:50:56');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 19:31:37');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-09 15:12:36');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-09 15:58:28');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-04 10:43:19');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-04 11:21:24');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-04 11:23:03');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-04 11:23:07');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:22:48');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 09:43:36');
INSERT INTO `sys_logininfor` VALUES (191, 'liyd', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-08 09:44:28');
INSERT INTO `sys_logininfor` VALUES (192, 'liyd', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-03-08 09:44:28');
INSERT INTO `sys_logininfor` VALUES (193, 'liyd', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:44:39');
INSERT INTO `sys_logininfor` VALUES (194, 'liyd', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 09:54:59');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:55:03');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 09:55:23');
INSERT INTO `sys_logininfor` VALUES (197, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:55:28');
INSERT INTO `sys_logininfor` VALUES (198, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 09:55:35');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:55:38');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 09:56:48');
INSERT INTO `sys_logininfor` VALUES (201, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:56:55');
INSERT INTO `sys_logininfor` VALUES (202, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 09:57:22');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:57:27');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 09:57:52');
INSERT INTO `sys_logininfor` VALUES (205, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:57:58');
INSERT INTO `sys_logininfor` VALUES (206, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 09:58:26');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 09:58:31');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 10:02:50');
INSERT INTO `sys_logininfor` VALUES (209, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 10:02:56');
INSERT INTO `sys_logininfor` VALUES (210, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 10:03:32');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 10:03:35');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 10:09:59');
INSERT INTO `sys_logininfor` VALUES (213, 'changsha1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-03-08 10:10:05');
INSERT INTO `sys_logininfor` VALUES (214, 'changsha1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-08 10:10:05');
INSERT INTO `sys_logininfor` VALUES (215, 'changsha1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-08 10:10:34');
INSERT INTO `sys_logininfor` VALUES (216, 'changsha1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-08 10:10:37');
INSERT INTO `sys_logininfor` VALUES (217, 'changsha1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-08 10:10:40');
INSERT INTO `sys_logininfor` VALUES (218, 'changsha1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2023-03-08 10:10:40');
INSERT INTO `sys_logininfor` VALUES (219, 'changsha1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 10:10:47');
INSERT INTO `sys_logininfor` VALUES (220, 'changsha1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 10:10:56');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 10:10:58');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 10:11:39');
INSERT INTO `sys_logininfor` VALUES (223, 'changsha', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 10:11:48');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 11:45:59');
INSERT INTO `sys_logininfor` VALUES (225, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 14:30:54');
INSERT INTO `sys_logininfor` VALUES (226, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 15:36:56');
INSERT INTO `sys_logininfor` VALUES (227, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 15:38:28');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 15:38:35');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 15:39:24');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 15:39:34');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 15:40:54');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 15:41:01');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 15:41:33');
INSERT INTO `sys_logininfor` VALUES (234, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 15:41:44');
INSERT INTO `sys_logininfor` VALUES (235, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 15:45:48');
INSERT INTO `sys_logininfor` VALUES (236, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 15:45:56');
INSERT INTO `sys_logininfor` VALUES (237, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 15:49:33');
INSERT INTO `sys_logininfor` VALUES (238, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-08 15:49:44');
INSERT INTO `sys_logininfor` VALUES (239, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-03-08 15:49:44');
INSERT INTO `sys_logininfor` VALUES (240, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 15:49:49');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 15:52:50');
INSERT INTO `sys_logininfor` VALUES (242, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 16:04:00');
INSERT INTO `sys_logininfor` VALUES (243, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 16:04:09');
INSERT INTO `sys_logininfor` VALUES (244, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-08 16:05:03');
INSERT INTO `sys_logininfor` VALUES (245, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 16:05:12');
INSERT INTO `sys_logininfor` VALUES (246, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 18:21:33');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-08 18:48:26');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 10:07:13');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 10:41:22');
INSERT INTO `sys_logininfor` VALUES (250, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-03-09 14:57:03');
INSERT INTO `sys_logininfor` VALUES (251, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-03-09 14:57:09');
INSERT INTO `sys_logininfor` VALUES (252, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-09 14:57:09');
INSERT INTO `sys_logininfor` VALUES (253, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 14:57:15');
INSERT INTO `sys_logininfor` VALUES (254, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 16:13:40');
INSERT INTO `sys_logininfor` VALUES (255, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 17:14:33');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 18:16:08');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 18:55:19');
INSERT INTO `sys_logininfor` VALUES (258, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-09 19:59:37');
INSERT INTO `sys_logininfor` VALUES (259, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 19:59:52');
INSERT INTO `sys_logininfor` VALUES (260, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-09 20:03:30');
INSERT INTO `sys_logininfor` VALUES (261, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 20:03:38');
INSERT INTO `sys_logininfor` VALUES (262, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-09 20:04:32');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 20:04:38');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-09 20:04:45');
INSERT INTO `sys_logininfor` VALUES (265, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 20:04:54');
INSERT INTO `sys_logininfor` VALUES (266, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-09 20:06:36');
INSERT INTO `sys_logininfor` VALUES (267, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-09 20:06:43');
INSERT INTO `sys_logininfor` VALUES (268, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 20:06:46');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 20:08:11');
INSERT INTO `sys_logininfor` VALUES (270, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-09 20:08:34');
INSERT INTO `sys_logininfor` VALUES (271, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 20:08:41');
INSERT INTO `sys_logininfor` VALUES (272, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-09 20:10:13');
INSERT INTO `sys_logininfor` VALUES (273, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-09 20:10:20');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 09:30:10');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-10 09:38:37');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 09:38:44');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-10 09:46:01');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 09:47:14');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-10 09:49:23');
INSERT INTO `sys_logininfor` VALUES (280, 'liyd', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 09:49:29');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 09:53:17');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-10 10:00:21');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 10:00:24');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 10:40:17');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-10 10:59:11');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 10:59:15');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 14:57:23');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-10 15:00:29');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 15:00:39');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-10 15:44:59');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 15:45:02');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-10 16:02:57');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 16:03:00');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-10 18:11:44');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-10 18:11:53');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-11 09:54:15');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-12 13:16:48');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-12 13:29:22');
INSERT INTO `sys_logininfor` VALUES (299, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-12 13:29:34');
INSERT INTO `sys_logininfor` VALUES (300, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-12 13:29:39');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-12 14:58:30');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-12 18:34:17');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-12 20:05:52');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-12 21:31:35');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-13 15:57:51');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-13 15:57:53');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-13 15:57:56');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-13 15:57:59');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-13 18:09:58');
INSERT INTO `sys_logininfor` VALUES (310, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-13 18:10:05');
INSERT INTO `sys_logininfor` VALUES (311, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-13 18:10:17');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-13 18:10:22');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-13 18:11:01');
INSERT INTO `sys_logininfor` VALUES (314, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-13 18:11:08');
INSERT INTO `sys_logininfor` VALUES (315, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-13 18:11:22');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-13 18:11:29');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-13 18:11:51');
INSERT INTO `sys_logininfor` VALUES (318, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-13 18:11:58');
INSERT INTO `sys_logininfor` VALUES (319, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-13 18:12:18');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-13 18:12:21');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-13 18:31:44');
INSERT INTO `sys_logininfor` VALUES (322, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-13 18:31:50');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2023-03-14 11:07:36');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2023-03-14 11:09:20');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Downloading Tool', 'Unknown', '1', '验证码已失效', '2023-03-14 11:11:51');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 09:51:39');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 12:28:06');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 12:50:44');
INSERT INTO `sys_logininfor` VALUES (329, 'changsha', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-19 12:51:04');
INSERT INTO `sys_logininfor` VALUES (330, 'changsha', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-03-19 12:51:04');
INSERT INTO `sys_logininfor` VALUES (331, 'changsha', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 12:51:13');
INSERT INTO `sys_logininfor` VALUES (332, 'changsha', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 12:51:40');
INSERT INTO `sys_logininfor` VALUES (333, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 12:52:06');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:02:59');
INSERT INTO `sys_logininfor` VALUES (335, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:04:04');
INSERT INTO `sys_logininfor` VALUES (336, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:10:15');
INSERT INTO `sys_logininfor` VALUES (337, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:10:23');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:12:18');
INSERT INTO `sys_logininfor` VALUES (339, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:12:28');
INSERT INTO `sys_logininfor` VALUES (340, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:13:08');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:13:16');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:13:36');
INSERT INTO `sys_logininfor` VALUES (343, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:13:42');
INSERT INTO `sys_logininfor` VALUES (344, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:18:21');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:18:25');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:20:59');
INSERT INTO `sys_logininfor` VALUES (347, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:21:03');
INSERT INTO `sys_logininfor` VALUES (348, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:21:18');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:21:53');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:21:56');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:22:02');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:23:53');
INSERT INTO `sys_logininfor` VALUES (353, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:24:00');
INSERT INTO `sys_logininfor` VALUES (354, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:39:37');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:39:40');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:41:34');
INSERT INTO `sys_logininfor` VALUES (357, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:41:39');
INSERT INTO `sys_logininfor` VALUES (358, 'liyd2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:41:43');
INSERT INTO `sys_logininfor` VALUES (359, 'changsha', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:41:50');
INSERT INTO `sys_logininfor` VALUES (360, 'changsha', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 13:42:27');
INSERT INTO `sys_logininfor` VALUES (361, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 13:42:32');
INSERT INTO `sys_logininfor` VALUES (362, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 14:08:24');
INSERT INTO `sys_logininfor` VALUES (363, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 14:08:38');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 14:32:12');
INSERT INTO `sys_logininfor` VALUES (365, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 14:32:17');
INSERT INTO `sys_logininfor` VALUES (366, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 14:32:28');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 14:32:32');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 14:33:58');
INSERT INTO `sys_logininfor` VALUES (369, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 14:34:03');
INSERT INTO `sys_logininfor` VALUES (370, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 14:43:20');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 14:43:24');
INSERT INTO `sys_logininfor` VALUES (372, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 14:48:41');
INSERT INTO `sys_logininfor` VALUES (373, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 14:48:46');
INSERT INTO `sys_logininfor` VALUES (374, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 16:59:05');
INSERT INTO `sys_logininfor` VALUES (375, 'shenzhen', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 17:00:11');
INSERT INTO `sys_logininfor` VALUES (376, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 17:01:59');
INSERT INTO `sys_logininfor` VALUES (377, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-19 17:14:58');
INSERT INTO `sys_logininfor` VALUES (378, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-19 17:15:03');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1082 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-12-21 18:19:33', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-12-21 18:19:33', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-12-21 18:19:33', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-12-21 18:19:33', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (5, '控制台', 0, 0, 'dashboard', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'AppstoreOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (6, '个人', 0, 0, 'account', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'ProfileOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (11, '数据分析', 5, 0, 'analysis', NULL, NULL, 1, 0, 'C', '0', '0', NULL, '#', 'admin', '2022-12-21 18:19:33', '', NULL, '数据分析');
INSERT INTO `sys_menu` VALUES (12, '个人中心', 6, 0, 'center', NULL, NULL, 1, 0, 'C', '0', '0', NULL, '#', 'admin', '2022-12-21 18:19:33', '', NULL, '个人中心');
INSERT INTO `sys_menu` VALUES (13, '设置', 6, 0, 'settings', NULL, NULL, 1, 0, 'C', '0', '0', NULL, '#', 'admin', '2022-12-21 18:19:33', '', NULL, '设置');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'UserOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'ProfileOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'ApartmentOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'AppstoreAddOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'BookOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 8, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'ProfileOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 9, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'NotificationOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 10, 'log', '', '', 1, 0, 'M', '0', '0', '', 'BlockOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'LoginOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'ClockCircleOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'ConsoleSqlOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'DesktopOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'MonitorOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'MonitorOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/builder/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'BlockOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'PrinterOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'ApiOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (118, '字典数据', 1, 7, 'dictData', 'system/dictData/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'FolderAddOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '字典数据管理菜单');
INSERT INTO `sys_menu` VALUES (119, '班级管理', 1, 11, 'class', '', '', 1, 0, 'M', '0', '0', '', 'DropboxOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 15:59:31', '班级管理');
INSERT INTO `sys_menu` VALUES (120, '课程管理', 1, 12, 'subject', '', '', 1, 0, 'M', '0', '0', '', 'DatabaseOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 15:56:40', '');
INSERT INTO `sys_menu` VALUES (121, '课时', 120, 12, 'subjectInfo', '', '', 1, 0, 'M', '1', '0', '', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 15:55:36', '');
INSERT INTO `sys_menu` VALUES (122, '班级课程', 119, 11, 'classSubject', 'system/class/pages/classInfo/index', '', 1, 0, 'C', '1', '0', 'system:class_subject:list', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 16:00:02', '班级管理');
INSERT INTO `sys_menu` VALUES (123, '学生列表', 119, 13, 'classStudent', 'system/class/pages/student/index', '', 1, 0, 'C', '1', '0', 'system:class:list', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 16:02:46', '班级管理');
INSERT INTO `sys_menu` VALUES (124, '学生页面', 1, 13, 'student', 'system/student/index', '', 1, 0, 'C', '1', '0', 'system:student:list', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '学生页面');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'FileOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'HddOutlined', 'admin', '2022-12-21 18:19:33', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 117, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 117, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 117, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 117, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 117, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 117, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '班级课程-编辑', 122, 0, '#', NULL, NULL, 1, 0, 'F', '1', '0', 'system:class_subject:edit', '#', 'admin', '2023-03-10 09:56:32', 'admin', '2023-03-10 15:54:59', '');
INSERT INTO `sys_menu` VALUES (1062, '班级课程-删除', 122, 0, '#', NULL, NULL, 1, 0, 'F', '0', '0', 'system:class_subject:delete', '#', 'admin', '2023-03-10 09:57:42', 'admin', '2023-03-10 15:55:04', '');
INSERT INTO `sys_menu` VALUES (1063, '班级课程-添加', 122, 0, '#', NULL, NULL, 1, 0, 'F', '0', '0', 'system:class_subject:add', '#', 'admin', '2023-03-10 09:58:07', 'admin', '2023-03-10 15:55:09', '');
INSERT INTO `sys_menu` VALUES (1064, '课程列表', 120, 0, 'subjectlist', 'system/subject/index', NULL, 1, 0, 'C', '0', '0', 'system:subject:list', '#', 'admin', '2023-03-10 11:13:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1065, '班级列表', 119, 0, 'classList', 'system/class/index', NULL, 1, 0, 'C', '0', '0', 'system:class:list', '#', 'admin', '2023-03-10 15:59:16', 'admin', '2023-03-10 16:04:34', '');
INSERT INTO `sys_menu` VALUES (1066, '课时小节', 121, 5, 'subsection', 'system/subsection/index', NULL, 1, 0, 'M', '1', '0', 'system:subject_subsection:list', '#', 'admin', '2023-03-10 11:13:32', 'admin', '2023-03-13 18:14:42', '');
INSERT INTO `sys_menu` VALUES (1067, '添加课程', 120, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:subject:add', '#', 'admin', '2023-03-10 11:13:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '编辑课程', 120, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:subject:edit', '#', 'admin', '2023-03-10 11:13:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '删除课程', 120, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:subject:delete', '#', 'admin', '2023-03-10 11:13:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '课时小节列表', 1066, 0, 'subsection', 'system/subsection/index', NULL, 1, 0, 'C', '1', '0', 'system:subject_subsection:list', '#', 'admin', '2023-03-10 11:13:32', 'admin', '2023-03-13 18:14:42', '');
INSERT INTO `sys_menu` VALUES (1071, '添加课时小节', 1066, 1, '#', '', NULL, 1, 0, 'F', '1', '0', 'system:subject_subsection:add', '#', 'admin', '2023-03-10 11:13:32', 'admin', '2023-03-13 18:14:42', '');
INSERT INTO `sys_menu` VALUES (1072, '编辑课时小节', 1066, 2, '#', '', NULL, 1, 0, 'F', '1', '0', 'system:subject_subsection:edit', '#', 'admin', '2023-03-10 11:13:32', 'admin', '2023-03-13 18:14:42', '');
INSERT INTO `sys_menu` VALUES (1073, '删除课时小节', 1066, 3, '#', '', NULL, 1, 0, 'F', '1', '0', 'system:subject_subsection:delete', '#', 'admin', '2023-03-10 11:13:32', 'admin', '2023-03-13 18:14:42', '');
INSERT INTO `sys_menu` VALUES (1074, '课时列表', 121, 1, 'subjectInfo', 'system/subject/pages/subjectInfo/index', '', 1, 0, 'C', '1', '0', 'system:subject_info:list', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 15:55:36', '');
INSERT INTO `sys_menu` VALUES (1075, '添加课时', 121, 2, '#', '', '', 1, 0, 'F', '1', '0', 'system:subject_info:add', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 15:55:36', '');
INSERT INTO `sys_menu` VALUES (1076, '编辑课时', 121, 3, '#', '', '', 1, 0, 'F', '1', '0', 'system:subject_info:edit', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 15:55:36', '');
INSERT INTO `sys_menu` VALUES (1077, '删除课时', 121, 4, '#', '', '', 1, 0, 'F', '1', '0', 'system:subject_info:delete', 'MenuUnfoldOutlined', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-10 15:55:36', '');
INSERT INTO `sys_menu` VALUES (1078, '角色列表', 101, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:role:list', '#', 'admin', '2023-03-19 13:20:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1079, '岗位列表', 104, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:post:list', '#', 'admin', '2023-03-19 13:22:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1080, '部门列表', 103, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:dept:list', '#', 'admin', '2023-03-19 13:23:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1081, '用户列表', 100, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:user:list', '#', 'admin', '2023-03-19 13:23:21', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-12-21 18:19:34', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-12-21 18:19:34', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 220 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'ry', NULL, '/system/dept/100', '127.0.0.1', '内网IP', '{deptId=100}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2022-12-21 18:31:18');
INSERT INTO `sys_oper_log` VALUES (101, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'ry', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-12-21 18:31:23');
INSERT INTO `sys_oper_log` VALUES (102, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'ry', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"ry\",\"deptName\":\"123123\",\"orderNum\":6,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:31:49');
INSERT INTO `sys_oper_log` VALUES (103, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":200,\"nickName\":\"liyd\",\"params\":{},\"postIds\":[1],\"roleIds\":[2],\"sex\":\"0\",\"status\":\"0\",\"userId\":100,\"userName\":\"liyd\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:33:47');
INSERT INTO `sys_oper_log` VALUES (104, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'liyd', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"若依科技1\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"liyd\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:34:46');
INSERT INTO `sys_oper_log` VALUES (105, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'liyd', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[1016,1017,1018,1019],\"params\":{},\"roleKey\":\"common\",\"roleName\":\"111111\",\"roleSort\":\"3\",\"status\":\"0\"}', '{\"msg\":\"新增角色\'111111\'失败，角色权限已存在\",\"code\":500}', 0, NULL, '2022-12-21 18:54:52');
INSERT INTO `sys_oper_log` VALUES (106, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'liyd', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[1016,1017,1018,1019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"liyd\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-12-21 18:55:22');
INSERT INTO `sys_oper_log` VALUES (107, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[1016,1017,1018,1019,6,12,13,123,121,120,122,119],\"params\":{},\"remark\":\"教师\",\"roleId\":2,\"roleKey\":\"teacher\",\"roleName\":\"教师\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 09:56:45');
INSERT INTO `sys_oper_log` VALUES (108, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[6,119,122,120,121,123,12,13,1016,1017,1018,1019,1],\"params\":{},\"remark\":\"教师\",\"roleId\":2,\"roleKey\":\"teacher\",\"roleName\":\"教师\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 09:57:48');
INSERT INTO `sys_oper_log` VALUES (109, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[6,12,13,1,100,1000,1001,1002,1003,1006,119,120,122,123,121],\"params\":{},\"roleId\":4,\"roleKey\":\"schoolmaster\",\"roleName\":\"校长\",\"roleSort\":\"3\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 10:06:57');
INSERT INTO `sys_oper_log` VALUES (110, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":108,\"nickName\":\"长沙员工1\",\"params\":{},\"postIds\":[4],\"roleIds\":[2],\"userId\":109,\"userName\":\"changsha1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 10:09:56');
INSERT INTO `sys_oper_log` VALUES (111, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":102,\"nickName\":\"长沙校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[4],\"userId\":110,\"userName\":\"changsha\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 10:11:36');
INSERT INTO `sys_oper_log` VALUES (112, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[124],\"params\":{},\"remark\":\"学生\",\"roleId\":3,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 16:03:39');
INSERT INTO `sys_oper_log` VALUES (113, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[124,1],\"params\":{},\"remark\":\"学生\",\"roleId\":3,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 16:04:29');
INSERT INTO `sys_oper_log` VALUES (114, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[1,124,120,121],\"params\":{},\"remark\":\"学生\",\"roleId\":3,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 16:05:41');
INSERT INTO `sys_oper_log` VALUES (115, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[1,120,124,121,122],\"params\":{},\"remark\":\"学生\",\"roleId\":3,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 16:06:25');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/subject/pages/subjectInfo/index\",\"icon\":\"MenuUnfoldOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":121,\"menuName\":\"课程详情\",\"menuType\":\"C\",\"orderNum\":12,\"params\":{},\"parentId\":120,\"path\":\"subjectInfo\",\"perms\":\"system:subject:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 18:54:23');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/class/index\",\"icon\":\"DropboxOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":119,\"menuName\":\"班级管理\",\"menuType\":\"C\",\"orderNum\":11,\"params\":{},\"parentId\":1,\"path\":\"class\",\"perms\":\"system:class:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 19:06:37');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/subject/index\",\"icon\":\"DatabaseOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":120,\"menuName\":\"课程管理\",\"menuType\":\"C\",\"orderNum\":12,\"params\":{},\"parentId\":1,\"path\":\"subject\",\"perms\":\"system:subject:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-08 19:07:03');
INSERT INTO `sys_oper_log` VALUES (119, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[124],\"params\":{},\"remark\":\"学生\",\"roleId\":3,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-09 19:13:07');
INSERT INTO `sys_oper_log` VALUES (120, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[124,120,121],\"params\":{},\"remark\":\"学生\",\"roleId\":3,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-09 20:08:25');
INSERT INTO `sys_oper_log` VALUES (121, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":true,\"avatar\":\"\",\"deptId\":100,\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"postIds\":[1],\"remark\":\"管理员\",\"roleIds\":[1],\"sex\":\"1\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', NULL, 1, '不允许操作超级管理员用户', '2023-03-10 09:33:11');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/class/pages/classInfo/index\",\"icon\":\"MenuUnfoldOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":122,\"menuName\":\"班级课程\",\"menuType\":\"C\",\"orderNum\":11,\"params\":{},\"parentId\":1,\"path\":\"classSubject\",\"perms\":\"system:class_subject:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 09:54:09');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"班级课程-编辑\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"system/classSubject/edit\",\"perms\":\"system:class_subject:edit\",\"query\":\"\",\"status\":\"0\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 09:56:32');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"班级课程-编辑\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"classSubjectEdit\",\"perms\":\"system:class_subject:edit\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 09:56:50');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"班级课程-删除\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"classSubjectDelete\",\"perms\":\"system:class_subject:delete\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 09:57:42');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"班级课程-添加\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"classSubjectAdd\",\"perms\":\"system:class_subject:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 09:58:07');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"班级课程-编辑\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"#\",\"perms\":\"system:class_subject:edit\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 09:59:04');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1062,\"menuName\":\"班级课程-删除\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"#\",\"perms\":\"system:class_subject:delete\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 09:59:10');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1063,\"menuName\":\"班级课程-添加\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"#\",\"perms\":\"system:class_subject:add\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 09:59:14');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/subject/pages/subjectInfo/index\",\"icon\":\"MenuUnfoldOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":121,\"menuName\":\"课程详情\",\"menuType\":\"C\",\"orderNum\":12,\"params\":{},\"parentId\":120,\"path\":\"subjectInfo\",\"perms\":\"system:subject:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 10:00:12');
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/subject/index\",\"icon\":\"DatabaseOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":120,\"menuName\":\"课程管理\",\"menuType\":\"M\",\"orderNum\":12,\"params\":{},\"parentId\":1,\"path\":\"subject\",\"perms\":\"system:subject:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 10:54:31');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"课程列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":120,\"path\":\"1111\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 11:13:32');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"班级课程-编辑\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"#\",\"perms\":\"system:class_subject:edit\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 15:54:59');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1062,\"menuName\":\"班级课程-删除\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"#\",\"perms\":\"system:class_subject:delete\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 15:55:04');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1063,\"menuName\":\"班级课程-添加\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":122,\"path\":\"#\",\"perms\":\"system:class_subject:add\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 15:55:09');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/subject/pages/subjectInfo/index\",\"icon\":\"MenuUnfoldOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":121,\"menuName\":\"课程详情\",\"menuType\":\"C\",\"orderNum\":12,\"params\":{},\"parentId\":120,\"path\":\"subjectInfo\",\"perms\":\"system:subject:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 15:55:36');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"icon\":\"DatabaseOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":120,\"menuName\":\"课程管理\",\"menuType\":\"M\",\"orderNum\":12,\"params\":{},\"parentId\":1,\"path\":\"subject\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 15:56:40');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/class/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"班级列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":119,\"path\":\"classSubject\",\"perms\":\"system:class:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 15:59:16');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"icon\":\"DropboxOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":119,\"menuName\":\"班级管理\",\"menuType\":\"M\",\"orderNum\":11,\"params\":{},\"parentId\":1,\"path\":\"class\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 15:59:31');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/class/pages/classInfo/index\",\"icon\":\"MenuUnfoldOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":122,\"menuName\":\"班级课程\",\"menuType\":\"C\",\"orderNum\":11,\"params\":{},\"parentId\":119,\"path\":\"classSubject\",\"perms\":\"system:class_subject:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 16:00:02');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/class/pages/student/index\",\"icon\":\"MenuUnfoldOutlined\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":123,\"menuName\":\"学生列表\",\"menuType\":\"C\",\"orderNum\":13,\"params\":{},\"parentId\":119,\"path\":\"classStudent\",\"perms\":\"system:class:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 16:02:46');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/class/index\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1065,\"menuName\":\"班级列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":119,\"path\":\"classList\",\"perms\":\"system:class:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-10 16:04:34');
INSERT INTO `sys_oper_log` VALUES (143, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/03/10/blob_20230310181239A001.png\",\"code\":200}', 0, NULL, '2023-03-10 18:12:39');
INSERT INTO `sys_oper_log` VALUES (144, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/03/11/blob_20230311113628A001.png\",\"code\":200}', 0, NULL, '2023-03-11 11:36:28');
INSERT INTO `sys_oper_log` VALUES (145, '课程图标', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_image', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile//2023/03/11/blob_20230311114604A001.png\",\"code\":200}', 0, NULL, '2023-03-11 11:46:04');
INSERT INTO `sys_oper_log` VALUES (146, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/03/11/blob_20230311115009A002.png\",\"code\":200}', 0, NULL, '2023-03-11 11:50:09');
INSERT INTO `sys_oper_log` VALUES (147, '课程图标', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_image', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile//2023/03/11/blob_20230311115853A003.png\",\"code\":200}', 0, NULL, '2023-03-11 11:58:53');
INSERT INTO `sys_oper_log` VALUES (148, '课程图标', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_image', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/subject/2023/03/11/blob_20230311115945A001.png\",\"code\":200}', 0, NULL, '2023-03-11 11:59:45');
INSERT INTO `sys_oper_log` VALUES (149, '课程图标', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_image', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/subject/2023/03/11/blob_20230311120518A002.png\",\"code\":200}', 0, NULL, '2023-03-11 12:05:18');
INSERT INTO `sys_oper_log` VALUES (150, '课程图标', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_image', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/subject/2023/03/11/blob_20230311122117A001.png\",\"code\":200}', 0, NULL, '2023-03-11 12:21:17');
INSERT INTO `sys_oper_log` VALUES (151, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', NULL, 1, '文件[blob]后缀[]不正确，请上传[bmp, gif, jpg, jpeg, png, doc, docx, xls, xlsx, ppt, pptx, html, htm, txt, rar, zip, gz, bz2, mp4, avi, rmvb, pdf, sb3]格式', '2023-03-12 18:39:27');
INSERT INTO `sys_oper_log` VALUES (152, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', NULL, 1, '文件[blob]后缀[]不正确，请上传[bmp, gif, jpg, jpeg, png, doc, docx, xls, xlsx, ppt, pptx, html, htm, txt, rar, zip, gz, bz2, mp4, avi, rmvb, pdf, sb3]格式', '2023-03-12 18:42:43');
INSERT INTO `sys_oper_log` VALUES (153, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', NULL, 1, '文件[blob]后缀[]不正确，请上传[bmp, gif, jpg, jpeg, png, doc, docx, xls, xlsx, ppt, pptx, html, htm, txt, rar, zip, gz, bz2, mp4, avi, rmvb, pdf, sb3]格式', '2023-03-12 18:46:39');
INSERT INTO `sys_oper_log` VALUES (154, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', NULL, 1, '文件[blob]后缀[]不正确，请上传[bmp, gif, jpg, jpeg, png, doc, docx, xls, xlsx, ppt, pptx, html, htm, txt, rar, zip, gz, bz2, mp4, avi, rmvb, pdf, sb3]格式', '2023-03-12 20:06:10');
INSERT INTO `sys_oper_log` VALUES (155, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', NULL, 1, '文件[blob]后缀[]不正确，请上传[bmp, gif, jpg, jpeg, png, doc, docx, xls, xlsx, ppt, pptx, html, htm, txt, rar, zip, gz, bz2, mp4, avi, rmvb, pdf, sb3]格式', '2023-03-12 20:22:18');
INSERT INTO `sys_oper_log` VALUES (156, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/blob_20230312202419A001.video/mp4\"}', 0, NULL, '2023-03-12 20:24:23');
INSERT INTO `sys_oper_log` VALUES (157, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312202707A002.mp4\"}', 0, NULL, '2023-03-12 20:27:07');
INSERT INTO `sys_oper_log` VALUES (158, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"image\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/image/2023/03/12/img_eab958e20ed13dc68da6c8adbe26aefe_20230312213200A003.png\"}', 0, NULL, '2023-03-12 21:32:00');
INSERT INTO `sys_oper_log` VALUES (159, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312213629A004.mp4\"}', 0, NULL, '2023-03-12 21:36:29');
INSERT INTO `sys_oper_log` VALUES (160, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312213648A005.mp4\"}', 0, NULL, '2023-03-12 21:36:48');
INSERT INTO `sys_oper_log` VALUES (161, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312213709A006.mp4\"}', 0, NULL, '2023-03-12 21:37:09');
INSERT INTO `sys_oper_log` VALUES (162, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312214038A007.mp4\"}', 0, NULL, '2023-03-12 21:40:38');
INSERT INTO `sys_oper_log` VALUES (163, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312220630A008.mp4\"}', 0, NULL, '2023-03-12 22:06:30');
INSERT INTO `sys_oper_log` VALUES (164, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312221345A009.mp4\"}', 0, NULL, '2023-03-12 22:13:45');
INSERT INTO `sys_oper_log` VALUES (165, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312221514A010.mp4\"}', 0, NULL, '2023-03-12 22:15:14');
INSERT INTO `sys_oper_log` VALUES (166, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/12/VIDEO_20230208_110247991_20230312221532A011.mp4\"}', 0, NULL, '2023-03-12 22:15:32');
INSERT INTO `sys_oper_log` VALUES (167, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313155820A001.mp4\"}', 0, NULL, '2023-03-13 15:58:20');
INSERT INTO `sys_oper_log` VALUES (168, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313155950A002.mp4\"}', 0, NULL, '2023-03-13 15:59:50');
INSERT INTO `sys_oper_log` VALUES (169, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313160556A003.mp4\"}', 0, NULL, '2023-03-13 16:05:56');
INSERT INTO `sys_oper_log` VALUES (170, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313161359A004.mp4\"}', 0, NULL, '2023-03-13 16:13:59');
INSERT INTO `sys_oper_log` VALUES (171, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313161419A005.mp4\"}', 0, NULL, '2023-03-13 16:14:19');
INSERT INTO `sys_oper_log` VALUES (172, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313163840A006.mp4\"}', 0, NULL, '2023-03-13 16:38:40');
INSERT INTO `sys_oper_log` VALUES (173, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313165433A007.mp4\"}', 0, NULL, '2023-03-13 16:54:33');
INSERT INTO `sys_oper_log` VALUES (174, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313165628A008.mp4\"}', 0, NULL, '2023-03-13 16:56:28');
INSERT INTO `sys_oper_log` VALUES (175, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313165740A009.mp4\"}', 0, NULL, '2023-03-13 16:57:40');
INSERT INTO `sys_oper_log` VALUES (176, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313165747A010.mp4\"}', 0, NULL, '2023-03-13 16:57:47');
INSERT INTO `sys_oper_log` VALUES (177, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/VIDEO_20230208_110247991_20230313165832A011.mp4\"}', 0, NULL, '2023-03-13 16:58:32');
INSERT INTO `sys_oper_log` VALUES (178, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/b63d5abcddab2f0976054b78bbe9bfa4_20230313165908A012.mp4\"}', 0, NULL, '2023-03-13 16:59:08');
INSERT INTO `sys_oper_log` VALUES (179, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/906b8778518b02ac3ace91c425804433_20230313170756A001.mp4\"}', 0, NULL, '2023-03-13 17:07:56');
INSERT INTO `sys_oper_log` VALUES (180, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"sb3\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/sb3/2023/03/13/222_20230313170803A002.sb3\"}', 0, NULL, '2023-03-13 17:08:03');
INSERT INTO `sys_oper_log` VALUES (181, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/b63d5abcddab2f0976054b78bbe9bfa4_20230313170942A003.mp4\"}', 0, NULL, '2023-03-13 17:09:42');
INSERT INTO `sys_oper_log` VALUES (182, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"sb3\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/sb3/2023/03/13/222_20230313170946A004.sb3\"}', 0, NULL, '2023-03-13 17:09:46');
INSERT INTO `sys_oper_log` VALUES (183, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/b63d5abcddab2f0976054b78bbe9bfa4_20230313174647A001.mp4\"}', 0, NULL, '2023-03-13 17:46:47');
INSERT INTO `sys_oper_log` VALUES (184, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/906b8778518b02ac3ace91c425804433_20230313174804A002.mp4\"}', 0, NULL, '2023-03-13 17:48:04');
INSERT INTO `sys_oper_log` VALUES (185, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"video\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/video/2023/03/13/906b8778518b02ac3ace91c425804433_20230313174837A003.mp4\"}', 0, NULL, '2023-03-13 17:48:37');
INSERT INTO `sys_oper_log` VALUES (186, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"sb3\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/sb3/2023/03/13/第18课-钢琴演奏（下）_20230313174842A004.sb3\"}', 0, NULL, '2023-03-13 17:48:42');
INSERT INTO `sys_oper_log` VALUES (187, '课程相关上传', 2, 'com.ruoyi.web.controller.system.SysProfileController.shbjectImage()', 'POST', 1, 'admin', NULL, '/system/user/profile/subject_upload', '127.0.0.1', '内网IP', '\"image\"', '{\"msg\":\"操作成功\",\"code\":200,\"url\":\"/profile/subject/image/2023/03/13/微信截图_20230131115102_20230313175704A001.png\"}', 0, NULL, '2023-03-13 17:57:04');
INSERT INTO `sys_oper_log` VALUES (188, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[120,124,121,1064,1066],\"params\":{},\"remark\":\"学生\",\"roleId\":3,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-13 18:11:47');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/subsection/index\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1066,\"menuName\":\"课时小节\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":120,\"path\":\"subsection\",\"perms\":\"system:subject_subsection:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-13 18:14:42');
INSERT INTO `sys_oper_log` VALUES (190, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[120,124,1064,121,1066,1074,1070],\"params\":{},\"remark\":\"学生\",\"roleId\":3,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-13 18:31:42');
INSERT INTO `sys_oper_log` VALUES (191, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":5,\"roleKey\":\"userCreateLimit\",\"roleName\":\"账号创建数量限制\",\"roleSort\":\"5\",\"status\":\"0\"}', NULL, 1, '', '2023-03-19 10:43:52');
INSERT INTO `sys_oper_log` VALUES (192, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[4],\"params\":{},\"roleId\":6,\"roleKey\":\"userCreateLimit\",\"roleName\":\"账号创建数量限制\",\"roleSort\":\"5\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 10:47:03');
INSERT INTO `sys_oper_log` VALUES (193, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"creater_id\":1,\"deptId\":101,\"nickName\":\"深圳校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[4,5],\"student\":50,\"teacher\":5,\"userId\":111,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 12:53:07');
INSERT INTO `sys_oper_log` VALUES (194, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"creater_id\":1,\"deptId\":101,\"nickName\":\"深圳校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[4,5],\"student\":50,\"teacher\":5,\"userId\":112,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 12:56:15');
INSERT INTO `sys_oper_log` VALUES (195, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"creater_id\":1,\"deptId\":101,\"nickName\":\"深圳校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[4,5],\"student\":50,\"teacher\":5,\"userId\":113,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 12:58:39');
INSERT INTO `sys_oper_log` VALUES (196, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"creater_id\":1,\"deptId\":101,\"nickName\":\"深圳校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[4,5],\"student\":50,\"teacher\":5,\"userId\":114,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:01:12');
INSERT INTO `sys_oper_log` VALUES (197, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"creater_id\":1,\"deptId\":101,\"nickName\":\"深圳校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[4,5],\"student\":50,\"teacher\":5,\"userId\":115,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:02:53');
INSERT INTO `sys_oper_log` VALUES (198, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[6,1,100,119,120,12,13,1000,1001,1002,1003,1006,122,123,121,1016,1007,1020],\"params\":{},\"roleId\":4,\"roleKey\":\"schoolmaster\",\"roleName\":\"校长\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:12:12');
INSERT INTO `sys_oper_log` VALUES (199, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[6,1,100,119,120,12,13,1000,1001,1002,1003,1006,1007,1016,1020,122,123,121,101,104],\"params\":{},\"roleId\":4,\"roleKey\":\"schoolmaster\",\"roleName\":\"校长\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:13:34');
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"角色列表\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":101,\"perms\":\"system:role:list\",\"query\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:20:43');
INSERT INTO `sys_oper_log` VALUES (201, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[6,1,100,104,119,120,13,12,1000,1001,1002,1003,1006,1016,1020,122,123,121,1078],\"params\":{},\"roleId\":4,\"roleKey\":\"schoolmaster\",\"roleName\":\"校长\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:20:56');
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"岗位列表\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":104,\"perms\":\"system:post:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:22:38');
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"部门列表\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":103,\"perms\":\"system:dept:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:23:02');
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"用户列表\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":100,\"perms\":\"system:user:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:23:21');
INSERT INTO `sys_oper_log` VALUES (205, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[1,119,120,13,12,1000,1001,1002,1003,1006,1078,122,123,121,100,1079,1080],\"params\":{},\"roleId\":4,\"roleKey\":\"schoolmaster\",\"roleName\":\"校长\",\"roleSort\":\"2\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:23:51');
INSERT INTO `sys_oper_log` VALUES (206, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'shenzhen', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"shenzhen\",\"creater_id\":115,\"deptId\":101,\"nickName\":\"深圳学生\",\"params\":{},\"postIds\":[4],\"roleIds\":[3],\"student\":0,\"teacher\":0,\"userId\":116,\"userName\":\"shenzhen1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:24:41');
INSERT INTO `sys_oper_log` VALUES (207, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'shenzhen', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"shenzhen\",\"creater_id\":115,\"deptId\":101,\"nickName\":\"深圳学生2\",\"params\":{},\"postIds\":[1],\"roleIds\":[3],\"student\":0,\"teacher\":0,\"userId\":117,\"userName\":\"shenzhen2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:43:03');
INSERT INTO `sys_oper_log` VALUES (208, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'shenzhen', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"shenzhen\",\"creater_id\":115,\"deptId\":101,\"nickName\":\"深证学生3\",\"params\":{},\"postIds\":[1],\"roleIds\":[3],\"student\":0,\"teacher\":0,\"userId\":118,\"userName\":\"shenzhen3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:46:39');
INSERT INTO `sys_oper_log` VALUES (209, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'shenzhen', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"shenzhen\",\"creater_id\":115,\"deptId\":101,\"nickName\":\"12阿凡地方\",\"params\":{},\"postIds\":[1],\"roleIds\":[3],\"student\":0,\"teacher\":0,\"userId\":119,\"userName\":\"sdfsdf\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 13:51:21');
INSERT INTO `sys_oper_log` VALUES (210, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'shenzhen', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"shenzhen\",\"creater_id\":115,\"deptId\":101,\"nickName\":\"xxcsdf\",\"params\":{},\"postIds\":[1],\"roleIds\":[3],\"student\":0,\"teacher\":0,\"userName\":\"sdfdsgsd\"}', '{\"msg\":\"已达到创建账号上限！\",\"code\":500}', 0, NULL, '2023-03-19 13:53:37');
INSERT INTO `sys_oper_log` VALUES (211, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"creater_id\":1,\"deptId\":101,\"nickName\":\"深圳校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[2,3],\"student\":5,\"teacher\":1,\"userId\":120,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 14:32:05');
INSERT INTO `sys_oper_log` VALUES (212, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[120,124,1064,121,1074,1066,1070,1,100,1081,1000,1001,1002,1003,1006,1078,1080,1079],\"params\":{},\"remark\":\"校长\",\"roleId\":3,\"roleKey\":\"schoolmaster\",\"roleName\":\"校长\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 14:33:21');
INSERT INTO `sys_oper_log` VALUES (213, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[1,100,120,124,1081,1000,1001,1002,1003,1006,1078,1080,1079,1064,121,1074,1066,1070,119,1065,122,1061,1062,1063,123],\"params\":{},\"remark\":\"校长\",\"roleId\":3,\"roleKey\":\"schoolmaster\",\"roleName\":\"校长\",\"roleSort\":\"3\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 14:33:56');
INSERT INTO `sys_oper_log` VALUES (214, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":true,\"avatar\":\"/profile/avatar/2023/03/11/blob_20230311115009A002.png\",\"deptId\":0,\"email\":\"624494955@qq.com\",\"nickName\":\"超级管理员\",\"params\":{},\"phonenumber\":\"13434009910\",\"postIds\":[1],\"remark\":\"超级管理员\",\"roleIds\":[1],\"sex\":\"1\",\"status\":\"0\",\"student\":0,\"teacher\":0,\"userId\":1,\"userName\":\"admin\"}', NULL, 1, '不允许操作超级管理员用户', '2023-03-19 17:17:26');
INSERT INTO `sys_oper_log` VALUES (215, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"deptId\":101,\"email\":\"\",\"nickName\":\"深圳校长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[1],\"roleIds\":[2,3],\"sex\":\"0\",\"status\":\"0\",\"student\":0,\"teacher\":0,\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 17:17:34');
INSERT INTO `sys_oper_log` VALUES (216, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"creater_id\":1,\"deptId\":101,\"nickName\":\"深圳校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[2,3],\"student\":5,\"teacher\":1,\"userId\":121,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 17:40:10');
INSERT INTO `sys_oper_log` VALUES (217, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"creater_id\":1,\"deptId\":101,\"nickName\":\"深圳校长\",\"params\":{},\"postIds\":[1],\"roleIds\":[2,3],\"student\":5,\"teacher\":1,\"userId\":122,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 17:57:49');
INSERT INTO `sys_oper_log` VALUES (218, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"deptId\":101,\"email\":\"\",\"nickName\":\"深圳校长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[1],\"roleIds\":[2,3],\"sex\":\"0\",\"status\":\"0\",\"student\":5,\"teacher\":1,\"updateBy\":\"admin\",\"userId\":122,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 17:59:35');
INSERT INTO `sys_oper_log` VALUES (219, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"deptId\":101,\"email\":\"\",\"nickName\":\"深圳校长\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[1],\"roleIds\":[2,3],\"sex\":\"0\",\"status\":\"0\",\"student\":6,\"teacher\":1,\"updateBy\":\"admin\",\"userId\":122,\"userName\":\"shenzhen\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-03-19 18:11:56');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-12-21 18:19:33', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-12-21 18:19:33', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-12-21 18:19:33', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '账号创建数量限制', 'userCreateLimit', 2, '1', 0, 0, '0', '0', 'admin', '2023-03-19 10:47:03', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (3, '校长', 'schoolmaster', 3, '1', 0, 0, '0', '0', 'admin', '2023-03-08 10:06:57', 'admin', '2023-03-19 14:33:56', '校长');
INSERT INTO `sys_role` VALUES (4, '教师', 'teacher', 4, '2', 0, 0, '0', '0', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-08 09:57:48', '教师');
INSERT INTO `sys_role` VALUES (5, '学生', 'student', 5, '3', 0, 0, '0', '0', 'admin', '2022-12-21 18:19:33', 'admin', '2023-03-13 18:31:42', '学生');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 12);
INSERT INTO `sys_role_menu` VALUES (2, 13);
INSERT INTO `sys_role_menu` VALUES (2, 119);
INSERT INTO `sys_role_menu` VALUES (2, 120);
INSERT INTO `sys_role_menu` VALUES (2, 121);
INSERT INTO `sys_role_menu` VALUES (2, 122);
INSERT INTO `sys_role_menu` VALUES (2, 123);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 100);
INSERT INTO `sys_role_menu` VALUES (3, 119);
INSERT INTO `sys_role_menu` VALUES (3, 120);
INSERT INTO `sys_role_menu` VALUES (3, 121);
INSERT INTO `sys_role_menu` VALUES (3, 122);
INSERT INTO `sys_role_menu` VALUES (3, 123);
INSERT INTO `sys_role_menu` VALUES (3, 124);
INSERT INTO `sys_role_menu` VALUES (3, 1000);
INSERT INTO `sys_role_menu` VALUES (3, 1001);
INSERT INTO `sys_role_menu` VALUES (3, 1002);
INSERT INTO `sys_role_menu` VALUES (3, 1003);
INSERT INTO `sys_role_menu` VALUES (3, 1006);
INSERT INTO `sys_role_menu` VALUES (3, 1061);
INSERT INTO `sys_role_menu` VALUES (3, 1062);
INSERT INTO `sys_role_menu` VALUES (3, 1063);
INSERT INTO `sys_role_menu` VALUES (3, 1064);
INSERT INTO `sys_role_menu` VALUES (3, 1065);
INSERT INTO `sys_role_menu` VALUES (3, 1066);
INSERT INTO `sys_role_menu` VALUES (3, 1070);
INSERT INTO `sys_role_menu` VALUES (3, 1074);
INSERT INTO `sys_role_menu` VALUES (3, 1078);
INSERT INTO `sys_role_menu` VALUES (3, 1079);
INSERT INTO `sys_role_menu` VALUES (3, 1080);
INSERT INTO `sys_role_menu` VALUES (3, 1081);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 12);
INSERT INTO `sys_role_menu` VALUES (4, 13);
INSERT INTO `sys_role_menu` VALUES (4, 100);
INSERT INTO `sys_role_menu` VALUES (4, 119);
INSERT INTO `sys_role_menu` VALUES (4, 120);
INSERT INTO `sys_role_menu` VALUES (4, 121);
INSERT INTO `sys_role_menu` VALUES (4, 122);
INSERT INTO `sys_role_menu` VALUES (4, 123);
INSERT INTO `sys_role_menu` VALUES (4, 1000);
INSERT INTO `sys_role_menu` VALUES (4, 1001);
INSERT INTO `sys_role_menu` VALUES (4, 1002);
INSERT INTO `sys_role_menu` VALUES (4, 1003);
INSERT INTO `sys_role_menu` VALUES (4, 1006);
INSERT INTO `sys_role_menu` VALUES (4, 1078);
INSERT INTO `sys_role_menu` VALUES (4, 1079);
INSERT INTO `sys_role_menu` VALUES (4, 1080);
INSERT INTO `sys_role_menu` VALUES (6, 4);

-- ----------------------------
-- Table structure for sys_student_subject
-- ----------------------------
DROP TABLE IF EXISTS `sys_student_subject`;
CREATE TABLE `sys_student_subject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '关联用户id',
  `subject_info_id` int(11) NULL DEFAULT NULL COMMENT '关联课程小节id',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否完成进度',
  `role` int(2) NULL DEFAULT NULL COMMENT '是否拥有课程权限',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '关联班级id',
  `subject_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_student_subject
-- ----------------------------

-- ----------------------------
-- Table structure for sys_subject
-- ----------------------------
DROP TABLE IF EXISTS `sys_subject`;
CREATE TABLE `sys_subject`  (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_type_id` int(4) NULL DEFAULT NULL COMMENT '课程类别',
  `subject_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `subject_context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程详情',
  `class_time` int(2) NULL DEFAULT NULL COMMENT '总课时',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`subject_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_subject
-- ----------------------------
INSERT INTO `sys_subject` VALUES (1, 1, 'Scratch Level1', '精彩有趣的故事情节，浅显易懂的知识点讲解，从零开始接触Scratch3.0图形化编程，学习创作游戏、动画、美术、音乐等作品。', 12, '1', 'https://api.b2b.codepku.com/img/course/scratch.png');
INSERT INTO `sys_subject` VALUES (2, 1, 'Scratch Level2', '精彩有趣的故事情节，浅显易懂的知识点讲解，从零开始接触Scratch3.0图形化编程，学习创作游戏、动画、美术、音乐等作品。', 12, '1', 'https://api.b2b.codepku.com/img/course/scratch.png');
INSERT INTO `sys_subject` VALUES (3, 1, 'Scratch Level3', '精彩有趣的故事情节，浅显易懂的知识点讲解，从零开始接触Scratch3.0图形化编程，学习创作游戏、动画、美术、音乐等作品。', 12, '1', 'https://api.b2b.codepku.com/img/course/scratch.png');
INSERT INTO `sys_subject` VALUES (4, 1, 'Scratch Level4', '精彩有趣的故事情节，浅显易懂的知识点讲解，从零开始接触Scratch3.0图形化编程，学习创作游戏、动画、美术、音乐等作品。', 12, '1', 'https://api.b2b.codepku.com/img/course/scratch.png');
INSERT INTO `sys_subject` VALUES (5, 1, '测试1111', '大苏打撒旦撒旦', 1111, '1', '/profile/subject/2023/03/11/blob_20230311122117A001.png');
INSERT INTO `sys_subject` VALUES (6, NULL, NULL, NULL, 0, '1', NULL);
INSERT INTO `sys_subject` VALUES (7, NULL, NULL, NULL, 0, '1', NULL);
INSERT INTO `sys_subject` VALUES (8, 1, '测试11111231', '1231231', 43, '1', '/profile/subject/image/2023/03/12/img_eab958e20ed13dc68da6c8adbe26aefe_20230312213200A003.png');
INSERT INTO `sys_subject` VALUES (9, 1, '测试1111123123214123432423', '大苏打撒旦撒旦', 12, '1', '/profile/subject/image/2023/03/13/微信截图_20230131115102_20230313175704A001.png');

-- ----------------------------
-- Table structure for sys_subject_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_subject_info`;
CREATE TABLE `sys_subject_info`  (
  `subject_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NULL DEFAULT NULL COMMENT '关联课程类型',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `knowledge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识点',
  `update_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新说明',
  `knowledge_num` int(11) NULL DEFAULT NULL COMMENT '小节数量',
  `planned_time` int(11) NULL DEFAULT NULL COMMENT '计划用时',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`subject_info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_subject_info
-- ----------------------------
INSERT INTO `sys_subject_info` VALUES (1, 1, '邀请函', '在这节课中我们将介绍scratch的基本知识以及教大家制作scratch的节日邀请函。', '1.scratch界面\r\n2.文本输入\r\n3.常用操作\r\n4.设置背景和角色\r\n5.保存与发布作品', NULL, 4, 60, '1');
INSERT INTO `sys_subject_info` VALUES (2, 1, '化装舞会', '在这节课中我们将会制作一个换装游戏，这样，周周可以挑选自己喜欢的衣服和套装了。', '1、传递分类思想\r\n2、了解图层知识\r\n3、学习利用键盘上的按键作为程序运行的启动条件\r\n4、利用造型切换实现角色换装的效果', '1212', NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (3, 1, '魔术表演', '这节课我们将帮助周周重现魔术表演的全过程，就像拍纪录片一样。', '1、学习创作“故事性”作品，如何利用scratch制作一个简单动画\r\n2、灵活使用广播，学会使用“广播”指令方块时，如何“快速检查”\r\n3、并理解重复执行以及重复执行几次的区别', '1212', NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (4, 1, '曼陀罗花', '在这节课中我们将会教大家用一片花瓣制作整朵曼陀罗花。', '221', '1212', NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (5, 1, '快乐花园', '1111', '221', '1212', NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (6, 1, '镜像绘画', '1111', '221', '1212', NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (7, 1, '贪吃蛇', '1111', '221', '1212', NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (8, 1, '跳舞达人', '1111', '221', '1212', NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (9, 1, '钢琴演奏', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (10, 1, '节奏大师', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (11, 1, '卢浮宫之旅', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (12, 1, '伊莎贝拉', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (13, 3, '危机再现', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `sys_subject_info` VALUES (14, 2, 'liyede11111111122222222222222', 'hjkhjkdfdgdfgdfg', 'jkhkjh4354444444444444444444', NULL, 0, 0, '1');
INSERT INTO `sys_subject_info` VALUES (15, 2, 'liyede', 'hjkhjk', 'jkhkjh', NULL, 0, 0, '1');
INSERT INTO `sys_subject_info` VALUES (16, 2, '121212', '121212', '121212', NULL, 0, 0, '1');

-- ----------------------------
-- Table structure for sys_subject_subsection
-- ----------------------------
DROP TABLE IF EXISTS `sys_subject_subsection`;
CREATE TABLE `sys_subject_subsection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_info_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_subject_subsection
-- ----------------------------
INSERT INTO `sys_subject_subsection` VALUES (1, 1, '第一节 什么事C++12222', '/profile/subject/video/2023/03/13/906b8778518b02ac3ace91c425804433_20230313174804A002.mp4', 'http://www.bwgvpn.top/333.sb3', '1');
INSERT INTO `sys_subject_subsection` VALUES (2, 1, '第一节 什么事', 'https://scratchcdn.codepku.com/uploads/lessons/NewLessons/scratch/level1/1-1scr.mp4', 'http://www.bwgvpn.top/333.sb3', '1');
INSERT INTO `sys_subject_subsection` VALUES (3, 1, '33333', '/profile/subject/video/2023/03/13/906b8778518b02ac3ace91c425804433_20230313174837A003.mp4', '/profile/subject/sb3/2023/03/13/第18课-钢琴演奏（下）_20230313174842A004.sb3', '1');

-- ----------------------------
-- Table structure for sys_subject_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_subject_type`;
CREATE TABLE `sys_subject_type`  (
  `subject_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程类别名字',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (`subject_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_subject_type
-- ----------------------------
INSERT INTO `sys_subject_type` VALUES (1, 'Scratch', '1');
INSERT INTO `sys_subject_type` VALUES (2, 'python', '1');
INSERT INTO `sys_subject_type` VALUES (3, 'java', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `creater_id` bigint(20) NULL DEFAULT NULL COMMENT '创建者ID',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 0, 'admin', '超级管理员', '00', '624494955@qq.com', '13434009910', '1', '/profile/avatar/2023/03/11/blob_20230311115009A002.png', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-03-19 17:15:04', 'admin', '2022-12-21 18:19:33', '', '2023-03-19 17:15:03', '超级管理员', 1);
INSERT INTO `sys_user` VALUES (122, 101, 'shenzhen', '深圳校长', '00', '', '', '0', '', '$2a$10$nxav5TlKhXwm05g/hUqqmuqqH01ORTPnDUZ72n.hTJJugX4BtFgqu', '0', '0', '', NULL, 'admin', '2023-03-19 17:57:49', 'admin', '2023-03-19 18:11:56', NULL, 1);

-- ----------------------------
-- Table structure for sys_user_create
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_create`;
CREATE TABLE `sys_user_create`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可创建的教师账号数量',
  `student` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可创建的学生账号数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_create
-- ----------------------------
INSERT INTO `sys_user_create` VALUES (4, 122, '1', '6');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (120, 1);
INSERT INTO `sys_user_post` VALUES (121, 1);
INSERT INTO `sys_user_post` VALUES (122, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (120, 2);
INSERT INTO `sys_user_role` VALUES (120, 3);
INSERT INTO `sys_user_role` VALUES (121, 2);
INSERT INTO `sys_user_role` VALUES (121, 3);
INSERT INTO `sys_user_role` VALUES (122, 2);
INSERT INTO `sys_user_role` VALUES (122, 3);

-- ----------------------------
-- Table structure for t_vote
-- ----------------------------
DROP TABLE IF EXISTS `t_vote`;
CREATE TABLE `t_vote`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_vote
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
