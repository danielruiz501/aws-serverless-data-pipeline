SELECT *
FROM raw
LIMIT 10;

SELECT COUNT(*)
FROM raw;

SELECT category,
SUM(price * quantity) AS total_sales
FROM raw
GROUP BY category;

SELECT customer,
SUM(price * quantity) AS amount_spent
FROM raw
GROUP BY customer
ORDER BY amount_spent DESC;

SELECT product,
SUM(quantity) AS units_sold
FROM raw
GROUP BY product
ORDER BY units_sold DESC;