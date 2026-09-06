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

-- NULL값을 결과에 그대로 노출하는게 아니라,
-- 특정 값으로 대체해서 보여줘야 하는 상황에 `NULL` 값을 다루는 함수를 사용할 수 있다.

-- IFNULL(표현식1, 표현식2)
-- -- 표현식1: `NULL`인지 검사할 컬럼이나 값
-- -- 표현식2: 표현식1이 `NULL`이라면, 대체할 값
SELECT
	name,
	IFNULL(description, '상품 설명 없음') as description
FROM
	products;



-- COALESCE(표현식1, 표현식2, ...)
-- -- 인자를 순서대로 확인하며 최초 `NULL`이 아닌 값을 출력함
-- -- 모두 `NULL` 이라면, 결국 `NULL` 이 출력됨
-- -- 유용한 경우 예시: `COALESCE(short_desc, long_desc, '설명 없음')`
SELECT
	name,
	COALESCE(description, '상품 설명 없음')
FROM
	products;