/* Profit and Sales by  City and State*/
SELECT Count(*)    AS Amount,
       Sum(sales)  AS Sales,
       Sum(profit) AS Profit,
       city,
       state,
       country
FROM   [super_store_data].[dbo].[furniture_store]
GROUP  BY city,
          state,
          country;

/*Profit and Sales Time Series */
SELECT [order_date],
       Sum(profit) AS Profit,
       Sum(sales)  AS Sales
FROM   [super_store_data].[dbo].[furniture_store]
GROUP  BY [order_date]
ORDER  BY [order_date] ASC;

/*Profit and Sales for each Sub Category*/
SELECT Count(*)    AS Amount,
       Sum(sales)  AS Sales,
       Sum(profit) AS Profit,
       [sub_category]
FROM   [super_store_data].[dbo].[furniture_store]
GROUP  BY [sub_category];

/*Distribution of discounts*/
SELECT Count(*) AS Amount,
       [discount]
FROM   [super_store_data].[dbo].[furniture_store]
GROUP  BY [discount]
ORDER  BY amount DESC;

/*Top 10 most selling products*/
SELECT TOP(10) Count(*) AS Amount,
               product_name,
               [sub_category]
FROM   [super_store_data].[dbo].[furniture_store]
GROUP  BY product_name,
          [sub_category]
ORDER  BY amount DESC;

/*Profit and Sales for each Ship Mode*/
SELECT Count(*)    AS Amount,
       ship_mode,
       Sum(sales)  AS Sales,
       Sum(profit) AS Profit
FROM   [super_store_data].[dbo].[furniture_store]
GROUP  BY ship_mode
ORDER  BY amount DESC; 