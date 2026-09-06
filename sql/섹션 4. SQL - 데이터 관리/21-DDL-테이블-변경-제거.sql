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

-- ADD COLUMN : 열 추가하기
ALTER TABLE customers 
ADD COLUMN point INT NOT NULL DEFAULT 0;

-- Table 정보 확인하기
DESC customers;



-- MODIFY COLUMN : 열 수정하기
ALTER TABLE customers 
MODIFY COLUMN address VARCHAR(500) NOT NULL;

-- Table 정보 확인하기
DESC customers;



-- DROP COLUMN : 열 삭제하기
ALTER TABLE customers
DROP COLUMN point;

-- Table 정보 확인하기
DESC customers;



-- Table 삭제하기
DROP TABLE products;

-- Table의 데이터 모두 삭제하기
TRUNCATE TABLE products;