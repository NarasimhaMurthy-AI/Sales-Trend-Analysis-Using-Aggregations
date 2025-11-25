📌 Objective

The goal of this task is to analyze monthly revenue and monthly order volume using SQL aggregate functions.
Using the uploaded Sales.xlsx dataset, we extracted trends across years (2014–2017) using SQL Server.

🛠 Tools & Technologies Used
Tool	Purpose
Microsoft SQL Server (SSMS)	Query execution and analysis
SQL Server Aggregate Functions	SUM, COUNT, GROUP BY, ORDER BY
Excel Dataset (Sales.xlsx)	Raw sales data
📂 Dataset Description

The dataset used is similar to the Superstore sample data.

Key columns used:

Order Date

Order ID

Sales

Customer Information

Product Information

These were loaded into SQL Server as the table:

dbo.salesdata
🎯 Task Requirements

✔ Calculate monthly revenue → SUM(Sales)
✔ Calculate monthly order volume → COUNT(DISTINCT Order ID)
✔ Group by YEAR + MONTH
✔ Sort results month-wise
✔ Extract top months by revenue and orders
✔ Optional: Rename columns for cleaner SQL usage

All requirements were completed.

🧠 Important SQL Concepts Used

YEAR() – extract year from date

MONTH() – extract month

SUM() – calculate revenue

COUNT(DISTINCT col) – count unique orders

GROUP BY – aggregate by time periods

📈 Summary of Findings

Based on your dataset:

Revenue and orders increase consistently from 2014 to 2017

November, December, and March are consistently high-performing months

2017 shows the highest overall revenue and order volume

Seasonal spikes appear before year-end, likely due to promotions or holidays

ORDER BY – sort results

TOP – SQL Server equivalent of LIMIT
