DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS transactions;

CREATE TABLE IF NOT EXISTS users
(
    account INT,
    name    VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS transactions
(
    trans_id      INT,
    account       INT,
    amount        INT,
    transacted_on DATE
);

INSERT INTO users (account, name)
VALUES ('900001', 'Alice');
INSERT INTO users (account, name)
VALUES ('900002', 'Bob');
INSERT INTO users (account, name)
VALUES ('900003', 'Charlie');
INSERT INTO transactions (trans_id, account, amount, transacted_on)
VALUES ('1', '900001', '7000', '2020-08-01');
INSERT INTO transactions (trans_id, account, amount, transacted_on)
VALUES ('2', '900001', '7000', '2020-09-01');
INSERT INTO transactions (trans_id, account, amount, transacted_on)
VALUES ('3', '900001', '-3000', '2020-09-02');
INSERT INTO transactions (trans_id, account, amount, transacted_on)
VALUES ('4', '900002', '1000', '2020-09-12');
INSERT INTO transactions (trans_id, account, amount, transacted_on)
VALUES ('5', '900003', '6000', '2020-08-07');
INSERT INTO transactions (trans_id, account, amount, transacted_on)
VALUES ('6', '900003', '6000', '2020-09-07');
INSERT INTO transactions (trans_id, account, amount, transacted_on)
VALUES ('7', '900003', '-4000', '2020-09-11');
