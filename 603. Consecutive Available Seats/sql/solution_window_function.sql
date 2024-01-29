WITH cte AS (SELECT
                 seat_id,
                 LAG(free, 1) OVER (ORDER BY seat_id)  AS "f-1",
                 free                                  AS "f0",
                 LEAD(free, 1) OVER (ORDER BY seat_id) AS "f1"
             FROM
                 cinema)

SELECT
    seat_id
FROM
    cte
WHERE
     (cte."f-1" = 1 AND cte."f0" = 1)
  OR (cte."f0" = 1 AND cte."f1" = 1)
ORDER BY
    seat_id
