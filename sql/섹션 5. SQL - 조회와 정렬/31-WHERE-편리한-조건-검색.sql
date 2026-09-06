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

-- BETWEEN ~ AND
-- -- 특정 범위에 있는 값 찾기

-- -- 가격이 5000보다 크거나 15000원 이하인 상품 찾기
SELECT * FROM products
WHERE price BETWEEN 5000 AND 15000;

SELECT * FROM products
WHERE price >= 5000 AND price <= 15000;



-- NOT BETWEEN ~ AND
-- -- 특정 범위를 제외한 값 찾기

-- -- 가격이 5000원에서 15000원 사이인 상품을 제외한 나머지 상품 찾기
SELECT * FROM products
WHERE price NOT BETWEEN 5000 AND 15000;

SELECT * FROM products
WHERE price < 5000 OR price > 15000;



-- IN
-- -- Enum 처럼 대상 목록에 속하는 값 찾기

-- 상품명이 "갤럭시", "아이폰", "에어팟" 인 상품 찾기
SELECT * FROM products
WHERE name IN ('갤럭시', '아이폰', '에어팟');

SELECT * FROM products
WHERE name = '갤럭시' OR name = '아이폰' OR name = '에어팟';



-- NOT INT
-- -- 목록에 포함되지 않는 값 찾기

-- -- 상품명이 "갤럭시", "아이폰", "에어팟"가 아닌 상품 찾기 
SELECT * FROM products
WHERE name NOT IN ('갤럭시', '아이폰', '에어팟');

SELECT * FROM products
WHERE name != '갤럭시' AND name != '아이폰' AND name != '에어팟';



-- LIKE
-- -- 문자열의 부분 일치하는 값 찾기

SELECT * FROM customers
WHERE email = 'sejong';

-- -- "sejong" 으로 시작하는 email로 찾기
SELECT * FROM customers
WHERE email LIKE 'sejong%';

-- -- 성이 "이" 이고 이름이 "신"으로 끝나는 고객 찾기
SELECT * FROM customers
WHERE name LIKE '이_신';

-- -- 서울에 살지 않는 고객 찾기
SELECT * FROM customers
WHERE address NOT LIKE '서울%';