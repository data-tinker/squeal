DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS seller;

CREATE TABLE IF NOT EXISTS customer
(
    customer_id   INT,
    customer_name VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS orders
(
    order_id    INT,
    sale_date   DATE,
    order_cost  INT,
    customer_id INT,
    seller_id   INT
);

CREATE TABLE IF NOT EXISTS seller
(
    seller_id   INT,
    seller_name VARCHAR(20)
);


INSERT INTO customer (customer_id, customer_name)
VALUES ('101', 'Alice');
INSERT INTO customer (customer_id, customer_name)
VALUES ('102', 'Bob');
INSERT INTO customer (customer_id, customer_name)
VALUES ('103', 'Charlie');
INSERT INTO orders (order_id, sale_date, order_cost, customer_id, seller_id)
VALUES ('1', '2020-03-01', '1500', '101', '1');
INSERT INTO orders (order_id, sale_date, order_cost, customer_id, seller_id)
VALUES ('2', '2020-05-25', '2400', '102', '2');
INSERT INTO orders (order_id, sale_date, order_cost, customer_id, seller_id)
VALUES ('3', '2019-05-25', '800', '101', '3');
INSERT INTO orders (order_id, sale_date, order_cost, customer_id, seller_id)
VALUES ('4', '2020-09-13', '1000', '103', '2');
INSERT INTO orders (order_id, sale_date, order_cost, customer_id, seller_id)
VALUES ('5', '2019-02-11', '700', '101', '2');
INSERT INTO seller (seller_id, seller_name)
VALUES ('1', 'Daniel');
INSERT INTO seller (seller_id, seller_name)
VALUES ('2', 'Elizabeth');
INSERT INTO seller (seller_id, seller_name)
VALUES ('3', 'Frank');
