
use carss;



-- 管理员资料表
DROP TABLE IF EXISTS admin;
create table admin(
	
	id int auto_increment primary key COMMENT '编号', 
	account_use tinyint(1) COMMENT '帐号状态',  
	last_time datetime	COMMENT '上次登录时间',
	login_num int COMMENT '登录次数',	
	login_time datetime	COMMENT '登录时间',	
	
	error_num int COMMENT '密码错误次数', 
	error_date datetime COMMENT '密码错误时间', 	
	
	login_name varchar(255) COMMENT '登录名',
 	password varchar(255) COMMENT '查询密码', 
	person_name varchar(255) COMMENT '姓名',
	tel varchar(255) COMMENT '联系电话',
	remark text COMMENT '备注'
	
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='管理员资料表';	

insert into admin(id,account_use,login_name,password,person_name,tel,remark,error_num,login_num) 
				values(1000,1,'admin','admin888','超级管理员','','',0,0);





-- 会员资料表
DROP TABLE IF EXISTS member;
create table member(
	
	id int auto_increment primary key COMMENT '编号',
	account_active tinyint(1) COMMENT '激活状态', 
	last_time datetime	COMMENT '上次登录时间',
	login_num int COMMENT '登录次数',
	login_time datetime	COMMENT '登录时间',	
	dao_time datetime	COMMENT '到记时时间',	
	active_date datetime COMMENT '激活日期',
	error_num int COMMENT '密码错误次数', 
	error_date datetime COMMENT '密码错误时间', 
	register_date datetime COMMENT '会员注册日期',
	level int COMMENT '帐号类型',		
	login_name varchar(255) COMMENT '登录名',
	password varchar(255) COMMENT '查询密码',
	register_id int COMMENT '注册人ID',
	person_name varchar(255) COMMENT '真实姓名',
	card_no varchar(255) COMMENT '身份证号',
	sex varchar(10) COMMENT '性别',
	tel varchar(255) COMMENT '联系电话',
	qq varchar(255) COMMENT 'QQ号码',
	email varchar(255) COMMENT '安全邮箱',
	remark text COMMENT '备注'
	
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='会员资料表';	




-- 车辆信息表
DROP TABLE IF EXISTS car_info;
create table car_info(
	id int auto_increment primary key COMMENT '编号',
	title varchar(50) comment '车辆标题',
	admin_id int comment '录入人',
	commit_date datetime comment '录入时间',
	update_date datetime comment '修改时间',
	update_admin_id int comment '修改人',
	conditions varchar(50) comment '车况',
	ruhushijian datetime COMMENT '会员注册日期',
	travel varchar(50) comment '行程',
	brand_id int comment '品牌ID',
	discharge varchar(10) comment '排量',
	car_type int comment '车辆类型',
	creabox varchar(10) comment '变速箱',
	drive_mode varchar(10) comment '驱动模式',
	color varchar(20) comment '车辆颜色',
	used varchar(20) comment '车辆原用途',
	color_in varchar(20) comment '车辆内色',
	procedures varchar(20) comment '手续',
	seat_num int comment '座位数',
	chair varchar(20) comment '座椅',
	place varchar(20) comment '产地',
	fuel varchar(10)  comment '燃油',
	price varchar (20) comment '价格',
	commission int comment '佣金',
	description text comment '描述',
	image_path varchar(255) comment '照片信息'
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='车辆信息表';	


-- 车辆图片
DROP TABLE IF EXISTS car_img;
create table car_img(
id int auto_increment primary key COMMENT '编号',
car_info_id int comment '所属车辆',
img_path varchar(100) comment '图片地址'
)
ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='车辆图片信息';	
-- 公告表
DROP TABLE IF EXISTS notice;
create table notice(

	id int auto_increment primary key COMMENT '编号',
	top int COMMENT '置顶',				-- 0不置顶，1置顶
	title varchar(255) COMMENT '标题',
	content text COMMENT '正文',                              		
	admin_id int COMMENT '作者',        
	file_num int COMMENT '附件数', 
	oper_ip  varchar(50) COMMENT '操作的IP地址',
	commit_date datetime  COMMENT '操作时间',
	new_date datetime  COMMENT '操作时间',
	catalog_id int comment '所属栏目'                         			
	
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='公告表';


-- 轮播广告
DROP TABLE IF EXISTS ad_roll;
create table ad_roll(
	id int auto_increment primary key COMMENT '编号',
	title varchar(50) comment '名称',
	ad_url varchar(255) comment '广告地址',
	img_path varchar(255) comment '图片地址' 
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='轮播广告';

-- 车辆品牌
DROP TABLE IF EXISTS car_brand;
create table car_brand(
	id int auto_increment primary key COMMENT '编号',
	title varchar(50) comment '品牌名称',
	admin_id int comment '添加人',
	commit_date datetime  COMMENT '操作时间'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='车辆品牌信息表';	


-- 订单信息

DROP TABLE IF EXISTS car_order;
create table car_order(
	id int auto_increment primary key COMMENT '编号',
	car_info_id int comment '车辆ID',
	member_id int comment '所属会员',
	phone varchar(50) comment '预约手机号码',
	order_stats int comment '订单状态',
	yue_date datetime  COMMENT '预约时间',
	commit_date datetime  COMMENT '提交时间'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='订单信息';	


-- 收藏表  
DROP TABLE IF EXISTS car_collection;
create table car_collection(
	id int auto_increment primary key COMMENT '编号',
	car_info_id int comment '车辆ID',
	member_id int comment '所属会员', 
	commit_date datetime  COMMENT '提交时间'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='收藏表';	


-- 文章栏目
DROP TABLE IF EXISTS catalog_notice;
create table catalog_notice(
	id int auto_increment primary key COMMENT '编号', 
	title varchar(50) comment '栏目标题', 
	admin_id int COMMENT '作者',        
	commit_date datetime  COMMENT '创建时间'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='文章栏目';	


-- 图片资源
DROP TABLE IF EXISTS cooperation;
create table cooperation(
	id int auto_increment primary key COMMENT '编号', 
	title varchar(50) comment '标题',
	url_link varchar(255) comment '网址',
	logo_path varchar(255) comment '图片地址', 
	admin_id int COMMENT '作者',        
	img_type int comment '图片类型 10合作品牌，20是轮播',
	commit_date datetime  COMMENT '创建时间'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='图片资源';	


-- 贷款申请表
DROP TABLE IF EXISTS loan;
create table loan(
	id int auto_increment primary key COMMENT '编号', 
	dkjr double comment '贷款金额',
	ch varchar(50) comment '称呼',
	sjhm varchar(50) comment '手机号码', 
	ppcx varchar(50) COMMENT '品牌系列',        
	clnf varchar(50) comment '车辆年份',
	qcpl varchar(50) comment '汽车排量',
	xslc varchar(50) comment '行驶里程',
	clszd varchar(50) comment '车辆位置',
	dkfs varchar(50) comment '贷款方式',
	commit_date datetime  COMMENT '创建时间'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='贷款申请表';	


alter table car_info add column original_price varchar(20); -- 原价格
alter table car_info add column  rec_state varchar(10);  -- 推荐车
alter table car_info add column  hot_state varchar(10);  -- 热门车
alter table car_info modify price double;
alter table car_info add column  price_int int;  -- 车辆价格

alter table car_info add column sell_state int; -- 卖出标识
alter table car_info add column yue_num int;	-- 预约人数
alter table car_info add column cang_num int;	-- 收藏人数
alter table car_info add column xian_date datetime; -- 限时
alter table car_info add column xian_state int; -- 限时状态

