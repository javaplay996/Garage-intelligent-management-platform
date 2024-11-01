/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhinengguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhinengguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhinengguanli`;

/*Table structure for table `cheku` */

DROP TABLE IF EXISTS `cheku`;

CREATE TABLE `cheku` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '车库名称 Search',
  `location` varchar(200) DEFAULT NULL COMMENT '车库位置',
  `ry_types` int(11) DEFAULT NULL COMMENT '车库主人',
  `garageSize` varchar(11) DEFAULT NULL COMMENT '车库大小',
  `money` int(11) DEFAULT NULL COMMENT '车库价格(天)',
  `ckzt_types` int(11) DEFAULT NULL COMMENT '车库状态',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '车库图片',
  `matter_content` varchar(200) DEFAULT NULL COMMENT '车库内容',
  `thumbsupnum` int(222) DEFAULT '0',
  `crazilynum` int(222) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='洗衣机';

/*Data for the table `cheku` */

insert  into `cheku`(`id`,`name`,`location`,`ry_types`,`garageSize`,`money`,`ckzt_types`,`img_photo`,`matter_content`,`thumbsupnum`,`crazilynum`) values (1,'车库名称1',' 车库位置1',4,'车库大小1',1111,1,'http://localhost:8080/zhinengguanli/file/download?fileName=1615864774357.jpg','<img src=\"http://localhost:8080/zhinengguanli/upload/1615864774357.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/zhinengguanli/upload/1615864774357.jpg\">123212\r\n',3,3),(2,'车库名称2',' 车库位置2',4,'车库大小2',2222,1,'http://localhost:8080/zhinengguanli/file/download?fileName=1615864769378.jpg','<img src=\"http://localhost:8080/zhinengguanli/upload/1615864769378.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/zhinengguanli/upload/1615864769378.jpg\">13321\r\n',11,14),(3,'车库名称3',' 车库位置3',3,'车库大小3',3333,1,'http://localhost:8080/zhinengguanli/file/download?fileName=1615864724171.jpg','<img src=\"http://localhost:8080/zhinengguanli/upload/1615864724166.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/zhinengguanli/upload/1615864724166.jpg\">\r\n',10,13);

/*Table structure for table `chekuzixun` */

DROP TABLE IF EXISTS `chekuzixun`;

CREATE TABLE `chekuzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) DEFAULT NULL COMMENT '资讯标题 Search',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `wenzhanglaiyuan` varchar(200) DEFAULT NULL COMMENT '文章来源',
  `zixunneirong_content` longtext COMMENT '资讯内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='房屋资讯';

/*Data for the table `chekuzixun` */

insert  into `chekuzixun`(`id`,`addtime`,`zixunbiaoti`,`img_photo`,`fabushijian`,`faburen`,`wenzhanglaiyuan`,`zixunneirong_content`) values (91,'2021-02-22 15:21:41','资讯标题1','http://localhost:8080/zhinengguanli/file/download?fileName=1615864362706.jpg','2021-02-22','发布人1','文章来源1','资讯内容1xxxx\r\n'),(92,'2021-02-22 15:21:41','资讯标题2','http://localhost:8080/zhinengguanli/file/download?fileName=1615864357462.jpg','2021-02-22','发布人2','文章来源2','资讯内容2\r\n'),(93,'2021-02-22 15:21:41','资讯标题3','http://localhost:8080/zhinengguanli/file/download?fileName=1615864349381.jpg','2021-02-22','发布人3','文章来源3','资讯内容3\r\n'),(94,'2021-02-22 15:21:41','资讯标题4','http://localhost:8080/zhinengguanli/file/download?fileName=1615864343371.jpg','2021-02-22','发布人4','文章来源4','资讯内容4\r\n');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/zhinengguanli/upload/1615878145319.jpg'),(2,'picture2','http://localhost:8080/zhinengguanli/upload/1615878150011.jpg'),(3,'picture3','http://localhost:8080/zhinengguanli/upload/1615878160284.jpg'),(6,'homepage','http://localhost:8080/zhinengguanli/upload/1615878175509.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-15 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-03-15 11:41:54'),(3,'ckzt_types','车库状态',1,'已租',NULL,'2021-03-15 11:41:54'),(4,'ckzt_types','车库状态',2,'未租',NULL,'2021-03-15 11:41:54');

/*Table structure for table `discusscheku` */

DROP TABLE IF EXISTS `discusscheku`;

CREATE TABLE `discusscheku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615887770692 DEFAULT CHARSET=utf8 COMMENT='歌曲信息评论表';

/*Data for the table `discusscheku` */

insert  into `discusscheku`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (51,'2021-03-11 18:12:00',1,1,'用户名1','评论内容1','回复内容1'),(52,'2021-03-11 18:12:00',2,2,'用户名2','评论内容2','回复内容2'),(53,'2021-03-11 18:12:00',3,3,'用户名3','评论内容3','回复内容3'),(54,'2021-03-11 18:12:00',4,4,'用户名4','评论内容4','回复内容4'),(55,'2021-03-11 18:12:00',5,5,'用户名5','评论内容5','回复内容5'),(56,'2021-03-11 18:12:00',6,6,'用户名6','评论内容6','回复内容6'),(1615887770691,'2021-03-16 17:42:50',2,1,NULL,'eqwwqewq',NULL);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) DEFAULT NULL COMMENT '收藏名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615600822676 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615600822674,'2021-03-16 20:01:19',1,3,'cheku','车库名称3','http://localhost:8080/zhinengguanli/file/download?fileName=1615864724171.jpg'),(1615600822675,'2021-03-16 20:42:26',1,1,'cheku','车库名称1','http://localhost:8080/zhinengguanli/file/download?fileName=1615864774357.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'admin','users','管理员','3uqru3cb5et3nu8g86b9xx8jn6yshbcd','2021-03-13 09:46:36','2021-03-16 21:33:45'),(5,11,'111','yonghu','用户','16wvkz1qohhbae4ghb0gizj4wwugb5yr','2021-03-13 09:49:19','2021-03-13 11:00:32'),(6,1,'小金','users','用户','vmwfn3rjohh885tmqdn98210iipylqo7','2021-03-16 15:31:57','2021-03-16 21:41:41'),(7,3,'车库主人1','users','车库主人','36f7wsg2x5kgrhk8tb4515wxc8rvyv0z','2021-03-16 15:46:47','2021-03-16 21:40:40'),(8,1,'小金','users','车库主人','h611jiwdpycx07xxo4j8mh9wxtgx9gdf','2021-03-16 16:30:53','2021-03-16 17:39:50');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-03-11 18:12:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `money` int(255) DEFAULT '0' COMMENT '余额',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`money`,`role`) values (1,'小金','111','111','http://localhost:8080/zhinengguanli/file/download?fileName=1615863243566.jpg',1,'17796312333',9878903,'用户'),(2,'小札','222','222','http://localhost:8080/zhinengguanli/file/download?fileName=1615863236465.jpg',2,'12312312333',0,'用户'),(3,'车库主人1','333','333','http://localhost:8080/zhinengguanli/file/download?fileName=1615897634328.jpg',1,'17796312333',73326,'车库主人'),(4,'车库主人2','444','444','http://localhost:8080/zhinengguanli/file/download?fileName=1615863236465.jpg',2,'12312312333',81103,'车库主人');

/*Table structure for table `yuyvejilu` */

DROP TABLE IF EXISTS `yuyvejilu`;

CREATE TABLE `yuyvejilu` (
  `id` int(225) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ck_types` int(225) DEFAULT NULL COMMENT '车库id Search',
  `yh_types` int(225) DEFAULT NULL COMMENT '预约用户',
  `ry_types` int(255) DEFAULT NULL COMMENT '车库主人',
  `location` varchar(200) DEFAULT NULL COMMENT '车库位置',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '预约开始时间',
  `day` int(225) DEFAULT NULL COMMENT '预约时长（单位小时）',
  `dayMax` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='预约记录';

/*Data for the table `yuyvejilu` */

insert  into `yuyvejilu`(`id`,`ck_types`,`yh_types`,`ry_types`,`location`,`create_time`,`day`,`dayMax`) values (6,2,1,4,' 车库位置2','2021-03-16 19:54:50',14,31108),(7,1,1,4,' 车库位置1','2021-03-16 20:40:18',13,14443),(8,3,1,3,' 车库位置3','2021-03-16 20:41:58',12,39996);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
