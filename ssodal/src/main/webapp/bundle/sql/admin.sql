
create table admin (
	admin_no number(20),
	admin_id varchar2(20) primary key,
	admin_pwd varchar2(200) not null,
	admin_name varchar2(20) not null,
	admin_date date
);


select * from admin;