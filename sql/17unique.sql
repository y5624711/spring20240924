use db1;

#Unique : 여러행이 같은 값을 가질 수 없음

CREATE TABLE my_table19
(
    col1 VARCHAR(2),
    col2 VARCHAR(2) UNIQUE
);

SELECT *
FROM my_table19;

INSERT INTO my_table19
    VALUE ('a', 'b');
INSERT INTO my_table19
    VALUE ('a', 'c');
INSERT INTO my_table19
    VALUE ('d', 'b');

INSERT INTO my_table19
    VALUE (null, 'd');
INSERT INTO my_table19
    VALUE ('a', null);
INSERT INTO my_table19
    VALUE ('b', null);
DESC my_table19;

CREATE TABLE my_table20
(
    title VARCHAR(20) NOT NULL,
    price INT,
    isbn  VARCHAR(20) UNIQUE
);

DROP TABLE my_table21;
#table21 만들기
CREATE TABLE my_table21
(
    ssn  VARCHAR(14) UNIQUE,
    name VARCHAR(10) NOT NULL,
    age  INT
);
#주민번호 ssn, name, age
INSERT INTO my_table21
    VALUE ('950306-1085526', 'yun', '30');

CREATE TABLE my_table22
(
    col1 VARCHAR(1),
    col2 VARCHAR(2) NOT NULL UNIQUE
);
SELECT *
FROM my_table22;
INSERT INTO my_table22
    VALUE (NULL, 'a');
INSERT INTO my_table22
    VALUE (NULL, 'b');
INSERT INTO my_table22
    VALUE ('a', 'null');
DESC my_table22;
