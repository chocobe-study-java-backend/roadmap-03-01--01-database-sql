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

-- 한 번이라도 주문한 고객 조회하기
-- -- 중복 데이터는 소거해야 정확한 결과다.
SELECT customer_id FROM orders;

SELECT DISTINCT customer_id FROM orders;

-- 어떤 고객이 어떤 상품을 구매했는지, 그 조합을 중복 없이 보고 싶다.
SELECT customer_id, product_id
FROM orders
ORDER BY customer_id, product_id;

SELECT DISTINCT customer_id, product_id
FROM orders
ORDER BY customer_id, product_id;