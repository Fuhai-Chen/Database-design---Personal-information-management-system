/*==============================================================*/
/* DataBase: 个人信息管理系统, 创建数据库，数据库名称为个人信息管理系统*/
/*==============================================================*/
create database 个人信息管理系统
go


/*==============================================================*/
/* Table: person, 用户信息表 */
/*==============================================================*/
CREATE TABLE person (
  姓名 varchar(20) NOT NULL,
  性别 varchar(6) NOT NULL DEFAULT '男',
  年龄 int(11) NOT NULL,
  出生日期 date NOT NULL,
  地址 varchar(45) NOT NULL,
  职业 varchar(45) NOT NULL,
  QQ varchar(45) DEFAULT NULL,
  电话 varchar(45) NOT NULL,
  PRIMARY KEY (姓名)	/* 主键约束 */
)

/*==============================================================*/
/* Table: communication, 通讯录记录表 */
/*==============================================================*/
CREATE TABLE communication (
  用户名 varchar(45) NOT NULL,
  姓名 varchar(45) NOT NULL,
  电话 varchar(45) NOT NULL,
  工作地点 varchar(45) DEFAULT NULL,
  城市 varchar(45) DEFAULT NULL,
  备注 varchar(45) DEFAULT NULL,
  PRIMARY KEY (姓名)	/* 主键约束 */
)

/*==============================================================*/
/* Table: diary, 日记记录表 */
/*==============================================================*/
CREATE TABLE diary (
  用户名 varchar(45) NOT NULL,
  记录时间 datetime NOT NULL,
  时间 date DEFAULT NULL,
  地点 varchar(45) DEFAULT NULL,
  事件 varchar(100) NOT NULL,
  PRIMARY KEY (记录时间)	/* 主键约束 */
)

/*==============================================================*/
/* Table: financial, 财务记录表 */
/*==============================================================*/
CREATE TABLE financial (
  用户名 varchar(45) NOT NULL,
  项目 varchar(45) DEFAULT NULL,
  数额 double NOT NULL,
  添加时间 varchar(45) NOT NULL,
  收支类型 varchar(45) NOT NULL DEFAULT '支出',
  PRIMARY KEY (添加时间)	/* 主键约束 */
)

/*==============================================================*/
/* Table: memorandum, 备忘录记录表 */
/*==============================================================*/
CREATE TABLE memorandum (
  用户名 varchar(45) NOT NULL,
  记录时间 datetime NOT NULL,
  时间 datetime DEFAULT NULL,
  地点 varchar(45) DEFAULT NULL,
  事件 varchar(45) NOT NULL,
  PRIMARY KEY (记录时间)	/* 主键约束 */
)
