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

-- 모든 customers 조회하기
SELECT * FROM customers;

-- 특정 열만 선택하기
SELECT name, email FROM customers;

-- 조회 결과 COLUMN에 별칭 사용하기
SELECT
	name AS "고객명",
	email AS "이메일"
FROM customers;