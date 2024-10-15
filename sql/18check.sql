use db1;
#CHECK : 특정 값이 범위안에 있는지 체크
CREATE TABLE my_table23
(
    col1 INT,
    col2 INT,
    CHECK ( col2 > 0 )
);
INSERT INTO my_table23
    VALUE (22, 23);
INSERT INTO my_table23
    VALUE (-22, 23);
INSERT INTO my_table23
    VALUE (-22, -23);
INSERT INTO my_table23
    VALUE (-22, NULL);
DESC my_table23;
SHOW CREATE TABLE my_table23;
SELECT *
FROM my_table23;
CREATE TABLE `my_table23`
(
    `col1` int(11) DEFAULT NULL,
    `col2` int(11) DEFAULT NULL,
    CONSTRAINT `CONSTRAINT_1` CHECK (`col2` > 0)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_uca1400_ai_ci;

