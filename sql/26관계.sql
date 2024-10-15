use db1;

# 1:n 관계

# 1:1 관계

#직원정보테이블
# id(PK), 직원 이름, 생년월일, 주소, 직급,

#연봉테이블(특정권한만 조회가능한 테이블)
# id,  연봉


# n : m (다 대 다)
# 다 대 다 관계는 연결테이블을 생성해야한다.
# 고객 테이블
#id, 고객명, 주소

#상품테이블
#id, 상품명, 가격

#주문정보 테이블(연결 테이블)
# 고객 ID, 상품 ID


#고객정보
CREATE TABLE my_table41
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(20),
    address VARCHAR(20)
);

#상품 테이블
CREATE TABLE my_table42
(
    id    INT AUTO_INCREMENT PRIMARY KEY,
    name  VARCHAR(20),
    price INT
);

#주문테이블
CREATE TABLE my_table43
(
    customer_id INT NOT NULL REFERENCES my_table41 (id),
    product_id  INT NOT NULL REFERENCES my_table42 (id)
);


