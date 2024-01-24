DROP TABLE customers;
DROP TABLE orders;
CREATE TABLE IF NOT EXISTS customers
(
    id   INT,
    name VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS orders
(
    id         INT,
    customerid INT
);
INSERT INTO customers (id, name)
VALUES ('1', 'Joe');
INSERT INTO customers (id, name)
VALUES ('2', 'Henry');
INSERT INTO customers (id, name)
VALUES ('3', 'Sam');
INSERT INTO customers (id, name)
VALUES ('4', 'Max');
INSERT INTO orders (id, customerid)
VALUES ('1', '3');
INSERT INTO orders (id, customerid)
VALUES ('2', '1');
