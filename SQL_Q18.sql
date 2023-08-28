WITH SalaryRanked AS (
    SELECT
        id,
        salary,
        month,
        ROW_NUMBER() OVER (PARTITION BY id ORDER BY month DESC) AS RowNum
    FROM EmployeeSalary
)
SELECT
    s1.id,
    s1.month,
    SUM(s2.salary) AS CumulativeSum
FROM SalaryRanked s1
JOIN SalaryRanked s2 ON s1.id = s2.id
    AND s2.month BETWEEN DATEADD(MONTH, -2, s1.month) AND DATEADD(MONTH, -1, s1.month)
    AND s2.RowNum <= 3
WHERE s1.RowNum = 1
GROUP BY s1.id, s1.month
ORDER BY s1.id ASC, s1.month DESC;
