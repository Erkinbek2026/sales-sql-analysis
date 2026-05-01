-- Продажи по годам
SELECT 
  substr("Order Date", 7, 4) AS year,
  SUM(Sales) AS total_sales
FROM train
GROUP BY year
ORDER BY year;

-- Лучший год
SELECT 
  substr("Order Date", 7, 4) AS year,
  SUM(Sales) AS total_sales
FROM train
GROUP BY year
ORDER BY total_sales DESC
LIMIT 1;

-- Продажи по месяцам
SELECT 
  substr("Order Date", 7, 4) AS year,
  substr("Order Date", 4, 2) AS month,
  SUM(Sales) AS total_sales
FROM train
GROUP BY year, month
ORDER BY year, month;