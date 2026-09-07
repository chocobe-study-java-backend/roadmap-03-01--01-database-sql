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

-- HAVING: 그룹에 대한 필터링 기능

-- 매출액이 50만 원을 넘는 핵심 카테고리만 구하기
-- -- HAVING 절에 SELECT 절의 별칭(AS) 사용하는 방식 (MySQL은 지원함)
SELECT
	category,
	SUM(price * quantity) AS `total_sales`
FROM
	order_stat
GROUP BY
	category
HAVING
	`total_sales` >= 500000;

-- -- 위 쿼리를 표준 SQL로 만든다면,
SELECT
	category,
	SUM(price * quantity) AS 'total_sales'
FROM
	order_stat
GROUP BY
	category
HAVING
	SUM(price * quantity) >= 500000;



-- 3회 이상 구매한 충성 고객 찾기
SELECT
	customer_name,
	COUNT(*) AS '구매 횟수'
FROM
	order_stat
GROUP BY
	customer_name
HAVING
	COUNT(*) >= 3;