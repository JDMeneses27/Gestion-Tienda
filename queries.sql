-- Active: 1755775934370@@127.0.0.1@5433@Tienda

-- 1️⃣ Listar los productos con stock menor a 5 unidades.

SELECT * FROM productos WHERE stock_disponible < 5;

-- 2️⃣ Calcular ventas totales de un mes específico.

SELECT SUM(total) AS ventas_totales
FROM ventas
WHERE EXTRACT(MONTH FROM fecha) = 3 AND EXTRACT(YEAR FROM fecha) = 2025;

-- 3️⃣ Obtener el cliente con más compras realizadas.

SELECT c.nombre, COUNT(*) AS total_compras
FROM clientes c
JOIN ventas v ON c.id = v.cliente_id
GROUP BY c.id, c.nombre
ORDER BY total_compras DESC
LIMIT 1; 

-- no se si esta funcionando bien o es que yo coloque mal los inserts y los clientes solo compraron un producto 

-- 4️⃣ Listar los productos más vendidos.

SELECT p.nombre, SUM(v.cantidad) AS total_vendido
FROM productos p
JOIN ventas v ON p.id = v.producto_id
GROUP BY p.id, p.nombre
ORDER BY total_vendido DESC
LIMIT 5;

-- 5️⃣ Consultar ventas realizadas en un rango de fechas.

SELECT v.id, c.nombre AS cliente, p.nombre AS producto, v.cantidad, v.fecha, v.total
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
JOIN productos p ON v.producto_id = p.id    
WHERE v.fecha BETWEEN '2025-01-01' AND '2025-03-31'
ORDER BY v.fecha;

-- 6️⃣ Identificar clientes que no han comprado en los últimos 6 meses.

SELECT c.nombre, c.email
FROM clientes c
LEFT JOIN ventas v ON c.id = v.cliente_id AND v.fecha >= NOW() -INTERVAL '6 months'
WHERE v.id IS NULL;