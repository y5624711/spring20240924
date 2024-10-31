use w3schools;

#HAVING : 집계 결과에 조건을 주기 위한 키워드
SELECT Country, COUNT(CustomerID) 인원
FROM Customers
GROUP BY Country
HAVING 인원 > 5;

SELECT Country, COUNT(CustomerID)
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;


#WHERE절은 각 레코드를 필터링할 때 쓰는것
SELECT Country, COUNT(CustomerID) 인원
FROM Customers
WHERE COUNT(CustomerID) > 5 #실행안됨
GROUP BY Country;

#카테고리별 상품 평균 금액, 30달러 이상인것만
SELECT CategoryID, AVG(Price)
FROM Products
GROUP BY CategoryID
HAVING AVG(Price) >= 30
ORDER BY CategoryID;

#직원별 주문건수 조회(단,100건 이상 처리한 직원만)
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(OrderID) 건
FROM Orders o
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
GROUP BY EmployeeID
HAVING 건 >= 100;
