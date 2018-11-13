-- 운영db에는 없는 테이블
select * from NOTEXISTSINPRD;

--Board 초기화
delete from board;

insert into board values ('1','Q&A 게시판','Y','brown','18/10/18');
insert into board values ('2','안보이는게시판','N','1','18/10/23');
insert into board values ('3','자유게시판','Y','1','18/10/22');
insert into board values ('4','자유없는게시판','Y','1','18/10/23');