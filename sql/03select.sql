USE w3schools;

SELECT *
FROM Employees;

SELECT FirstName, LastName
FROM Employees;

#Coustomer 테이블의 총 레코드 수는 91개
SELECT Country
FROM Customers;

# DISTINCT : 중복제거
SELECT DISTINCT Country
FROM Customers;

#COUNT() : 레코드 수
SELECT COUNT(CustomerName)
FROM Customers;

SELECT COUNT(DISTINCT Country)
FROM Customers;

#쿼리 작성 관습
#키워드는 대문자,
#테이블명과 컬럼명은 소문자

#키워드 앞에서 줄바꿈으로 읽기 쉽게

#SQL은 대소문자를 구분하지 않는다.
#mariaDB는 테이블명은 대소문자 구분함

SELECT *
FROM Customers;
SELECT CustomerName, ContactName, Address
FROM Customers;

SELECT *
FROM Employees;

SELECT *
FROM Products;