DROP TABLE IF EXISTS cinema;
CREATE TABLE IF NOT EXISTS cinema
(
    seat_id SERIAL PRIMARY KEY,
    free    BOOLEAN
);
INSERT INTO cinema (seat_id, free)
VALUES ('1', '1');
INSERT INTO cinema (seat_id, free)
VALUES ('2', '0');
INSERT INTO cinema (seat_id, free)
VALUES ('3', '1');
INSERT INTO cinema (seat_id, free)
VALUES ('4', '1');
INSERT INTO cinema (seat_id, free)
VALUES ('5', '1');
