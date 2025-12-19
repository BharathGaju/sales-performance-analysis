select YEAR(order_date) AS year,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
    from sales_analysis.orders
    GROUP BY YEAR(order_date)
ORDER BY year;