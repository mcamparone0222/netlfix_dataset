-- Selecciono los 11 paises porque no considero n/a como pais, pero dejo el origen como lo descarguè
--Agrupo por pais, en orden descendente y hago un conteo de los paises. Luego en looker studio, solamente habra paises, evitandos N/A, null, o valores incorrectos
SELECT TOP 11
    ISNULL(country, 'N/A') as country,
    COUNT(*) AS top_paises
FROM 
    [Netflix Data]
GROUP BY 
    country
ORDER BY 
    top_paises DESC;