use db1;

CREATE TABLE my_table58
(
    name  VARCHAR(30),
    money INT
);

DROP TABLE my_table58;

INSERT INTO my_table58
VALUES ('kim', 10000),
       ('lee', 10000);

#kim->lee 500원 송금
#업무단위
#아래 두 코드를 한번에 실행해야하는것 transaction
UPDATE my_table58
SET money = money - 500
WHERE name = 'kim';
UPDATE my_table58
SET money = money + 500
WHERE name = 'lee';

SELECT *
FROM my_table58;

#transcation : 하나의 업무단위(모두실패, 또는 모두 성공)
COMMIT; #transcation이 성공적으로 끝나면 DB에 반영(성공)
ROLLBACK;
# 실행되기 전으로 되돌리기

#kim -> lee 500원 송금
UPDATE my_table58
SET money = money - 500
WHERE name = 'kim';

UPDATE my_table58
SET money =money + 500
WHERE name = 'lee';

#마지막 커밋으로 되돌리기
ROLLBACK;
# DB에 반영
COMMIT;

#kim->lee 1000원 송금
UPDATE my_table58
SET money =money - 1000
WHERE name = 'kim';

#시나리오 1 kim 계좌에서 1000원 차감되고 롤백
ROLLBACK;
#시나리오 2 kim 계좌에서 1000원 차감, lee 계좌에서 1000원 증액, 커밋

UPDATE my_table58
SET money = money + 1000
WHERE name = 'lee';

COMMIT;