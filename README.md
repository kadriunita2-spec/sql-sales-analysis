### 01. Customer Sales Analysis

**Objective:** Analyze customer purchasing behavior by evaluating total sales, order frequency, and geographical distribution.

**SQL Concepts Used:**
- INNER JOIN
- COUNT(DISTINCT)
- SUM() Aggregate Function
- GROUP BY
- ORDER BY

**Key Metrics:**
- Total Sales per Customer
- Total Number of Orders
- Customer Location (City and Country)

**Business Insight:** Identifies high-value customers, customer purchasing activity, and geographical sales distribution.

### 02. Product Profit Analysis

**Objective:** Evaluate product profitability by analyzing sales revenue, total costs, quantities sold, and profit.

**SQL Concepts Used:**
- INNER JOIN
- SUM() Aggregate Function
- GROUP BY
- ORDER BY
- Calculated Columns

**Key Metrics:**
- Total Quantity Sold
- Total Revenue
- Total Cost
- Total Profit

**Business Insight:** Identifies the most profitable products and supports product performance evaluation and business decision-making.

03. Product Ranking Analysis

Objective: Identify the top two highest-priced products within each product category.

SQL Concepts Used:

Common Table Expressions (CTEs)

ROW_NUMBER() Window Function

PARTITION BY

ORDER BY

Filtering with WHERE

Business Insight: Identifies the highest-priced products in each category and supports product portfolio analysis.

### 4. Customer Segmentation

**Objective:** Segment customers based on their total sales value to identify high-value, medium-value, and low-value customers.

**SQL Concepts Used:**
- Common Table Expressions (CTEs)
- INNER JOIN
- Aggregate Functions (`SUM`)
- GROUP BY
- CASE Statements
- ORDER BY

**Analysis:**
- Calculate total sales for each customer.
- Classify customers into three segments based on sales value:
  - High Value Customer: Total Sales >= 10,000
  - Medium Value Customer: Total Sales >= 5,000
  - Low Value Customer: Total Sales < 5,000
- Rank customers by total sales in descending order.

**Business Insight:** This analysis helps identify the most valuable customers and supports customer relationship management and targeted marketing strategies.
