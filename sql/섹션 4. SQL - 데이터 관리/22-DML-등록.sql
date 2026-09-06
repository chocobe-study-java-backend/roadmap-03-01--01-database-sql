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

-- customers Table 정보 확인하기
DESC customers;

-- customers 등록하기
-- -- DESC 또는 SELECT로 출력된 COLUMN 순서대로 모든 column을 입력하는 방
INSERT INTO customers
VALUES (NULL, '강감찬', 'kang@gmail.com', 'password-kang', '서울시 서초구 1', '2026-09-06 14:30:00');

INSERT INTO customers 
VALUES (NULL, '이순신', 'lee@gmail.com', 'password-lee', '서울시 서초구 2', '2026-09-06 14:30:00');

-- customers 데이터 조회하기
SELECT * FROM customers;



-- customers 등록하기
-- -- 입력할 COLUMN을 지정하여 입력하는 방식
INSERT INTO customers (name, email, password, address)
VALUES ('세종대왕', 'sejong@gmail.com', 'password-sejong', '서울시 강남구 1');

-- customers 데이터 조회하기
SELECT * FROM customers;



-- products 조회하기
SELECT * FROM products;

-- products 등록하기
INSERT INTO products (name, price, stock_quantity) 
VALUES ('베이직 반팔 티셔츠', 19900, 200);

INSERT INTO products (name, price, stock_quantity)
VALUES ('초록색 긴팔 티셔츠', 30000, 50);

-- products 여러개 등록하기
INSERT INTO products (name, price, stock_quantity)
VALUES
	('검정 양말', 5000, 100),
	('갈색 양말', 5000, 150),
	('흰색 양말', 5000, 200);