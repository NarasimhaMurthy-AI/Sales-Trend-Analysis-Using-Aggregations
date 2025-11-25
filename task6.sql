--Months by Revenue
SELECT 
    YEAR([Order Date]) AS sales_year,
    MONTH([Order Date]) AS sales_month,
    SUM([Sales]) AS monthly_revenue
FROM salesdata
GROUP BY
    YEAR([Order Date]),
    MONTH([Order Date])
ORDER BY
    monthly_revenue DESC;

--Monthly Revenue + Monthly Order Count

SELECT
    YEAR([Order Date]) AS sales_year,
    MONTH([Order Date]) AS sales_month,
    SUM([Sales]) AS monthly_revenue,
    COUNT(DISTINCT [Order ID]) AS total_orders
FROM dbo.salesdata
GROUP BY
    YEAR([Order Date]),
    MONTH([Order Date])
ORDER BY
    sales_year,
    sales_month;

--Top 3 Months by Order Volume

SELECT TOP 3
    YEAR([Order Date]) AS sales_year,
    MONTH([Order Date]) AS sales_month,
    COUNT(DISTINCT [Order ID]) AS total_orders
FROM dbo.salesdata
GROUP BY
    YEAR([Order Date]),
    MONTH([Order Date])
ORDER BY
    total_orders DESC;

--Months by Order Volume

SELECT TOP 3
    YEAR([Order Date]) AS sales_year,
    MONTH([Order Date]) AS sales_month,
    COUNT(DISTINCT [Order ID]) AS total_orders
FROM dbo.salesdata
GROUP BY
    YEAR([Order Date]),
    MONTH([Order Date])
ORDER BY
    total_orders DESC;

--Total Revenue for Each Year

SELECT
    YEAR([Order Date]) AS sales_year,
    SUM([Sales]) AS yearly_revenue
FROM dbo.salesdata
GROUP BY
    YEAR([Order Date])
ORDER BY
    sales_year;

--Total Orders for Each Year
SELECT
    YEAR([Order Date]) AS sales_year,
    COUNT(DISTINCT [Order ID]) AS yearly_orders
FROM dbo.salesdata
GROUP BY
    YEAR([Order Date])
ORDER BY
    sales_year;

--