SELECT DISTINCT
    a.seat_id
FROM
    public.cinema a
    JOIN public.cinema b
         ON ABS(a.seat_id - b.seat_id) = 1
             AND a.free::boolean = TRUE AND b.free::boolean = TRUE
ORDER BY
    a.seat_id;
