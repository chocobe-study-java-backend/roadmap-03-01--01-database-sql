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

-- NULL은 비교연산(`=`)을 사용할 수 없다.
-- -- 전용 키워드로 NULL 여부를 알 수 있다.
-- -- `IS NULL`: NULL 인 값
-- -- `IS NOT NULL`: NULL이 아닌 값
SELECT * FROM products
WHERE description = NULL;

SELECT * FROM products
WHERE description IS NULL;

SELECT * FROM products
WHERE description IS NOT NULL;



-- NULL 정렬 규칙
-- -- MySQL은 NULL을 가장 작은 값으로 정렬을 적용한다.
-- -- Oracle은 NULL을 가장 큰 값으로 정렬을 적용한다.
SELECT * FROM products
ORDER BY description IS NOT NULL ASC;



-- NULL 정렬: NULL 위치를 강제로 바꾸고 싶을 때!
-- -- 상품 설명을 내림차순으로 보여주는데,
-- -- NULL인 상품을 가장 먼저 보여주기

-- 이걸론 안됨 (description이 NULL인 상품이 가장 마지막에 나옴)
SELECT * FROM products
ORDER BY description DESC;

-- 1. `description IS NULL` 에 대해서 내림차순 정렬
SELECT product_id, name, description, description IS NULL 
FROM products
ORDER BY description IS NULL DESC;

-- 2. 위 쿼리에 추가로 `description` 내림차순 정렬
SELECT product_id, name, description, description IS NULL
FROM products
ORDER BY description IS NULL DESC, description DESC;

-- 3. SELECT의 COLUMN 대상에서 `description IS NULL`는 설명을 위해 쓴것이며, 없어도 된다.
SELECT product_id, name, description
FROM products
ORDER BY description IS NULL DESC, description DESC;