--------------------------------------------------------
--  파일이 생성됨 - 토요일-11월-17-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQATT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQATT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 54 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQATTACHMENT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQATTACHMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQBOARD
--------------------------------------------------------

   CREATE SEQUENCE  "SEQBOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQCARD
--------------------------------------------------------

   CREATE SEQUENCE  "SEQCARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQCMT
--------------------------------------------------------

   CREATE SEQUENCE  "SEQCMT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 87 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQCOMMENTS
--------------------------------------------------------

   CREATE SEQUENCE  "SEQCOMMENTS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQGROUPPOST
--------------------------------------------------------

   CREATE SEQUENCE  "SEQGROUPPOST"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 212 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQPOST
--------------------------------------------------------

   CREATE SEQUENCE  "SEQPOST"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
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
--  DDL for Table CARD
--------------------------------------------------------

  CREATE TABLE "CARD" 
   (	"CARD_GROUP" VARCHAR2(10 BYTE), 
	"CARD_INDEX" NUMBER, 
	"CARD_NO" NUMBER, 
	"CARD_TITLE" VARCHAR2(255 BYTE), 
	"CARD_CONTENT" VARCHAR2(255 BYTE), 
	"PROGRESS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('34','205','D:\T_Development\e_project\workspace_intelliJ\upload스프링부트,오라클접속설정방법.pdf');
Insert into ATTACHMENT (NO,POSTNO,ATT) values ('35','206','D:\T_Development\e_project\workspace_intelliJ\upload\css.zip');
REM INSERTING into BOARD
SET DEFINE OFF;
Insert into BOARD (NO,NAME,USE,CREATOR,RDATE) values ('101','멍청이 게시판','Y','brown',to_date('18/11/15','RR/MM/DD'));
Insert into BOARD (NO,NAME,USE,CREATOR,RDATE) values ('84','자유게시판','Y','brown',to_date('18/11/14','RR/MM/DD'));
Insert into BOARD (NO,NAME,USE,CREATOR,RDATE) values ('85','QnA 게시판','Y','brown',to_date('18/11/14','RR/MM/DD'));
REM INSERTING into CARD
SET DEFINE OFF;
Insert into CARD (CARD_GROUP,CARD_INDEX,CARD_NO,CARD_TITLE,CARD_CONTENT,PROGRESS) values ('3',4999999.5,1,'구인수','springframework',0);
Insert into CARD (CARD_GROUP,CARD_INDEX,CARD_NO,CARD_TITLE,CARD_CONTENT,PROGRESS) values ('4',1249999.5,2,'변찬우','화상채팅',0);
Insert into CARD (CARD_GROUP,CARD_INDEX,CARD_NO,CARD_TITLE,CARD_CONTENT,PROGRESS) values ('4',624999.5,3,'임규승','지도API',0);
Insert into CARD (CARD_GROUP,CARD_INDEX,CARD_NO,CARD_TITLE,CARD_CONTENT,PROGRESS) values ('1',4999999.5,4,'김지태','캘린더API',0);
Insert into CARD (CARD_GROUP,CARD_INDEX,CARD_NO,CARD_TITLE,CARD_CONTENT,PROGRESS) values ('3',3749999,5,'나진실','로그인',0);
Insert into CARD (CARD_GROUP,CARD_INDEX,CARD_NO,CARD_TITLE,CARD_CONTENT,PROGRESS) values ('2',4999999.5,6,'구인수','진척도',0);
REM INSERTING into COMMENTS
SET DEFINE OFF;
Insert into COMMENTS (NO,POSTNO,CONTENT,WRITER,RDATE) values ('67','197','삭제 된 댓글 입니다.',null,to_date('18/11/15','RR/MM/DD'));
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
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('71','답글 테스트01',to_date('18/10/23','RR/MM/DD'),'1',null,null,'76',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('72','자유게시판 테스트',to_date('18/10/23','RR/MM/DD'),'1',null,null,'77',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('149','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'149',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('150','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'150',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('151','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'151',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('152','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'152',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('153','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'153',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('154','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'154',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('155','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'155',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('156','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'156',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('157','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'157',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('158','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'158',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('159','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'159',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('160','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'160',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('161','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','161',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('162','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','162',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('163','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','163',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('164','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','164',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('165','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','165',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('166','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','166',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('167','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','167',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('168','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','168',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('169','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','169',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('170','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','170',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('171','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','171',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('172','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','149','172',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('173','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'173','1');
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('174','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'174','2');
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('175','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'175','3');
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('176','삭제된 게시글 입니다.',null,null,'84',null,'176','1');
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('177','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','173','177',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('178','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','173','178',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('179','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','173','179',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('180','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','173','180',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('181','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','173','181',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('182','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','173','182',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('183','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','173','183',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('184','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','173','184',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('185','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','174','185',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('186','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','174','186',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('187','테스트1',to_date('18/11/14','RR/MM/DD'),'brown','84','174','187',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('197','삭제된 게시글 입니다.',null,null,'84',null,'181',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('198','ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ',to_date('18/11/14','RR/MM/DD'),'brown',null,'197','182',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('199','ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',to_date('18/11/14','RR/MM/DD'),'brown',null,'197','183',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('200','삭제된 게시글 입니다.',null,null,'84','197','184',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('201','삭제된 게시글 입니다.',null,null,'84','200','185',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('202','ddddddddd',to_date('18/11/15','RR/MM/DD'),'brown','84',null,'192',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('203','첨부파일 테스트 중입니다.',to_date('18/11/15','RR/MM/DD'),'brown','84',null,'193',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('204','첨부파일 테스트',to_date('18/11/15','RR/MM/DD'),'brown','84',null,'194',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('196','aaaaaaaaaaa',to_date('18/11/14','RR/MM/DD'),'brown','84',null,'180',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('205','자꾸자꾸 테스트 중입니다.',to_date('18/11/15','RR/MM/DD'),'brown','84',null,'195',null);
Insert into POST (NO,TITLE,RDATE,WRITER,BOARDNO,RECURSION,GROUPNO,ISDELETE) values ('206','테스트!',to_date('18/11/15','RR/MM/DD'),'brown','84','205','196',null);
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
--  DDL for Index IDX_CARD_GROUP
--------------------------------------------------------

  CREATE INDEX "IDX_CARD_GROUP" ON "CARD" ("CARD_GROUP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_CARD_INDEX
--------------------------------------------------------

  CREATE INDEX "IDX_CARD_INDEX" ON "CARD" ("CARD_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
--  DDL for Index PK_CARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CARD" ON "CARD" ("CARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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

  ALTER TABLE "ATTACHMENT" ADD CONSTRAINT "ATTACHMENT_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ATTACHMENT" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BOARD" MODIFY ("RDATE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("USE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CARD
--------------------------------------------------------

  ALTER TABLE "CARD" ADD CONSTRAINT "PK_CARD" PRIMARY KEY ("CARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD CONSTRAINT "PK_COMMENTS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COMMENTS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "COMMENTS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MEMBER" MODIFY ("ADDR1" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("TEL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("PASS" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "POST" ADD CONSTRAINT "PK_POST" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "POST" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "POST" MODIFY ("NO" NOT NULL ENABLE);
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

  ALTER TABLE "POST" ADD CONSTRAINT "FK_BOARD_TO_POST" FOREIGN KEY ("BOARDNO")
	  REFERENCES "BOARD" ("NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "POST" ADD CONSTRAINT "FK_MEMBER_TO_POST" FOREIGN KEY ("WRITER")
	  REFERENCES "MEMBER" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "POST" ADD CONSTRAINT "FK_POST_TO_POST" FOREIGN KEY ("RECURSION")
	  REFERENCES "POST" ("NO") ON DELETE SET NULL ENABLE;
