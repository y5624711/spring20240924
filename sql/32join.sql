use w3schools;
SELECT *
FROM Orders;

SELECT *
FROM OrderDetails;
#1996년 7월 4일에 어떤 고객이 어떤 상품을 몇개 주문 했는지 조회
SELECT o.OrderDate, c.CustomerName, p.ProductName, od.Quantity
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
         JOIN Products p
              ON od.ProductID = p.ProductID
WHERE OrderDate = '1996-07-04';

#1996년 7월 4일에 주문된 상품과 카테고리 정보를 조회
SELECT o.OrderDate, p.ProductName, c.CategoryName
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
WHERE OrderDate = '1996-07-04';

#5번직원이 처리한 주문의 날짜와 상품들 조회
SELECT e.EmployeeID, o.OrderDate, p.ProductName
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
         JOIN OrderDetails od
              ON od.OrderID = o.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE e.EmployeeID = 5
ORDER BY o.OrderDate DESC;