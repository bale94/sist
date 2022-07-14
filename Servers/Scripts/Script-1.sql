SELECT * FROM emp01;
SELECT * FROM board;

UPDATE BOARD 
	SET subject = '제목수정1',
		content = '내용수정1',
		uptdte = SYSDATE 
WHERE NO = 1;
/*
UPDATE BOARD 
	SET subject = #{subject},
		content = #{content},
		uptdte = SYSDATE 
WHERE NO = #{no}
 * */
DELETE
FROM BOARD 
WHERE NO = #{NO}
/*
DELETE
FROM BOARD 
WHERE NO = #{NO}
 * */