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

-- 특정 조건을 만족하는 조회 방법

-- 특정 이메일 고객 찾기
SELECT * FROM customers
WHERE email = 'yisunsin@example.com';

-- 특정 가격 10000원 이상인 상품 찾기
SELECT * FROM products
WHERE price >= 10000;

-- 가격이 5000원 이상이고 재고가 50개 이상인 상품 찾기
SELECT * FROM products
WHERE price >= 5000 AND stock_quantity >= 50;

-- 가격이 20000원 이거나 재고가 100개 이상인 상품 찾기
SELECT * FROM products
WHERE price = 20000 OR stock_quantity >= 100;

-- 가격이 20000원이 아닌 상품 찾기
SELECT * FROM products
WHERE price != 20000;