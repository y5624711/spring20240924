use w3schools;

#BETWEEN 값1 END 값2 : 값1 값2 사이

#AND와 같다
SELECT *
FROM Products
WHERE Price >= 10
  AND Price <= 20;
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;


#열 IN(값1,값2,값3 ~) : 값1이거나 값2이거나 값3이거나... OR와 같다
#값1 OR 값2 OR 값3 OR...
SELECT *
FROM Customers
WHERE Country = 'USA'
   OR Country = 'MEXICO';
SELECT *
FROM Customers
WHERE Country IN ('USA', 'MEXICO');

#1997년에 주문된 주문들(Orders)
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

#미국이나 영국에 있는 공급자들
SELECT *
FROM Suppliers
WHERE Country IN ('USA', 'UK')
ORDER BY Country;

#1번이나 2번 카테고리에 있는 상품들
SELECT *
FROM Products
WHERE CategoryID IN (1, 2)
ORDER BY CategoryID, ProductName;

