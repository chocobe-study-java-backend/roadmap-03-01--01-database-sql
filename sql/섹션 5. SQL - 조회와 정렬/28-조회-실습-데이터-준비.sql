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

-- 모든 Table 공장 초기화하기
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE customers;
TRUNCATE TABLE orders;
TRUNCATE TABLE products;
SET FOREIGN_KEY_CHECKS = 1;



-- -- -- -- -- -- -- -- -- --
-- 
-- 실습 데이터 입력하기
-- 
-- -- -- -- -- -- -- -- -- --

-- 1. customers 데이터 입력하기
DESC customers;

INSERT INTO customers (name, email, password, address, join_date)
VALUES
	('이순신', 'yisunsin@example.com', 'password123', '서울특별시 중구 세종대로', '2023-05-01'),
	('세종대왕', 'sejong@example.com', 'password456', '서울특별시 종로구 사직로', '2024-05-01'),
	('장영실', 'youngsil@example.com', 'password789', '부산광역시 동래구 복천동', '2025-05-01');

SELECT * FROM customers;



-- 2. products 데이터 입력하기
DESC products;

INSERT INTO products (name, description, price, stock_quantity)
VALUES
	('갤럭시', '최신 AI 기능이 탑재된 고성능 스마트폰', 10000, 55),
	('LG 그램', '초경량 디자인과 강력한 성능을 자랑하는 노트북', 20000, 35),
	('아이폰', '직관적인 사용자 경험을 제공하는 스마트폰', 5000, 55),
	('에어팟', '편리한 사용성의 무선 이어폰', 3000, 110),
	('보급형 스마트폰', NULL, 5000, 100);

SELECT * FROM products;



-- 3. orders 데이터 입력하기
DESC orders;

INSERT INTO orders (customer_id, product_id, quantity)
VALUES
	(1, 1, 1), -- 이순신 고객이 갤럭시 1개 주문
	(2, 2, 1), -- 세종대왕 고객이 LG 그램 1개 주문
	(3, 3, 1), -- 장영실 고객이 아이폰 1개 주문
	(1, 4, 2), -- 이순신 고객이 에어팟 2개 추가 주문
	(2, 2, 1); -- 세종대왕 고객이 LG 그램 1개 주문(추가 주문)

SELECT * FROM orders;



-- 각 Table에 저장된 데이터 확인하기
SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;