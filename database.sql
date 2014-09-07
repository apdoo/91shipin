--用户表     添加用户表id主键自增           //temp 用来存sessionid
CREATE TABLE user(
  id int NOT NULL AUTO_INCREMENT primary key,
	username varchar(20),
  password varchar(20),
	email varchar(30),
	signupTime varchar(30),
	points int,
	type int,
	loginIp varchar(20),
	loginTime  varchar(30),
	temp   varchar(100)
)default charset=utf8;

--视频资料表
CREATE TABLE vedio(
	 title varchar(120),
   preImgSrc varchar(100),
	 vedioUrl varchar(100),
	 infotime varchar(20),
	 videoId varchar(100),
	 updatetime varchar(30),
	 flag int,
	 rate int,
	 views int,
	 favourite int
)default charset=utf8;

--帖子表    MySQL 中的 VARCHAR(255) 可以存放 1 - 255 个 UTF-8 格式的汉字 ...
CREATE TABLE post(
  id int NOT NULL AUTO_INCREMENT primary key,
  type int,
  username varchar(20),
  time varchar(30),
  title varchar(50),
  content varchar(500),
  postindex int,
  status int
)default charset=utf8;
--帖子关联回复表
 CREATE TABLE repost(
    id int NOT NULL AUTO_INCREMENT primary key,
    postid int,
    username int,
    rePostTime int,
    content varchar(200),
    status int
 )default charset=utf8;
--http://www.blogjava.net/GavinMiao/archive/2011/11/22/364499.html
--导出表 MySQLdump -h localhost -u root -p test vedio>e:\mytable.sql
--导入 MySQL -h localhost -u root -p test < e:\mytable.sql
--替换字段 某个值 update vedio set videoId=replace(videoId,'f:/vedios/new/','');
--update vedio set videoId=replace(videoId,'c:/vedios/default/','');
--update vedio set videoId=replace(videoId,'c:/vedios/new20140830/','');
--增加字段 alter table vedio add rate int,add views int,add favourite int;



