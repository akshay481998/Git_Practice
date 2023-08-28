SELECT Company, AVG(Salary) AS MedianSalary
FROM (
    SELECT Company,
           Salary,
           ROW_NUMBER() OVER (PARTITION BY Company ORDER BY Salary) AS RowAsc,
           ROW_NUMBER() OVER (PARTITION BY Company ORDER BY Salary DESC) AS RowDesc
    FROM Employee
) AS Ranked
WHERE RowAsc = RowDesc
   OR RowAsc + 1 = RowDesc
   OR RowAsc = RowDesc + 1
GROUP BY Company;
