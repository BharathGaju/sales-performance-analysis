SELECT DISTINCT product_name
FROM  sales_analysis.orders o
WHERE EXISTS (
    SELECT 1
    FROM  sales_analysis.orders i
    WHERE i.product_name = o.product_name
      AND i.profit < 0
);
