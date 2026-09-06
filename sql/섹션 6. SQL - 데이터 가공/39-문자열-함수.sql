-- -- -- -- -- -- -- -- -- --
-- 
-- 실습 준비
-- 
-- -- -- -- -- -- -- -- -- --

-- DB 목록 확인하기
SHOW DATABASES;

-- DB 선택하기
USE my_shop;

-- Table 목록 확인하기
SHOW TABLES;



-- -- -- -- -- -- -- -- -- --
-- 
-- 실습
-- 
-- -- -- -- -- -- -- -- -- --

-- 조회 결과 중, 문자열 가공이나 포매팅을 하여 보고서 양식으로 만들 수 있다.

-- CONCAT(문자열, ...)
-- : 문자열 합치기
SELECT CONCAT(name, ' - ', email) FROM customers;

-- -- 고객정보 출력하기: `name (email)`
SELECT CONCAT(name, ' (', email, ')') AS 'name_and_email' FROM customers;



-- CONCAT_WS(separator, 문자열, ...)
-- : 구분자(ws: with separator)를 사용하여 문자열 합치기
SELECT CONCAT_WS(', ', name, email, address) FROM customers;



-- UPPER()
-- : 모두 대문자로 변환하기
SELECT email, UPPER(email) AS upper_email FROM customers;



-- LOWER()
-- : 모두 소문자로 변환하기
SELECT email, LOWER(email) as lower_email FROM customers;



-- LENGTH()
-- : 문자열의 길이를 byte로 계산
SELECT name, LENGTH(name) AS 'byte_length' FROM customers;

-- CHAR_LENGTH()
-- : 문자열의 길이를 글자 수로 계산
SELECT name, CHAR_LENGTH(name) AS 'char_length' FROM customers;

SELECT 
	name,
	CHAR_LENGTH(name) AS 'char_length',
	LENGTH(name) AS 'byte_length'
FROM customers;