SELECT
    u.name,
    SUM(t.amount) as balance
FROM
    users AS u
    JOIN transactions AS t
         ON u.account = t.account
GROUP BY
    u.name
HAVING
    SUM(t.amount) > 10000;
