use w3schools;

#테이블의 모든 레코드가 삭제
DELETE
FROM Customers;

SELECT *
FROM Customers
WHERE CustomerName = '흥민';

DELETE
FROM Customers
WHERE CustomerName = '흥민';

# Delete 실행 전 같은 WHERE 절로 SELECT 해볼 것
SELECT *
FROM Customers
WHERE CustomerID = 104;

DELETE
FROM Customers
WHERE CustomerID = 104;