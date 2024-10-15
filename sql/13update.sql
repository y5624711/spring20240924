use w3schools;

UPDATE Customers
SET CustomerName='오타니',
    ContactName='쇼헤이',
    City='LA'
WHERE CustomerID = 1;

SELECT *
FROM Customers
WHERE CustomerID = 1;

#꼭 UPDATE 전에 같은 WHERE 절로 SELECT 먼저 해볼 것

#1번 상품의 이름을 '케이크'로 바꾸기
UPDATE Products
SET ProductName='케이크'
WHERE ProductID = 1;

SELECT *
FROM Products
WHERE ProductId;

#3번 직원의 생일을 '2000-01-01로 바꾸기
Update Employees
SET BirthDate='2000-01-01'
WHERE EmployeeID = 3;

SELECT *
FROM Employees
WHERE EmployeeID = 3;

#1번 공급자의 도시는 Seoul 국가는 Korea 로 바꾸기
UPDATE Suppliers
SET City='Seoul',
    Country='Korean'
WHERE SupplierID = 1;

SELECT *
FROM Employees
WHERE EmployeeID = 1;
