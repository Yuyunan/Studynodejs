-- 创建数据库
CREATE DATABASE `ynn` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE `user` (
	`user_id` int unsigned NOT NULL AUTO_INCREMENT,
	-- 邮箱或者手机号
	`user_useremail` char(64)  NOT NULL DEFAULT '',
	-- 用户密码
	`user_password` varchar(64)  NOT NULL DEFAULT '',
	-- 昵称
	`user_username` varchar(64)  NOT NULL DEFAULT '',
	-- 注册时间
	`registertime` varchar(10)  NOT NULL DEFAULT '',
	-- 用户状态
	`status` tinyint(1) unsigned NOT NULL DEFAULT 1,
	PRIMARY KEY (`user_id`)
  );

-- 新建一个分类表
CREATE TABLE `type` (
	`type_id` int unsigned NOT NULL AUTO_INCREMENT,
	`type_title` varchar(64)  NOT NULL DEFAULT '',
	PRIMARY KEY (`type_id`)
);


INSERT INTO `type`(`type_title`) VALUES
('首页'),
('百家'),
('财经'),
('娱乐'),
('体育'),
('互联网'),
('时尚'),
('汽车'),
('国内');


-- 新建一个新闻列表
CREATE TABLE `news` (
	`news_id` int unsigned NOT NULL AUTO_INCREMENT,
	-- 新闻类型
	`news_type` char(200)  NOT NULL DEFAULT '',
	-- 新闻标题
	`news_title` varchar(200)  NOT NULL DEFAULT '',
	-- 新闻图片路径
	`news_img` varchar(200)  NOT NULL DEFAULT '',
	-- 新闻时间
	`news_time` varchar(200)  NOT NULL DEFAULT '',
	-- 新闻标签
	`news_tag` char(100)  NOT NULL DEFAULT '',
	PRIMARY KEY (`news_id`)
);





INSERT INTO `news` (`news_type`,`news_title`,`news_img`,`news_time`,`news_tag`) VALUES
('首页','广州高考网上报名时间公布','/img/1.jpg','2016-11-11','精品'),
('首页','广州高考网上报名时间公布','/img/1.jpg','2016-11-11','精品'),
('时尚','absdjddata/','/img/1.jpg','2016-11-11','精品'),
('时尚','absdjddata/','/img/1.jpg','2016-11-11','精品'),
('首页','absdjddata/','/img/1.jpg','2016-11-11','精品'),
('首页','广州高考网上报名时间公布','/img/1.jpg','2016-11-11','精品'),
('热点','fhwuhuuhu','/img/1.jpg','2016-11-11','精品'),
('热点','fhwuhuuhu','/img/1.jpg','2016-11-11','精品'),
('首页','fhwuhuuhu','/img/1.jpg','2016-11-11','精品');




















