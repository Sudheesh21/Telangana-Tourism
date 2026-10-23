-- PROJECT: Telangana Tourism Data Analytics
-- Database: TelanganaTourism

USE TelanganaTourism;

-- 1. Display all tourism records
SELECT *
FROM TourismData
ORDER BY Year;

-- 2. Calculate total visitors by year
SELECT
    Year,
    Domestic_visitors,
    Foreign_visitors,
    Domestic_visitors + Foreign_visitors AS Total_Visitors
FROM TourismData
ORDER BY Year;

-- 3. Analyze annual visitor growth
SELECT *
FROM TourismAnalysis
ORDER BY Year;

-- 4. Identify years with positive growth
SELECT Year, Total_Visitors, YoY_Growth_Percent
FROM TourismAnalysis
WHERE YoY_Growth_Percent > 0
ORDER BY Year;

-- 5. Identify years with negative growth
SELECT Year, Total_Visitors, YoY_Growth_Percent
FROM TourismAnalysis
WHERE YoY_Growth_Percent < 0
ORDER BY Year;

-- 6. Find the highest annual visitor total
SELECT Year, Total_Visitors
FROM TourismAnalysis
ORDER BY Total_Visitors DESC
LIMIT 1;

-- 7. Find the lowest annual visitor total
SELECT Year, Total_Visitors
FROM TourismAnalysis
ORDER BY Total_Visitors ASC
LIMIT 1;

-- 8. Count the annual records
SELECT COUNT(*) AS Total_Years
FROM TourismAnalysis;

-- 9. Check for duplicate years
SELECT Year, COUNT(*) AS Record_Count
FROM TourismData
GROUP BY Year
HAVING COUNT(*) > 1;
```