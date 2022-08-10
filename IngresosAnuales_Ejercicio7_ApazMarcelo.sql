/*7.Obtener los ingresos percibidos en Julio del 2022*/

SELECT 
    YEAR(fecha) AS Ano, SUM(monto) AS Ingresos
FROM
    historial
WHERE
    YEAR(fecha) = 2022
GROUP BY YEAR(fecha)