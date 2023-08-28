SELECT
    B.title AS ProductName,
    SUM(O.quantity) AS TotalQuantitySold
FROM
    books B
JOIN
    orders O ON B.book_id = O.book_id
GROUP BY
    B.book_id, B.title
ORDER BY
    TotalQuantitySold DESC
LIMIT 3;
