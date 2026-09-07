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

-- 총 주문 건수 구하기
SELECT COUNT(*) FROM order_stat;

-- category가 등록된 주문의 건수 구하기
-- -- `category`가 NULL인 경우는 제외한 결과다.
SELECT COUNT(category) FROM order_stat;

SELECT
	COUNT(*) AS '전체 주문 건수',
	COUNT(category) AS '카테고리 등록 건수'
FROM
	order_stat;



-- 총 매출액, 평균 주문 금액 구하기
SELECT
	SUM(price * quantity) AS '총 매출액',
	AVG(price * quantity) AS '평균 주문 금액'
FROM order_stat;



-- 총 판매 상품 수량과 주문당 평균 수량 구하기
SELECT
	SUM(quantity) AS '총 판매 수량',
	AVG(quantity) AS '주문당 평균 수량'
FROM
	order_stat;



-- 최고가, 최저가 구하기
SELECT
	MAX(price) AS '최고가',
	MIN(price) AS '최저가'
FROM
	order_stat;



-- 최초 주문일과 최근 주문일 찾기
SELECT
	MIN(order_date) AS '최초 주문일',
	MAX(order_date) AS '최근 주문일'
FROM order_stat;



-- 지금까지 주문한 총 고객수 구하기
SELECT
	COUNT(customer_name) AS '총 주문 건수',
	COUNT(DISTINCT customer_name) AS '주문한 총 고객수'
FROM
	order_stat;