CREATE TABLE NOTICE
(
     ID		NUMBER,
     TITLE 		NVARCHAR2(100),
     WRITER_ID	NVARCHAR2(50),
     CONTENT	CLOB,
     REGDATE  	TIMESTAMP,
     HIT		NUMBER,
     FILES		NVARCHAR2(1000)
);

--> list 출력 SQL문 작성.
select ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT, FILES
from NOTICE order by REGDATE desc;

--> 공지사항 등록
	INSERT INTO NOTICE (ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT, FILES) 
	VALUES (NOTICE_ID_SEQ.NEXTVAL, '영원한 사랑', 'kwonpro', '프로그램에 대한 사랑은 영원하여라!! ㅋㅋ', SYSDATE, 0 ,'');
    INSERT INTO NOTICE (ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT, FILES) 
	VALUES (NOTICE_ID_SEQ.NEXTVAL, '네번째 제목', 'kwonpro', '언제나 활기차게 화이팅 합시다.', SYSDATE, 0 ,'');
    INSERT INTO NOTICE (ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT, FILES) 
	VALUES (NOTICE_ID_SEQ.NEXTVAL, '오늘의 할일 ', 'kwonpro', '페이징 처리하여 프로젝트를 완성해야 한다.', SYSDATE, 0 ,'');
    delete from notice;
    delete from notice where id=2;
    
    UPDATE NOTICE 
	SET TITLE='나를 소개합니다', CONTENT='나는 지금', FILES='' 
	WHERE ID=24;
    
    ROLLBACK;
    
    commit;
    
    SELECT ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT, FILES
	from NOTICE order by REGDATE DESC;

SELECT ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT, FILES FROM NOTICE
	WHERE ID = ( 
		SELECT ID FROM NOTICE 
		WHERE REGDATE > (SELECT REGDATE FROM NOTICE WHERE ID=1)
		AND ROWNUM=1);
        
SELECT ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT, FILES FROM NOTICE
	WHERE ID = ( SELECT ID FROM (SELECT * FROM NOTICE ORDER BY REGDATE DESC)
		WHERE REGDATE < (SELECT REGDATE FROM NOTICE WHERE ID=4) AND ROWNUM=1 );        
        
SELECT ID, TITLE, WRITER_ID, CONTENT, REGDATE, HIT, FILES FROM(
	    SELECT ROW_NUMBER() OVER (ORDER BY REGDATE DESC) NUM, NOTICE.* 
	    FROM NOTICE
		)WHERE NUM BETWEEN 1 AND 5;

CREATE TABLE "COMMENT"
(
     ID		NUMBER,
     CONTENT	NVARCHAR2(2000),
     REGDATE  	TIMESTAMP,
     WRITER_ID	NVARCHAR2(50),
     NOTICE_ID	NUMBER
);

CREATE TABLE ROLE
(
     ID		VARCHAR2(50),
     DISCRIPTION 	NVARCHAR2(500)
);

CREATE TABLE MEMBER_ROLE
(
     MEMBER_ID	NVARCHAR2(50),
     ROLE_ID		VARCHAR2(50)
);