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

-- 가입일 내림차순으로 회원 조회하기
SELECT * FROM customers
ORDER BY join_date DESC;

-- 가입일 오름차순으로 회원 조회하기
SELECT * FROM customers
ORDER BY join_date ASC;

-- 가격이 높은 순서로 상품 조회하기
SELECT * FROM products
ORDER BY price DESC;

-- 가격이 낮은 순서로 상품 조회하기
SELECT * FROM products
ORDER BY price ASC;



-- 다중 열 정렬(Multi-column Sort)

-- 1. 재고 수량이 많은 순서로 상품 보여주기
-- 2. 재고 수량이 같다면, 가격이 낮은 순서로 보여주기
SELECT * FROM products
ORDER BY stock_quantity DESC, price ASC;