DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS employee;

CREATE TABLE IF NOT EXISTS project
(
    project_id  INT,
    employee_id INT
);
CREATE TABLE IF NOT EXISTS employee
(
    employee_id      INT,
    name             VARCHAR(10),
    experience_years INT
);
INSERT INTO project (project_id, employee_id)
VALUES ('1', '1');
INSERT INTO project (project_id, employee_id)
VALUES ('1', '2');
INSERT INTO project (project_id, employee_id)
VALUES ('1', '3');
INSERT INTO project (project_id, employee_id)
VALUES ('2', '1');
INSERT INTO project (project_id, employee_id)
VALUES ('2', '4');
INSERT INTO employee (employee_id, name, experience_years)
VALUES ('1', 'Khaled', '3');
INSERT INTO employee (employee_id, name, experience_years)
VALUES ('2', 'Ali', '2');
INSERT INTO employee (employee_id, name, experience_years)
VALUES ('3', 'John', '3');
INSERT INTO employee (employee_id, name, experience_years)
VALUES ('4', 'Doe', '2');
