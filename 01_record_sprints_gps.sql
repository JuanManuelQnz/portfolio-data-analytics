-- PROYECTO: Optimización y Ranking de Rendimiento Físico
-- OBJETIVO: Encontrar el sprint más rápido de cada jugadora.

WITH HistorialSprints AS (
    SELECT 
        jugadora_id,
        nombre_jugadora,
        fecha_entrenamiento,
        metros_sprint_alta_intensidad,
        ROW_NUMBER() OVER (PARTITION BY jugadora_id 
            ORDER BY metros_sprint_alta_intensidad DESC) AS ranking_rendimiento
    FROM 
        datos_gps_catapult)
SELECT 
    jugadora_id,
    nombre_jugadora,
    fecha_entrenamiento,
    metros_sprint_alta_intensidad AS record_metros
FROM 
    HistorialSprints
WHERE 
    ranking_rendimiento = 1;
