
-- Superstore SQL Analysis Project

-- 1. Create table with correct data types
CREATE TABLE superstore_orders (
    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    ship_mode TEXT,
    customer_name TEXT,
    segment TEXT,
    state TEXT,
    country TEXT,
    market TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC,
    quantity INT,
    discount NUMERIC,
    profit NUMERIC,
    shipping_cost NUMERIC,
    order_priority TEXT,
    year INT
);

-- 2. Verify data
SELECT COUNT(*) AS total_rows FROM superstore_orders;

-- 3. Preview data
SELECT * FROM superstore_orders LIMIT 10;

-- 4. Filtering & sorting
SELECT *
FROM superstore_orders
WHERE category = 'Technology'
ORDER BY sales DESC
LIMIT 10;

-- 5. Aggregations
SELECT category, SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY category;

SELECT region, AVG(profit) AS avg_profit
FROM superstore_orders
GROUP BY region;

-- 6. HAVING
SELECT category, SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY category
HAVING SUM(sales) > 100000;

-- 7. BETWEEN & LIKE
SELECT SUM(sales) AS jan_2017_sales
FROM superstore_orders
WHERE order_date BETWEEN '2017-01-01' AND '2017-01-31';

SELECT DISTINCT customer_name
FROM superstore_orders
WHERE customer_name LIKE 'A%';
