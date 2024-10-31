SELECT 3;
SELECT 3 + 5;
SELECT 3 * 5;
SELECT 3 / 5;
SELECT 5 % 3;
SELECT 'HELLO' || 'world';
SELECT CONCAT('HELLO', 'WORLD');

USE w3schools;
#풀네임 만들기
SELECT CONCAT(FirstName, ' ', LastName) full_name
FROM Employees;
#고객주소
SELECT CONCAT(Address, ', ', City, ', ', Country) full_address
FROM Customers;


#1번 고객의 총 주문 금액
SELECT c.CustomerName,
       o.OrderDate,
       p.ProductName,
       od.Quantity,
       p.Price,
       (p.price * od.Quantity) 총액
FROM Customers c
         JOIN Orders o
              ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
WHERE c.CustomerID = 1;

#고객별 총소비 금액
SELECT c.CustomerName,
       SUM((p.Price * od.Quantity)) 총소비금액
FROM Customers c
         JOIN Orders o
              ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
ORDER BY c.CustomerID = 1;

#1998년 3월 가장 많은 매출을 올린 직원
SELECT CONCAT(FirstName, ' ', LastName) NAME, SUM((od.Quantity * p.Price)) 총매출
From Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
         JOIN OrderDetails od
              ON od.OrderID = o.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE o.OrderDate BETWEEN '1998-03-01' AND '1998-03-31'
GROUP BY e.EmployeeID
ORDER BY 총매출 DESC
LIMIT 1;