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

-- 기존의 실습용 Table이 있다면 삭제하기 
DROP TABLE IF EXISTS order_stat;

-- 실습 Table 생성하기
-- => 이전 섹션에서 사용했던 customers, products, orders 를 `JOIN` 한 형태의 테이블
-- => 나중에 `JOIN`을 배우면, customers, products, orders 를 `JOIN` 해서 아래의 형태로 조회할 수 있다.
CREATE TABLE order_stat (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name VARCHAR(50),
	category VARCHAR(50),
	product_name VARCHAR(100),
	price INT,
	quantity INT,
	order_date DATE
);



-- 실습용 데이터 추가하기
INSERT INTO order_stat (
	customer_name,
	category,
	product_name,
	price,
	quantity,
	order_date
)
VALUES
	('이순신', '전자기기', '프리미엄 기계식 키보드', 150000, 1, '2025-05-10'),
	('세종대왕', '도서', 'SQL 마스터링', 35000, 2, '2025-05-10'),
	('신사임당', '가구', '인체공학 사무용 의자', 250000, 1, '2025-05-11'),
	('이순신', '전자기기', '고성능 게이밍 마우스', 80000, 1, '2025-05-12'),
	('세종대왕', '전자기기', '4K 모니터', 450000, 1, '2025-05-12'),
	('장영실', '도서', '파이썬 데이터 분석', 40000, 3, '2025-05-13'),
	('이순신', '문구', '고급 만년필 세트', 200000, 1, '2025-05-14'),
	('세종대왕', '가구', '높이조절 스탠딩 데스크', 320000, 1, '2025-05-15'),
	('신사임당', '전자기기', '노이즈캔슬링 블루투스 이어폰', 180000, 1, '2025-05-15'),
	('장영실', '전자기기', '보조배터리 20000mAh', 50000, 2, '2025-05-16'),
	('홍길동', NULL, 'USB-C 허브', 65000, 1, '2025-05-17'); -- 카테고리가 NULL인 데이터 추가



SELECT * FROM order_stat;