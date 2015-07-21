
use carss;



-- ����Ա���ϱ�
DROP TABLE IF EXISTS admin;
create table admin(
	
	id int auto_increment primary key COMMENT '���', 
	account_use tinyint(1) COMMENT '�ʺ�״̬',  
	last_time datetime	COMMENT '�ϴε�¼ʱ��',
	login_num int COMMENT '��¼����',	
	login_time datetime	COMMENT '��¼ʱ��',	
	
	error_num int COMMENT '����������', 
	error_date datetime COMMENT '�������ʱ��', 	
	
	login_name varchar(255) COMMENT '��¼��',
 	password varchar(255) COMMENT '��ѯ����', 
	person_name varchar(255) COMMENT '����',
	tel varchar(255) COMMENT '��ϵ�绰',
	remark text COMMENT '��ע'
	
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='����Ա���ϱ�';	

insert into admin(id,account_use,login_name,password,person_name,tel,remark,error_num,login_num) 
				values(1000,1,'admin','admin888','��������Ա','','',0,0);





-- ��Ա���ϱ�
DROP TABLE IF EXISTS member;
create table member(
	
	id int auto_increment primary key COMMENT '���',
	account_active tinyint(1) COMMENT '����״̬', 
	last_time datetime	COMMENT '�ϴε�¼ʱ��',
	login_num int COMMENT '��¼����',
	login_time datetime	COMMENT '��¼ʱ��',	
	dao_time datetime	COMMENT '����ʱʱ��',	
	active_date datetime COMMENT '��������',
	error_num int COMMENT '����������', 
	error_date datetime COMMENT '�������ʱ��', 
	register_date datetime COMMENT '��Աע������',
	level int COMMENT '�ʺ�����',		
	login_name varchar(255) COMMENT '��¼��',
	password varchar(255) COMMENT '��ѯ����',
	register_id int COMMENT 'ע����ID',
	person_name varchar(255) COMMENT '��ʵ����',
	card_no varchar(255) COMMENT '���֤��',
	sex varchar(10) COMMENT '�Ա�',
	tel varchar(255) COMMENT '��ϵ�绰',
	qq varchar(255) COMMENT 'QQ����',
	email varchar(255) COMMENT '��ȫ����',
	remark text COMMENT '��ע'
	
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='��Ա���ϱ�';	




-- ������Ϣ��
DROP TABLE IF EXISTS car_info;
create table car_info(
	id int auto_increment primary key COMMENT '���',
	title varchar(50) comment '��������',
	admin_id int comment '¼����',
	commit_date datetime comment '¼��ʱ��',
	update_date datetime comment '�޸�ʱ��',
	update_admin_id int comment '�޸���',
	conditions varchar(50) comment '����',
	ruhushijian datetime COMMENT '��Աע������',
	travel varchar(50) comment '�г�',
	brand_id int comment 'Ʒ��ID',
	discharge varchar(10) comment '����',
	car_type int comment '��������',
	creabox varchar(10) comment '������',
	drive_mode varchar(10) comment '����ģʽ',
	color varchar(20) comment '������ɫ',
	used varchar(20) comment '����ԭ��;',
	color_in varchar(20) comment '������ɫ',
	procedures varchar(20) comment '����',
	seat_num int comment '��λ��',
	chair varchar(20) comment '����',
	place varchar(20) comment '����',
	fuel varchar(10)  comment 'ȼ��',
	price varchar (20) comment '�۸�',
	commission int comment 'Ӷ��',
	description text comment '����',
	image_path varchar(255) comment '��Ƭ��Ϣ'
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='������Ϣ��';	


-- ����ͼƬ
DROP TABLE IF EXISTS car_img;
create table car_img(
id int auto_increment primary key COMMENT '���',
car_info_id int comment '��������',
img_path varchar(100) comment 'ͼƬ��ַ'
)
ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='����ͼƬ��Ϣ';	
-- �����
DROP TABLE IF EXISTS notice;
create table notice(

	id int auto_increment primary key COMMENT '���',
	top int COMMENT '�ö�',				-- 0���ö���1�ö�
	title varchar(255) COMMENT '����',
	content text COMMENT '����',                              		
	admin_id int COMMENT '����',        
	file_num int COMMENT '������', 
	oper_ip  varchar(50) COMMENT '������IP��ַ',
	commit_date datetime  COMMENT '����ʱ��',
	new_date datetime  COMMENT '����ʱ��',
	catalog_id int comment '������Ŀ'                         			
	
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='�����';


-- �ֲ����
DROP TABLE IF EXISTS ad_roll;
create table ad_roll(
	id int auto_increment primary key COMMENT '���',
	title varchar(50) comment '����',
	ad_url varchar(255) comment '����ַ',
	img_path varchar(255) comment 'ͼƬ��ַ' 
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='�ֲ����';

-- ����Ʒ��
DROP TABLE IF EXISTS car_brand;
create table car_brand(
	id int auto_increment primary key COMMENT '���',
	title varchar(50) comment 'Ʒ������',
	admin_id int comment '�����',
	commit_date datetime  COMMENT '����ʱ��'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='����Ʒ����Ϣ��';	


-- ������Ϣ

DROP TABLE IF EXISTS car_order;
create table car_order(
	id int auto_increment primary key COMMENT '���',
	car_info_id int comment '����ID',
	member_id int comment '������Ա',
	phone varchar(50) comment 'ԤԼ�ֻ�����',
	order_stats int comment '����״̬',
	yue_date datetime  COMMENT 'ԤԼʱ��',
	commit_date datetime  COMMENT '�ύʱ��'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='������Ϣ';	


-- �ղر�  
DROP TABLE IF EXISTS car_collection;
create table car_collection(
	id int auto_increment primary key COMMENT '���',
	car_info_id int comment '����ID',
	member_id int comment '������Ա', 
	commit_date datetime  COMMENT '�ύʱ��'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='�ղر�';	


-- ������Ŀ
DROP TABLE IF EXISTS catalog_notice;
create table catalog_notice(
	id int auto_increment primary key COMMENT '���', 
	title varchar(50) comment '��Ŀ����', 
	admin_id int COMMENT '����',        
	commit_date datetime  COMMENT '����ʱ��'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='������Ŀ';	


-- ͼƬ��Դ
DROP TABLE IF EXISTS cooperation;
create table cooperation(
	id int auto_increment primary key COMMENT '���', 
	title varchar(50) comment '����',
	url_link varchar(255) comment '��ַ',
	logo_path varchar(255) comment 'ͼƬ��ַ', 
	admin_id int COMMENT '����',        
	img_type int comment 'ͼƬ���� 10����Ʒ�ƣ�20���ֲ�',
	commit_date datetime  COMMENT '����ʱ��'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='ͼƬ��Դ';	


-- ���������
DROP TABLE IF EXISTS loan;
create table loan(
	id int auto_increment primary key COMMENT '���', 
	dkjr double comment '������',
	ch varchar(50) comment '�ƺ�',
	sjhm varchar(50) comment '�ֻ�����', 
	ppcx varchar(50) COMMENT 'Ʒ��ϵ��',        
	clnf varchar(50) comment '�������',
	qcpl varchar(50) comment '��������',
	xslc varchar(50) comment '��ʻ���',
	clszd varchar(50) comment '����λ��',
	dkfs varchar(50) comment '���ʽ',
	commit_date datetime  COMMENT '����ʱ��'
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='���������';	


alter table car_info add column original_price varchar(20); -- ԭ�۸�
alter table car_info add column  rec_state varchar(10);  -- �Ƽ���
alter table car_info add column  hot_state varchar(10);  -- ���ų�
alter table car_info modify price double;
alter table car_info add column  price_int int;  -- �����۸�

alter table car_info add column sell_state int; -- ������ʶ
alter table car_info add column yue_num int;	-- ԤԼ����
alter table car_info add column cang_num int;	-- �ղ�����
alter table car_info add column xian_date datetime; -- ��ʱ
alter table car_info add column xian_state int; -- ��ʱ״̬

