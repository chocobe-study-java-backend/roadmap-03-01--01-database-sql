-- -- -- -- -- -- -- -- -- --
-- 
-- 실습 준비
-- 
-- -- -- -- -- -- -- -- -- --

-- 공장 초기화 처럼 원하는 Table들 초기화 하기
-- 1. MySQL(MariaDB)의 외래키 검사 여부 끄기
SET FOREIGN_KEY_CHECKS = 0;

-- 2. products Table 공장 초기화
TRUNCATE TABLE products;

-- 3. customers Table 공장 초기화
TRUNCATE TABLE customers;

-- 4. orders TABLE 공장 초기화
TRUNCATE TABLE orders;

-- 5. 외래키 검사 여부 다시 켜기
SET FOREIGN_KEY_CHECKS = 1;



-- 초기화 결과 확인하기
SELECT * FROM products;

SELECT * FROM customers;

SELECT * FROM orders;



-- -- -- -- -- -- -- -- -- --
-- 
-- 실습
-- 
-- -- -- -- -- -- -- -- -- --

-- NOT NULL 제약 조건
-- -- NOT NULL이 설정된 name이 없어서 저장 불가
INSERT INTO customers (email, password, address)
VALUES ('no-name@gmail.com', 'pw-1', '서울시 서초구 1');



-- UNIQUE 제약 조건
INSERT INTO customers (name, email, password, address)
VALUES ('강감찬', 'kang@gmail.com', 'pw-2', '서울시 서초구 2');

-- -- UNIQUE가 설정된 email이 중복된 값이라서 입력 불가
INSERT INTO customers (name, email, password, address)
VALUES ('홍길동', 'kang@gmail.com', 'pw-2', '서울시 서초구 2');



-- FK 제약 조건
-- -- 존재하지 않는 FK는 사용 불가
INSERT INTO products (name, price, stock_quantity)
VALUES ('베이직 반팔 티셔츠', 19900, 200);

INSERT INTO orders (customer_id, product_id, quantity)
VALUES (1, 1, 1);

-- -- 존재하지 않는 customer FK 사용 시, 입력 불가
INSERT INTO orders (customer_id, product_id, quantity)
VALUES (9999, 1, 1);

-- -- 존재하지 않는 product_id FK 사용 시, 입력 불가
INSERT INTO orders (customer_id, product_id, quantity)
VALUES (1, 9999, 1);




SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;