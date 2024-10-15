use db1;
CREATE TABLE my_table50
(
    id   INT,
    name VARCHAR(20)
);

INSERT INTO my_table50
    (id, name)
VALUES (1, 'kim'),
       (2, 'lee'),
       (3, 'park'),
       (null, 'choi'),
       (null, 'son'),
       (4, null),
       (5, null);
SELECT *
FROM my_table50;

#IS NULL : 값의 NULL 여부
SELECT *
FROM my_table50
WHERE id IS NULL;
SELECT *
FROM my_table50
WHERE name IS NULL;

SELECT *
FROM my_table50
WHERE id IS NOT NULL;
SELECT *
FROM my_table50
WHERE name IS NOT NULL;

#NULL 과의 모든 연산은 FALSE
SELECT *
FROM my_table50
WHERE id <= 3;
SELECT *
FROM my_table50
WHERE id > 3;

SELECT *
FROM my_table50
WHERE name >= 'k';
SELECT *
FROM my_table50
WHERE name <= 'k';

#null 값으 대체
#IFNULL()
SELECT *
FROM my_table50
WHERE IFNULL(id, 0) > 3;
SELECT *
FROM my_table50
WHERE IFNULL(id, 0) <= 3;
SELECT *
FROM my_table50
WHERE IFNULL(name, '') > 'k';

SELECT *
FROM my_table50
WHERE IFNULL(name, '') <= 'k';

#null 산술연산 NULL
SELECT (id * 2), name
FROM my_table50;

#집계(그룹)함수 : SUM, AVG, COUNT, MAX, MIN
#NULL값 은 제외한다.
SELECT *
FROM my_table50;

SELECT COUNT(id)
FROM my_table50;
SELECT SUM(id)
FROM my_table50;
SELECT AVG(id)
FROM my_table50;
SELECT MAX(id)
FROM my_table50;
SELECT MIN(id)
FROM my_table50;

#null을 굳이 포함하고 싶다면 IFNULL
SELECT COUNT(IFNULL(id, 0))
FROM my_table50;
SELECT SUM(IFNULL(id, 0))
FROM my_table50;
SELECT AVG(IFNULL(id, 0))
FROM my_table50;
SELECT MAX(IFNULL(id, 0))
FROM my_table50;
SELECT MIN(IFNULL(id, 0))
FROM my_table50;

