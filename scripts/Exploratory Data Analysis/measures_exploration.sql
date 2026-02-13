--Find the Total Sales

SELECT SUM(sales_amount) AS total_sales FROM gold.fact_sales

--Find how many items are sold 

SELECT SUM(quantity) AS total_quantity FROM gold.fact_sales


--Find the average selling price

SELECT AVG(price) AS avg_price FROM gold.fact_sales


--Find the Total number of Orders

SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales --DISTINCT so we do not count the same order twice (eliminate duplicates)
SELECT * FROM gold.fact_sales

--Find the total number of products

SELECT COUNT(product_key) AS total_products FROM gold.dim_products
SELECT * FROM gold.dim_products

--Find the total number of customers
SELECT * FROM gold.dim_customers
SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.dim_customers



--Find the total number of customers that has placed an order

SELECT COUNT(DISTINCT customer_key) FROM gold.fact_sales

--Generate a Report that shows all key metrics of the business

SELECT 'Total Sales' as measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold.fact_sales
UNION ALL 
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. products', COUNT(product_key) FROM gold.dim_products
UNION ALL 
SELECT 'Total Nr. customers', COUNT(DISTINCT customer_key) FROM gold.dim_customers
