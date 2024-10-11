#data 들이 table 안에 저장됨
# table 들은 database(schema) 내에 저장됨
#database (schema) 만들기
CREATE DATABASE test1;

#table 만들기
CREATE TABLE book
(
    title varchar(100),
    price int
);

#database(schema) 이동
USE test1;
USE w3schools;

#table 지우기
DROP DATABASE test1;
DROP TABLE book;

#SELECT : 테이블 조회
#FROM 에 테이블명

# SELECT * FROM 테이블명;

# 모든 행은 같은 열을 가지고 있다.

#SELECT 에 컬럼명 FROM 테이블명
SELECT CustomerID
FROM Customers;

SELECT CustomerID, CustomerName
From Customers;

#DESCRIBE 테이블명 : 테이블 구조 확인
DESCRIBE Customers;
DESC Customers;

#Employees 테이블에 어떤 컬럼(필드)가 있는지 확인하기
DESCRIBE Employees;

#Employees 테이블의 레코드의  EmployeeID, LastName, FirstName 컬럼만 조회하기
SELECT EmployeeID, LastName, FirstName
From Employees;

# * :  모든 컬럼 조회
SELECT *
FROM Employees;

#SELECT에 작성된 컬럼 순서가 유지됨
SELECT LastName, FirstName
FROM Employees;
SELECT FirstName, LastName
FROM Employees;

#Product 테이블의 모든 컬럼과 모든 행 조회
SELECT *
FROM Products;

#Product 테이블의 ProductName, Unit, Price 컬럼 조회
SELECT ProductName, Unit, Price
FROM Products;

#Suppliers 테이블의 City, Country, SupplierName 컬럼 조회(열 순서 유지)
SELECT City, Country, SupplierName
FROM Suppliers;

SELECT Description
FROM Categories;