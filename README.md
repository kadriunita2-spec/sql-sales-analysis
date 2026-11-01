# SQL Sales Analysis

## Project Overview

This project focuses on analyzing sales data using SQL Server to extract meaningful business insights and evaluate sales performance.

The analysis covers customer behavior, product profitability, inventory, business performance indicators, geographical sales distribution, and monthly sales trends.

## Tools & Technologies

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL

## SQL Analysis Projects

### 1. Customer Sales Analysis

**Objective:** Analyze customer purchasing behavior and identify customers generating the highest sales revenue.

**SQL Concepts Used:**
- INNER JOIN
- COUNT(DISTINCT)
- SUM()
- GROUP BY
- ORDER BY

**Key Metrics:**
- Customer ID and Name
- City and Country
- Total Orders
- Total Sales

**Business Insight:** Identifies high-revenue customers and provides insights into customer purchasing behavior and sales contribution.

---

### 2. Product Profit Analysis

**Objective:** Evaluate product performance by analyzing sales revenue, total costs, and profit.

**SQL Concepts Used:**
- INNER JOIN
- SUM()
- GROUP BY
- Aggregate Functions
- ORDER BY

**Key Metrics:**
- Total Quantity Sold
- Revenue
- Total Cost
- Profit

**Business Insight:** Identifies the most profitable products and supports product performance evaluation and pricing decisions.

---

### 3. Product Ranking

**Objective:** Identify the top two highest-priced products within each product category.

**SQL Concepts Used:**
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- PARTITION BY
- ORDER BY

**Key Metrics:**
- Product ID and Name
- Category ID
- Unit Price
- Product Rank

**Business Insight:** Helps compare product prices within categories and identify the highest-priced products.

---

### 4. Customer Segmentation

**Objective:** Segment customers based on their total sales value to identify high-value, medium-value, and low-value customers.

**SQL Concepts Used:**
- Common Table Expressions (CTEs)
- INNER JOIN
- SUM()
- GROUP BY
- CASE Statements
- ORDER BY

**Customer Segments:**
- High Value Customer: Total Sales >= 10,000
- Medium Value Customer: Total Sales >= 5,000
- Low Value Customer: Total Sales < 5,000

**Business Insight:** Identifies valuable customers and supports customer relationship management and targeted marketing strategies.

---

### 5. Inventory Analysis

**Objective:** Analyze product inventory by ranking products within each category and calculating the total stock value per category.

**SQL Concepts Used:**
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- PARTITION BY
- SUM() OVER()
- ORDER BY

**Key Metrics:**
- Product ID and Name
- Category ID
- Unit Price
- Stock Quantity
- Product Rank
- Category Stock Value

**Business Insight:** Provides an overview of inventory distribution and stock value across product categories.

---

### 6. Business KPIs

**Objective:** Calculate key business performance indicators (KPIs) to evaluate overall sales performance and profitability.

**SQL Concepts Used:**
- COUNT(DISTINCT)
- SUM()
- INNER JOIN
- Aggregate Functions

**Key Metrics:**
- Total Orders
- Total Customers
- Total Sales
- Total Units Sold
- Total Profit

**Business Insight:** Provides an overview of business performance by measuring sales volume, customer activity, revenue, and gross profit.

---

### 7. Sales by Country

**Objective:** Analyze sales performance across different countries to understand geographical differences in customer activity and revenue.

**SQL Concepts Used:**
- COUNT(DISTINCT)
- SUM()
- INNER JOIN
- GROUP BY
- ORDER BY

**Key Metrics:**
- Total Orders by Country
- Total Customers by Country
- Total Sales by Country
- Total Units Sold by Country

**Business Insight:** Identifies countries generating the highest sales revenue and provides insights into geographical sales performance.

---

### 8. Monthly Sales Trend

**Objective:** Analyze monthly sales performance to identify trends and changes in business activity over time.

**SQL Concepts Used:**
- YEAR()
- MONTH()
- DATENAME()
- COUNT(DISTINCT)
- SUM()
- INNER JOIN
- GROUP BY
- ORDER BY

**Key Metrics:**
- Sales Year
- Sales Month
- Month Name
- Total Orders
- Total Sales
- Total Units Sold

**Business Insight:** Helps monitor monthly sales performance, identify periods of higher or lower sales activity, and support sales planning and forecasting.

---

## Repository Structure

```text
sql-sales-analysis/
│
├── README.md
│
├── 01_Customer_Sales_Analysis.sql
├── 02_Product_Profit_Analysis.sql
├── 03_Product_Ranking.sql
├── 04_Customer_Segmentation.sql
├── 05_Inventory_Analysis.sql
├── 06_Business_KPIs.sql
├── 07_Sales_by_Country.sql
├── 08_Monthly_Sales_Trend.sql
│
└── screenshots/
    ├── 01_Customer_Sales_Analysis.png
    ├── 02_Product_Profit_Analysis.png
    ├── 03_Product_Ranking.png
    ├── 04_Customer_Segmentation.png
    ├── 05_Inventory_Analysis.png
    ├── 06_Business_KPIs.png
    ├── 07_Sales_by_Country.png
    └── 08_Monthly_Sales_Trend.png
```

## Project Goals

- Strengthen SQL querying and data analysis skills.
- Apply SQL techniques to business-related datasets.
- Extract meaningful insights from sales data.
- Develop practical experience in data analysis and business reporting.
