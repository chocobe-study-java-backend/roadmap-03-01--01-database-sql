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

-- products 목록 조회하기
SELECT * FROM products;

SELECT * FROM products
WHERE product_id = 1;

-- 특정 product 수정하기
UPDATE products
SET price = 9800, stock_quantity = 580
WHERE product_id = 1;