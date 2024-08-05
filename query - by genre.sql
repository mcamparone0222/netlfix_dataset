-- busqueda por genero, hago un count por genero y lo ordeno desc 
SELECT 
    ISNULL(listed_in, 'N/A') as Genre,
    COUNT(*) AS Titles
FROM 
    [Netflix Data]
GROUP BY 
    listed_in
ORDER BY 
    Titles DESC;