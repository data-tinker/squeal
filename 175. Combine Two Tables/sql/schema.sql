DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS address;

CREATE TABLE IF NOT EXISTS person
(
    personid  INT,
    firstname VARCHAR(255),
    lastname  VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS address
(
    addressid INT,
    personid  INT,
    city      VARCHAR(255),
    state     VARCHAR(255)
);

INSERT INTO person (personid, lastname, firstname)
VALUES ('1', 'Wang', 'Allen');
INSERT INTO person (personid, lastname, firstname)
VALUES ('2', 'Alice', 'Bob');
INSERT INTO address (addressid, personid, city, state)
VALUES ('1', '2', 'New York City', 'New York');
INSERT INTO address (addressid, personid, city, state)
VALUES ('2', '3', 'Leetcode', 'California');
