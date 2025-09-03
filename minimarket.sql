
-- Crear base de datos
CREATE DATABASE minimarket;

-- Conectarse a la base de datos
\c minimarket;

-- Tabla clientes
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    segmento VARCHAR(50)
);

-- Tabla productos
CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    producto VARCHAR(100),
    categoria VARCHAR(50),
    costo_unitario NUMERIC(10,2)
);

-- Tabla ingresos_financieros
CREATE TABLE ingresos_financieros (
    id SERIAL PRIMARY KEY,
    fecha DATE,
    ingreso_total NUMERIC(12,2),
    margen NUMERIC(12,2)
);

-- Insertar datos en clientes
INSERT INTO clientes (nombre, segmento) VALUES
('Cliente A', 'Minorista'),
('Cliente B', 'Mayorista'),
('Cliente C', 'Online'),
('Cliente D', 'Minorista'),
('Cliente E', 'Online');

-- Insertar datos en productos
INSERT INTO productos (producto, categoria, costo_unitario) VALUES
('Tomate', 'Verduras', 500),
('Lechuga', 'Verduras', 400),
('Zanahoria', 'Verduras', 300),
('Leche', 'Lácteos', 800),
('Queso', 'Lácteos', 1500),
('Yogurt', 'Lácteos', 600),
('Arroz', 'Abarrotes', 700),
('Fideos', 'Abarrotes', 650),
('Aceite', 'Abarrotes', 2500),
('Pan', 'Abarrotes', 1000);

-- Insertar datos en ingresos_financieros (ejemplo trimestral)
INSERT INTO ingresos_financieros (fecha, ingreso_total, margen) VALUES
('2025-01-31', 350000, 90000),
('2025-02-28', 420000, 110000),
('2025-03-31', 500000, 130000);
