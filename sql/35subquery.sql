use w3schools;

#subquery : 외부쿼리 내에 내부쿼리 작성

# 1번 고객과 같은 국가에 있는 고객들을 조회
SELECT *
FROM Customers
WHERE CustomerID = 1;

SELECT *
FROM Customers
WHERE Country = 'Germany';

#합침
SELECT CustomerName, Country
FROM Customers
WHERE Country = (SELECT Country
                 FROM Customers
                 WHERE CustomerID = 1)
ORDER BY CustomerName;

#join사용
SELECT c1.CustomerName, c1.Country
FROM Customers c1
         JOIN Customers c2
WHERE c2.CustomerID = 1
  AND c1.Country = c2.Country;

# subquery는 SELECT , FROM  WHERE 에 사용가능

#각 고객이 주문한 건수
SELECT c.CustomerID, c.CustomerName, COUNT(o.OrderID) 건수
FROM Customers c
         LEFT JOIN Orders o
                   ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 건수 DESC;

SELECT COUNT(Orders.OrderID)
FROM Orders
WHERE CustomerID = 4;

SELECT CustomerID,
       CustomerName,
       (SELECT COUNT(OrderID)
        FROM Orders o
        WHERE o.CustomerID = c.CustomerID) 건
FROM Customers c
ORDER BY 건 DESC;

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31';

# 1997년 1월 각 직원이 몇 건 주문을 처리했는지 조회
SELECT e.EmployeeID, e.FirstName, COUNT(OrderID)
FROM (SELECT *
      FROM Orders
      WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31') AS JanOrders
         RIGHT JOIN Employees e
                    ON JanOrders.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
;


#SUBQUERY 종류
#단일행단일열
#여러행 여러열(테이블형식)
#평균 가격보다 높은 가격의 상품들
SELECT AVG(Price)
FROM Products;

SELECT *
FROM Products
WHERE Price > (SELECT AVG(Price)
               FROM Products);

#SUBQUERY :
# 상관서브쿼리 : 외부쿼리의 값을 내부쿼리에서 사용함
# 비상관서브쿼리 : 외부쿼리의 값을 내부에서 사용하지 않음

#평균처리건수 보다 많은 주문을 처리한 직원 목록 조회
SELECT e.EmployeeID, e.LastName, e.FirstName, COUNT(o.OrderID) 건
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING 건 > (SELECT ((SELECT COUNT(OrderID)
                     FROM Orders) / (SELECT COUNT(EmployeeID)
                                     FROM Employees)))
ORDER BY 건 DESC;

#고객이 가장 많은 국가의 고객목록
SELECT *
FROM Customers
WHERE Country = (SELECT Country
                 FROM (SELECT Country, COUNT(CustomerID) 고객수
                       FROM Customers
                       GROUP BY Country
                       ORDER BY 고객수 DESC
                       LIMIT 1) AS MaxCustomer);