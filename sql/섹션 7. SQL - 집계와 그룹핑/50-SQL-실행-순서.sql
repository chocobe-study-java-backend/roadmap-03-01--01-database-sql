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

-- 고객별 총 구매 금액을 구하는데, 총 구매 금액이 40만원 이상인 고객만 보기
SELECT
	customer_name,
	SUM(price * quantity) AS `총 구매 금액`
FROM
	order_stat
GROUP BY
	customer_name
HAVING
	SUM(price * quantity) >= 400000
ORDER BY
	SUM(price * quantity) DESC;

SELECT * FROM order_stat;



-- 2025년 5월 14일 이전에 들어온 주문들 중에서,
-- 고객별로 그룹화하여,
-- 주문 건수가 2회 이상인 고객을 찾아서,
-- 해당 고객의 이름과 총 구매 금액을 조회하고,
-- 총 구매 금액을 기준으로 내림차순 정렬하고,
-- 하나의 데이터만 출력하기
SELECT
	customer_name AS `이름`,
	SUM(price * quantity) AS `총 구매 금액`
FROM
	order_stat
WHERE
	order_date < '2025-05-14'
GROUP BY
	customer_name
HAVING
	COUNT(*) >= 2
ORDER BY
	`총 구매 금액` DESC
LIMIT 0, 1;