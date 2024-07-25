select * from customers;

select * from transactions;

SELECT 
    t.TransactionID,
    t.TransactionDate,
    t.TransactionAmount,
    t.MerchantName,
    t.MerchantCategory,
    t.PaymentMethod,
    t.Status,
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    c.Phone,
    c.Address,
    c.City,
    c.State,
    c.Country,
    c.ZipCode
FROM 
    transactions t
INNER JOIN 
    customers c
ON 
    t.CustomerID = c.CustomerID;
    
SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    SUM(t.TransactionAmount) AS TotalSpent
FROM 
    customers c
INNER JOIN 
    transactions t
ON 
    c.CustomerID = t.CustomerID
GROUP BY 
    c.CustomerID, c.FirstName, c.LastName
ORDER BY 
    TotalSpent DESC;
    
    
    SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    c.Phone,
    c.Address,
    c.City,
    c.State,
    c.Country,
    c.ZipCode,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionAmount,
    t.MerchantName,
    t.MerchantCategory,
    t.PaymentMethod,
    t.Status
FROM 
    customers c
LEFT JOIN 
    transactions t
ON 
    c.CustomerID = t.CustomerID;
    
    
SELECT 
    t.TransactionID,
    t.TransactionDate,
    t.TransactionAmount,
    t.MerchantName,
    t.MerchantCategory,
    t.PaymentMethod,
    t.Status,
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    c.Phone,
    c.Address,
    c.City,
    c.State,
    c.Country,
    c.ZipCode
FROM 
    transactions t
LEFT JOIN 
    customers c
ON 
    t.CustomerID = c.CustomerID;



SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    c.Phone,
    c.Address,
    c.City,
    c.State,
    c.Country,
    c.ZipCode,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionAmount,
    t.MerchantName,
    t.MerchantCategory,
    t.PaymentMethod,
    t.Status
FROM 
    customers c
FULL OUTER JOIN 
    transactions t
ON 
    c.CustomerID = t.CustomerID;
    
    
    
SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    SUM(t.TransactionAmount) AS TotalSpent
FROM 
    customers c
INNER JOIN 
    transactions t
ON 
    c.CustomerID = t.CustomerID
GROUP BY 
    c.CustomerID, c.FirstName, c.LastName
ORDER BY 
    TotalSpent DESC;
    

SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    SUM(t.TransactionAmount) AS TotalSpent
FROM 
    customers c
INNER JOIN 
    transactions t
ON 
    c.CustomerID = t.CustomerID
GROUP BY 
    c.CustomerID, c.FirstName, c.LastName
ORDER BY 
    TotalSpent DESC
FETCH FIRST 10 ROWS ONLY;


SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    t.Status,
    COUNT(t.TransactionID) AS TransactionCount
FROM 
    customers c
INNER JOIN 
    transactions t
ON 
    c.CustomerID = t.CustomerID
GROUP BY 
    c.CustomerID, c.FirstName, c.LastName, t.Status
ORDER BY 
    c.CustomerID, t.Status;
    
    
SELECT 
    t.MerchantName,
    COUNT(t.TransactionID) AS TransactionCount,
    SUM(t.TransactionAmount) AS TotalAmount
FROM 
    transactions t
GROUP BY 
    t.MerchantName
ORDER BY 
    TransactionCount DESC, TotalAmount DESC;
    
    
SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    COUNT(t.TransactionID) AS TotalTransactions,
    SUM(t.TransactionAmount) AS TotalSpent,
    AVG(t.TransactionAmount) AS AvgTransactionAmount,
    c.City,
    c.Country
FROM 
    customers c
INNER JOIN 
    transactions t
ON 
    c.CustomerID = t.CustomerID
GROUP BY 
    c.CustomerID, c.FirstName, c.LastName, c.City, c.Country
ORDER BY 
    TotalSpent DESC;
    
    
SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionAmount,
    t.MerchantName,
    t.MerchantCategory
FROM 
    transactions t
INNER JOIN 
    customers c
ON 
    t.CustomerID = c.CustomerID
WHERE 
    t.TransactionAmount > 400
ORDER BY 
    t.TransactionAmount DESC;



SELECT 
    TO_CHAR(t.TransactionDate, 'YYYY-MM') AS TransactionMonth,
    SUM(t.TransactionAmount) AS TotalSpent,
    COUNT(t.TransactionID) AS TotalTransactions
FROM 
    transactions t
GROUP BY 
    TO_CHAR(t.TransactionDate, 'YYYY-MM')
ORDER BY 
    TransactionMonth;
    
    
SELECT 
    t.MerchantName,
    t.MerchantCategory,
    COUNT(t.TransactionID) AS TransactionCount,
    SUM(t.TransactionAmount) AS TotalAmount
FROM 
    transactions t
GROUP BY 
    t.MerchantName, t.MerchantCategory
ORDER BY 
    TotalAmount DESC;







