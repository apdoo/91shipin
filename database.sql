--用户表     添加用户表id主键自增
CREATE TABLE user(
  id int,
	username varchar(20),
  password varchar(20),
	email varchar(30),
	signupTime varchar(30),
	points int,
	type int,
	loginIp varchar(20),
	loginTime  varchar(30),
	temp   varchar(20)
)default charset=utf8;
alter table user modify id int auto_increment primary key;