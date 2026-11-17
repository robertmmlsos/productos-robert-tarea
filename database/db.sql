CREATE DATABASE tiendaperu;

USE tiendaperu;

CREATE TABLE IF NOT EXISTS productos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(120) NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT UNSIGNED NOT NULL DEFAULT 0,
    create_at DATETIME NOT NULL DEFAULT NOW(),
    update_at DATETIME NULL
) ENGINE = INNODB;

INSERT INTO productos
(marca, descripcion, precio, stock)
VALUES
('Samsung', 'TV 55', 2500.00, 10),
('LG', 'Lavadora', 1200, 3),
('Sony', 'Playstation 5', 3200, 2);


CREATE TABLE IF NOT EXISTS clientes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    apellidos VARCHAR(120) NOT NULL,
    nombres VARCHAR(120) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    email VARCHAR(150) NOT NULL,
    create_at DATETIME NOT NULL DEFAULT NOW(),
    updated_at DATETIME NULL
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS proveedores (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    razonsocial VARCHAR(150) NOT NULL,
    contacto VARCHAR(120) NOT NULL,
    ruc VARCHAR(11) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    create_at DATETIME NOT NULL DEFAULT NOW(),
    updated_at DATETIME NULL
) ENGINE = INNODB;

INSERT INTO clientes (apellidos, nombres, telefono, direccion, email) VALUES
('Pérez Gómez', 'Juan Carlos', '987654321', 'Av. Arequipa 123, Lima', 'juan.perez@email.com'),
('Torres Silva', 'María Elena', '912345678', 'Jr. Cusco 456, Chincha', 'maria.torres@email.com'),
('Quispe Mamani', 'Luis Alberto', '956789123', 'Calle Lima 789, Ica', 'luis.quispe@email.com');

INSERT INTO proveedores (razonsocial, contacto, ruc, direccion) VALUES
('Distribuidora Tech Perú SAC', 'Carlos Mendoza', '20512345671', 'Av. Argentina 1050, Lima'),
('Importaciones Andinas EIRL', 'Ana Lucía Rojas', '20498765432', 'Calle Comercio 230, Arequipa'),
('Comercializadora del Sur SRL', 'Roberto Díaz', '20654321987', 'Av. Grau 890, Trujillo');


SELECT * FROM productos;