SELECT * FROM BOARD_COMMENT bc ;
SELECT * 
FROM (SELECT * FROM board JOIN BOARD_COMMENT ON board_no=board_ref
		WHERE board_no=31)
START WITH board_comment_level=1
CONNECT BY PRIOR BOARD_COMMENT_NO=BOARD_COMMENT_REF;
SELECT * FROM MEMBER;