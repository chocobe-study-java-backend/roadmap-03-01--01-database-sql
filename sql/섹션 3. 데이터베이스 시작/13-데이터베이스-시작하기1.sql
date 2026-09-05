-- Database 생성하기
CREATE DATABASE my_shop;

-- Database 목록 확인하기
SHOW DATABASES;

-- Database 삭제하기
DROP DATABASE my_shop;

-- Database 선택하기
USE my_shop;

-- Table 생성하기
CREATE TABLE sample (
	product_id INT PRIMARY KEY,
	name VARCHAR(100),
	price INT,
	stock_quantity INT,
	release_date DATE
);

-- Table 구조 확인하기
DESC sample;
DESCRIBE sample;

-- Table 목록 확인하기
SHOW TABLES;

-- Table 삭제하기
DROP TABLE sample;



-- -- -- -- -- -- -- -- -- --
-- 
-- 복습
-- 
-- -- -- -- -- -- -- -- -- --
CREATE DATABASE IF NOT EXISTS my_shop;

SHOW DATABASES;

USE my_shop;

CREATE TABLE IF NOT EXISTS sample (
	product_id INT PRIMARY KEY,
	name VARCHAR(100),
	price INT,
	stock_quantity INT,
	release_date DATE
);