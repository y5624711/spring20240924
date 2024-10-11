use w3schools;

# LIMIT 조회결과 수(레코드 수, 행의 수)를 제한
SELECT *
FROM Orders
ORDER BY OrderDate DESC
LIMIT 20;

#나이가 가장 많은 직원 3명
SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 3;

#가장 젊은 직원
SELECT *
FROM Employees
ORDER BY BirthDate DESC
LIMIT 3;

#가장 비싼 상품 10개
SELECT *
FROM Products
ORDER BY Price
LIMIT 10;

#3번 카테고리에서 가장 저렴한 상품 5개
SELECT *
FROM Products
WHERE CategoryID = 3
ORDER BY Price DESC
LIMIT 5;

#1번 고객이 가장 최근 주문한 주문
SELECT *
FROM Orders
WHERE CustomerID = 1
ORDER BY OrderDate DESC
LIMIT 1;

# LIMIT 수 1: 상위(수1)개
# LIMIT 수1, 수2 : (수1)번째부터 (수2)개, 단 수1은 0부터 시작
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 3;

#4번부터 5개
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 3, 5;

SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 1;

#두번째로 나이 많은 직원
SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 1,1;

#세번째로 나이 많은 직원
SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 2, 1;

#페이지 나누기

#91명의 고객
SELECT *
FROM Customers
ORDER BY CustomerID;

#한페이지에 10명 씩
#첫번째 페이지 1~10
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 0, 10;
#두번째 페이지 11~20
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 10,10;
#세번째 페이지 21~30
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 20,10;

SELECT COUNT(*)
FROM Orders;

#기존 데이터 복사해서 테이블에 추가
INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers;
SELECT COUNT(*)
FROM Customers;