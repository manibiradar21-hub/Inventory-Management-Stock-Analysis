-- Example PostgreSQL queries for a table named inventory_stock.

-- 1. Stock and inventory value by warehouse
SELECT warehouse,
       SUM(closing_stock) AS total_closing_stock,
       SUM(inventory_value) AS inventory_value
FROM inventory_stock
GROUP BY warehouse
ORDER BY inventory_value DESC;

-- 2. Items needing replenishment
SELECT sku, product, warehouse, closing_stock, reorder_level
FROM inventory_stock
WHERE closing_stock <= reorder_level
ORDER BY closing_stock ASC;

-- 3. Inventory value by category
SELECT category, SUM(inventory_value) AS inventory_value
FROM inventory_stock
GROUP BY category
ORDER BY inventory_value DESC;

-- 4. Units sold by product
SELECT product, SUM(units_sold) AS units_sold
FROM inventory_stock
GROUP BY product
ORDER BY units_sold DESC;

-- 5. Validate stock equation
SELECT *
FROM inventory_stock
WHERE closing_stock <> GREATEST(opening_stock + stock_received - units_sold, 0);
