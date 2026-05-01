-- 1. Общее количество записей
SELECT COUNT(*) FROM train;

-- 2. Максимальная продажа
SELECT MAX(Sales) FROM train;

-- 3. Средний чек
SELECT AVG(Sales) FROM train;

-- 4. Топ-5 городов по продажам
SELECT City, SUM(Sales) AS total_sales
FROM train
GROUP BY City
ORDER BY total_sales DESC
LIMIT 5;

-- 5. Регион с максимальными продажами
SELECT Region, SUM(Sales) AS total_sales
FROM train
GROUP BY Region
ORDER BY total_sales DESC
LIMIT 1;

-- 6. Топ-5 клиентов по сумме покупок
SELECT "Customer Name", SUM(Sales) AS total_spent
FROM train
GROUP BY "Customer Name"
ORDER BY total_spent DESC
LIMIT 5;

-- 7. Клиент с максимальной покупкой
SELECT "Customer Name", Sales
FROM train
ORDER BY Sales DESC
LIMIT 1;

-- 8. Топ категорий по продажам
SELECT Category, SUM(Sales) AS total_sales
FROM train
GROUP BY Category
ORDER BY total_sales DESC
LIMIT 3;

-- 9. Самый прибыльный товар
SELECT "Product Name", SUM(Sales) AS total_sales
FROM train
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 1;
