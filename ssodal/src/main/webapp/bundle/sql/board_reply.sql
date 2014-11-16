
create table board_reply(
	board_reply_no int primary key,
	board_reply_name varchar2(20) not null,
	board_reply_star int default 0,
	board_reply_content varchar2(200) not null,
	board_reply_origin int not null,
	board_reply_date date
);

drop table board_reply;

create sequence board_reply_sequence increment by 1 start with 1 nocache;

select * from board_reply order by board_reply_no desc;

insert into board_reply (board_reply_no, board_reply_name,board_reply_star, board_reply_content,board_reply_origin,board_reply_date)
values (board_reply_sequence.nextval, '조민지','1','내용','1', sysdate);

drop sequence board_reply_sequence;