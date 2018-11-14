   
   create table rangers(
   rangersId VARCHAR2(50),
   CONSTRAINT pk_rangers primary key (rangersID)
   );

alter table rangers ADD(name varchar2(50));

insert into rangers values ('brown','브라운');
insert into rangers values ('conny','코니');
insert into rangers values ('moon','문');
create table notexistsinprd(
    id varchar2(2)
);
-- 운영db에는 없는 테이블
select * from NOTEXISTSINPRD;

-- 테스트 코드가 실행되기 전에 Rangers 데이터 삭제
delete from rangers;

--rangers 초기 데이터 3건 입력
insert into rangers values ('brown','브라운');
insert into rangers values ('conny','코니');
insert into rangers values ('moon','문');


select * from rangers;

select * from newjspuser;

CREATE TABLE newjspuser AS
SELECT * FROM jspuser;
drop table newjspuser;
commit;
ALTER TABLE newjspuser RENAME TO jspuser;

-- JSP USER 삭제후 다시 삽입한다.
delete from jspuser;
-- inset 구문은 만들어준다.
select 'insert into jspuser values (''' || userid || ''',''' || name
|| ''',''' || pass|| ''',''' || addr1|| ''',''' || addr2|| ''',''' || zipcd
|| ''',''' || birth|| ''',''' || email|| ''',''' || tel|| ''',''' || profile|| ''');'
 from jspuser;

-- 초기화 코드
delete from calendar;

-- 달력월단위
insert into calendar
select to_char(to_date('201811'|| '01') + level -1, 'yyyyMMdd') ymd,
     sysdate
from dual
connect by level-1 <= last_day(to_date('201811' || '01'))- to_date('201811' || '01');

alter table calendar drop column batchid;


-- 달력월단위
select to_char(to_date('20180101') + level -1, 'yyyyMMdd') today,
       to_char(last_day(sysdate),'yyyyMMdd') lastday
from dual
connect by level-1 <= last_day('20181201') - to_date('20180101');



select to_date('20180101') from dual;
-- 년단위
select to_date('201801' + level -1) today,
       to_char(last_day(sysdate),'yyyyMMdd') lastday
from dual
connect by level-1 <= last_day(sysdate)- sysdate;




--캘린더 테이블 
create table calendar (
 ymd varchar2(8),
 regdt date
);
--batchch sequence
create sequence SEQ_batchid Increment by 1 start with 1 cache 2;


--애음주기
월 수 금  : 야쿠르트 1개씩
화 목     : 월 1개씩

A고객 20181105 야쿠르트 1개
A고객 20181106 윌 1개
A고객 20181107 야쿠르트 1개
A고객 20181108 윌 1개
A고객 20181109 야쿠르트 1개
...

-- 일:1 월:2 화:3 수:4 목:5 금:6 토:7
select to_char(sysdate , 'd') from dual;











------ board ddinit sql -------------
create table NOTEXISTSINPRD
( no varchar2(50));

select * from board;
-- JSP USER 삭제후 다시 삽입한다.
delete from board;
-- inset 구문은 만들어준다.
select 'insert into board values (''' || no || ''',''' || name
|| ''',''' || use|| ''',''' || creator|| ''',''' || rdate|| ''');'
from board;






