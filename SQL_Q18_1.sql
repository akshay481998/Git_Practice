SELECT
    c1.X AS X1,
    c1.Y AS Y1,
    c2.X AS X2,
    c2.Y AS Y2,
    SQRT(POW(c2.X - c1.X, 2) + POW(c2.Y - c1.Y, 2)) AS Distance
FROM
    Coordinates c1
CROSS JOIN
    Coordinates c2
WHERE
    (c1.X, c1.Y) <> (c2.X, c2.Y)
ORDER BY
    Distance
LIMIT 1;
