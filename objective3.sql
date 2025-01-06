-- 1. Combine the menu_items and order_details tables into a single table.
SELECT *
FROM order_details as od LEFT JOIN menu_items as mi
ON od.item_id = mi.menu_item_id;

-- 2. What were the least and most ordered items? What categories were they in?
SELECT item_name, COUNT(*) AS num_orders
FROM order_details as od LEFT JOIN menu_items as mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name
ORDER BY num_orders;
-- Chicken Tacos and Hamburgers

-- 3. What were the top 5 orders that spent the most money?
SELECT order_id, SUM(price) AS total_spend
FROM order_details as od LEFT JOIN menu_items as mi
ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;
-- Order IDs 440, 2075, 1957, 330, 2675 spent the most money

-- 4. View the details of the highest spend order. What insights can you gather from the results?
SELECT category, COUNT(*) num_items
FROM order_details as od LEFT JOIN menu_items as mi
ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;
-- They bought 8 Italian food items, and 2 each of the Mexican, American and Asian.

-- 5. View the details of the top 5 highest spend orders. What insights can you gather from the results?
SELECT order_id, category, COUNT(*) num_items
FROM order_details as od LEFT JOIN menu_items as mi
ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id,category;
-- Italian food seems to be the most popular, American seems to be the least popular,
-- at least within the highest spending customers