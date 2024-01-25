DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees
(
    employee_id INT,
    name        VARCHAR(30),
    salary      INT
);
INSERT INTO employees (employee_id, name, salary)
VALUES ('2', 'Meir', '3000');
INSERT INTO employees (employee_id, name, salary)
VALUES ('3', 'Michael', '3800');
INSERT INTO employees (employee_id, name, salary)
VALUES ('7', 'Addilyn', '7400');
INSERT INTO employees (employee_id, name, salary)
VALUES ('8', 'Juan', '6100');
INSERT INTO employees (employee_id, name, salary)
VALUES ('9', 'Kannon', '7700');
