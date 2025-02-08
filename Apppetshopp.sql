CREATE DATABASE AppPetShop;
USE AppPetShop;

CREATE TABLE Clientes (
idClientes INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(45) NOT NULL,
Apellido VARCHAR(45) NOT NULL,
Correo VARCHAR(45) NOT NULL UNIQUE,
Telefono VARCHAR(15),
Direccion VARCHAR(100)
);

CREATE TABLE Categorias_de_producto (
    idCategorias_de_producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_categoria VARCHAR(45) NOT NULL
);

CREATE TABLE Proveedores (
    idProveedores INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_proveedor VARCHAR(45) NOT NULL,
    Telefono VARCHAR(15),
    Correo VARCHAR(45) NOT NULL UNIQUE,
    Direccion VARCHAR(100)
);

CREATE TABLE Productos (
    idProductos INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_producto VARCHAR(45) NOT NULL,
    Descripcion VARCHAR(100),
    Precio DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL,
    Categorias_de_producto_idCategorias_de_producto INT NOT NULL,
    Proveedores_idProveedores INT NOT NULL,
    FOREIGN KEY (Categorias_de_producto_idCategorias_de_producto) REFERENCES Categorias_de_producto(idCategorias_de_producto),
    FOREIGN KEY (Proveedores_idProveedores) REFERENCES Proveedores(idProveedores)
);

CREATE TABLE Compras (
    idCompras INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATETIME NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    Metodo_pago VARCHAR(45) NOT NULL,
    Clientes_idClientes INT NOT NULL,
    FOREIGN KEY (Clientes_idClientes) REFERENCES Clientes(idClientes)
);

CREATE TABLE Detalles_compra (
    idDetalles_compra INT AUTO_INCREMENT PRIMARY KEY,
    Cantidad INT NOT NULL,
    Subtotal DECIMAL(10, 2) NOT NULL,
    Productos_idProductos INT NOT NULL,
    Compras_idCompras INT NOT NULL,
    FOREIGN KEY (Productos_idProductos) REFERENCES Productos(idProductos),
    FOREIGN KEY (Compras_idCompras) REFERENCES Compras(idCompras)
);

INSERT INTO Clientes (Nombre, Apellido, Correo, Telefono, Direccion)
VALUES 
('Juan', 'Pérez', 'juan.p@email.com', '1234567890', 'Calle 123'),
('Danna', 'Xiang', 'danna.x@email.com', '1534145224', 'Calle777'),
('Daniel', 'Rodriguez', 'dani.r@email.com', '1582556219', 'Calle546'),
('Maria', 'Jimenez', 'mary.j@email.com', '8341298459', 'Calle456'),
('Lucia', 'Rosado', 'lucia.r@email.com', '4145212415', 'Calle796'),
('Raul', 'Del pezo', 'raul.d@email.com', '9781452124', 'Calle123'),
('Domenica', 'Toala', 'dome.t@email.com', '5485413298', 'Calle554'),
('Kristina', 'Velazquez', 'kris.v@email.com', '4424535544', 'Calle545'),
('Luciana', 'Angulo', 'lu.a@email.com', '1834143556', 'Calle852'),
('Milena', 'Baque', 'mile.b@email.com', '1219872412', 'Calle951'),
('Flor', 'Nuñez', 'flor.n@email.com', '5851452248', 'Calle657'),
('Brithany', 'Leon', 'bri.l@email.com', '2345354712', 'Calle357'),
('Nahomy', 'Ormaza', 'naho.o@email.com', '2454755788', 'Calle785'),
('Gabriel', 'Otero', 'gabriel.o@email.com', '5454321554', 'Calle347'),
('Javier', 'Alcivar', 'javier.a@email.com', '5416574732', 'Calle542'),
('Nicolas', 'Castro', 'nicolas.c@email.com', '822545447', 'Calle341'),
('Andres', 'Reino', 'andres.r@email.com', '9885558464', 'Calle213'),
('Diego', 'Contreras', 'diego.c@email.com', '2578962154', 'Calle347'),
('Alexander', 'Cedeño', 'ale.c@email.com', '4554895617', 'Calle478'),
('Miguel ',' Vargas', 'miguel.v@email.com', '3698524678', 'Calle359');

INSERT INTO Categorias_de_producto (Nombre_categoria)
VALUES 
('Alimentos'), 
('Juguetes'), 
('Accesorios');

INSERT INTO Proveedores (Nombre_proveedor, Telefono, Correo, Direccion)
VALUES 
('Proveedor 1', '9876543210', 'proveedor1.@email.com', 'Avenida 456'),
('Proveedor 2', '9537527352', 'proveedor2@email.com', 'Avenida 654'),
('Proveedor 3', '9756834726', 'proveedor3@email.com', 'Avenida 986'),
('Proveedor 4', '9646383637', 'proveedor4@email.com', 'Avenida 143'),
('Proveedor 5', '9548735472', 'proveedor5@email.com', 'Avenida 926'),
('Proveedor 6', '9873652873', 'proveedor6@email.com', 'Avenida 689'),
('Proveedor 7', '9264892622', 'proveedor7@email.com', 'Avenida 542'),
('Proveedor 8', '9356482681', 'proveedor8@email.com', 'Avenida 937'),
('Proveedor 9', '9356272537', 'proveedor9@email.com', 'Avenida 626'),
('Proveedor 10', '9658736483', 'proveedor10@email.com', 'Avenida 644'),
('Proveedor 11', '7394638463', 'proveedor11@email.com', 'Avenida 078'),
('Proveedor 12', '9719728272', 'proveedor12@email.com', 'Avenida 386'),
('Proveedor 13', '9276492739', 'proveedor13@email.com', 'Avenida 657'),
('Proveedor 14', '7309479498', 'proveedor14@email.com', 'Avenida 144'),
('Proveedor 15', '9374392783', 'proveedor15@email.com', 'Avenida 831'),
('Proveedor 16', '7375934849', 'proveedor16@email.com', 'Avenida 978'),
('Proveedor 17', '6384799493', 'proveedor17@email.com', 'Avenida 565'),
('Proveedor 18', '6132552839', 'proveedor18@email.com', 'Avenida 826'),
('Proveedor 19', '9874739398', 'proveedor19@email.com', 'Avenida 937'),
('Proveedor 20', '6896982638', 'proveedor20@email.com', 'Avenida 639');

Insert into Productos (Nombre_producto, Descripcion, Precio, Stock, Categorias_de_producto_idCategorias_de_producto, Proveedores_idProveedores)
VALUES 
('PURINA DOG CHOW', 'Asegúrate que tu cachorro crezca sano con la alimentación que ofrece PURINA DOG CHOW.', 30.00, 20, 1, 22),
('Pelota de goma', 'Pelota resistente para perros.', 50.00, 100, 2, 32),
('PURINA CAT CHOW', 'Ofrece los nutrientes que tu gatito necesita para un crecimiento sano durante su primer año de vida.', 42.77, 200, 1, 31),
('Cepillo de aseo', 'Herramienta de aseo multiusos para mascotas.', 17.30, 300, 3, 33),
('Comedero', 'Para perros y gatos.', 19.55, 400, 3, 34),
('Collar Doco Gato', 'Costuras resistentes para una calidad duradera.', 4.21, 500, 3, 35),
('Hueso', 'Hueso de goma super resistente para perros.', 10.00, 600, 2, 36),
('Arena nutrapro', 'Arena para gato.', 22.56, 700, 3, 37),
('Esfera', 'Juguete para gatos.', 5.00, 800, 2, 38),
('Ratón Oscilante', 'Para gatos ideal como entretenimiento de tu mascota.', 6.00, 900, 2, 39),
('Rascador para Gato', 'Rascador con diseño de panda para gato.', 29.99, 30, 2, 40),
('Cuerda Doble Nudo', 'ideal para el entretenimiento de tu perro.', 2.00, 40, 2, 1),
('Hueso Tenis', 'Es una forma efectiva de atraer y mantener la atención de la mascota.', 8.98, 50, 2, 41),
('Lata Filetes', 'Podrás premiar a un gato intrépido.', 15.00, 60, 1, 23),
('FELIX', 'Alimento húmedo con los mejores ingredientes.', 19.00, 70, 1, 24),
('Pedigree', 'Para perros adultos.', 25.00, 80, 1, 26),
('Collar de nylon', 'Para perros reforzado con hebilla metálica.', 16.00, 90, 3, 25),
('Correa retráctil', 'Para perros de 5 metros con freno de seguridad.', 12.00, 10, 3, 27),
('Nutrimascota', 'Alimento húmedo Purina Beneful en salsa.', 8.00, 15, 1, 28),
('Pelota goma', 'Para perros con dispensador de premios. ', 11.00, 35, 2, 29);

INSERT INTO Compras (Fecha, Total, Metodo_pago, Clientes_idClientes)
VALUES 
('2025-01-20 09:30:00', 320.00, 'Efectivo', 1),  
('2025-01-21 14:15:00', 150.00, 'Tarjeta', 62),  
('2025-01-22 11:45:00', 270.00, 'Transferencia', 63),  
('2025-01-23 16:20:00', 420.00, 'Tarjeta', 64),  
('2025-01-24 13:10:00', 530.00, 'Efectivo', 65),  
('2025-01-25 10:00:00', 600.00, 'Tarjeta', 66),  
('2025-01-26 17:35:00', 290.00, 'Transferencia', 67),  
('2025-01-27 12:25:00', 340.00, 'Efectivo', 68),  
('2025-01-28 18:50:00', 510.00, 'Tarjeta', 69),  
('2025-01-29 09:05:00', 480.00, 'Efectivo', 70),  
('2025-01-30 15:40:00', 275.00, 'Tarjeta', 71),  
('2025-01-31 14:55:00', 390.00, 'Transferencia', 72),  
('2025-02-01 11:30:00', 610.00, 'Efectivo', 73),  
('2025-02-02 16:10:00', 415.00, 'Tarjeta', 74),  
('2025-02-03 10:50:00', 295.00, 'Transferencia', 75),  
('2025-02-04 13:45:00', 520.00, 'Tarjeta', 76),  
('2025-02-05 18:20:00', 440.00, 'Efectivo', 77),  
('2025-02-06 09:35:00', 360.00, 'Transferencia', 78),  
('2025-02-07 12:10:00', 575.00, 'Tarjeta', 79),  
('2025-02-08 17:55:00', 485.00, 'Efectivo', 80),
('2025-03-08 19:50:00', 485.00, 'Efectivo', 81);

INSERT INTO Detalles_compra (Cantidad, Subtotal, Productos_idProductos, Compras_idCompras)
VALUES 
(2, 600.00, 1, 2),  
(1, 150.00, 2, 3),  
(3, 810.00, 23, 4),  
(1, 420.00, 24, 5),  
(4, 1,060.00, 25, 6),  
(2, 1,200.00, 26, 7),  
(1, 290.00, 27, 8),  
(5, 1,700.00, 28, 9),  
(2, 1,020.00, 29, 10),  
(3, 1,440.00, 30, 11),  
(1, 275.00, 31, 12),  
(2, 780.00, 32, 13),  
(4, 2,440.00, 33, 14),  
(1, 415.00, 34, 15),  
(3, 885.00, 35, 16),  
(2, 1,040.00, 36, 17),  
(1, 440.00, 37, 18),  
(5, 1,800.00, 38, 19),  
(2, 1,150.00, 39, 20),  
(3, 1,455.00, 40, 21);
