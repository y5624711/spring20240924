#집계함수
USE w3schools;
#COUNT
SELECT COUNT(*)
FROM Customers;
SELECT COUNT(ContactName)
FROM Customers;
INSERT INTO Customers
    (CustomerName) VALUE ('흥민');

SELECT COUNT(DISTINCT Country)
FROM Customers;

SELECT SUM(Price)
FROM Products;
SELECT AVG(Price)
FROM Products;
SELECT MAX(Price)
FROM Products;
SELECT MIN(Price)
FROM Products;

#GROP BY :  소계시 사용
SELECT Country, COUNT(CustomerID) 인원
FROM Customers
GROUP BY Country
ORDER BY 인원 DESC;

SELECT Country, COUNT(CustomerID) 인원
FROM Customers
GROUP BY Country
ORDER BY 인원 DESC
LIMIT 5;

#카테고리별 평균 상품가격
SELECT CategoryID, AVG(price)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID, MAX(price)
FROM Products
GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, AVG(Price)
FROM Products p
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID;

#직원별 주문처리건수(Employees, Orders)
#직원의 이름과 처리건수 조회, firstName,순 정렬

SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(o.OrderID)
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY e.FirstName;

#고객별 주문 건수(주문하지 않은 고객도 포함)
SELECT c.CustomerID, c.CustomerName, COUNT(o.OrderID)
FROM Orders o
         RIGHT JOIN Customers c
                    On o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY 3 DESC;

#한번도 주문하지 않은 고객
SELECT *
FROM Customers c
         LEFT JOIN Orders o
                   ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

#1997년 1월에 주문 처리건수를 직원별로 조회
SELECT e.EmployeeID, e.FirstName, o.OrderDate, COUNT(o.OrderID)
FROM Orders o
         RIGHT JOIN Employees e
                    ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1997-01-31'
GROUP BY e.EmployeeID;

#0도 추가
SELECT e.EmployeeID, e.FirstName, COUNT(OrderID)
FROM (SELECT *
      FROM Orders o
      WHERE o.OrderDate BETWEEN '1997-01-01' AND '1997-01-31') AS JanOrder
         RIGHT JOIN Employees e
                    ON JanOrder.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID;


#프로그래머스 고양이와 개
use db1;
DROP TABLE test;