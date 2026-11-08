**# Proyecto: Optimización de Reportes GPS - Fútbol Femenino Profesional**
### 📋 El Problema de Negocio
El cuerpo técnico necesitaba evaluar el rendimiento físico máximo e individual de cada atleta del plantel. Los reportes tradicionales de los sensores GPS arrojaban una masa de datos cruda y colapsada con cientos de filas por entrenamiento, generando un exceso de ruido visual que demoraba la toma de decisiones estratégicas de cara al próximo partido.

### 🛠️ La Solución Analítica Implementada
1. **Modelado y Filtro Avanzado en SQL (`01_record_sprints_gps.sql`):** Diseñé una consulta estructurada utilizando funciones de ventana (`ROW_NUMBER() OVER`) combinadas con una Expresión de Tabla Común (`WITH / CTE`). Esto permitió agrupar el historial por atleta y ordenar los sprints de mayor a menor intensidad para aislar el récord máximo de cada jugadora (Fila N°1) en segundos, manteniendo la integridad de la base transaccional de origen.
2. **Procesamiento y Reporte Ejecutivo en Excel (`02_analisis_rendimiento_gps.xlsx`):** Centralicé la base de datos cruda y desarrollé una Tabla Dinámica profesional para resumir métricas de performance clave, automatizando el cálculo del promedio de metros totales recorridos y los picos máximos de velocidad por jugadora para el cuerpo técnico.

---
*Este proyecto demuestra capacidad analítica para traducir la complejidad operativa del terreno en soluciones métricas limpias, aplicables a la gestión de KPIs y control de procesos en cualquier sector de negocio.*

