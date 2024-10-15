use db1;

CREATE TABLE my_table44
(
    col1 INT
);

CREATE TABLE my_table45
(
    c1 INT
);
INSERT INTO my_table44
VALUES (1),
       (2),
       (3),
       (3);
INSERT INTO my_table45
VALUES (2),
       (2),
       (3),
       (1),
       (4);
SELECT *
FROM my_table44;
SELECT *
FROM my_table45;

#JOIN(Cartesian Product)
#결과열의 수는 각테이블 열의 합
#결과행의 수는 각 테이블 행의 곱
SELECT *
FROM my_table44,
     my_table45;
SELECT *
FROM my_table44
         JOIN
     my_table45;

CREATE TABLE my_table46
(
    col1 INT,
    col2 VARCHAR(20)
);
CREATE TABLE my_table47
(
    c1 INT,
    c2 VARCHAR(20)
);
INSERT INTO my_table46
    (col1, col2)
VALUES (1, 'kim'),
       (2, 'lee'),
       (3, 'park');
INSERT INTO my_table47
    (c1, c2)
VALUES (1, 'java'),
       (1, 'css'),
       (2, 'java');
SELECT *
FROM my_table46;
SELECT *
FROM my_table47;

#(카테시안 곱)
SELECT *
FROM my_table46
         JOIN my_table47;

#Inner join
SELECT *
FROM my_table46
         JOIN my_table47
WHERE my_table46.col1 = my_table47.c1;

#Join 조건
SELECT *
FROM my_table46
         JOIN my_table47
              ON my_table46.col1 = my_table47.c1;

USE w3schools;
SELECT *
FROM Products; -- 77
SELECT *
FROM Categories; -- 8

SELECT *
FROM Products
         JOIN Categories; -- 616개 레코드 - 카테시안곱

SELECT *
FROM Products
         JOIN Categories
              ON Products.CategoryID = Categories.CategoryID;
-- INNER JOIN

#Products, Suppliers 테이블을
#Products.supplierID = Suppliers.SupplierID 기준으로 Join 하시오
SELECT *
FROM Products
         JOIN Suppliers
              ON Products.SupplierID = Suppliers.SupplierID;

#필요한 컬럼만 걸러내기
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
         JOIN Suppliers
              ON Products.SupplierID = Suppliers.SupplierID;

SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
         JOIN Suppliers
              ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.SupplierID = 1;

# 카테고리별 상품명 조회
SELECT c.CategoryName 카테고리명, p.ProductName 상품명
FROM Categories c
         JOIN Products p
              ON c.CategoryID = p.CategoryID
ORDER BY c.CategoryID;

#공급자별 공급하는 상품들 조회
SELECT s.SupplierName 공급자명, ProductName 상품명, Unit 규격, Price 가격
FROM Suppliers s
         JOIN Products p
              ON s.SupplierID = p.SupplierID
ORDER BY s.SupplierID;

#1996년 7월 8일에 주문을 처리한 직원 이름 조회(Orders, Employees)
SELECT o.OrderDate 주문날짜, e.FirstName 성, e.LastName 이름
FROM Orders o
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
WHERE OrderDate = '1996-07-08'
ORDER BY o.EmployeeID;