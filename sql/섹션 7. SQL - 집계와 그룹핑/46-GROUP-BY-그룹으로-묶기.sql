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

-- 어떤 상품 카테고리가 가장 인기가 많을까?
SELECT
	category,
	COUNT(*) AS '카테고리별 주문 건수'
FROM
	order_stat
GROUP BY
	category;



-- 고객별로 총 몇 번이나 주문했을까?
SELECT 
	customer_name,
	COUNT(*) AS '주문 횟수'
FROM 
	order_stat
GROUP BY 
	customer_name;



-- 고객별 `총 주문 횟수`, `총 주문 수량`, `총 구매 금액` 구하기
-- -- `총 구매 금액`이 높은 순서로 정렬하기
SELECT
	customer_name,
	COUNT(*) AS `총 주문 횟수`,
	SUM(quantity) AS `총 주문 수량`,
	SUM(price * quantity) AS `총 구매 금액`
FROM
	order_stat
GROUP BY
	customer_name
ORDER BY
	`총 구매 금액` DESC;



-- 다중 그룹핑
-- -- 어떤 고객이 어떤 카테고리를 주문했나?
-- -- 고객별 카테고리 구매 금액을 내림차순 정렬하기
SELECT
	customer_name,
	category,
	SUM(price * quantity) AS `카테고리별 구매 금액`
FROM 
	order_stat
GROUP BY
	customer_name,
	category
ORDER BY
	customer_name,
	`카테고리별 구매 금액` DESC;