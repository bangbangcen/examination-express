/*
 Navicat Premium Data Transfer

 Source Server         : opengauss
 Source Server Type    : PostgreSQL
 Source Server Version : 90204
 Source Host           : localhost:5432
 Source Catalog        : examination
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90204
 File Encoding         : 65001

 Date: 21/04/2023 22:25:41
*/


-- ----------------------------
-- Sequence structure for admin_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."admin_id_seq";
CREATE SEQUENCE "public"."admin_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for assignment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."assignment_id_seq";
CREATE SEQUENCE "public"."assignment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."category_id_seq";
CREATE SEQUENCE "public"."category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for department_doctor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."department_doctor_id_seq";
CREATE SEQUENCE "public"."department_doctor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for department_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."department_id_seq";
CREATE SEQUENCE "public"."department_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for district_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."district_id_seq";
CREATE SEQUENCE "public"."district_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for examination_center_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."examination_center_id_seq";
CREATE SEQUENCE "public"."examination_center_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for examination_order_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."examination_order_id_seq";
CREATE SEQUENCE "public"."examination_order_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for examination_result_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."examination_result_id_seq";
CREATE SEQUENCE "public"."examination_result_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for examinee_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."examinee_id_seq";
CREATE SEQUENCE "public"."examinee_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for group_information_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."group_information_id_seq";
CREATE SEQUENCE "public"."group_information_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for item_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."item_id_seq";
CREATE SEQUENCE "public"."item_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for item_option_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."item_option_id_seq";
CREATE SEQUENCE "public"."item_option_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for normal_range_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."normal_range_id_seq";
CREATE SEQUENCE "public"."normal_range_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for package_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."package_category_id_seq";
CREATE SEQUENCE "public"."package_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for package_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."package_id_seq";
CREATE SEQUENCE "public"."package_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for permit_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permit_id_seq";
CREATE SEQUENCE "public"."permit_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for queue_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."queue_id_seq";
CREATE SEQUENCE "public"."queue_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for relationship_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."relationship_id_seq";
CREATE SEQUENCE "public"."relationship_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for result_text_option_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."result_text_option_id_seq";
CREATE SEQUENCE "public"."result_text_option_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."role_id_seq";
CREATE SEQUENCE "public"."role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for role_permit_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."role_permit_id_seq";
CREATE SEQUENCE "public"."role_permit_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_id_seq";
CREATE SEQUENCE "public"."user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_id_seq1";
CREATE SEQUENCE "public"."user_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS "public"."admin";
CREATE TABLE "public"."admin" (
  "id" int4 NOT NULL DEFAULT nextval('admin_id_seq'::regclass),
  "name" char(32) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" char(11) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "role_id" int4 NOT NULL,
  "create_time" timestamp(0) NOT NULL
)
;
COMMENT ON COLUMN "public"."admin"."name" IS '姓名';
COMMENT ON COLUMN "public"."admin"."phone" IS '手机号（用作账号）';
COMMENT ON COLUMN "public"."admin"."password" IS '密码';
COMMENT ON COLUMN "public"."admin"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."admin"."create_time" IS '创建时间';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO "public"."admin" VALUES (3, '李佳晨                       ', '13928483978', '123456', 1, '2023-01-02 18:12:30');
INSERT INTO "public"."admin" VALUES (4, '赵云贵                       ', '13749828594', '135246', 1, '2023-04-10 12:31:44');
INSERT INTO "public"."admin" VALUES (5, '王丽                          ', '17849820543', '123123', 1, '2023-03-31 13:48:34');
INSERT INTO "public"."admin" VALUES (6, '孙思蕊                       ', '16738749385', '142536', 1, '2023-04-07 15:04:41');
INSERT INTO "public"."admin" VALUES (7, '王富贵                       ', '17839842654', '346456', 1, '2023-04-21 15:05:02');
INSERT INTO "public"."admin" VALUES (16, '王绥                          ', '17836728473', '135246', 1, '2023-04-10 19:07:41');
INSERT INTO "public"."admin" VALUES (58, '王德法                       ', '17839826473', '135267', 1, '2023-04-10 19:32:19');
INSERT INTO "public"."admin" VALUES (59, '武广                          ', '17842626473', '135267', 1, '2023-04-10 19:33:29');
INSERT INTO "public"."admin" VALUES (60, '崔荟                          ', '17839824325', '111111', 1, '2023-04-11 01:35:05');
INSERT INTO "public"."admin" VALUES (61, '李存                          ', '17839827384', '123123', 1, '2023-04-11 01:35:44');
INSERT INTO "public"."admin" VALUES (62, '吴语                          ', '17893827342', '123123', 1, '2023-04-11 01:46:32');
INSERT INTO "public"."admin" VALUES (64, '医生一                       ', '16728736455', '111111', 1, '2023-04-11 02:28:40');
INSERT INTO "public"."admin" VALUES (66, '河汉清                       ', '16738728394', '123123', 19, '2023-04-11 02:45:43');
INSERT INTO "public"."admin" VALUES (67, '王主任                       ', '16738723412', '123123', 20, '2023-04-11 02:54:20');
INSERT INTO "public"."admin" VALUES (68, '王波                          ', '17839827394', '111111', 21, '2023-04-11 09:53:18');
INSERT INTO "public"."admin" VALUES (69, '伍慕庭                       ', '13472413472', '123456', 1, '2023-04-11 19:16:21');
INSERT INTO "public"."admin" VALUES (72, '心血管内科一号机        ', '11111111111', '123456', 22, '2023-04-19 11:15:59');
INSERT INTO "public"."admin" VALUES (73, '血液内科一号机           ', '11111111111', '123456', 24, '2023-04-21 18:10:05');

-- ----------------------------
-- Table structure for assignment
-- ----------------------------
DROP TABLE IF EXISTS "public"."assignment";
CREATE TABLE "public"."assignment" (
  "id" int4 NOT NULL DEFAULT nextval('assignment_id_seq'::regclass),
  "category_id" int4 NOT NULL,
  "order_id" int4 NOT NULL,
  "doctor_id" int4,
  "status" int2 NOT NULL,
  "is_extra" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."assignment"."category_id" IS '项目分类id';
COMMENT ON COLUMN "public"."assignment"."order_id" IS '订单id';
COMMENT ON COLUMN "public"."assignment"."doctor_id" IS '医生id';
COMMENT ON COLUMN "public"."assignment"."status" IS '0-待检查 1-已完成';
COMMENT ON COLUMN "public"."assignment"."is_extra" IS '是否为增检项目';

-- ----------------------------
-- Records of assignment
-- ----------------------------
INSERT INTO "public"."assignment" VALUES (17, 3, 1, NULL, 0, 'f');
INSERT INTO "public"."assignment" VALUES (18, 2, 1, NULL, 0, 'f');
INSERT INTO "public"."assignment" VALUES (23, 12, 1, NULL, 0, 't');
INSERT INTO "public"."assignment" VALUES (19, 9, 1, NULL, 0, 'f');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS "public"."category";
CREATE TABLE "public"."category" (
  "id" int4 NOT NULL DEFAULT nextval('category_id_seq'::regclass),
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "package_id" int4 NOT NULL,
  "average_duration" float4,
  "price" int2,
  "department_id" int2 NOT NULL
)
;
COMMENT ON COLUMN "public"."category"."name" IS '项目分类名称';
COMMENT ON COLUMN "public"."category"."package_id" IS '套餐id';
COMMENT ON COLUMN "public"."category"."average_duration" IS '该大项目平均检查时间';
COMMENT ON COLUMN "public"."category"."price" IS '该大项目的价格';
COMMENT ON COLUMN "public"."category"."department_id" IS '科室id';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO "public"."category" VALUES (3, '外科检查', 1, 90, NULL, 19);
INSERT INTO "public"."category" VALUES (5, '耳鼻喉检查', 1, 120, NULL, 17);
INSERT INTO "public"."category" VALUES (6, '肝胆脾胰彩超', 1, 180, NULL, 24);
INSERT INTO "public"."category" VALUES (8, '甲状腺超声', 1, 30, NULL, 24);
INSERT INTO "public"."category" VALUES (10, '尿常规', 1, 0, NULL, 21);
INSERT INTO "public"."category" VALUES (13, '空腹血糖', 1, 0, NULL, 14);
INSERT INTO "public"."category" VALUES (14, '肿瘤12项', 1, 0, NULL, 14);
INSERT INTO "public"."category" VALUES (12, '糖化血红蛋白', 1, 0, NULL, 14);
INSERT INTO "public"."category" VALUES (9, '血常规', 1, 240, NULL, 14);
INSERT INTO "public"."category" VALUES (7, '眼科检查', 1, 180, NULL, 16);
INSERT INTO "public"."category" VALUES (2, '内科检查', 1, 90, NULL, 10);
INSERT INTO "public"."category" VALUES (4, '心电图', 1, 90, NULL, 9);
INSERT INTO "public"."category" VALUES (0, '多喝热水', 1, 0, NULL, 1);
INSERT INTO "public"."category" VALUES (11, '肾功能', 1, 0, NULL, 14);
INSERT INTO "public"."category" VALUES (1, '一般检查', 1, 9, NULL, 25);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS "public"."department";
CREATE TABLE "public"."department" (
  "id" int4 NOT NULL DEFAULT nextval('department_id_seq'::regclass),
  "name" char(10) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int4 NOT NULL,
  "level" int2 NOT NULL,
  "is_full" bool,
  "queue_length" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."department"."name" IS '科室名称';
COMMENT ON COLUMN "public"."department"."parent_id" IS '父级科室id';
COMMENT ON COLUMN "public"."department"."level" IS '科室等级';
COMMENT ON COLUMN "public"."department"."is_full" IS '是否已满';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO "public"."department" VALUES (1, '医院    ', 0, 0, NULL, 0);
INSERT INTO "public"."department" VALUES (2, '内科学 ', 1, 1, NULL, 0);
INSERT INTO "public"."department" VALUES (3, '外科学 ', 1, 1, NULL, 0);
INSERT INTO "public"."department" VALUES (4, '医学影像学', 1, 1, NULL, 0);
INSERT INTO "public"."department" VALUES (5, '其它科室', 1, 1, NULL, 0);
INSERT INTO "public"."department" VALUES (6, '呼吸内科', 2, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (7, '消化内科', 2, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (8, '儿科    ', 2, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (9, '心血管内科', 2, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (11, '内分泌科', 2, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (13, '肾脏内科', 2, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (15, '口腔科 ', 3, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (17, '耳鼻喉科', 3, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (18, '妇科    ', 3, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (19, '普外科 ', 3, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (20, '骨科    ', 3, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (21, '泌尿外科', 3, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (22, '乳腺外科', 3, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (23, '放射科 ', 4, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (24, '超声科 ', 4, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (25, '体检科 ', 5, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (16, '眼科        ', 3, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (14, '血液内科', 2, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (12, '肿瘤科 ', 2, 2, NULL, 0);
INSERT INTO "public"."department" VALUES (10, '神经内科', 2, 2, NULL, 0);

-- ----------------------------
-- Table structure for department_doctor
-- ----------------------------
DROP TABLE IF EXISTS "public"."department_doctor";
CREATE TABLE "public"."department_doctor" (
  "id" int4 NOT NULL DEFAULT nextval('department_doctor_id_seq'::regclass),
  "department_id" int4 NOT NULL,
  "administer_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."department_doctor"."department_id" IS '科室id';
COMMENT ON COLUMN "public"."department_doctor"."administer_id" IS '医生的用户id';

-- ----------------------------
-- Records of department_doctor
-- ----------------------------
INSERT INTO "public"."department_doctor" VALUES (1, 6, 64);

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS "public"."district";
CREATE TABLE "public"."district" (
  "id" int4 NOT NULL DEFAULT nextval('district_id_seq'::regclass),
  "name" char(8) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."district"."name" IS '区县名称';

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO "public"."district" VALUES (1, '黄浦区');
INSERT INTO "public"."district" VALUES (2, '徐汇区');
INSERT INTO "public"."district" VALUES (3, '长宁区');
INSERT INTO "public"."district" VALUES (4, '静安区');
INSERT INTO "public"."district" VALUES (5, '普陀区');
INSERT INTO "public"."district" VALUES (6, '虹口区');
INSERT INTO "public"."district" VALUES (7, '杨浦区');
INSERT INTO "public"."district" VALUES (8, '闵行区');
INSERT INTO "public"."district" VALUES (9, '宝山区');
INSERT INTO "public"."district" VALUES (10, '嘉定区');
INSERT INTO "public"."district" VALUES (11, '浦东新区');
INSERT INTO "public"."district" VALUES (12, '金山区');
INSERT INTO "public"."district" VALUES (13, '松江区');
INSERT INTO "public"."district" VALUES (14, '青浦区');
INSERT INTO "public"."district" VALUES (15, '奉贤区');
INSERT INTO "public"."district" VALUES (16, '崇明区');

-- ----------------------------
-- Table structure for doctor_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."doctor_status";
CREATE TABLE "public"."doctor_status" (
  "id" int4 NOT NULL,
  "doctor_id" int4 NOT NULL,
  "is_busy" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."doctor_status"."doctor_id" IS '等同于admin_id';
COMMENT ON COLUMN "public"."doctor_status"."is_busy" IS '是否忙碌（正在检查）';

-- ----------------------------
-- Records of doctor_status
-- ----------------------------
INSERT INTO "public"."doctor_status" VALUES (1, 64, 't');

-- ----------------------------
-- Table structure for examination_center
-- ----------------------------
DROP TABLE IF EXISTS "public"."examination_center";
CREATE TABLE "public"."examination_center" (
  "id" int4 NOT NULL DEFAULT nextval('examination_center_id_seq'::regclass),
  "name" varchar(26) COLLATE "pg_catalog"."default" NOT NULL,
  "address" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "nearby" varchar(50) COLLATE "pg_catalog"."default",
  "telephone" char(13) COLLATE "pg_catalog"."default" NOT NULL,
  "announcement" varchar(70) COLLATE "pg_catalog"."default",
  "latitude" float4 NOT NULL,
  "longitude" float4 NOT NULL,
  "morning_limit" int2,
  "afternoon_limit" int2,
  "district_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."examination_center"."name" IS '体检机构名称';
COMMENT ON COLUMN "public"."examination_center"."address" IS '地址';
COMMENT ON COLUMN "public"."examination_center"."nearby" IS '最近的交通站点';
COMMENT ON COLUMN "public"."examination_center"."telephone" IS '联系电话';
COMMENT ON COLUMN "public"."examination_center"."announcement" IS '公告';
COMMENT ON COLUMN "public"."examination_center"."latitude" IS '经度';
COMMENT ON COLUMN "public"."examination_center"."longitude" IS '维度';
COMMENT ON COLUMN "public"."examination_center"."morning_limit" IS '上午体检人数限制';
COMMENT ON COLUMN "public"."examination_center"."afternoon_limit" IS '下午体检人数限制';
COMMENT ON COLUMN "public"."examination_center"."district_id" IS '区县id';

-- ----------------------------
-- Records of examination_center
-- ----------------------------
INSERT INTO "public"."examination_center" VALUES (1, '上海第一体检中心', '南京路23号', '地铁11号线', '62543212     ', '周一暂停营业', 121, 123, 24, 13, 1);

-- ----------------------------
-- Table structure for examination_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."examination_order";
CREATE TABLE "public"."examination_order" (
  "id" int4 NOT NULL DEFAULT nextval('examination_order_id_seq'::regclass),
  "examinee_id" int4 NOT NULL,
  "package_id" int4 NOT NULL,
  "status" int2 NOT NULL,
  "type" int2 NOT NULL,
  "examine_date" date NOT NULL,
  "period" int2 NOT NULL,
  "group_information_id" int4,
  "center_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."examination_order"."examinee_id" IS '体检人id';
COMMENT ON COLUMN "public"."examination_order"."package_id" IS '套餐id';
COMMENT ON COLUMN "public"."examination_order"."status" IS '0-未体检 1-体检中 2-已完成';
COMMENT ON COLUMN "public"."examination_order"."type" IS '0-团检 1-个人体检';
COMMENT ON COLUMN "public"."examination_order"."examine_date" IS '预约日期';
COMMENT ON COLUMN "public"."examination_order"."period" IS '0-上午 1-下午';
COMMENT ON COLUMN "public"."examination_order"."group_information_id" IS '关联团检信息表id';
COMMENT ON COLUMN "public"."examination_order"."center_id" IS '所选体检中心id';

-- ----------------------------
-- Records of examination_order
-- ----------------------------
INSERT INTO "public"."examination_order" VALUES (1, 1, 3, 1, 1, '2023-04-14', 0, 0, 1);

-- ----------------------------
-- Table structure for examination_result
-- ----------------------------
DROP TABLE IF EXISTS "public"."examination_result";
CREATE TABLE "public"."examination_result" (
  "id" int4 NOT NULL DEFAULT nextval('examination_result_id_seq'::regclass),
  "result_value" float4,
  "text_option_id" int4,
  "assignment_id" int4 NOT NULL,
  "item_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."examination_result"."result_value" IS '数值型结果';
COMMENT ON COLUMN "public"."examination_result"."text_option_id" IS '文本型结果';
COMMENT ON COLUMN "public"."examination_result"."assignment_id" IS '委托id';
COMMENT ON COLUMN "public"."examination_result"."item_id" IS '体检项目id';

-- ----------------------------
-- Records of examination_result
-- ----------------------------

-- ----------------------------
-- Table structure for examinee
-- ----------------------------
DROP TABLE IF EXISTS "public"."examinee";
CREATE TABLE "public"."examinee" (
  "id" int4 NOT NULL DEFAULT nextval('examinee_id_seq'::regclass),
  "name" char(4) COLLATE "pg_catalog"."default" NOT NULL,
  "identification_number" char(18) COLLATE "pg_catalog"."default" NOT NULL,
  "sex" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "birthday" date NOT NULL,
  "phone" char(11) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(0) NOT NULL,
  "user_id" int4 NOT NULL,
  "relationship_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."examinee"."name" IS '体检人姓名';
COMMENT ON COLUMN "public"."examinee"."identification_number" IS '身份证号';
COMMENT ON COLUMN "public"."examinee"."sex" IS '性别';
COMMENT ON COLUMN "public"."examinee"."birthday" IS '出生日期';
COMMENT ON COLUMN "public"."examinee"."phone" IS '手机号码';
COMMENT ON COLUMN "public"."examinee"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."examinee"."user_id" IS '所在账户的用户id';
COMMENT ON COLUMN "public"."examinee"."relationship_id" IS '关系id';

-- ----------------------------
-- Records of examinee
-- ----------------------------
INSERT INTO "public"."examinee" VALUES (1, '张雨绮', '230293847123112312', '女', '2011-02-11', '18937829582', '2023-04-12 19:35:28', 11, 1);

-- ----------------------------
-- Table structure for group_information
-- ----------------------------
DROP TABLE IF EXISTS "public"."group_information";
CREATE TABLE "public"."group_information" (
  "id" int4 NOT NULL DEFAULT nextval('group_information_id_seq'::regclass),
  "company_name" varchar(26) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(6) NOT NULL,
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "number" int2 NOT NULL
)
;
COMMENT ON COLUMN "public"."group_information"."company_name" IS '公司名称';
COMMENT ON COLUMN "public"."group_information"."create_time" IS '订单创建时间';
COMMENT ON COLUMN "public"."group_information"."start_time" IS '团检开始时间';
COMMENT ON COLUMN "public"."group_information"."end_time" IS '团检结束时间';
COMMENT ON COLUMN "public"."group_information"."number" IS '团检人数';

-- ----------------------------
-- Records of group_information
-- ----------------------------
INSERT INTO "public"."group_information" VALUES (0, '无', '2023-04-12 20:28:30', '2023-04-12 20:28:32', '2023-04-12 20:28:34', 0);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS "public"."item";
CREATE TABLE "public"."item" (
  "id" int4 NOT NULL DEFAULT nextval('item_id_seq'::regclass),
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "unit" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "normal_range_id" int4,
  "normal_option_id" int4,
  "average_duration" float4 NOT NULL,
  "value_type" int2 NOT NULL,
  "category_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."item"."name" IS '项目名称';
COMMENT ON COLUMN "public"."item"."unit" IS '单位';
COMMENT ON COLUMN "public"."item"."normal_range_id" IS '正常结果范围id';
COMMENT ON COLUMN "public"."item"."normal_option_id" IS '正常结果文本值id';
COMMENT ON COLUMN "public"."item"."average_duration" IS '平均进行时长（分钟）';
COMMENT ON COLUMN "public"."item"."value_type" IS '0-数值型 1-文字型';
COMMENT ON COLUMN "public"."item"."category_id" IS '项目分类id';

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO "public"."item" VALUES (1, '收缩压', 'mmHG', 1, NULL, 1, 0, 1);
INSERT INTO "public"."item" VALUES (2, '舒张压', 'mmHG', 2, NULL, 1, 0, 1);
INSERT INTO "public"."item" VALUES (3, '身高', 'cm', 0, NULL, 1, 0, 1);
INSERT INTO "public"."item" VALUES (4, '体重', 'Kg', 0, NULL, 1, 0, 1);
INSERT INTO "public"."item" VALUES (5, '胸廓', 'text', NULL, 4, .5, 1, 2);
INSERT INTO "public"."item" VALUES (6, '肺部', 'text', NULL, 2, .5, 1, 2);
INSERT INTO "public"."item" VALUES (7, '心界', 'text', NULL, 2, .5, 1, 2);
INSERT INTO "public"."item" VALUES (8, '心音', 'text', NULL, 1, .5, 1, 2);
INSERT INTO "public"."item" VALUES (9, '心律', 'text', NULL, 5, .5, 1, 2);
INSERT INTO "public"."item" VALUES (10, '心率', '次/分', 3, NULL, .5, 0, 2);
INSERT INTO "public"."item" VALUES (11, '心脏杂音', 'text', NULL, 3, .5, 1, 2);
INSERT INTO "public"."item" VALUES (12, '腹部外形', 'text', NULL, 2, .5, 1, 2);
INSERT INTO "public"."item" VALUES (13, '腹部压痛', 'text', NULL, 3, .5, 1, 2);
INSERT INTO "public"."item" VALUES (14, '内科其它', 'text', NULL, 3, .5, 1, 2);
INSERT INTO "public"."item" VALUES (15, '皮肤', 'text', NULL, 2, .5, 1, 3);
INSERT INTO "public"."item" VALUES (16, '颈部', 'text', NULL, 2, .5, 1, 3);
INSERT INTO "public"."item" VALUES (17, '脊柱', 'text', NULL, 2, .5, 1, 3);
INSERT INTO "public"."item" VALUES (18, '四肢', 'text', NULL, 2, .5, 1, 3);
INSERT INTO "public"."item" VALUES (19, '肛门、直肠', 'text', NULL, 2, .5, 1, 3);
INSERT INTO "public"."item" VALUES (20, '疝气', 'text', NULL, 3, .5, 1, 3);
INSERT INTO "public"."item" VALUES (21, '泌尿生殖器', 'text', NULL, 2, .5, 1, 3);
INSERT INTO "public"."item" VALUES (22, '甲状腺', 'text', NULL, 2, .5, 1, 3);
INSERT INTO "public"."item" VALUES (23, '浅表淋巴结', 'text', NULL, 2, .5, 1, 3);
INSERT INTO "public"."item" VALUES (24, '心率', '次/分', 3, NULL, .5, 0, 4);
INSERT INTO "public"."item" VALUES (25, '心律', 'text', NULL, 5, .5, 1, 4);
INSERT INTO "public"."item" VALUES (26, '心电图检查', 'text', NULL, 6, .5, 1, 4);
INSERT INTO "public"."item" VALUES (27, '耳部', 'text', NULL, 2, .5, 1, 5);
INSERT INTO "public"."item" VALUES (28, '鼻部', 'text', NULL, 1, .5, 1, 5);
INSERT INTO "public"."item" VALUES (29, '咽部', 'text', NULL, 1, .5, 1, 5);
INSERT INTO "public"."item" VALUES (30, '喉部', 'text', NULL, 1, .5, 1, 5);
INSERT INTO "public"."item" VALUES (31, '耳鼻喉科其它', 'text', NULL, 2, .5, 1, 5);
INSERT INTO "public"."item" VALUES (32, '肝', 'text', NULL, 2, .5, 1, 6);
INSERT INTO "public"."item" VALUES (33, '胆', 'text', NULL, 2, .5, 1, 6);
INSERT INTO "public"."item" VALUES (34, '胰', 'text', NULL, 2, .5, 1, 6);
INSERT INTO "public"."item" VALUES (35, '脾', 'text', NULL, 2, .5, 1, 6);
INSERT INTO "public"."item" VALUES (36, '左肾', 'text', NULL, 2, .5, 1, 6);
INSERT INTO "public"."item" VALUES (37, '右肾', 'text', NULL, 2, .5, 1, 6);
INSERT INTO "public"."item" VALUES (38, '视力右', '度', NULL, NULL, .5, 0, 7);
INSERT INTO "public"."item" VALUES (39, '视力左', '度', NULL, NULL, .5, 0, 7);
INSERT INTO "public"."item" VALUES (40, '眼睑', 'text', NULL, 1, .5, 1, 7);
INSERT INTO "public"."item" VALUES (41, '眼球', 'text', NULL, 1, .5, 1, 7);
INSERT INTO "public"."item" VALUES (42, '结膜', 'text', NULL, 1, .5, 1, 7);
INSERT INTO "public"."item" VALUES (43, '巩膜', 'text', NULL, 1, .5, 1, 7);
INSERT INTO "public"."item" VALUES (44, '眼底', 'text', NULL, 1, .5, 1, 7);
INSERT INTO "public"."item" VALUES (45, '甲状腺超声', 'text', NULL, 2, .5, 1, 8);
INSERT INTO "public"."item" VALUES (48, '血小板', '10^9/L', 6, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (49, '嗜酸性粒细胞', '%', 7, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (50, '单核细胞', '%', 8, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (51, '白细胞', '10^9/L', 9, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (52, 'MCH', 'pg', 10, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (53, '红细胞', '10^12/L', 11, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (54, '嗜喊性粒细胞', '%', 12, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (55, '中性粒细胞', '10^9/L', 13, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (56, '单核细胞', '10^9/L', 14, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (57, '淋巴细胞', '10^9/L', 15, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (58, 'MCHC', 'g/L', 16, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (59, '林巴细胞', '%', 17, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (60, '嗜酸性粒细胞', '10^9/L', 18, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (61, '血红蛋白', 'g/L', 19, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (62, '中性粒细胞', '%', 20, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (63, '白细胞脂酶', 'text', NULL, 7, .5, 1, 10);
INSERT INTO "public"."item" VALUES (64, '蛋白', 'g/L', NULL, 7, .5, 1, 10);
INSERT INTO "public"."item" VALUES (65, '胆红素', 'umol/l', NULL, 7, .5, 1, 10);
INSERT INTO "public"."item" VALUES (66, '亚硝酸盐', 'text', NULL, 7, .5, 1, 10);
INSERT INTO "public"."item" VALUES (67, '透明度', 'text', NULL, 8, .5, 1, 10);
INSERT INTO "public"."item" VALUES (68, '葡萄糖', 'mmol/l', NULL, 7, .5, 1, 10);
INSERT INTO "public"."item" VALUES (69, '红细胞（镜检）', '/HPF', 21, NULL, .5, 0, 10);
INSERT INTO "public"."item" VALUES (70, '尿隐血', '/ul', NULL, 7, .5, 1, 10);
INSERT INTO "public"."item" VALUES (71, '尿胆原', 'text', NULL, 7, .5, 1, 10);
INSERT INTO "public"."item" VALUES (72, '管型（镜检）', '/LPF', NULL, 9, .5, 1, 10);
INSERT INTO "public"."item" VALUES (73, '酸碱度', 'pH', 22, NULL, .5, 0, 10);
INSERT INTO "public"."item" VALUES (74, '酮体', 'mmol/l', NULL, 7, .5, 1, 10);
INSERT INTO "public"."item" VALUES (75, '颜色', 'text', NULL, 10, .5, 1, 10);
INSERT INTO "public"."item" VALUES (76, '白细胞（镜检）', '/HPF', NULL, 0, .5, 1, 10);
INSERT INTO "public"."item" VALUES (77, '上皮细胞（镜检）', '/HPF', NULL, 0, .5, 1, 10);
INSERT INTO "public"."item" VALUES (78, '尿素', 'mmol/l', 23, NULL, .5, 0, 11);
INSERT INTO "public"."item" VALUES (79, '肌酐', 'umol/l', 24, NULL, .5, 0, 11);
INSERT INTO "public"."item" VALUES (80, '尿酸', 'umol/l', 25, NULL, .5, 0, 11);
INSERT INTO "public"."item" VALUES (81, '糖化血红蛋白', '%', 26, NULL, .5, 0, 12);
INSERT INTO "public"."item" VALUES (82, '空腹血糖', 'mmol/l', 27, NULL, .5, 0, 13);
INSERT INTO "public"."item" VALUES (83, '血清β人绒毛膜促性腺激素测定', 'ng/ml', 28, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (84, '癌胚抗原测定定量(CEA)', 'ng/ml', 29, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (85, '甲胎蛋白测定定量(AFP)', 'ng/ml', 30, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (86, '神经元特异烯醇化酶测定(NSE)', 'ng/ml', 31, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (87, '细胞角蛋白19片段测定', 'ng/ml', 32, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (88, '糖链抗原50测定(CA50)', 'u/ml', 33, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (89, '糖链抗原125测定(CA125)', 'u/ml', 34, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (90, '糖链抗原19-9测定(CA19-9)', 'u/ml', 35, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (91, '糖链抗原242测定(CA242)', 'u/ml', 36, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (92, '糖链抗原15-3测定(CA15-3)', 'u/ml', 37, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (93, '糖链抗原72-4测定(CA72-4)', 'u/ml', 38, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (94, '特异生长因子测定(TSGF)', 'u/ml', 39, NULL, .5, 0, 14);
INSERT INTO "public"."item" VALUES (46, 'MCV', 'fl', 4, NULL, .5, 0, 9);
INSERT INTO "public"."item" VALUES (47, '红细胞比积', '%', 5, NULL, .5, 0, 9);

-- ----------------------------
-- Table structure for item_option
-- ----------------------------
DROP TABLE IF EXISTS "public"."item_option";
CREATE TABLE "public"."item_option" (
  "id" int4 NOT NULL DEFAULT nextval('item_option_id_seq'::regclass),
  "option_id" int4 NOT NULL,
  "item_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."item_option"."option_id" IS '文本选项id';
COMMENT ON COLUMN "public"."item_option"."item_id" IS '项目id';

-- ----------------------------
-- Records of item_option
-- ----------------------------

-- ----------------------------
-- Table structure for normal_range
-- ----------------------------
DROP TABLE IF EXISTS "public"."normal_range";
CREATE TABLE "public"."normal_range" (
  "id" int4 NOT NULL DEFAULT nextval('normal_range_id_seq'::regclass),
  "start" float4 NOT NULL,
  "end" float4 NOT NULL
)
;
COMMENT ON COLUMN "public"."normal_range"."start" IS '正常范围开始值';
COMMENT ON COLUMN "public"."normal_range"."end" IS '正常范围终止值';

-- ----------------------------
-- Records of normal_range
-- ----------------------------
INSERT INTO "public"."normal_range" VALUES (0, 0, 0);
INSERT INTO "public"."normal_range" VALUES (1, 90, 140);
INSERT INTO "public"."normal_range" VALUES (2, 60, 90);
INSERT INTO "public"."normal_range" VALUES (3, 59, 101);
INSERT INTO "public"."normal_range" VALUES (4, 82, 100);
INSERT INTO "public"."normal_range" VALUES (5, 40, 50);
INSERT INTO "public"."normal_range" VALUES (6, 125, 350);
INSERT INTO "public"."normal_range" VALUES (7, .4, 8);
INSERT INTO "public"."normal_range" VALUES (8, 3, 10);
INSERT INTO "public"."normal_range" VALUES (9, 3.5, 9.5);
INSERT INTO "public"."normal_range" VALUES (10, 27, 34);
INSERT INTO "public"."normal_range" VALUES (11, 4.3, 5.8);
INSERT INTO "public"."normal_range" VALUES (12, 0, 1);
INSERT INTO "public"."normal_range" VALUES (13, 1.8, 6.3);
INSERT INTO "public"."normal_range" VALUES (14, .1, .6);
INSERT INTO "public"."normal_range" VALUES (15, 1.1, 3.2);
INSERT INTO "public"."normal_range" VALUES (16, 316, 354);
INSERT INTO "public"."normal_range" VALUES (17, 20, 50);
INSERT INTO "public"."normal_range" VALUES (18, .02, .52);
INSERT INTO "public"."normal_range" VALUES (19, 130, 175);
INSERT INTO "public"."normal_range" VALUES (20, 40, 75);
INSERT INTO "public"."normal_range" VALUES (21, 0, 3);
INSERT INTO "public"."normal_range" VALUES (22, 5.4, 8.4);
INSERT INTO "public"."normal_range" VALUES (23, 2.8, 7.2);
INSERT INTO "public"."normal_range" VALUES (24, 59, 104);
INSERT INTO "public"."normal_range" VALUES (25, 208, 428);
INSERT INTO "public"."normal_range" VALUES (26, 4.27, 6.07);
INSERT INTO "public"."normal_range" VALUES (27, 3.9, 6.1);
INSERT INTO "public"."normal_range" VALUES (28, 0, 5);
INSERT INTO "public"."normal_range" VALUES (29, 0, 5);
INSERT INTO "public"."normal_range" VALUES (30, 0, 10);
INSERT INTO "public"."normal_range" VALUES (31, 0, 15);
INSERT INTO "public"."normal_range" VALUES (32, 0, 3.3);
INSERT INTO "public"."normal_range" VALUES (33, 0, 20);
INSERT INTO "public"."normal_range" VALUES (34, 0, 35);
INSERT INTO "public"."normal_range" VALUES (35, 0, 37);
INSERT INTO "public"."normal_range" VALUES (36, 0, 20);
INSERT INTO "public"."normal_range" VALUES (37, 0, 28);
INSERT INTO "public"."normal_range" VALUES (38, 0, 10);
INSERT INTO "public"."normal_range" VALUES (39, 0, 64);

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS "public"."package";
CREATE TABLE "public"."package" (
  "id" int4 NOT NULL DEFAULT nextval('package_id_seq'::regclass),
  "name" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "price" int2 NOT NULL,
  "applicable_group" varchar(10) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."package"."name" IS '套餐名称';
COMMENT ON COLUMN "public"."package"."price" IS '套餐价格';
COMMENT ON COLUMN "public"."package"."applicable_group" IS '适用人群';

-- ----------------------------
-- Records of package
-- ----------------------------
INSERT INTO "public"."package" VALUES (1, '全面体检', 1000, '一般人');
INSERT INTO "public"."package" VALUES (2, '无', 0, '人');
INSERT INTO "public"."package" VALUES (3, '基础一', 917, '所有人');

-- ----------------------------
-- Table structure for package_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."package_category";
CREATE TABLE "public"."package_category" (
  "id" int4 NOT NULL DEFAULT nextval('package_category_id_seq'::regclass),
  "package_id" int4 NOT NULL,
  "category_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."package_category"."package_id" IS '套餐id';
COMMENT ON COLUMN "public"."package_category"."category_id" IS '分类id';

-- ----------------------------
-- Records of package_category
-- ----------------------------
INSERT INTO "public"."package_category" VALUES (1, 1, 1);
INSERT INTO "public"."package_category" VALUES (2, 1, 2);
INSERT INTO "public"."package_category" VALUES (3, 1, 3);
INSERT INTO "public"."package_category" VALUES (4, 1, 4);
INSERT INTO "public"."package_category" VALUES (5, 1, 5);
INSERT INTO "public"."package_category" VALUES (6, 1, 6);
INSERT INTO "public"."package_category" VALUES (7, 1, 7);
INSERT INTO "public"."package_category" VALUES (8, 1, 8);
INSERT INTO "public"."package_category" VALUES (9, 1, 9);
INSERT INTO "public"."package_category" VALUES (10, 1, 10);
INSERT INTO "public"."package_category" VALUES (11, 1, 11);
INSERT INTO "public"."package_category" VALUES (12, 1, 12);
INSERT INTO "public"."package_category" VALUES (13, 1, 13);
INSERT INTO "public"."package_category" VALUES (14, 1, 14);
INSERT INTO "public"."package_category" VALUES (15, 2, 0);
INSERT INTO "public"."package_category" VALUES (16, 3, 2);
INSERT INTO "public"."package_category" VALUES (17, 3, 3);
INSERT INTO "public"."package_category" VALUES (18, 3, 9);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."permission";
CREATE TABLE "public"."permission" (
  "id" int4 NOT NULL DEFAULT nextval('permit_id_seq'::regclass),
  "name" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int4 NOT NULL,
  "level" int2 NOT NULL,
  "path" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "component" varchar(20) COLLATE "pg_catalog"."default",
  "icon" varchar(20) COLLATE "pg_catalog"."default",
  "index" int2
)
;
COMMENT ON COLUMN "public"."permission"."name" IS '权限名称';
COMMENT ON COLUMN "public"."permission"."parent_id" IS '父级权限id';
COMMENT ON COLUMN "public"."permission"."level" IS '权限层级';
COMMENT ON COLUMN "public"."permission"."path" IS '对应的前端路由名称';
COMMENT ON COLUMN "public"."permission"."component" IS '对应的前端组件名称';
COMMENT ON COLUMN "public"."permission"."icon" IS '对应的图标名称';
COMMENT ON COLUMN "public"."permission"."index" IS '序号';

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO "public"."permission" VALUES (0, '目录', -1, 0, '/examination', 'Layout', NULL, 1);
INSERT INTO "public"."permission" VALUES (14, '团检订单', 4, 2, '/groupOrder', 'GroupOrder', NULL, 2);
INSERT INTO "public"."permission" VALUES (1, '权限管理', 0, 1, '/permission', '', 'Permission', 1);
INSERT INTO "public"."permission" VALUES (10, '角色列表', 1, 2, '/role', 'Role', '', 1);
INSERT INTO "public"."permission" VALUES (9, '权限列表', 1, 2, '/permission', 'Permission', '', 2);
INSERT INTO "public"."permission" VALUES (2, '用户管理', 0, 1, '/user', '', 'User', 2);
INSERT INTO "public"."permission" VALUES (7, '前台用户', 2, 2, '/user', 'User', NULL, 1);
INSERT INTO "public"."permission" VALUES (8, '后台用户', 2, 2, '/admin', 'Admin', NULL, 2);
INSERT INTO "public"."permission" VALUES (3, '套餐管理', 0, 1, '/package', '', 'Package', 3);
INSERT INTO "public"."permission" VALUES (11, '套餐管理', 3, 2, '/package', 'Package', NULL, 1);
INSERT INTO "public"."permission" VALUES (12, '分类列表', 3, 2, '/category', 'Category', NULL, 2);
INSERT INTO "public"."permission" VALUES (4, '订单管理', 0, 1, '/order', '', 'Order', 4);
INSERT INTO "public"."permission" VALUES (13, '个人订单', 4, 2, '/order', 'Order', NULL, 1);
INSERT INTO "public"."permission" VALUES (5, '体检机构管理', 0, 1, '/center', 'Center', 'Center', 5);
INSERT INTO "public"."permission" VALUES (16, '心血管内科', 6, 2, '/department9', 'Department9', NULL, 2);
INSERT INTO "public"."permission" VALUES (15, '医生详情', 6, 2, '/department', 'Department', '', 1);
INSERT INTO "public"."permission" VALUES (6, '科室管理', 0, 1, '/department', '', 'Department', 6);
INSERT INTO "public"."permission" VALUES (17, '神经内科', 6, 2, '/department10', 'Department10', NULL, 3);
INSERT INTO "public"."permission" VALUES (18, '血液内科', 6, 2, '/department14', 'Department14', NULL, 4);
INSERT INTO "public"."permission" VALUES (19, '眼科', 6, 2, '/department16', 'Department16', NULL, 5);
INSERT INTO "public"."permission" VALUES (20, '耳鼻喉科', 6, 2, '/department17', 'Department17', NULL, 6);
INSERT INTO "public"."permission" VALUES (21, '普外科', 6, 2, '/department19', 'Department19', NULL, 7);
INSERT INTO "public"."permission" VALUES (22, '超声科', 6, 2, '/department24', 'Department24', NULL, 8);
INSERT INTO "public"."permission" VALUES (23, '体检科', 6, 2, '/department25', 'Department25', NULL, 9);

-- ----------------------------
-- Table structure for queue
-- ----------------------------
DROP TABLE IF EXISTS "public"."queue";
CREATE TABLE "public"."queue" (
  "id" int4 NOT NULL DEFAULT nextval('queue_id_seq'::regclass),
  "department_id" int4 NOT NULL,
  "serial_number" int2 NOT NULL,
  "order_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."queue"."department_id" IS '科室id';
COMMENT ON COLUMN "public"."queue"."serial_number" IS '序号(表明排队顺序)';
COMMENT ON COLUMN "public"."queue"."order_id" IS '订单id';

-- ----------------------------
-- Records of queue
-- ----------------------------
INSERT INTO "public"."queue" VALUES (1, 14, 235, 1);

-- ----------------------------
-- Table structure for relationship
-- ----------------------------
DROP TABLE IF EXISTS "public"."relationship";
CREATE TABLE "public"."relationship" (
  "id" int4 NOT NULL DEFAULT nextval('relationship_id_seq'::regclass),
  "name" char(4) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."relationship"."name" IS '关系名称';

-- ----------------------------
-- Records of relationship
-- ----------------------------
INSERT INTO "public"."relationship" VALUES (1, '本人');
INSERT INTO "public"."relationship" VALUES (2, '父亲');
INSERT INTO "public"."relationship" VALUES (3, '母亲');

-- ----------------------------
-- Table structure for result_text_option
-- ----------------------------
DROP TABLE IF EXISTS "public"."result_text_option";
CREATE TABLE "public"."result_text_option" (
  "id" int4 NOT NULL DEFAULT nextval('result_text_option_id_seq'::regclass),
  "text" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."result_text_option"."text" IS '结果选项内容';

-- ----------------------------
-- Records of result_text_option
-- ----------------------------
INSERT INTO "public"."result_text_option" VALUES (0, '——');
INSERT INTO "public"."result_text_option" VALUES (1, '正常');
INSERT INTO "public"."result_text_option" VALUES (2, '未见异常');
INSERT INTO "public"."result_text_option" VALUES (3, '无');
INSERT INTO "public"."result_text_option" VALUES (4, '无畸形');
INSERT INTO "public"."result_text_option" VALUES (5, '规则');
INSERT INTO "public"."result_text_option" VALUES (6, '正常心电图');
INSERT INTO "public"."result_text_option" VALUES (7, 'neg');
INSERT INTO "public"."result_text_option" VALUES (8, '透明');
INSERT INTO "public"."result_text_option" VALUES (9, '未查见');
INSERT INTO "public"."result_text_option" VALUES (10, '黄色');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "public"."role";
CREATE TABLE "public"."role" (
  "id" int4 NOT NULL DEFAULT nextval('role_id_seq'::regclass),
  "name" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(40) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."role"."name" IS '角色名称';
COMMENT ON COLUMN "public"."role"."description" IS '角色描述';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO "public"."role" VALUES (19, '前台', '医院前台');
INSERT INTO "public"."role" VALUES (20, '科室主任', '管理科室的医生');
INSERT INTO "public"."role" VALUES (21, '业务员', '管理订单');
INSERT INTO "public"."role" VALUES (22, '心血管内科医生', '做心电图');
INSERT INTO "public"."role" VALUES (1, '超级管理员', '获得所有权限');
INSERT INTO "public"."role" VALUES (23, '神经内科医生', '内科检查');
INSERT INTO "public"."role" VALUES (24, '血液内科医生', '抽血');
INSERT INTO "public"."role" VALUES (25, '眼科医生', '测视力');
INSERT INTO "public"."role" VALUES (26, '耳鼻喉科医生', '检查');
INSERT INTO "public"."role" VALUES (27, '普外科医生', '外科检查');
INSERT INTO "public"."role" VALUES (28, '超声科医生', '做超声');
INSERT INTO "public"."role" VALUES (29, '体检科医生', '其它');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."role_permission";
CREATE TABLE "public"."role_permission" (
  "id" int4 NOT NULL DEFAULT nextval('role_permit_id_seq'::regclass),
  "permission_id" int4 NOT NULL,
  "role_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."role_permission"."permission_id" IS '权限id';
COMMENT ON COLUMN "public"."role_permission"."role_id" IS '角色id';

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO "public"."role_permission" VALUES (1, 0, 1);
INSERT INTO "public"."role_permission" VALUES (4, 3, 1);
INSERT INTO "public"."role_permission" VALUES (2, 1, 1);
INSERT INTO "public"."role_permission" VALUES (3, 2, 1);
INSERT INTO "public"."role_permission" VALUES (5, 4, 1);
INSERT INTO "public"."role_permission" VALUES (6, 5, 1);
INSERT INTO "public"."role_permission" VALUES (7, 6, 1);
INSERT INTO "public"."role_permission" VALUES (8, 7, 1);
INSERT INTO "public"."role_permission" VALUES (9, 8, 1);
INSERT INTO "public"."role_permission" VALUES (10, 9, 1);
INSERT INTO "public"."role_permission" VALUES (11, 10, 1);
INSERT INTO "public"."role_permission" VALUES (12, 11, 1);
INSERT INTO "public"."role_permission" VALUES (13, 12, 1);
INSERT INTO "public"."role_permission" VALUES (14, 13, 1);
INSERT INTO "public"."role_permission" VALUES (20, 0, 19);
INSERT INTO "public"."role_permission" VALUES (21, 2, 19);
INSERT INTO "public"."role_permission" VALUES (22, 7, 19);
INSERT INTO "public"."role_permission" VALUES (23, 0, 20);
INSERT INTO "public"."role_permission" VALUES (24, 6, 20);
INSERT INTO "public"."role_permission" VALUES (25, 0, 21);
INSERT INTO "public"."role_permission" VALUES (26, 4, 21);
INSERT INTO "public"."role_permission" VALUES (15, 14, 1);
INSERT INTO "public"."role_permission" VALUES (28, 15, 1);
INSERT INTO "public"."role_permission" VALUES (29, 16, 1);
INSERT INTO "public"."role_permission" VALUES (27, 13, 21);
INSERT INTO "public"."role_permission" VALUES (30, 17, 1);
INSERT INTO "public"."role_permission" VALUES (31, 18, 1);
INSERT INTO "public"."role_permission" VALUES (32, 19, 1);
INSERT INTO "public"."role_permission" VALUES (33, 20, 1);
INSERT INTO "public"."role_permission" VALUES (34, 21, 1);
INSERT INTO "public"."role_permission" VALUES (35, 22, 1);
INSERT INTO "public"."role_permission" VALUES (36, 23, 1);
INSERT INTO "public"."role_permission" VALUES (37, 16, 22);
INSERT INTO "public"."role_permission" VALUES (38, 17, 23);
INSERT INTO "public"."role_permission" VALUES (39, 18, 24);
INSERT INTO "public"."role_permission" VALUES (41, 20, 26);
INSERT INTO "public"."role_permission" VALUES (40, 19, 25);
INSERT INTO "public"."role_permission" VALUES (42, 21, 27);
INSERT INTO "public"."role_permission" VALUES (43, 22, 28);
INSERT INTO "public"."role_permission" VALUES (44, 23, 29);
INSERT INTO "public"."role_permission" VALUES (45, 15, 20);
INSERT INTO "public"."role_permission" VALUES (46, 0, 22);
INSERT INTO "public"."role_permission" VALUES (47, 6, 22);
INSERT INTO "public"."role_permission" VALUES (48, 0, 23);
INSERT INTO "public"."role_permission" VALUES (50, 0, 24);
INSERT INTO "public"."role_permission" VALUES (49, 6, 23);
INSERT INTO "public"."role_permission" VALUES (51, 6, 24);
INSERT INTO "public"."role_permission" VALUES (52, 0, 25);
INSERT INTO "public"."role_permission" VALUES (53, 6, 25);
INSERT INTO "public"."role_permission" VALUES (54, 0, 26);
INSERT INTO "public"."role_permission" VALUES (55, 6, 26);
INSERT INTO "public"."role_permission" VALUES (56, 0, 27);
INSERT INTO "public"."role_permission" VALUES (57, 6, 27);
INSERT INTO "public"."role_permission" VALUES (58, 0, 28);
INSERT INTO "public"."role_permission" VALUES (59, 6, 28);
INSERT INTO "public"."role_permission" VALUES (60, 0, 29);
INSERT INTO "public"."role_permission" VALUES (61, 6, 29);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "public"."user";
CREATE TABLE "public"."user" (
  "id" int4 NOT NULL DEFAULT nextval('user_id_seq1'::regclass),
  "name" char(4) COLLATE "pg_catalog"."default" NOT NULL,
  "identification_number" char(18) COLLATE "pg_catalog"."default" NOT NULL,
  "sex" char(1) COLLATE "pg_catalog"."default",
  "birthday" date,
  "phone" char(11) COLLATE "pg_catalog"."default" NOT NULL,
  "create_time" timestamp(0) NOT NULL
)
;
COMMENT ON COLUMN "public"."user"."name" IS '用户姓名';
COMMENT ON COLUMN "public"."user"."identification_number" IS '身份证号';
COMMENT ON COLUMN "public"."user"."sex" IS '性别';
COMMENT ON COLUMN "public"."user"."birthday" IS '出生日期';
COMMENT ON COLUMN "public"."user"."phone" IS '手机号码';
COMMENT ON COLUMN "public"."user"."create_time" IS '创建时间';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "public"."user" VALUES (21, '洛南', '310112200106087213', '女', '2011-02-12', '18937829582', '2023-01-21 23:58:50');
INSERT INTO "public"."user" VALUES (22, '王思博', '310112462738193721', '男', '2011-02-12', '13829223132', '2023-01-21 23:58:50');
INSERT INTO "public"."user" VALUES (11, '张雨绮', '230293847123112312', '女', '2011-02-12', '18937829582', '2023-01-19 11:46:29');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."admin_id_seq"
OWNED BY "public"."admin"."id";
SELECT setval('"public"."admin_id_seq"', 74, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."assignment_id_seq"
OWNED BY "public"."assignment"."id";
SELECT setval('"public"."assignment_id_seq"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."category_id_seq"
OWNED BY "public"."category"."id";
SELECT setval('"public"."category_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."department_doctor_id_seq"
OWNED BY "public"."department_doctor"."id";
SELECT setval('"public"."department_doctor_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."department_id_seq"
OWNED BY "public"."department"."id";
SELECT setval('"public"."department_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."district_id_seq"
OWNED BY "public"."district"."id";
SELECT setval('"public"."district_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."examination_center_id_seq"
OWNED BY "public"."examination_center"."id";
SELECT setval('"public"."examination_center_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."examination_order_id_seq"
OWNED BY "public"."examination_order"."id";
SELECT setval('"public"."examination_order_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."examination_result_id_seq"
OWNED BY "public"."examination_result"."id";
SELECT setval('"public"."examination_result_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."examinee_id_seq"
OWNED BY "public"."examinee"."id";
SELECT setval('"public"."examinee_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."group_information_id_seq"
OWNED BY "public"."group_information"."id";
SELECT setval('"public"."group_information_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."item_id_seq"
OWNED BY "public"."item"."id";
SELECT setval('"public"."item_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."item_option_id_seq"
OWNED BY "public"."item_option"."id";
SELECT setval('"public"."item_option_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."normal_range_id_seq"
OWNED BY "public"."normal_range"."id";
SELECT setval('"public"."normal_range_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."package_category_id_seq"
OWNED BY "public"."package_category"."id";
SELECT setval('"public"."package_category_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."package_id_seq"
OWNED BY "public"."package"."id";
SELECT setval('"public"."package_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."permit_id_seq"
OWNED BY "public"."permission"."id";
SELECT setval('"public"."permit_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."queue_id_seq"
OWNED BY "public"."queue"."id";
SELECT setval('"public"."queue_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."relationship_id_seq"
OWNED BY "public"."relationship"."id";
SELECT setval('"public"."relationship_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."result_text_option_id_seq"
OWNED BY "public"."result_text_option"."id";
SELECT setval('"public"."result_text_option_id_seq"', 12, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."role_id_seq"
OWNED BY "public"."role"."id";
SELECT setval('"public"."role_id_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."role_permit_id_seq"
OWNED BY "public"."role_permission"."id";
SELECT setval('"public"."role_permit_id_seq"', 29, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_id_seq"
OWNED BY "public"."user"."id";
SELECT setval('"public"."user_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."user_id_seq1"
OWNED BY "public"."user"."id";
SELECT setval('"public"."user_id_seq1"', 26, true);

-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE "public"."admin" ADD CONSTRAINT "admin_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table assignment
-- ----------------------------
ALTER TABLE "public"."assignment" ADD CONSTRAINT "assignment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE "public"."category" ADD CONSTRAINT "category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table department
-- ----------------------------
ALTER TABLE "public"."department" ADD CONSTRAINT "department_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table department_doctor
-- ----------------------------
ALTER TABLE "public"."department_doctor" ADD CONSTRAINT "department_doctor_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table district
-- ----------------------------
ALTER TABLE "public"."district" ADD CONSTRAINT "district_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table doctor_status
-- ----------------------------
ALTER TABLE "public"."doctor_status" ADD CONSTRAINT "doctor_status_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table examination_center
-- ----------------------------
ALTER TABLE "public"."examination_center" ADD CONSTRAINT "examination_center_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table examination_order
-- ----------------------------
ALTER TABLE "public"."examination_order" ADD CONSTRAINT "examination_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table examination_result
-- ----------------------------
ALTER TABLE "public"."examination_result" ADD CONSTRAINT "examination_result_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table examinee
-- ----------------------------
ALTER TABLE "public"."examinee" ADD CONSTRAINT "examinee_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table group_information
-- ----------------------------
ALTER TABLE "public"."group_information" ADD CONSTRAINT "group_information_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table item
-- ----------------------------
ALTER TABLE "public"."item" ADD CONSTRAINT "item_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table item_option
-- ----------------------------
ALTER TABLE "public"."item_option" ADD CONSTRAINT "item_option_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table normal_range
-- ----------------------------
ALTER TABLE "public"."normal_range" ADD CONSTRAINT "normal_range_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table package
-- ----------------------------
ALTER TABLE "public"."package" ADD CONSTRAINT "package_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table package_category
-- ----------------------------
ALTER TABLE "public"."package_category" ADD CONSTRAINT "package_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table permission
-- ----------------------------
ALTER TABLE "public"."permission" ADD CONSTRAINT "permit_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table queue
-- ----------------------------
ALTER TABLE "public"."queue" ADD CONSTRAINT "queue_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table relationship
-- ----------------------------
ALTER TABLE "public"."relationship" ADD CONSTRAINT "relationship_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table result_text_option
-- ----------------------------
ALTER TABLE "public"."result_text_option" ADD CONSTRAINT "result_text_option_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "public"."role" ADD CONSTRAINT "role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table role_permission
-- ----------------------------
ALTER TABLE "public"."role_permission" ADD CONSTRAINT "role_permit_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "public"."user" ADD CONSTRAINT "user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table assignment
-- ----------------------------
ALTER TABLE "public"."assignment" ADD CONSTRAINT "assignment_doctor_id_fkey" FOREIGN KEY ("doctor_id") REFERENCES "public"."admin" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."assignment" ADD CONSTRAINT "assignment_item_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."assignment" ADD CONSTRAINT "assignment_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."examination_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table category
-- ----------------------------
ALTER TABLE "public"."category" ADD CONSTRAINT "category_department_id_fkey" FOREIGN KEY ("department_id") REFERENCES "public"."department" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."category" ADD CONSTRAINT "category_package_id_fkey" FOREIGN KEY ("package_id") REFERENCES "public"."package" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table department_doctor
-- ----------------------------
ALTER TABLE "public"."department_doctor" ADD CONSTRAINT "department_doctor_administer_id_fkey" FOREIGN KEY ("administer_id") REFERENCES "public"."admin" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."department_doctor" ADD CONSTRAINT "department_doctor_department_id_fkey" FOREIGN KEY ("department_id") REFERENCES "public"."department" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table doctor_status
-- ----------------------------
ALTER TABLE "public"."doctor_status" ADD CONSTRAINT "doctor_status_doctor_id_fkey" FOREIGN KEY ("doctor_id") REFERENCES "public"."admin" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table examination_center
-- ----------------------------
ALTER TABLE "public"."examination_center" ADD CONSTRAINT "examination_center_district_id_fkey" FOREIGN KEY ("district_id") REFERENCES "public"."district" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table examination_order
-- ----------------------------
ALTER TABLE "public"."examination_order" ADD CONSTRAINT "examination_order_center_id_fkey" FOREIGN KEY ("center_id") REFERENCES "public"."examination_center" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."examination_order" ADD CONSTRAINT "examination_order_examinee_id_fkey" FOREIGN KEY ("examinee_id") REFERENCES "public"."examinee" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."examination_order" ADD CONSTRAINT "examination_order_group_information_id_fkey" FOREIGN KEY ("group_information_id") REFERENCES "public"."group_information" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."examination_order" ADD CONSTRAINT "examination_order_package_id_fkey" FOREIGN KEY ("package_id") REFERENCES "public"."package" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table examination_result
-- ----------------------------
ALTER TABLE "public"."examination_result" ADD CONSTRAINT "examination_result_assignment_id_fkey" FOREIGN KEY ("assignment_id") REFERENCES "public"."assignment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."examination_result" ADD CONSTRAINT "examination_result_item_id_fkey" FOREIGN KEY ("item_id") REFERENCES "public"."item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."examination_result" ADD CONSTRAINT "examination_result_text_option_id_fkey" FOREIGN KEY ("text_option_id") REFERENCES "public"."result_text_option" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table examinee
-- ----------------------------
ALTER TABLE "public"."examinee" ADD CONSTRAINT "examinee_relationship_id_fkey" FOREIGN KEY ("relationship_id") REFERENCES "public"."relationship" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."examinee" ADD CONSTRAINT "examinee_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table item
-- ----------------------------
ALTER TABLE "public"."item" ADD CONSTRAINT "item_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."item" ADD CONSTRAINT "item_normal_option_id_fkey" FOREIGN KEY ("normal_option_id") REFERENCES "public"."result_text_option" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."item" ADD CONSTRAINT "item_normal_range_id_fkey" FOREIGN KEY ("normal_range_id") REFERENCES "public"."normal_range" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table item_option
-- ----------------------------
ALTER TABLE "public"."item_option" ADD CONSTRAINT "item_option_item_id_fkey" FOREIGN KEY ("item_id") REFERENCES "public"."item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."item_option" ADD CONSTRAINT "item_option_option_id_fkey" FOREIGN KEY ("option_id") REFERENCES "public"."result_text_option" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table package_category
-- ----------------------------
ALTER TABLE "public"."package_category" ADD CONSTRAINT "package_category_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."category" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."package_category" ADD CONSTRAINT "package_category_package_id_fkey" FOREIGN KEY ("package_id") REFERENCES "public"."package" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table queue
-- ----------------------------
ALTER TABLE "public"."queue" ADD CONSTRAINT "queue_department_id_fkey" FOREIGN KEY ("department_id") REFERENCES "public"."department" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."queue" ADD CONSTRAINT "queue_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."examination_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table role_permission
-- ----------------------------
ALTER TABLE "public"."role_permission" ADD CONSTRAINT "role_permission_permission_id_fkey" FOREIGN KEY ("permission_id") REFERENCES "public"."permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."role_permission" ADD CONSTRAINT "role_permission_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "public"."role" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
