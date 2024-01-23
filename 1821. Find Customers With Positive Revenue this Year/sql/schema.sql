CREATE TABLE IF NOT EXISTS customers
(
    customer_id INT,
    year        INT,
    revenue     INT
);

TRUNCATE TABLE customers;

INSERT INTO customers (customer_id, year, revenue) VALUES ('1', '2018', '50');
INSERT INTO customers (customer_id, year, revenue) VALUES ('1', '2021', '30');
INSERT INTO customers (customer_id, year, revenue) VALUES ('1', '2020', '70');
INSERT INTO customers (customer_id, year, revenue) VALUES ('2', '2021', '-50');
INSERT INTO customers (customer_id, year, revenue) VALUES ('3', '2018', '10');
INSERT INTO customers (customer_id, year, revenue) VALUES ('3', '2016', '50');
INSERT INTO customers (customer_id, year, revenue) VALUES ('4', '2021', '20');
