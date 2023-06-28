--Show all customer records

SELECT * 
FROM customers$

--Show total number of customers

SELECT count(*) 
FROM customers$;

--Show transactions for Chennai market (market code for chennai is Mark001

SELECT * 
FROM transactions$ 
where market_code='Mark001';

--Show distinct product codes that were sold in chennai

SELECT distinct product_code 
FROM transactions$ 
where market_code='Mark001';

--Show transactions where currency is US dollars

SELECT * 
from transactions$ 
where currency = 'USD'

--Show transactions in 2020 join by date table

SELECT t.*
FROM transactions$ t
JOIN date$ d ON t.order_date = d.date
WHERE d.year = 2020;

--Show total revenue in year 2020,

SELECT SUM(t.sales_amount) AS total_revenue
FROM transactions$ t
JOIN date$ d ON t.order_date = d.date
WHERE d.year = 2020;

--Show total revenue in year 2020, January Month,

SELECT SUM(t.sales_amount) AS total_revenue
FROM transactions$ t
JOIN date$ d ON t.order_date = d.date
WHERE d.year = 2020 AND d.month_name = 'January';

--Show total revenue in year 2020 in Chennai

SELECT SUM(t.sales_amount) AS total_revenue
FROM transactions$ t
JOIN date$ d ON t.order_date = d.date
WHERE d.year = 2020 AND t.market_code = 'Mark001';



