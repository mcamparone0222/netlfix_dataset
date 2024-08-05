--- busqueda por año. casteo el realease_year ya que null tiene otro tipo de datos y lo ordeno por cantidad de titulos
SELECT
    ISNULL(CAST(release_year AS VARCHAR), 'Unknown') AS year,
    COUNT(*) AS quantity_titles
FROM 
    [Netflix Data]
GROUP BY 
    ISNULL(CAST(release_year AS VARCHAR), 'Unknown')
ORDER BY 
    quantity_titles DESC;
