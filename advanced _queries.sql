-- Ïðîäàæè ïî ãîäàì
SELECT 
  substr("Order Date", 7, 4) AS year,
  SUM(Sales) AS total_sales
FROM train
GROUP BY year
ORDER BY year;

-- Ëó÷øèé ãîä
SELECT 
  substr("Order Date", 7, 4) AS year,
  SUM(Sales) AS total_sales
FROM train
GROUP BY year
ORDER BY total_sales DESC
LIMIT 1;

-- Ïðîäàæè ïî ìåñÿöàì
SELECT 
  substr("Order Date", 7, 4) AS year,
  substr("Order Date", 4, 2) AS month,
  SUM(Sales) AS total_sales
FROM train
GROUP BY year, month
ORDER BY year, month;

SELECT 
  substr("Order Date", 4, 2) AS month,
  SUM(Sales) AS total_sales
FROM train
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;

SELECT 
  City,
  SUM(Sales) AS total_sales
FROM train
GROUP BY City
ORDER BY total_sales DESC
LIMIT 5;

SELECT 
  "Customer Name",
  SUM(Sales) AS total_spent
FROM train
GROUP BY "Customer Name"
ORDER BY total_spent DESC
LIMIT 1;
