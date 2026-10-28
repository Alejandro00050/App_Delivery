INSERT INTO Usuario (nombre, correo, telefono) 
VALUES
('Juan Perez', 'juan@gmail.com', '3001234567'),
('Maria Lopez', 'maria@gmail.com', '3012345678'),
('Carlos Gomez', 'carlos@gmail.com', '3023456789'),
('Ana Torres', 'ana@gmail.com', '3034567890'),
('Luis Ramirez', 'luis@gmail.com', '3045678901'),
('Sofia Diaz', 'sofia@gmail.com', '3056789012');

INSERT INTO Restaurante (nombre, direccion, telefono) 
VALUES
('El Buen Sabor', 'Calle 10 #5-20', '3101234567'),
('Pizza Express', 'Carrera 8 #10-30', '3112345678'),
('Sazon Casero', 'Calle 7 #6-12', '3123456789'),
('Pollo Dorado', 'Carrera 5 #9-18', '3134567890'),
('Dulce Tentacion', 'Calle 15 #3-25', '3145678901'),
('La Mexicana', 'Carrera 4 #8-10', '3156789012');

INSERT INTO Repartidor (nombre, telefono, disponible) 
VALUES
('Pedro Ruiz', '3201234567', TRUE),
('Andres Mora', '3212345678', TRUE),
('David Castro', '3223456789', FALSE),
('Miguel Rojas', '3234567890', TRUE),
('Felipe Diaz', '3245678901', TRUE),
('Jorge Ramirez', '3256789012', FALSE);

INSERT INTO Plato (id_restaurante, nombre, descripcion, precio, disponible) 
VALUES
(1, 'Hamburguesa', 'Hamburguesa sencilla', 15000, TRUE),
(1, 'Perro caliente', 'Pan con salchicha', 10000, TRUE),
(2, 'Pizza hawaiana', 'Pizza con jamon y pina', 25000, TRUE),
(2, 'Pizza de queso', 'Pizza con queso', 22000, TRUE),
(3, 'Bandeja paisa', 'Plato tipico colombiano', 30000, TRUE),
(3, 'Arroz con pollo', 'Arroz preparado con pollo', 18000, TRUE),
(4, 'Pollo asado', 'Pollo asado entero', 28000, TRUE),
(4, 'Papas fritas', 'Porcion de papas', 8000, TRUE),
(5, 'Torta de chocolate', 'Postre de chocolate', 12000, TRUE),
(5, 'Helado', 'Helado de vainilla', 6000, TRUE),
(6, 'Tacos', 'Tacos mexicanos', 16000, TRUE),
(6, 'Burrito', 'Burrito con carne', 20000, TRUE);

INSERT INTO Pedido (id_usuario, id_restaurante, id_repartidor, estado, total, opciones) 
VALUES
(1, 1, 1, 'Entregado', 15000, '{"observacion":"Sin cebolla"}'),
(2, 2, 2, 'Pendiente', 25000, NULL),
(3, 3, 3, 'En camino', 30000, NULL),
(4, 4, 4, 'Preparando', 28000, NULL),
(5, 5, 5, 'Entregado', 12000, NULL),
(6, 6, 6, 'Pendiente', 20000, NULL),
(1, 1, 2, 'Entregado', 10000, NULL),
(2, 2, 3, 'En camino', 22000, NULL),
(3, 3, 4, 'Pendiente', 18000, NULL),
(4, 4, 5, 'Preparando', 8000, NULL),
(5, 5, 6, 'Entregado', 6000, NULL),
(6, 6, 1, 'Pendiente', 16000, NULL);

INSERT INTO Detalle_Pedido (id_pedido, id_plato, cantidad, precio_unitario, modificaciones) 
VALUES
(1, 1, 1, 15000, '{"opciones":["sin cebolla"]}'),
(2, 3, 1, 25000, '{"opciones":["extra queso"]}'),
(3, 5, 1, 30000, NULL),
(4, 7, 1, 28000, NULL),
(5, 9, 1, 12000, NULL),
(6, 12, 1, 20000, NULL),
(7, 2, 1, 10000, NULL),
(8, 4, 1, 22000, NULL),
(9, 6, 1, 18000, NULL),
(10, 8, 1, 8000, NULL),
(11, 10, 1, 6000, NULL),
(12, 11, 1, 16000, '{"opciones":["sin picante"]}');