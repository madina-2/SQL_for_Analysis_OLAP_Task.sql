-- 1 - task
SELECT prod_category, SUM(amount_sold) AS total_sales_amount
FROM sh.sales
INNER JOIN sh.products ON sh.sales.prod_id = sh.products.prod_id
WHERE time_id BETWEEN '1998-01-30' AND '1998-03-10'
GROUP BY sh.products.prod_category;

-- 2 - task

SELECT country_region AS particular_region, AVG(quantity_sold) AS average_sales_quantity
FROM sh.sales
INNER JOIN sh.customers ON sh.sales.cust_id = sh.customers.cust_id
INNER JOIN sh.products ON sh.sales.prod_id = sh.products.prod_id
INNER JOIN sh.countries ON sh.customers.country_id = sh.countries.country_id
WHERE prod_name = 'Standard Mouse'
GROUP BY country_region;

-- 3 - task
SELECT c.cust_id, c.cust_first_name, c.cust_last_name, SUM(s.amount_sold) AS total_sales_amount
FROM sh.sales s
JOIN sh.customers c ON s.cust_id = c.cust_id
GROUP BY c.cust_id, c.cust_first_name, c.cust_last_name
ORDER BY total_sales_amount DESC
LIMIT 5;




