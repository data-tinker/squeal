SELECT name AS customers
FROM customers
     LEFT JOIN orders ON customers.id = orders.customerid
WHERE customerid IS NULL;
