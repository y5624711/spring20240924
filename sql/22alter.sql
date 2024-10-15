use db1;
DESC my_table29;

#컬럼변경
ALTER TABLE my_table29
    MODIFY COLUMN name VARCHAR(10) DEFAULT '0000' UNIQUE;


#컬럼 변경시 제약사항을 위반하는 기존 레코드의 값을 적절히 수정해야함
UPDATE my_table29
SET name = '1';
ALTER TABLE my_table29
    MODIFY COLUMN name VARCHAR(10) NOT NULL DEFAULT '0000' UNIQUE;

SELECT *
FROM my_table29;

#address컬럼의 자료형 varchar(3)으로 변경
UPDATE my_table29
SET address = ''
WHERE address = 'london';
ALTER TABLE my_table29
    MODIFY COLUMN address VARCHAR(3) NOT NULL;


#컬럼 삭제
ALTER TABLE my_table29
    DROP COLUMN city;

# isbn(바코드) ,제목, 저자, 가격, 출판일
#테이블(book) 생성
CREATE TABLE book
(
    isbn      VARCHAR(20) UNIQUE NOT NULL,
    name      VARCHAR(30)        NOT NULL,
    author    VARCHAR(20)        NOT NULL,
    price     INT                         default 0,
    published DATE               NOT NULL DEFAULT NOW()
);
DROP TABLE book;
DESC book;

SELECT *
FROM book;

#Controller29 7,8 메소드 작성(jsp)
#새 책력하는 프로그램 만들기