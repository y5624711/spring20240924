use w3schools;

# LIKE : ~ 같은
SELECT *
FROM Customers
WHERE CustomerName LIKE '%ed%';

# % : 0개 이상의 임의의 문자들
SELECT *
FROM Customers
WHERE CustomerName Like 'A%';

SELECT *
FROM Customers
WHERE CustomerName Like '%A';
SELECT *
FROM Customers
WHERE CustomerName Like '%A%';

# _ : 임의의 한글자
SELECT *
FROM Employees
WHERE BirthDate LIKE '195_-__-__';

SELECT *
FROM Employees
WHERE BirthDate LIKE '195_-02-__';

#고객명에 OR이 포함되어 있는 고객들 조회
SELECT *
FROM Customers
WHERE CustomerName LIKE '%OR%';

#고객명이 A 로 시작 O로 끝남
SELECT *
FROM Customers
WHERE ContactName LIKE ' a-=AO%';

#생일이 7월인 직원 조회
SELECT *
FROM Employees
WHERE BirthDate LIKE '____-07-__';