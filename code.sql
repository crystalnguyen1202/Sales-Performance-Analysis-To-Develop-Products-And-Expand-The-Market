-- Cleansed FACT_InternetSales Table --
SELECT 
  ProductKey, 
  OrderDateKey,   
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber,  
  SalesAmount
FROM 
  AdventureWorksDW2022.dbo.FactInternetSales
WHERE 
  LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) - 2 
ORDER BY
  OrderDateKey ASC

-- Cleansed DIM_Products Table --
SELECT 
  p.ProductKey, 
  p.ProductAlternateKey AS ProductItemCode, 
  p.EnglishProductName AS Product_Name, 
  ps.EnglishProductSubcategoryName AS Sub_Category, 
  pc.EnglishProductCategoryName AS Product_Category, 
  p.Color AS Product_Color, 
  p.Size AS Product_Size, 
  p.ProductLine AS Product_Line, 
  p.ModelName AS Product_Model_Name, 
  p.EnglishDescription AS Product_Description, 
  ISNULL (p.Status, 'Outdated') AS Product_Status
FROM 
  AdventureWorksDW2022.dbo.DimProduct as p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc

-- Cleansed DIM_Customers Table --
SELECT 
  c.customerkey AS CustomerKey, 
  c.firstname AS First_Name, 
  c.lastname AS Last_Name, 
  c.firstname + ' ' + lastname AS Full_Name, 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  c.datefirstpurchase AS First_Purchase_Date, 
  g.city AS Customer_City
FROM 
  AdventureWorksDW2022.dbo.DimCustomer as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC 

-- Cleanse DIM_Date Table --
SELECT 
  DateKey, 
  FullDateAlternateKey AS Date, 
  EnglishDayNameOfWeek AS Day, 
  EnglishMonthName AS Month, 
  Left(EnglishMonthName, 3) AS MonthShort,   -- Useful for front end date navigation and front end graphs.
  MonthNumberOfYear AS MonthNo, 
  CalendarQuarter AS Quarter, 
  CalendarYear AS Year 
FROM 
 AdventureWorksDW2022.dbo.DimDate
WHERE 
  CalendarYear >= 2022

