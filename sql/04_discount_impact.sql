SELECT 
    discount,
    COUNT(*) AS order_count,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_analysis.orders
GROUP BY discount
ORDER BY discount;
