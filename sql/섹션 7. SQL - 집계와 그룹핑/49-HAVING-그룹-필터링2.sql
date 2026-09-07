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

-- 가격이 10만원 이상인 고가 상품들 중에서
-- 카테고리로 묶었을 때,
-- 주문 건수가 2건 이상 팔린 카테고리는 무엇인가?
SELECT
	category,
	COUNT(*) AS '주문 건수'
FROM
	order_stat
WHERE
	price >= 100000
GROUP BY
	category
HAVING
	COUNT(*) >= 2;