USE restaurant_db;

-- 1. View the menu_items table.
SELECT * 
FROM menu_items;

-- 2. Find the number of items on the menu.
SELECT COUNT(*) 
FROM menu_items;
-- 32

-- 3. What are the least and most expensive items on the menu?
SELECT * 
FROM menu_items
ORDER BY price;

SELECT * 
FROM menu_items 
ORDER BY price DESC;
-- Edamame and Shrimp Scampi

-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*) 
FROM menu_items
WHERE category='Italian';
-- 9

-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT * 
FROM menu_items
WHERE category='Italian'
ORDER BY price;

SELECT * 
FROM menu_items
WHERE category='Italian'
ORDER BY price DESC;
-- Spaghetti and SHrimp Scampi

-- 6. How many dishes are in each category?
SELECT category,COUNT(*) AS num_dishes
FROM menu_items
GROUP BY category;
-- 6 American, 8 Asian, 9 Mexican, 9 Italian

-- 7. What is the average dish price within each category?
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;
-- American 10.07, Asian 13.48, Mexican 11.80, Italian 16.75