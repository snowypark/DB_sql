/*
 DML
 CRUD
 C	=	insert
 R	=	select
 U	=	update
 D	=	delete
*/

# insert int table ( collum)

INSERT INTO 
	user_mst(
	user_code, 
	user_id, 
	user_password) 
	VALUES(
	0, 
	'so',
	'1234');
	
#컬럼명 생략	
INSERT INTO 
	user_mst
	VALUES(
	0, 
	'so01',
	'1234');
	
	
#데이터 여러개를 한번에 insert 하는 방법

INSERT INTO 
	user_mst
	VALUES(
	0, 
	'so03',
	'1234'),
	
	(
	0, 
	'so04',
	'1234');
		
		
# select 조회

SELECT
	*
FROM
	user_mst
WHERE
#	user_code > 3 
#	AND user_code <6;

#	user_id = 'soyoung';

#	user_id LIKE '%so%';

#	user_id IN('soyoung', 'so2');

#	user_id = 'soyoung'
#	OR user_id = 'so2';


# where 서브쿼리
	user_id IN(
		select
			user_id
		from
			user_mst
		where
			user_code > 2
			AND user_code < 6
	);
	
	
# update 업데이트

UPDATE
	user_mst
SET
	user_password = '1111',
	user_id = 'junil111'
WHERE
	user_code = (
		select
			user_code
		FROM
			user_mst
		where
			user_id = 'so2'
	
	);


# delet 

DELETE
FROM
	user_mst
WHERE
	user_code = 5;
	
	


		
