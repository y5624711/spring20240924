use w3schools;

#alias : 별칭
#컬럼이나 테이블에 별칭을 줄 수 있다.
#테이블명(or 컬럼명) + AS + ? = 별칭
#AS 생략 가능
SELECT p.ProductName, s.SupplierName
FROM Products AS p
         JOIN Suppliers AS s
              ON p.SupplierID = s.SupplierID
WHERE s.SupplierID = 1;

SELECT ProductName AS 상품명, Unit AS 규격, Price AS 가격
FROM Products;

SELECT ProductName 상품명, Unit 규격, Price 가격
FROM Products;

SELECT p.ProductName 상품명, s.SupplierName 공급자명
FROM Products p
         JOIN Suppliers s
              ON p.SupplierID = s.SupplierID
WHERE s.SupplierID = 1;