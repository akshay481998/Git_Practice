SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS OrderCount
FROM
    Customers C
JOIN
    Orders O ON C.CustomerID = O.CustomerID
GROUP BY
    C.CustomerName
ORDER BY
    OrderCount DESC, CustomerName ASC
LIMIT 5;
