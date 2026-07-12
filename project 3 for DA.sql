CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE orders (
    OrderID TEXT,
    Date TEXT,
    CustomerID TEXT,
    Product TEXT,
    Quantity TEXT,
    UnitPrice TEXT,
    ShippingAddress TEXT,
    PaymentMethod TEXT,
    OrderStatus TEXT,
    TrackingNumber TEXT,
    ItemsInCart TEXT,
    CouponCode TEXT,
    ReferralSource TEXT,
    TotalPrice TEXT
);

SELECT * FROM orders LIMIT 10;

SELECT COUNT(*) AS TotalOrders FROM orders;

SELECT SUM(TotalPrice) AS TotalRevenue FROM orders;

SELECT AVG(TotalPrice) AS AverageOrderValue FROM orders;

SELECT MAX(TotalPrice) AS HighestOrder FROM orders;

SELECT Product,SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC;

SELECT PaymentMethod,COUNT(*) AS UsageCount
FROM orders
GROUP BY PaymentMethod
ORDER BY UsageCount DESC;

SELECT OrderStatus,COUNT(*) AS TotalOrders
FROM orders
GROUP BY OrderStatus
ORDER BY TotalOrders DESC
LIMIT 1;

SELECT MONTH(Date) AS Month,SUM(TotalPrice) AS MonthlySales
FROM orders
GROUP BY MONTH(Date)
ORDER BY Month;

SELECT ReferralSource,COUNT(*) AS Orders
FROM orders
GROUP BY ReferralSource
ORDER BY Orders DESC;

SELECT CustomerID,SUM(TotalPrice) AS TotalSpent
FROM orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 10;