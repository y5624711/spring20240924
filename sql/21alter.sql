use db1;
CREATE TABLE my_table29
(
    name VARCHAR(2),
    age  INT
);

desc my_table29;

#컬럼 추가
ALTER TABLE my_table29
    ADD COLUMN address VARCHAR(100) NOT NULL;

INSERT INTO my_table29
    VALUE ('s', 22, 'a');
ALTER TABLE my_table29
    ADD COLUMN email VARCHAR(20) NOT NULL;

SELECT *
FROM my_table29;

#새컬럼 country 추가
ALTER TABLE my_table29
    ADD COLUMN country VARCHAR(20) NOT NULL;

#중간에 컬럼추가하기
ALTER TABLE my_table29
    ADD COLUMN city VARCHAR(10) AFTER address;