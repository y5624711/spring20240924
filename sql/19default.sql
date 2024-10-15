use db1;
#DEFAULT : 값을 넣지 않을 때의 기본값

CREATE TABLE my_table24
(
    col1 VARCHAR(1),
    col2 VARCHAR(2) DEFAULT 'x'
);

INSERT INTO my_table24
    (col2) VALUE ('a');
INSERT INTO my_table24
    (col1) VALUE ('a');
INSERT INTO my_table24
    (col1, col2) VALUE ('a', NULL);

DESC my_table24;
SELECT *
FROM my_table24;

CREATE TABLE my_table25
(
    col1 INT NOT NULL UNIQUE DEFAULT '0'
);
DESC my_table25;

# my_table26
#주민등록번호ssn, name, age, address
CREATE TABLE my_table26
(
    ssn     VARCHAR(14) UNIQUE NOT NULL,
    name    VARCHAR(10)        NOT NULL,
    age     INT,
    address VARCHAR(30)
);

INSERT INTO my_table26
    VALUE ('961231-1092929',
           'park',
           20,
           'kimpo');
DROP TABLE my_table26;
SELECT *
FROM my_table26;