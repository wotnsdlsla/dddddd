--GET LIST
--������ ���� ���� ��
SELECT *  
	FROM(
	SELECT ROWNUM NUM, N.* 
		FROM( 
	SELECT *
	FROM NOTICE_VIEW
	WHERE TITLE LIKE '%%'
	ORDER BY REGDATE DESC
	) N	
)    
WHERE NUM BETWEEN 11 AND 20 

-------------------------------INSERT() QUERY------------------------------------------
--NULL�� ��� 0���� ä����
--NULL�ϰ�� 1�� �����൵ NULL�� �ȴ�
--INSERT�������� CODE�� ������ ����
--���ڷ� �ٲ�� ���ڴ� ���ڵ��� �ٲ�
SELECT NVL(MAX(TO_NUMBER(CODE)),0)+1 FROM NOTICE;

---------------------------------------------------------------------------------------

SELECT * FROM NOTICE;

DELETE COMMENT WHERE CODE IN (
SELECT CODE, COUNT(CODE) FROM "COMMENT" GROUP BY CODE HAVING COUNT(CODE) > 1
);

SELECT CODE FROM NOTICE;
	

INSERT INTO 
	NOTICE(CODE, TITLE, WRITER, CONTENT, REGDATE, HIT) VALUES(?,?,?,?,?,?);
	
	SEELCT
	
	
UPDATE MEMBER SET PHONE='010-0000-0000'WHERE NAME = '�����';