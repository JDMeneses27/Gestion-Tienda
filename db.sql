-- Active: 1755775934370@@127.0.0.1@5433@Tienda
CREATE DATABASE Tienda;


CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE proveedores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    contacto VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL UNIQUE
);


CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    categoria VARCHAR(70) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL CHECK (precio > 0.00),
    stock_disponible INT NOT NULL CHECK (stock_disponible >= 0.00),
    proveedor_id INT NOT NULL
);


CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2) NOT NULL CHECK (total >= 0.00)
);

ALTER TABLE productos ADD CONSTRAINT fk_proveedor
FOREIGN KEY (proveedor_id) REFERENCES proveedores(id);

ALTER TABLE ventas ADD CONSTRAINT fk_cliente
FOREIGN KEY (cliente_id) REFERENCES clientes(id);

ALTER TABLE ventas ADD CONSTRAINT fk_producto
FOREIGN KEY (producto_id) REFERENCES productos(id);