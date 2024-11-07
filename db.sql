/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaotushuguan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaotushuguan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaotushuguan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-17 15:23:42'),(2,'sex_types','性别',2,'女',NULL,'2021-04-17 15:23:42'),(3,'tushu_types','图书类型名称',1,'名著',NULL,'2021-04-17 15:23:42'),(4,'tushu_types','图书类型名称',2,'童话',NULL,'2021-04-17 15:23:42'),(5,'tushu_types','图书类型名称',3,'小说',NULL,'2021-04-17 15:23:42'),(6,'chubanshe_types','出版社名称',1,'出版社1',NULL,'2021-04-17 15:23:42'),(7,'chubanshe_types','出版社名称',2,'出版社2',NULL,'2021-04-17 15:23:42'),(8,'chubanshe_types','出版社名称',3,'出版社3',NULL,'2021-04-17 15:23:42'),(9,'news_types','资源讲座类型名称',1,'日常资源讲座',NULL,'2021-04-17 15:23:42'),(10,'news_types','资源讲座类型名称',2,'特殊资源讲座',NULL,'2021-04-17 15:23:42'),(11,'jieyue_types','借阅状态',1,'未逾期',NULL,'2021-04-17 15:23:42'),(12,'jieyue_types','借阅状态',2,'已还',NULL,'2021-04-17 15:23:42');

/*Table structure for table `jieyue` */

DROP TABLE IF EXISTS `jieyue`;

CREATE TABLE `jieyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '借阅用户',
  `tushu_id` int(200) DEFAULT NULL COMMENT '借阅书',
  `jieyue_time` timestamp NULL DEFAULT NULL COMMENT '借阅时间',
  `huanshu_time` timestamp NULL DEFAULT NULL COMMENT '最晚还书时间',
  `jieyue_types` int(200) DEFAULT NULL COMMENT '借阅状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='借阅记录';

/*Data for the table `jieyue` */

insert  into `jieyue`(`id`,`yonghu_id`,`tushu_id`,`jieyue_time`,`huanshu_time`,`jieyue_types`,`create_time`) values (10,1,24,'2021-06-07 20:51:04','2021-07-06 20:51:04',2,'2021-04-17 20:51:04'),(11,1,24,'2021-04-17 20:53:20','2021-06-06 20:53:20',2,'2021-04-17 20:53:20'),(12,1,24,'2021-04-17 20:53:33','2021-06-06 20:53:33',2,'2021-04-17 20:53:33'),(13,1,23,'2021-04-17 20:53:34','2021-05-17 20:53:34',2,'2021-04-17 20:53:34'),(14,1,22,'2021-04-17 20:53:36','2021-05-07 20:53:36',2,'2021-04-17 20:53:36');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (7,'留言信息1','留言人1','2021-04-17 20:42:49','回复内容1','admin','2021-04-17 20:42:49'),(8,'留言信息2','留言人2','2021-04-17 20:47:21','123','admin','2021-04-17 20:47:21');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资源讲座名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '资源讲座类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资源讲座图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '资源讲座时间',
  `news_content` text COMMENT '资源讲座详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='资源讲座';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'资源讲座名称1',2,'http://localhost:8080/gaoxiaotushuguan/file/download?fileName=1618663842400.jpeg','2021-04-17 20:50:45','资源讲座详情资源讲座详情\r\n','2021-04-17 20:50:45');

/*Table structure for table `shujia` */

DROP TABLE IF EXISTS `shujia`;

CREATE TABLE `shujia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '书架主人',
  `tushu_id` int(200) DEFAULT NULL COMMENT '图书名称',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '加入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='虚拟书架';

/*Data for the table `shujia` */

insert  into `shujia`(`id`,`yonghu_id`,`tushu_id`,`insert_time`,`create_time`) values (1,1,23,'2021-04-17 17:34:24','2021-04-17 17:34:24'),(2,1,22,'2021-04-17 20:54:19','2021-04-17 20:54:19');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','oyyg8zyyfiwgo4heb0ed0zb77mlimt3c','2021-04-17 15:15:59','2021-04-17 21:54:32'),(2,1,'111','yonghu','用户','sxyern4f9qoxddszdltpohniwek3nus3','2021-04-17 20:09:40','2021-04-17 21:50:52');

/*Table structure for table `tushu` */

DROP TABLE IF EXISTS `tushu`;

CREATE TABLE `tushu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_bianhao` varchar(200) DEFAULT NULL COMMENT '图书编号 Search111',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书名称 Search111',
  `tushu_zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书封面',
  `tushu_types` int(200) DEFAULT NULL COMMENT '图书类型 Search111',
  `chubanshe_types` int(200) DEFAULT NULL COMMENT '出版社 Search111',
  `tushu_kuchuen` int(200) DEFAULT NULL COMMENT '图书库存',
  `tushu_jieyue` int(200) DEFAULT NULL COMMENT '可借阅天数',
  `tushu_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='图书';

/*Data for the table `tushu` */

insert  into `tushu`(`id`,`tushu_bianhao`,`tushu_name`,`tushu_zuozhe`,`tushu_photo`,`tushu_types`,`chubanshe_types`,`tushu_kuchuen`,`tushu_jieyue`,`tushu_content`,`create_time`) values (22,'图书编号1','图书名称1','作者1','http://localhost:8080/gaoxiaotushuguan/file/download?fileName=1618645503759.jpg',2,2,4,20,'详情信息1\r\n','2021-04-17 15:45:34'),(23,'图书编号2','图书名称2','作者2','http://localhost:8080/gaoxiaotushuguan/file/download?fileName=1618645595141.jpg',3,2,5,30,'详情信息2\r\n','2021-04-17 15:46:50'),(24,'图书编号3','图书名称3','作者3','http://localhost:8080/gaoxiaotushuguan/file/download?fileName=1618663745423.jpg',1,2,1,50,'详情信息1\r\n','2021-04-17 20:49:19');

/*Table structure for table `tushu_liuyan` */

DROP TABLE IF EXISTS `tushu_liuyan`;

CREATE TABLE `tushu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `tushu_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='图书留言';

/*Data for the table `tushu_liuyan` */

insert  into `tushu_liuyan`(`id`,`tushu_id`,`yonghu_id`,`tushu_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,23,1,'123123\r\n','‍131123123\r\n','2021-04-17 20:11:21','2021-04-17 20:11:21'),(2,24,1,'123123123123\r\n','‍123123123‍123123123‍123123123‍123123123\r\n','2021-04-17 20:54:27','2021-04-17 20:54:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `yonghu_xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `yonghu_zhanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `yonghu_banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  `jieyueshuliang` int(11) DEFAULT '0' COMMENT '借阅数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_xuehao`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_zhuzhi`,`yonghu_photo`,`yonghu_xueyuan`,`yonghu_zhanye`,`yonghu_banji`,`create_time`,`jieyueshuliang`) values (1,'111','123456','用户1','学号1',2,'410882200111111111','17711111111','住址1','http://localhost:8080/gaoxiaotushuguan/file/download?fileName=1618645095434.jpg','学院1','专业1','班级1','2021-04-17 15:38:19',0),(2,'222','123456','用户2','学号2',2,'410882200111112222','17711111112','住址2','http://localhost:8080/gaoxiaotushuguan/file/download?fileName=1618645154625.jpg','学院2','专业2','班级2','2021-04-17 15:39:03',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
