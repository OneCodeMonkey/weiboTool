CREATE DATABASE /*!32312 IF NOT EXISTS*/ `weibo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `weibo`;

DROP TABLE IF EXISTS `login_info`;

CREATE TABLE `login_info` (
  `id` int(10) unsigned NOT NULL COMMENT '主键自增ID',
  `name` varchar(100) NOT NULL UNIQUE COMMENT '账户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `enable` int(1) unsigned NOT NULL DEFAULT 1 COMMENT '账户状态，1-->可用，2-->密码错误,0-->被封',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`),
  KEY `index_enable` (`enable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微博账号表';

DROP TABLE IF EXISTS `wbuser`;

CREATE TABLE `wbuser` (
  //
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

DROP TABLE IF EXISTS `seed_ids`;

CREATE TABLE `seed_ids` (
  //
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='种子用户表';

DROP TABLE IF EXISTS `keywords`;

CREATE TABLE `keywords` (
  //
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='话题关键字表';

DROP TABLE IF EXISTS `weibo_data`;

CREATE TABLE `weibo_data` (
  //
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微博feed数据表';

DROP TABLE IF EXISTS `keywords_wbdata`;

CREATE TABLE `keywords_wbdata` (
  //
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微博id和关键字关联表';

DROP TABLE IF EXISTS `weibo_comment`;

CREATE TABLE `weibo_comment` (
  //
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论信息表';

DROP TABLE IF EXISTS `weibo_repost`;

CREATE TABLE `weibo_repost` (
  //
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='转发信息表';

DROP TABLE IF EXISTS `user_relation`;

CREATE TABLE `user_relation` (
  //
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户关系表';

