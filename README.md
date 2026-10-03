# Inventory Management & Stock Analysis

**Tools:** Excel, Power Query, Power BI, SQL (optional)

## Objective
Analyze stock availability, inventory value, units sold and potential replenishment needs across products and warehouse locations.

## Files
- `data/inventory_stock.csv` — 300 synthetic stock snapshot records.
- `sql/inventory_queries.sql` — sample queries.
- `dashboard_guide.md` — recommended KPIs and visuals.

## Suggested workflow
1. Import the CSV and validate stock calculations.
2. Confirm Closing_Stock = Opening_Stock + Stock_Received - Units_Sold, with a rule for negative stock.
3. Compare closing stock with reorder levels.
4. Build visuals by warehouse, product and category.
5. Add slicers for Snapshot_Date, Warehouse, Category and Stock_Status.
6. Explain that each row is a stock snapshot and not necessarily a unique daily movement record.

## Important
This is a synthetic practice dataset. Complete the dashboard and validate the calculations before listing the project as completed.
