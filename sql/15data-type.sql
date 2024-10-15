use db1;

#데이터 타입
#문자형
#   가변형
#숫자형
#   정수
#   실수
#날짜형
#   년월일
#   년월일시분초


#문자형
#VARCHAR(길이)
CREATE TABLE my_table4
(
    col1 VARCHAR(1),
    col2 VARCHAR(3),
    col3 VARCHAR(5)
);

INSERT INTO my_table4
    (col1, col2, col3)
    VALUE ('a', 'b', 'c');
INSERT INTO my_table4
    (col1, col2, col3)
    VALUE ('abc', 'abc', 'abc');
INSERT INTO my_table4
    (col1, col2, col3)
    VALUE ('흥민', '손흥민', '서울특별시');

CREATE TABLE my_table5
(
    title  VARCHAR(300),
    author VARCHAR(100)
);

#my_table6 만들기
#4개의 컬럼
#각 컬럼의 데이터타입은 문자열이고
#컬럼명과 허용되는 문자열은 스스로 정해보기
CREATE TABLE my_table6
(
    id      VARCHAR(1000),
    name    VARCHAR(100),
    address VARCHAR(100)
);

#숫자형
CREATE TABLE my_table7
(
    price VARCHAR(10)
);
INSERT INTO my_table7
    (price) VALUE ('1000');

#INT, INTEGER
CREATE TABLE my_table8
(
    price INT
);
INSERT INTO my_table8
    (price) VALUE ('천원'); # x
INSERT INTO my_table8
    (price) VALUE ('2000');
INSERT INTO my_table8
    (price) VALUE (50.12); # x
SELECT *
FROM my_table8;

#DEC, DECIMAL
#고정된 실수형
#DEC(총 숫자 갯수, 소숫점 이하 숫자 개수)
CREATE TABLE my_table9
(
    col1 DEC(3, 1),
    col2 DEC(5, 2)
);

INSERT INTO my_table9
    (col1) VALUE (31.4);
INSERT INTO my_table9
    (col1) VALUE (3.14);
INSERT INTO my_table9
    (col1) VALUE (314.1);
INSERT INTO my_table9
    (col1) VALUE (314);
INSERT INTO my_table9
    (col1) VALUE (31);

SELECT *
FROM my_table9;

#my_table10 만들기
#숫자형식 price score age length width height
DROP TABLE my_table10;
CREATE TABLE my_table10
(
    price  INT,
    score  INT,
    age    INT,
    length DEC(10, 2),
    width  DEC(20, 2),
    height DEC(10, 2)
);
SELECT *
FROM my_table10;
DESC my_table10;

#날짜
#DATE년월일
#YYYY-MM-DD
CREATE TABLE my_table11
(
    col1 DATE
);
INSERT INTO my_table11
    (col1) VALUE ('2024-10-14');
INSERT INTO my_table11
    (col1) VALUE ('1000-01-01');
INSERT INTO my_table11
    (col1) VALUE ('9999-12-31');
SELECT *
FROM my_table11;

#DATETIME : 날짜시간
#YYYY-MM-DD HH:MM:SS.ffffff
CREATE TABLE my_table12
(
    col1 DATETIME
);
INSERT INTO my_table12
    (col1) VALUE ('2024-10-14 10:35:08.123456');
SELECT *
FROM my_table12;
CREATE TABLE my_table13
(
    col1 DATETIME(6)
);

INSERT INTO my_table13
    (col1) VALUE ('2024-10-14 10:35:08.123456');
SELECT *
FROM my_table13;

#my_table14
#birth_date, start_date_time, end_date_time
DROP TABLE my_table14;
CREATE TABLE my_table14
(
    birth_date      DATE,
    start_date_time DATETIME(6),
    end_date_time   DATETIME(6)
);
INSERT INTO my_table14
    (birth_date, start_date_time, end_date_time)
VALUES ('2024-10-14',
        '2024-10-14 10:35:08.123456',
        '2024-10-15 05:00:00.000000');

SELECT *
FROM my_table14;


#다른 스키마(DB)에 있는 테이블 사용하기
SELECT *
FROM w3schools.Products;
use w3schools;
SELECT *
FROM db1.my_table11;

CREATE TABLE my_table15
(
    col1 VARCHAR(300),
    col2 INT,
    col3 DEC(15, 2),
    col4 DATE,
    col5 DATETIME
);

SELECT *
FROM my_table15;

CREATE TABLE my_table16
(
    title     VARCHAR(100),
    price     INT,
    score     DEC(5, 1),
    published DATE,
    inserted  DATETIME
);

SELECT *
FROM my_table16;
Drop TABLE my_table16;
DESC my_table16;