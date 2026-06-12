# E-Commerce Sales Analysis using SQL

## Project Overview

This project analyzes sales data for an e-commerce business using SQL. It demonstrates database design, table relationships, joins, aggregate functions, and business analytics queries.

## Database Schema

The database contains four tables:

1. Customers
2. Products
3. Orders
4. Order_Items

Relationships:
- One customer can place many orders.
- One order can contain many products.
- Products can appear in multiple orders.

## Technologies Used

- MySQL
- SQL
- GitHub

## Files

- schema.sql – Database structure
- data.sql – Sample data
- analysis_queries.sql – Business analysis queries

## Analysis Performed

### Total Revenue

Calculates total sales revenue generated.

### Top Selling Products

Finds products with the highest sales volume.

### Customer Spending Analysis

Identifies customers who spend the most.

### Monthly Sales Report

Tracks order trends by month.

## Sample Query

```sql
SELECT p.product_name,
       SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;
```

## Screenshots

Add screenshots of:
- Database tables
- Query execution
- Revenue analysis
- Top-selling products

## Skills Demonstrated

- Database Design
- SQL Joins
- GROUP BY
- Aggregate Functions
- Data Analysis
- Business Reporting

## Author

Shivani Arra