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

-- 재고 자산 총액 구하기
SELECT 
	name,
	price,
	stock_quantity,
	price * stock_quantity AS "재고 자산 총액"
FROM
	products;

-- 상품 가격에 배송비 3000원을 더한 기대 가격 구하기
SELECT
	name,
	price,
	price + 3000 AS '기대 가격(배송비 +3000)'
FROM products;

-- 각 상품에 1000원 할인가는?
SELECT
	name,
	price,
	price - 1000 AS '할인가(-1000)'
FROM products;

-- 10개월 무이자 할부 시, 매달 납부금은?
SELECT
	name,
	price,
	price / 10 AS '10개월 무이자 할부금'
FROM products;