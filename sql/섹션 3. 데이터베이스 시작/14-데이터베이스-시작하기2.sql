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

-- Table 정보 확인하기
DESC sample;



-- -- -- -- -- -- -- -- -- --
-- 
-- 실습
-- 
-- -- -- -- -- -- -- -- -- --

-- 데이터 생성하기
INSERT INTO sample (product_id, name, price, stock_quantity, release_date)
VALUES (1, '프리미엄 청바지', 59900, 100, '2026-09-05');

-- 데이터 꺼내기
SELECT * FROM sample;

-- 특정 데이터 수정하기
UPDATE sample
SET price = 40000
WHERE product_id = 1;

-- 특정 데이터 삭제하기
DELETE FROM sample
WHERE product_id = 1;
