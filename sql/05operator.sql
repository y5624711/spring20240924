use w3schools;

# 컬럼='값'
SELECT FirstName, LastName, BirthDate
FROM Employees
WHERE BirthDate = '1963-08-30';

# >,<,>=,<=,!=(<>)
SELECT *
FROM Employees
WHERE BirthDate > '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate < '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate >= '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate <= '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate != '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate <> '1963-08-30';

SELECT *
FROM Products
WHERE Price > 10.00;

SELECT *
FROM Customers
WHERE CustomerName < 'd';

#1998-01-01(포함) 이후 주문된 건들(Orders)
SELECT *
FROM Orders
WHERE OrderDate >= '1998-01-01';
# 수량(Quantity)이 10개 미만인 주문상세(OrderDetails)
SELECT *
FROM OrderDetails
WHERE Quantity < 10;
# 카테고리번호가 1,2,3번인 상품들
SELECT *
FROM Categories
WHERE CategoryID <= 3;