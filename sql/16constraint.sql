use db1;

DESC my_table17;

#Constraints (제약사항)

#NULL 허용여부
CREATE TABLE my_table17
(
    col1 VARCHAR(3),         #NULL 허용
    col2 VARCHAR(3) NOT NULL #NULL 허용안함
);

INSERT INTO my_table17
    (col2) VALUE ('어떤값');

INSERT INTO my_table17
    (col1) VALUE ('어떤값');


INSERT INTO my_table17
    (col1, col2) VALUE (NULL, '다른값');

INSERT INTO my_table17
    VALUE (NULL, '어떤값');

INSERT INTO my_table17
    VALUE ('', '');


INSERT INTO my_table17
    VALUE (NULL, NULL);

Drop table my_table17;

#my_table17생성
#name(문자열),price(정수
#name은 꼭 있어야함
CREATE TABLE my_table17
(
    name  VARCHAR(100) NOT NULL,
    price INT
);






