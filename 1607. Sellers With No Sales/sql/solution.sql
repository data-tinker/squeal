SELECT
    seller_name
FROM
    seller a
    LEFT JOIN
        (SELECT DISTINCT
             seller_id
         FROM
             orders
         WHERE
             EXTRACT(YEAR FROM sale_date) = 2020) b
    ON a.seller_id = b.seller_id
WHERE
    b.seller_id IS NULL
ORDER BY
    1 ASC
