-- Active: 1755775934370@@127.0.0.1@5433@Tienda

INSERT INTO clientes (nombre, email, telefono) VALUES
('Juan Perez', 'juanperez@gmail.com', '3045435678'),
('Maria Gomez', 'mariagomez123@gmail.comm', '3156781234'),
('Carlos Rodriguez', 'carlosr@gmail,com', '3204567890'),
('Ana Martinez', 'anamartinez1234@gmail.com', '3012345678'),
('Luis Fernandez', 'luchofernandez@gmail.com', '3045678901'),
('Sofia Lopez', 'sofilopez@gmail.com', '3109876543'),
('Diego Sanchez', 'diegito123@gmail.com', '3112345678'),
('Camila Torres', 'camitorres@gmail.com', '3123456789'),
('Andres Ramirez', 'andresramirez@gmail.com', '3134567890'),
('Valentina Cruz', 'valenc@gmail.com', '3145678901');

INSERT INTO proveedores (nombre, contacto, telefono) VALUES
('Proveedor A', 'Pedro Sanchez', '3001234567'),
('Proveedor B', 'Laura Torres', '3012345678'),
('Proveedor C', 'Miguel Ramirez', '3023456789'),
('Proveedor D', 'Ana Gomez', '3034567890'),
('Proveedor E', 'Jorge Martinez', '3045678901'),
('Proveedor F', 'Sofia Lopez', '3056789012'),
('Proveedor G', 'Carlos Fernandez', '3067890123'),
('Proveedor H', 'Maria Rodriguez', '3078901234');

INSERT INTO productos (nombre, categoria, precio, stock_disponible, proveedor_id) VALUES
('Laptop HP', 'Electrónica', 999.99, 10, 1),
('Smartphone Samsung Galaxy S21', 'Electrónica', 799.99, 15, 2),
('Cámara Canon ', 'Electrónica', 3899.00, 5, 3),
('Televisor LG ', 'Electrónica', 1499.99, 8, 1),
('Audifonos Sony ', 'Electrónica', 349.99, 20, 2),
('Tablet Apple iPad', 'Electrónica', 499.99, 12, 3),
('Monitor Dell', 'Electrónica', 299.99, 7, 4),
('Impresora HP', 'Electrónica', 199.99, 9, 5),
('Router TP-Link', 'Electrónica', 89.99, 25, 6),
('Disco Duro Seagate', 'Electrónica', 129.99, 14, 7);

INSERT INTO ventas (cliente_id, producto_id, cantidad, fecha, total)VALUES
(1, 1, 1, '2025-03-01 10:00:00', 999.99),
(2, 2, 2, '2025-04-02 11:30:00', 1599.98),
(3, 3, 1, '2025-04-03 14:15:00', 3899.00),
(4, 4, 1, '2025-06-04 09:45:00', 1499.99),
(5, 5, 3, '2025-01-05 16:20:00', 1049.97),
(6, 6, 1, '2025-01-06 13:10:00', 499.99),
(7, 7, 2, '2025-03-07 12:00:00', 599.98),
(8, 8, 1, '2025-02-08 15:30:00', 199.99),
(9, 9, 4, '2025-03-09 10:50:00', 359.96),
(10, 10, 1, '2025-02-10 11:25:00', 129.99);
DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS proveedores;
DROP TABLE IF EXISTS clientes;