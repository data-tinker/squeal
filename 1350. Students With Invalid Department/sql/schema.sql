DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS students;

CREATE TABLE IF NOT EXISTS departments
(
    id   INT,
    name VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS students
(
    id            INT,
    name          VARCHAR(30),
    department_id INT
);

INSERT INTO departments (id, name)
VALUES ('1', 'Electrical Engineering');
INSERT INTO departments (id, name)
VALUES ('7', 'Computer Engineering');
INSERT INTO departments (id, name)
VALUES ('13', 'Bussiness Administration');
INSERT INTO students (id, name, department_id)
VALUES ('23', 'Alice', '1');
INSERT INTO students (id, name, department_id)
VALUES ('1', 'Bob', '7');
INSERT INTO students (id, name, department_id)
VALUES ('5', 'Jennifer', '13');
INSERT INTO students (id, name, department_id)
VALUES ('2', 'John', '14');
INSERT INTO students (id, name, department_id)
VALUES ('4', 'Jasmine', '77');
INSERT INTO students (id, name, department_id)
VALUES ('3', 'Steve', '74');
INSERT INTO students (id, name, department_id)
VALUES ('6', 'Luis', '1');
INSERT INTO students (id, name, department_id)
VALUES ('8', 'Jonathan', '7');
INSERT INTO students (id, name, department_id)
VALUES ('7', 'Daiana', '33');
INSERT INTO students (id, name, department_id)
VALUES ('11', 'Madelynn', '1');
