--------------------------------------------------------
--  파일이 생성됨 - 수요일-11월-14-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQATT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQATT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 34 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQATTACHMENT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQATTACHMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQBOARD
--------------------------------------------------------

   CREATE SEQUENCE  "SEQBOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQCMT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQCMT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 67 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQCOMMENTS
--------------------------------------------------------

   CREATE SEQUENCE  "SEQCOMMENTS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQGROUPPOST
--------------------------------------------------------

   CREATE SEQUENCE  "SEQGROUPPOST"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 172 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQPOST
--------------------------------------------------------

   CREATE SEQUENCE  "SEQPOST"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 149 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ATTACHMENT
--------------------------------------------------------

  CREATE TABLE "ATTACHMENT" 
   (	"NO" VARCHAR2(50 BYTE), 
	"POSTNO" VARCHAR2(50 BYTE), 
	"ATT" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "BOARD" 
   (	"NO" VARCHAR2(50 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"USE" VARCHAR2(1 BYTE), 
	"CREATOR" VARCHAR2(14 BYTE), 
	"RDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "NO" IS '게시판번호';
   COMMENT ON COLUMN "NAME" IS '게시판이름';
   COMMENT ON COLUMN "USE" IS '게시판사용여부';
   COMMENT ON COLUMN "CREATOR" IS '게시판등록자';
   COMMENT ON COLUMN "RDATE" IS '게시판등록일';
   COMMENT ON TABLE "BOARD"  IS '게시판';
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "COMMENTS" 
   (	"NO" VARCHAR2(50 BYTE), 
	"POSTNO" VARCHAR2(50 BYTE), 
	"CONTENT" VARCHAR2(500 BYTE), 
	"WRITER" VARCHAR2(14 BYTE), 
	"RDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "COMMENTS"."NO" IS '댓글번호';
   COMMENT ON COLUMN "COMMENTS"."POSTNO" IS '게시글번호';
   COMMENT ON COLUMN "COMMENTS"."CONTENT" IS '댓글내용';
   COMMENT ON COLUMN "COMMENTS"."WRITER" IS '댓글작성자';
   COMMENT ON COLUMN "COMMENTS"."RDATE" IS '댓글작성일시';
   COMMENT ON TABLE "COMMENTS"  IS '댓글';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"ID" VARCHAR2(14 BYTE), 
	"NAME" VARCHAR2(50 BYTE), 
	"PASS" VARCHAR2(255 BYTE), 
	"TEL" VARCHAR2(30 BYTE), 
	"BIRTH" DATE, 
	"EMAIL" VARCHAR2(40 BYTE), 
	"ZIPCODE" VARCHAR2(5 BYTE), 
	"ADDR1" VARCHAR2(255 BYTE), 
	"ADDR2" VARCHAR2(255 BYTE), 
	"PROFILE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "MEMBER"."ID" IS '아이디';
   COMMENT ON COLUMN "MEMBER"."NAME" IS '이름';
   COMMENT ON COLUMN "MEMBER"."PASS" IS '비밀번호';
   COMMENT ON COLUMN "MEMBER"."TEL" IS '핸드폰번호';
   COMMENT ON COLUMN "MEMBER"."BIRTH" IS '생년월일';
   COMMENT ON COLUMN "MEMBER"."EMAIL" IS '이메일';
   COMMENT ON COLUMN "MEMBER"."ZIPCODE" IS '우편번호';
   COMMENT ON COLUMN "MEMBER"."ADDR1" IS '도로명주소';
   COMMENT ON COLUMN "MEMBER"."ADDR2" IS '상세주소';
   COMMENT ON COLUMN "MEMBER"."PROFILE" IS '프로필사진';
   COMMENT ON TABLE "MEMBER"  IS '회원';
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "POST" 
   (	"NO" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(90 BYTE), 
	"CONTENT" CLOB, 
	"RDATE" DATE, 
	"WRITER" VARCHAR2(14 BYTE), 
	"BOARDNO" VARCHAR2(50 BYTE), 
	"RECURSION" VARCHAR2(50 BYTE), 
	"GROUPNO" VARCHAR2(50 BYTE), 
	"ISDELETE" VARCHAR2(3 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "POST"."NO" IS '게시글번호';
   COMMENT ON COLUMN "POST"."TITLE" IS '제목';
   COMMENT ON COLUMN "POST"."CONTENT" IS '내용';
   COMMENT ON COLUMN "POST"."RDATE" IS '작성일시';
   COMMENT ON COLUMN "POST"."WRITER" IS '작성자 ID';
   COMMENT ON COLUMN "POST"."BOARDNO" IS '게시판번호';
   COMMENT ON COLUMN "POST"."RECURSION" IS '부모게시글번호';
   COMMENT ON TABLE "POST"  IS '게시글';
REM INSERTING into ATTACHMENT
SET DEFINE OFF;
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('14','99','D:\T_Development\d_Study\JSP\upload\이클립스 단축키 정리.txt');
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('15','100','D:\T_Development\d_Study\JSP\upload\이클립스 개발설정.pdf');
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('16','100','D:\T_Development\d_Study\JSP\upload\이클립스 단축키 정리.txt');
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('17','101','D:\T_Development\d_Study\JSP\upload\git.txt');
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('18','101','D:\T_Development\d_Study\JSP\upload\이클립스 개발설정.pdf');
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('19','102','D:\T_Development\d_Study\JSP\upload\이클립스 단축키 정리.txt');
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('20','102','D:\T_Development\d_Study\JSP\upload\이클립스 개발설정.pdf');
REM INSERTING into BOARD
SET DEFINE OFF;
Insert into BOARD (NO,NAME,USE,CREATOR,RDATE) values ('1','Q&A 게시판','Y','brown',to_date('18/10/18','RR/MM/DD'));
Insert into BOARD (NO,NAME,USE,CREATOR,RDATE) values ('2','안보이는게시판','N','1',to_date('18/10/23','RR/MM/DD'));
Insert into BOARD (NO,NAME,USE,CREATOR,RDATE) values ('3','자유게시판','Y','1',to_date('18/10/22','RR/MM/DD'));
Insert into BOARD (NO,NAME,USE,CREATOR,RDATE) values ('4','자유없는게시판','Y','1',to_date('18/10/23','RR/MM/DD'));
REM INSERTING into COMMENTS
SET DEFINE OFF;
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('12','64','답글을 합시다','1',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('1','62','댓글좀 달아!!!주세요!!','1',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('13','75','ㄴㅇㄹ','1',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('4','62','무플방지 위원','1',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('5','62','무플방지 위원회','brown',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('6','62','무플방지 위원회','brown',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('7','62','의원회는 죽었다!','1',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('10','62','달리니','1',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('11','62','달리네?','1',to_date('18/10/23','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('27','75','brown 댓글 입니다.','brown',to_date('18/10/24','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('47','62','무플방지 위원회!','brown',to_date('18/10/29','RR/MM/DD'));
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('48','62','무플방지 위!원','1',to_date('18/10/29','RR/MM/DD'));
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('brown','브라운','6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b','123123123',to_date('18/08/08','RR/MM/DD'),'brown@gmail.com','34940','대전 중구 중앙로 76','2층 대덕인재개발원','/user/profile/moon.png');
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('sally','셀리','97897a111d485af1048bece173d2980a15870ca079281b79c7ca755356847602','123123123',to_date('18/04/27','RR/MM/DD'),'brown@gmail.com','34940','대전광역시 중구 중앙로 76(대흥동)','영민빌딩 2층 대덕인재개발월','/user/profile/sally.png');
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('james','제임스','249bbac706e15fc9f93dba1ba00b5b7cc5a4b6f2a7d57a4a50b944dbd45ecd41','123123123',to_date('18/02/14','RR/MM/DD'),'brown@gmail.com','34940','대전광역시 중구 중앙로 76(대흥동)','영민빌딩 2층 대덕인재개발월','/user/profile/james.png');
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('moon','문','003d1c81a2397bb51dface79a897decd50e7f4d8ea7fd547c8506d80e282905e','123123123',to_date('18/10/06','RR/MM/DD'),'brown@gmail.com','34940','대전광역시 중구 중앙로 76(대흥동)','영민빌딩 2층 대덕인재개발월','/user/profile/moon.png');
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('cony','코니','9299a16ffb4d721536dddc82d646c9ed3f78971f5a3fcd3439ef223a35903cda','123123123',to_date('18/08/08','RR/MM/DD'),'brown@gmail.com','34940','대전광역시 중구 중앙로 76(대흥동)','영민빌딩 2층 대덕인재개발월','/user/profile/cony.png');
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx1','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx2','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx3','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx4','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx5','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx6','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx7','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx8','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx9','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx10','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx11','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx13','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx14','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx16','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx17','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx19','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx20','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx22','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx23','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx25','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx26','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx28','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx29','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx31','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx32','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx34','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx36','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx37','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx39','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx40','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx42','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx43','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx45','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx46','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx48','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx49','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx51','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx52','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx53','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx54','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx55','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx56','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx57','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx58','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx59','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx60','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx61','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx62','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx63','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx64','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx65','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx66','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx68','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx69','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx71','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx72','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx74','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx75','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx77','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx79','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx80','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx82','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx83','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx85','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx86','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx88','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx89','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx91','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx92','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx94','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx95','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx97','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx98','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx100','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx12','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx15','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx18','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx21','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx24','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx27','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx30','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx33','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx35','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx38','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx41','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx44','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx47','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx50','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx67','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx70','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx73','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx76','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx78','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx81','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx84','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx87','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx90','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx93','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx96','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('xxxx99','xxxx','94d791f042c409c0cb2db18bb04c976e405700782417ab966b64f3e942dba48f','123123123',to_date('18/10/10','RR/MM/DD'),'xxxx@gmail.com','34940','대전시 중구 대흥동 76','2층 대덕인재개발원',null);
Insert into MEMBER (ID,NAME,PASS,TEL,BIRTH,EMAIL,ZIPCODE,ADDR1,ADDR2,PROFILE) values ('1','구인수','6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b','010-9947-0728',to_date('86/08/22','RR/MM/DD'),'kkuinsoo@gmail.com','35398','대전광역시 서구 구봉로 419','101동 509호','/user/profile/moon.png');
REM INSERTING into POST
SET DEFINE OFF;
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('33','test122',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'33',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('34','íì¤í¸ë¥¼ ìí ê¸ ìëë¤.',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'34',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('35','테스트 중입니다.',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'35',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('36','화면 넘어가 라',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'36',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('37','첨부파일 도전',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'37',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('38','맨날 터져!',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'38',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('11','제목은 지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'sally','BD1',null,'1',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('12','제목은 지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'sally','BD1',null,'2',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('39','페이징 테스트',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'39',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('13','제목은 지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'sally','BD1',null,'3',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('15','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'james','BD1','11',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('16','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'moon','BD1','12',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('17','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'moon','BD1','13',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('40','ㄴㄹㄴ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'40',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('41','1',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'41',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('43','1',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'43',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('44','ㄴㅇㄹ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'44',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('45','ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'45',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('46','ㅇㄹㅇㄹ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'46',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('47','파일전송 테스트',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'47',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('48','되징',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'48',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('18','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'cony','BD1','11',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('19','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'xxxx1','BD1','13',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('20','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'xxxx2','BD1','11',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('21','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'brown','BD1','12',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('22','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'brown','BD1','20',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('23','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'brown','BD1','19',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('24','지금 달려갑니다.',to_date('18/10/18','RR/MM/DD'),'brown','BD1','19',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('31','test1',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'15',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('32','test122',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'32',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('49','화면 변경',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'49',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('50','화면아 오라',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'50',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('51','메인으로 가자',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'51',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('52','그림 넣어 볼까?',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'52',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('53','첨부해줭',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'53',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('54','첨부하자',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'54',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('55','sdf',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'55',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('56','ㄴㅇㄹ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'56',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('57','ㄴㅇㄹㄴㅇ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'57',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('58','ㄴㅇㄹ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'58',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('59','ㄴㅇㄹ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'59',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('60','ㄴㅇㄹ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'60',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('61','ㄴㅇㄹ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'61',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('62','ㅅㄷㅅ',to_date('18/10/22','RR/MM/DD'),'1','BD1',null,'62',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('63','테스트중입니다.',to_date('18/10/23','RR/MM/DD'),'1','BD1',null,'72',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('64','ㄴㅇㄹㄴㅇㄹ',to_date('18/10/23','RR/MM/DD'),'1','BD1',null,'73',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('65','test1',to_date('18/10/23','RR/MM/DD'),'1','BD1','62',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('66','test',to_date('18/10/23','RR/MM/DD'),'1','BD1','63',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('67','testttttttttttt',to_date('18/10/23','RR/MM/DD'),'1','BD1','64',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('68','ddddddddddd',to_date('18/10/23','RR/MM/DD'),'1','BD1','67',null,null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('69','dddddddddd',to_date('18/10/23','RR/MM/DD'),'1','BD1','68','74',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('70','asaaaaaaaaaaa',to_date('18/10/23','RR/MM/DD'),'1','BD1','69','75',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('71','답글 테스트01',to_date('18/10/23','RR/MM/DD'),'1',null,null,'76',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('72','자유게시판 테스트',to_date('18/10/23','RR/MM/DD'),'1',null,null,'77',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('73','자유게시판 입니다.',to_date('18/10/23','RR/MM/DD'),'1','BD43',null,'78',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('74','자유 답글 1 입니다.',to_date('18/10/23','RR/MM/DD'),'1','BD43','73','79',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('75','첨부파일 합시다',to_date('18/10/23','RR/MM/DD'),'1','BD43',null,'80',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('76','자유답글 3입니다.',to_date('18/10/23','RR/MM/DD'),'1','BD43','74','81',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('77','자유답글 1-4입니다.',to_date('18/10/23','RR/MM/DD'),'1','BD43','74','82',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('78','자유답글 1-4에 1 입니다.',to_date('18/10/23','RR/MM/DD'),'1','BD43','77','83',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('83','Brown 답글 입니다.',to_date('18/10/24','RR/MM/DD'),'brown','BD43','75','92',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('84','Sally 답글 입니다.',to_date('18/10/24','RR/MM/DD'),'sally','BD43','83','93',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('85','첨부파일 테스중 입니다.',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'94',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('86','첨부파일 테스중 입니다.',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'95',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('87','첨부파일 테스중 입니다.',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'96',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('88','첨부파일 테스중 입니다.',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'97',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('89','첨부파일 1',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'98',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('90','첨부파일 1',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'99',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('91','첨부파일2',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'100',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('92','첨부파일2',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'101',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('93','첨부파일 2',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'102',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('94','첨부파일 2',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'103','Y');
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('95','첨부파일 2',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'104',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('98','첨부파일 2',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'105',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('99','첨부파일2',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'106','Y');
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('100','첨부파일테슽 3갑니다.',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'107','Y');
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('101','답글 첨부 갑니다.',to_date('18/10/24','RR/MM/DD'),'1','BD1','100','108',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('102','수정테스트용 게시판',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'109',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('103','글씨기 테스트',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'110',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('104','post01',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'111',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('105','﻿구인수',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'112',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('106','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'113',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('107','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'114',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('108','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'115',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('109','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'116',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('110','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'117',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('111','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','108','118',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('112','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','111','119',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('113','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','112','120',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('114','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','113','121',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('115','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'122',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('116','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','112','123',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('117','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','115','124',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('118','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','117','125',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('119','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','118','126',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('120','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','115','127',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('121','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'128',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('122','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'129',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('123','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','121','130',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('124','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','115','131',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('125','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','123','132',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('126','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','125','133',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('127','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','115','134',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('128','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','127','135',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('129','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','128','136',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('130','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','126','137',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('131','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','130','138',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('132','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'139',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('133','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','123','140',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('134','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','133','141',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('135','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','122','142',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('136','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','135','143',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('137','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','136','144',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('138','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','135','145',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('139','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','132','146',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('140','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','137','147',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('141','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','132','148',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('142','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1',null,'149',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('143','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','141','150',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('144','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','143','151',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('145','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','142','152',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('146','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','145','153',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('147','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','146','154',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('148','구인수 도배중',to_date('18/10/24','RR/MM/DD'),'1','BD1','146','155',null);
--------------------------------------------------------
--  DDL for Index ATTACHMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATTACHMENT_PK" ON "ATTACHMENT" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IDX_ATTACHMENT_01
--------------------------------------------------------

  CREATE INDEX "IDX_ATTACHMENT_01" ON "ATTACHMENT" ("POSTNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index IDX_COMMENTS_01
--------------------------------------------------------

  CREATE INDEX "IDX_COMMENTS_01" ON "COMMENTS" ("POSTNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BOARD" ON "BOARD" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_COMMENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COMMENTS" ON "COMMENTS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MEMBER" ON "MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_POST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_POST" ON "POST" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ATTACHMENT
--------------------------------------------------------

  ALTER TABLE "ATTACHMENT" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "ATTACHMENT" ADD CONSTRAINT "ATTACHMENT_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("USE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("RDATE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "COMMENTS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "COMMENTS" ADD CONSTRAINT "PK_COMMENTS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("TEL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ADDR1" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "POST" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "POST" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "POST" ADD CONSTRAINT "PK_POST" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ATTACHMENT
--------------------------------------------------------

  ALTER TABLE "ATTACHMENT" ADD CONSTRAINT "FK_POST_TO_ATTACHMENT" FOREIGN KEY ("POSTNO")
	  REFERENCES "POST" ("NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" ADD CONSTRAINT "FK_MEMBER_TO_BOARD" FOREIGN KEY ("CREATOR")
	  REFERENCES "MEMBER" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD CONSTRAINT "FK_MEMBER_TO_COMMENTS" FOREIGN KEY ("WRITER")
	  REFERENCES "MEMBER" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "COMMENTS" ADD CONSTRAINT "FK_POST_TO_COMMENTS" FOREIGN KEY ("POSTNO")
	  REFERENCES "POST" ("NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "POST" ADD CONSTRAINT "FK_MEMBER_TO_POST" FOREIGN KEY ("WRITER")
	  REFERENCES "MEMBER" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "POST" ADD CONSTRAINT "FK_POST_TO_POST" FOREIGN KEY ("RECURSION")
	  REFERENCES "POST" ("NO") ON DELETE SET NULL ENABLE;


 