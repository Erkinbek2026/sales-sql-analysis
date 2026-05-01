📎 Репозиторий: https://github.com/Erkinbek2026/sales-sql-analysis

# 📊 Анализ продаж (SQL)

## 📌 Описание проекта

В данном проекте выполнен анализ данных о продажах с использованием SQL.

Цель — изучить ключевые бизнес-показатели и получить инсайты.

---

## 📂 Данные

* Источник: Superstore dataset
* Количество строк: 9800

---

## 📊 Что было сделано

### 1. Общие показатели

* Общее количество записей
* Максимальная продажа
* Средний чек

### 2. Анализ по городам

* Топ-5 городов по продажам

### 3. Анализ по регионам

* Регион с максимальными продажами

### 4. Анализ клиентов

* Топ-5 клиентов по сумме покупок
* Клиент с максимальной покупкой

### 5. Анализ категорий

* Топ категорий по продажам

### 6. Анализ товаров

* Самый прибыльный товар

---

## 🛠 Используемые инструменты

* SQL (SQLite)
* GitHub

---

## 📄 Пример запроса

```sql
SELECT "Customer Name", SUM(Sales) AS total_spent
FROM train
GROUP BY "Customer Name"
ORDER BY total_spent DESC
LIMIT 3;
```
## 📈 Результаты

- Максимальная продажа: 22638.48  
- Топ клиент: Sean Miller  
- Топ город: New York City  
- Топ товар: Canon imageCLASS 2200 Advanced Copier  

## 🛠️ Skills

- SQL (SQLite)
- Aggregations (SUM, AVG, COUNT)
- GROUP BY, ORDER BY
- Data filtering (WHERE)
- Working with dates (substr, date)
- Data analysis

- ## 📌 Примеры задач

- Определение общего количества заказов
- Поиск максимальной продажи
- Анализ продаж по годам
- Определение лучшего года по продажам
- Анализ продаж по месяцам
- Фильтрация данных по дате

- ## 📂 Структура проекта

- `queries.sql` — базовые SQL-запросы
- `advanced_queries.sql` — продвинутые запросы (даты, аналитика)

- ## 🚀 Как использовать

1. Загрузить dataset (Superstore) в SQLite
2. Назвать таблицу `train`
3. Запустить SQL-запросы из файлов:
   - queries.sql
   - advanced_queries.sql
  
   - ## 📈 Результаты

- Лучший год по продажам: 2018
- Общий объём продаж увеличивается с каждым годом

## 📈 Бизнес-инсайты

- Продажи растут с каждым годом
- Лучший год по продажам: 2018
- Есть сезонность по месяцам
- Основные продажи приходятся на несколько крупных городов
- Топ-клиенты приносят значительную часть выручки

- ## 🧪 Что я изучил

- Работа с реальным датасетом
- Написание SQL-запросов
- Агрегации и группировки
- Анализ временных данных
- Поиск инсайтов

# 📊 Анализ продаж (SQL)

🔗 Репозиторий: https://github.com/Erkinbek2026/sales-sql-analysis

---

## 📌 Описание проекта

В данном проекте выполнен анализ данных о продажах с использованием SQL.

🎯 **Цель:**
- Изучить ключевые бизнес-показатели
- Найти инсайты в продажах
- Практиковать SQL (агрегации, фильтрация, группировки)

---

## 📂 Данные

- Источник: Superstore dataset
- Количество строк: 9800
- Таблица: `train`

---

## 🛠 Используемые инструменты

- SQL (SQLite / SQLiteViz)
- GitHub

---

## 📈 Что было сделано

### 🔹 Базовый анализ

- Общее количество записей
- Максимальная продажа
- Средний чек

```sql
SELECT COUNT(*) FROM train;

SELECT MAX(Sales) FROM train;

SELECT AVG(Sales) FROM train;

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
LIMIT 5;

SELECT 
  substr("Order Date", 7, 4) AS year,
  SUM(Sales) AS total_sales
FROM train
GROUP BY year
ORDER BY year;
