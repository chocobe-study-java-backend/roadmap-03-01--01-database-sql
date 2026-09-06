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

-- 가장 비싼 상품 Top2 찾기
SELECT * FROM products
ORDER BY price DESC
LIMIT 2;



-- 페이징 처리


-- LIMIT offset, row_count
-- -- offset: 건너뛸 row 개수
-- -- row_count: 조회할 최대 개수
-- 
-- -- 페이징 처리를 구현할 때 유용하다.

-- 페이징 구현해보기 (페이지당 데이터 2개씩 보여주기)
-- -- 아래 결과를 통해 도출된 offset 공식: 
-- -- `offset == (pageNumber - 1) * row_count;` 

-- -- 1페이지 조회
SELECT * FROM products
ORDER BY product_id ASC
LIMIT 0, 2;

-- -- 2페이지 조회
SELECT * FROM products
ORDER BY product_id ASC
LIMIT 2, 2;

-- -- 3페이지 조회
SELECT * FROM products
ORDER BY product_id ASC
LIMIT 4, 2;