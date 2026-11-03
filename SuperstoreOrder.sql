use superstore_db

select * from SuperStoreOrders

--Total Sales

select SUM(sales) as total_sales from SuperStoreOrders 

--Total profit

select SUM(profit) as total_profit from SuperStoreOrders


--Top 10 Product

SELECT TOP 10 product_name AS product, SUM(sales) AS total_sales
FROM SuperStoreOrders
GROUP BY product_name
ORDER BY total_sales DESC;

----Top 10 customer

SELECT TOP 10 customer_name,SUM(sales) AS total_sales
FROM SuperStoreOrders
GROUP BY customer_name
ORDER BY total_sales DESC;

----Region wise sale

SELECT region,
    SUM(sales) AS total_sales
FROM SuperStoreOrders
GROUP BY region
ORDER BY total_sales DESC;

----Category wise sales

SELECT category,SUM(sales) AS total_sales
FROM SuperStoreOrders
GROUP BY category
ORDER BY total_sales DESC;

----Montly trend

SELECT YEAR(order_date) AS sales_year,MONTH(order_date) AS sales_month,SUM(sales) AS total_sales
FROM SuperStoreOrders
GROUP BY YEAR(order_date),
         MONTH(order_date)
ORDER BY sales_year, sales_month;