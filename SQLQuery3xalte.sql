create database exalte;
use exalte;

create table productos (
    id_producto int primary key identity(1,1),
    nombre varchar(255) not null,
    tipo_producto varchar(50) check(tipo_producto in ('ropa', 'accesorio')),
    genero varchar(50) check(genero in ('hombre', 'mujer')),
    precio decimal(10,2) not null,
    descripcion text,
    fecha_creacion datetime default getdate()
);

insert into productos (nombre, tipo_producto, genero, precio, descripcion)
values
('Camiseta de algodón', 'ropa', 'hombre', 15.99, 'Camiseta de algodón suave y cómoda para uso diario.'),
('Pantalón de mezclilla', 'ropa', 'mujer', 29.99, 'Pantalón de mezclilla con corte slim fit y diseño moderno.'),
('Gorra deportiva', 'accesorio', 'hombre', 12.49, 'Gorra deportiva ajustable, ideal para actividades al aire libre.'),
('Bufanda de lana', 'accesorio', 'mujer', 18.50, 'Bufanda de lana gruesa, perfecta para el invierno.'),
('Camisa de vestir', 'ropa', 'hombre', 45.00, 'Camisa de vestir de algodón, ideal para eventos formales.'),
('Abrigo de lana', 'ropa', 'mujer', 89.99, 'Abrigo largo de lana, elegante y abrigado para el invierno.'),
('Cinturón de cuero', 'accesorio', 'hombre', 22.99, 'Cinturón de cuero genuino, con diseño clásico y moderno.'),
('Bolsito de mano', 'accesorio', 'mujer', 35.00, 'Bolsito de mano en cuero sintético, con cierre seguro.'),
('Chaqueta de cuero', 'ropa', 'hombre', 120.00, 'Chaqueta de cuero genuino, estilo motociclista.'),
('Sombrero de paja', 'accesorio', 'mujer', 15.00, 'Sombrero de paja para días soleados, estilo casual.'),
('Zapatillas deportivas', 'ropa', 'hombre', 65.00, 'Zapatillas deportivas de alta calidad para entrenamiento.'),
('Saco de lana', 'ropa', 'mujer', 95.50, 'Saco de lana elegante, ideal para ocasiones formales.'),
('Guantes de cuero', 'accesorio', 'hombre', 24.99, 'Guantes de cuero genuino, perfectos para el frío.'),
('Pendientes de plata', 'accesorio', 'mujer', 49.99, 'Pendientes de plata 925 con diseño minimalista.'),
('Camiseta estampada', 'ropa', 'hombre', 19.99, 'Camiseta con estampado único, casual y cómoda.'),
('Leggings deportivos', 'ropa', 'mujer', 22.00, 'Leggings de alto rendimiento, ideales para hacer deporte.'),
('Chaqueta impermeable', 'ropa', 'hombre', 79.99, 'Chaqueta impermeable, perfecta para actividades al aire libre.'),
('Cinturón de tela', 'accesorio', 'mujer', 14.50, 'Cinturón de tela con diseño moderno, ajustable.'),
('Botines de cuero', 'ropa', 'mujer', 85.00, 'Botines de cuero, elegantes y cómodos para todo el día.'),
('Pantalón de lino', 'ropa', 'hombre', 40.00, 'Pantalón de lino ligero, ideal para el verano.'),
('Anillo de oro', 'accesorio', 'mujer', 199.99, 'Anillo de oro de 18k con diseño elegante.'),
('Sudadera con capucha', 'ropa', 'hombre', 29.99, 'Sudadera con capucha, cómoda y perfecta para el frío.'),
('Gafas de sol', 'accesorio', 'mujer', 25.00, 'Gafas de sol con lentes polarizados, diseño moderno.'),
('Pañuelo de seda', 'accesorio', 'mujer', 30.00, 'Pañuelo de seda estampado, suave y elegante.'),
('Bermuda de algodón', 'ropa', 'hombre', 18.99, 'Bermuda de algodón, ideal para días calurosos.'),
('Pochos de lana', 'ropa', 'mujer', 40.00, 'Pochos de lana suaves y cómodos, ideales para el invierno.'),
('Camiseta de manga larga', 'ropa', 'hombre', 25.00, 'Camiseta de manga larga en algodón, para días frescos.'),
('Botines de charol', 'ropa', 'mujer', 60.00, 'Botines de charol, ideales para un look chic y elegante.'),
('Sombrero de fieltro', 'accesorio', 'hombre', 35.99, 'Sombrero de fieltro, elegante y de alta calidad.'),
('Pulsera de cuero', 'accesorio', 'hombre', 19.99, 'Pulsera de cuero con detalles metálicos, estilo rústico.'),
('Pantalón chino', 'ropa', 'hombre', 45.00, 'Pantalón chino de corte recto, versátil para cualquier ocasión.'),
('Zapatos de tacón', 'ropa', 'mujer', 55.99, 'Zapatos de tacón alto, perfectos para un look formal.'),
('Chaqueta acolchonada', 'ropa', 'mujer', 75.00, 'Chaqueta acolchonada, ideal para el frío invierno.'),
('Reloj de pulsera', 'accesorio', 'hombre', 120.00, 'Reloj de pulsera con correa de cuero y esfera elegante.'),
('Chaleco de algodón', 'ropa', 'hombre', 38.00, 'Chaleco de algodón, ideal para el clima cálido.'),
('Cartera de cuero', 'accesorio', 'mujer', 45.00, 'Cartera de cuero genuino, compacta y elegante.'),
('Zapatos deportivos', 'ropa', 'hombre', 80.00, 'Zapatos deportivos para correr, cómodos y resistentes.'),
('Jersey de lana', 'ropa', 'mujer', 60.00, 'Jersey de lana suave, perfecto para el otoño y el invierno.'),
('Pantalón cargo', 'ropa', 'hombre', 40.00, 'Pantalón cargo con múltiples bolsillos, estilo militar.'),
('Sombrero de invierno', 'accesorio', 'hombre', 20.00, 'Sombrero de invierno, ideal para protegerse del frío.'),
('Bufanda de cashmere', 'accesorio', 'mujer', 60.00, 'Bufanda de cashmere, suave y lujosa.'),
('Falda de cuero', 'ropa', 'mujer', 55.00, 'Falda de cuero, con un diseño moderno y elegante.'),
('Pantalón de vestir', 'ropa', 'hombre', 49.99, 'Pantalón de vestir de corte clásico, para oficina o eventos formales.'),
('Sombrero trilby', 'accesorio', 'mujer', 35.00, 'Sombrero trilby, ideal para el verano y el estilo casual.'),
('Camiseta de manga corta', 'ropa', 'hombre', 14.99, 'Camiseta de manga corta, cómoda y ligera.'),
('Anillo de plata', 'accesorio', 'hombre', 85.00, 'Anillo de plata 925 con diseño minimalista.'),
('Zapatillas de ballet', 'ropa', 'mujer', 28.00, 'Zapatillas de ballet, cómodas y con diseño delicado.'),
('Gafas de sol estilo aviador', 'accesorio', 'hombre', 30.00, 'Gafas de sol estilo aviador, lentes de alta calidad.'),
('Chaqueta de mezclilla', 'ropa', 'mujer', 65.00, 'Chaqueta de mezclilla con corte moderno y ajustado.'),
('Bolso de mano', 'accesorio', 'mujer', 55.00, 'Bolso de mano con diseño elegante y detalles metálicos.'),
('Chaleco de lana', 'ropa', 'hombre', 49.99, 'Chaleco de lana cálido, ideal para el otoño y la primavera.'),
('Botas de montaña', 'ropa', 'mujer', 99.99, 'Botas de montaña resistentes, ideales para trekking.'),
('Reloj de bolsillo', 'accesorio', 'hombre', 75.00, 'Reloj de bolsillo con diseño clásico y elegante.'),
('Sudadera sin capucha', 'ropa', 'mujer', 34.99, 'Sudadera sin capucha, suave y cómoda, para el día a día.'),
('Zapatos oxford', 'ropa', 'hombre', 90.00, 'Zapatos oxford elegantes, ideales para ocasiones formales.'),
('Pantalón deportivo', 'ropa', 'hombre', 30.00, 'Pantalón deportivo, ideal para entrenamiento y actividades al aire libre.'),
('Camisón de seda', 'ropa', 'mujer', 70.00, 'Camisón de seda suave, elegante y cómodo.');

create table proveedores (
    id_proveedor int primary key identity(1,1),
    nombre varchar(255) not null,
    telefono varchar(50),
    email varchar(100) unique,
    direccion varchar(255),
    fecha_registro datetime default getdate()
);

insert into proveedores (nombre, telefono, email, direccion) values
('Juan Pérez', '555-1001', 'juan.perez@gail.com', 'Calle Ficticia 123, Ciudad A'),
('Ana Gómez', '555-1002', 'ana.gomez@gail.com', 'Av. Principal 456, Ciudad B'),
('Carlos Martínez', '555-1003', 'carlos.martinez@gail.com', 'Calle Secundaria 789, Ciudad C'),
('Laura Rodríguez', '555-1004', 'laura.rodriguez@gail.com', 'Calle A, No. 1, Ciudad D'),
('David Sánchez', '555-1005', 'david.sanchez@gail.com', 'Calle B, 202, Ciudad E'),
('María López', '555-1006', 'maria.lopez@gail.com', 'Calle C, No. 101, Ciudad F'),
('José García', '555-1007', 'jose.garcia@gail.com', 'Avenida M. López 321, Ciudad G'),
('Isabel Fernández', '555-1008', 'isabel.fernandez@gail.com', 'Calle D, 567, Ciudad H'),
('Luis Pérez', '555-1009', 'luis.perez@gail.com', 'Calle E, No. 789, Ciudad I'),
('Marta González', '555-1010', 'marta.gonzalez@gail.com', 'Calle F, 888, Ciudad J'),
('Ricardo Ramírez', '555-1011', 'ricardo.ramirez@gail.com', 'Av. Independencia 101, Ciudad K'),
('Sofía Díaz', '555-1012', 'sofia.diaz@gail.com', 'Calle G, 202, Ciudad L'),
('Pedro Ruiz', '555-1013', 'pedro.ruiz@gail.com', 'Calle H, No. 303, Ciudad M'),
('Beatriz Álvarez', '555-1014', 'beatriz.alvarez@gail.com', 'Calle I, 404, Ciudad N'),
('Javier González', '555-1015', 'javier.gonzalez@gail.com', 'Av. Reforma 505, Ciudad O'),
('Patricia Pérez', '555-1016', 'patricia.perez@gail.com', 'Calle J, 606, Ciudad P'),
('Eduardo Torres', '555-1017', 'eduardo.torres@gail.com', 'Calle K, 707, Ciudad Q'),
('Cristina Morales', '555-1018', 'cristina.morales@gail.com', 'Calle L, 808, Ciudad R'),
('Manuel Rodríguez', '555-1019', 'manuel.rodriguez@gail.com', 'Calle M, 909, Ciudad S'),
('Elena Jiménez', '555-1020', 'elena.jimenez@gail.com', 'Av. del Sol 1001, Ciudad T'),
('Raúl González', '555-1021', 'raul.gonzalez@gail.com', 'Calle N, 1102, Ciudad U'),
('Julia Castro', '555-1022', 'julia.castro@gail.com', 'Calle O, 1203, Ciudad V'),
('Antonio Soto', '555-1023', 'antonio.soto@gail.com', 'Calle P, 1304, Ciudad W'),
('Nuria Herrera', '555-1024', 'nuria.herrera@gail.com', 'Av. Libertad 1405, Ciudad X'),
('José Luis Fernández', '555-1025', 'joseluis.fernandez@gail.com', 'Calle Q, 1506, Ciudad Y'),
('Inés López', '555-1026', 'ines.lopez@gail.com', 'Calle R, 1607, Ciudad Z'),
('Victor Hernández', '555-1027', 'victor.hernandez@gail.com', 'Calle S, 1708, Ciudad AA'),
('Sara Romero', '555-1028', 'sara.romero@gail.com', 'Calle T, 1809, Ciudad AB'),
('Diego Martínez', '555-1029', 'diego.martinez@gail.com', 'Av. San Juan 1901, Ciudad AC'),
('Carmen Díaz', '555-1030', 'carmen.diaz@gail.com', 'Calle U, 2002, Ciudad AD'),
('Miguel Ángel Pérez', '555-1031', 'miguelangel.perez@gail.com', 'Calle V, 2103, Ciudad AE'),
('Paula García', '555-1032', 'paula.garcia@gail.com', 'Calle W, 2204, Ciudad AF'),
('Andrés Rodríguez', '555-1033', 'andres.rodriguez@gail.com', 'Av. Tulum 2305, Ciudad AG'),
('Raquel Sánchez', '555-1034', 'raquel.sanchez@gail.com', 'Calle X, 2406, Ciudad AH'),
('Pedro González', '555-1035', 'pedro.gonzalez@gail.com', 'Calle Y, 2507, Ciudad AI'),
('Bea Hernández', '555-1036', 'bea.hernandez@gail.com', 'Calle Z, 2608, Ciudad AJ'),
('Fernando López', '555-1037', 'fernando.lopez@gail.com', 'Calle AA, 2709, Ciudad AK'),
('Eva Gómez', '555-1038', 'eva.gomez@gail.com', 'Calle AB, 2800, Ciudad AL'),
('Oscar Jiménez', '555-1039', 'oscar.jimenez@gail.com', 'Calle AC, 2901, Ciudad AM'),
('Mónica Martín', '555-1040', 'monica.martin@gail.com', 'Calle AD, 3002, Ciudad AN'),
('Lidia Ruiz', '555-1041', 'lidia.ruiz@gail.com', 'Calle AE, 3103, Ciudad AO'),
('Carlos Ramírez', '555-1042', 'carlos.ramirez@gail.com', 'Calle AF, 3204, Ciudad AP'),
('Patricia Gómez', '555-1043', 'patricia.gomez@gail.com', 'Av. Central 3305, Ciudad AQ'),
('Juan José Sánchez', '555-1044', 'juanjose.sanchez@gail.com', 'Calle AG, 3406, Ciudad AR'),
('Alicia Torres', '555-1045', 'alicia.torres@gail.com', 'Calle AH, 3507, Ciudad AS'),
('Antonio Díaz', '555-1046', 'antonio.diaz@gail.com', 'Calle AI, 3608, Ciudad AT'),
('Pablo García', '555-1047', 'pablo.garcia@gail.com', 'Av. Hidalgo 3709, Ciudad AU'),
('Fabiola López', '555-1048', 'fabiola.lopez@gail.com', 'Calle AJ, 3800, Ciudad AV'),
('Luis Alberto Romero', '555-1049', 'luisalberto.romero@gail.com', 'Calle AK, 3901, Ciudad AW'),
('Martín Castro', '555-1050', 'martin.castro@gail.com', 'Calle AL, 4002, Ciudad AX'),
('Miriam Torres', '555-1051', 'miriam.torres@gail.com', 'Calle AM, 4103, Ciudad AY'),
('José Antonio González', '555-1052', 'joseantonio.gonzalez@gail.com', 'Calle AN, 4204, Ciudad AZ'),
('Valentina Morales', '555-1053', 'valentina.morales@gail.com', 'Av. del Norte 4305, Ciudad BA'),
('Ricardo Fernández', '555-1054', 'ricardo.fernandez@gail.com', 'Calle AO, 4406, Ciudad BB'),
('Raúl Jiménez', '555-1055', 'raul.jimenez@gail.com', 'Calle AP, 4507, Ciudad BC'),
('Lucía Pérez', '555-1056', 'lucia.perez@gail.com', 'Calle AQ, 4608, Ciudad BD'),
('José Manuel González', '555-1057', 'josemanuel.gonzalez@gail.com', 'Calle AR, 4709, Ciudad BE'),
('Santiago Herrera', '555-1058', 'santiago.herrera@gail.com', 'Calle AS, 4800, Ciudad BF'),
('Carmen García', '555-1059', 'carmen.garcia@gail.com', 'Calle AT, 4901, Ciudad BG'),
('Ricardo Martínez', '555-1060', 'ricardo.martinez@gail.com', 'Calle AU, 5002, Ciudad BH'),
('Daniela Sánchez', '555-1061', 'daniela.sanchez@gail.com', 'Calle AV, 5103, Ciudad BI');

create table clientes (
    id_cliente int primary key,
    nombre_cliente varchar(255) not null,
    telefono_cliente varchar(50),
    email_cliente varchar(100) unique,
    direccion_cliente varchar(255),
    fecha_registro datetime default getdate()
);


insert into clientes (id_cliente, nombre_cliente, telefono_cliente, email_cliente, direccion_cliente)
values
(1, 'Pedro Gómez', '555-2001', 'pedro.gomez@email.com', 'Calle Ficticia 123, Ciudad A'),
(2, 'Ana Martínez', '555-2002', 'ana.martinez@email.com', 'Av. Principal 456, Ciudad B'),
(3, 'Carlos Sánchez', '555-2003', 'carlos.sanchez@email.com', 'Calle Secundaria 789, Ciudad C'),
(4, 'Laura Fernández', '555-2004', 'laura.fernandez@email.com', 'Calle A, No. 1, Ciudad D'),
(5, 'David Rodríguez', '555-2005', 'david.rodriguez@email.com', 'Calle B, 202, Ciudad E'),
(6, 'María López', '555-2006', 'maria.lopez@email.com', 'Calle C, No. 101, Ciudad F'),
(7, 'José García', '555-2007', 'jose.garcia@email.com', 'Avenida M. López 321, Ciudad G'),
(8, 'Isabel Ruiz', '555-2008', 'isabel.ruiz@email.com', 'Calle D, 567, Ciudad H'),
(9, 'Luis Pérez', '555-2009', 'luis.perez@email.com', 'Calle E, No. 789, Ciudad I'),
(10, 'Marta González', '555-2010', 'marta.gonzalez@email.com', 'Calle F, 888, Ciudad J'),
(11, 'Ricardo Ramírez', '555-2011', 'ricardo.ramirez@email.com', 'Av. Independencia 101, Ciudad K'),
(12, 'Sofía Díaz', '555-2012', 'sofia.diaz@email.com', 'Calle G, 202, Ciudad L'),
(13, 'Pedro Ruiz', '555-2013', 'pedro.ruiz@email.com', 'Calle H, No. 303, Ciudad M'),
(14, 'Beatriz Álvarez', '555-2014', 'beatriz.alvarez@email.com', 'Calle I, 404, Ciudad N'),
(15, 'Javier González', '555-2015', 'javier.gonzalez@email.com', 'Av. Reforma 505, Ciudad O'),
(16, 'Patricia Pérez', '555-2016', 'patricia.perez@email.com', 'Calle J, 606, Ciudad P'),
(17, 'Eduardo Torres', '555-2017', 'eduardo.torres@email.com', 'Calle K, 707, Ciudad Q'),
(18, 'Cristina Morales', '555-2018', 'cristina.morales@email.com', 'Calle L, 808, Ciudad R'),
(19, 'Manuel Rodríguez', '555-2019', 'manuel.rodriguez@email.com', 'Calle M, 909, Ciudad S'),
(20, 'Elena Jiménez', '555-2020', 'elena.jimenez@email.com', 'Av. del Sol 1001, Ciudad T'),
(21, 'Raúl González', '555-2021', 'raul.gonzalez@email.com', 'Calle N, 1102, Ciudad U'),
(22, 'Julia Castro', '555-2022', 'julia.castro@email.com', 'Calle O, 1203, Ciudad V'),
(23, 'Antonio Soto', '555-2023', 'antonio.soto@email.com', 'Calle P, 1304, Ciudad W'),
(24, 'Nuria Herrera', '555-2024', 'nuria.herrera@email.com', 'Av. Libertad 1405, Ciudad X'),
(25, 'José Luis Fernández', '555-2025', 'joseluis.fernandez@email.com', 'Calle Q, 1506, Ciudad Y'),
(26, 'Inés López', '555-2026', 'ines.lopez@email.com', 'Calle R, 1607, Ciudad Z'),
(27, 'Victor Hernández', '555-2027', 'victor.hernandez@email.com', 'Calle S, 1708, Ciudad AA'),
(28, 'Sara Romero', '555-2028', 'sara.romero@email.com', 'Calle T, 1809, Ciudad AB'),
(29, 'Diego Martínez', '555-2029', 'diego.martinez@email.com', 'Av. San Juan 1901, Ciudad AC'),
(30, 'Carmen Díaz', '555-2030', 'carmen.diaz@email.com', 'Calle U, 2002, Ciudad AD'),
(31, 'Miguel Ángel Pérez', '555-2031', 'miguelangel.perez@email.com', 'Calle V, 2103, Ciudad AE'),
(32, 'Paula García', '555-2032', 'paula.garcia@email.com', 'Calle W, 2204, Ciudad AF'),
(33, 'Andrés Rodríguez', '555-2033', 'andres.rodriguez@email.com', 'Av. Tulum 2305, Ciudad AG'),
(34, 'Raquel Sánchez', '555-2034', 'raquel.sanchez@email.com', 'Calle X, 2406, Ciudad AH'),
(35, 'Pedro González', '555-2035', 'pedro.gonzalez@email.com', 'Calle Y, 2507, Ciudad AI'),
(36, 'Bea Hernández', '555-2036', 'bea.hernandez@email.com', 'Calle Z, 2608, Ciudad AJ'),
(37, 'Fernando López', '555-2037', 'fernando.lopez@email.com', 'Calle AA, 2709, Ciudad AK'),
(38, 'Eva Gómez', '555-2038', 'eva.gomez@email.com', 'Calle AB, 2800, Ciudad AL'),
(39, 'Oscar Jiménez', '555-2039', 'oscar.jimenez@email.com', 'Calle AC, 2901, Ciudad AM'),
(40, 'Mónica Martín', '555-2040', 'monica.martin@email.com', 'Calle AD, 3002, Ciudad AN'),
(41, 'Lidia Ruiz', '555-2041', 'lidia.ruiz@email.com', 'Calle AE, 3103, Ciudad AO'),
(42, 'Carlos Ramírez', '555-2042', 'carlos.ramirez@email.com', 'Calle AF, 3204, Ciudad AP'),
(43, 'Patricia Gómez', '555-2043', 'patricia.gomez@email.com', 'Av. Central 3305, Ciudad AQ'),
(44, 'Juan José Sánchez', '555-2044', 'juanjose.sanchez@email.com', 'Calle AG, 3406, Ciudad AR'),
(45, 'Alicia Torres', '555-2045', 'alicia.torres@email.com', 'Calle AH, 3507, Ciudad AS'),
(46, 'Antonio Díaz', '555-2046', 'antonio.diaz@email.com', 'Calle AI, 3608, Ciudad AT'),
(47, 'Pablo García', '555-2047', 'pablo.garcia@email.com', 'Av. Hidalgo 3709, Ciudad AU'),
(48, 'Fabiola López', '555-2048', 'fabiola.lopez@email.com', 'Calle AJ, 3800, Ciudad AV'),
(49, 'Luis Alberto Romero', '555-2049', 'luisalberto.romero@email.com', 'Calle AK, 3901, Ciudad AW'),
(50, 'Martín Castro', '555-2050', 'martin.castro@email.com', 'Calle AL, 4002, Ciudad AX'),
(51, 'Miriam Torres', '555-2051', 'miriam.torres@email.com', 'Calle AM, 4103, Ciudad AY'),
(52, 'José Antonio González', '555-2052', 'joseantonio.gonzalez@email.com', 'Calle AN, 4204, Ciudad AZ'),
(53, 'Valentina Morales', '555-2053', 'valentina.morales@email.com', 'Av. del Norte 4305, Ciudad BA'),
(54, 'Ricardo Fernández', '555-2054', 'ricardo.fernandez@email.com', 'Calle AO, 4406, Ciudad BB'),
(55, 'Raúl Jiménez', '555-2055', 'raul.jimenez@email.com', 'Calle AP, 4507, Ciudad BC'),
(56, 'Lucía Pérez', '555-2056', 'lucia.perez@email.com', 'Calle AQ, 4608, Ciudad BD'),
(57, 'José Manuel González', '555-2057', 'josemanuel.gonzalez@email.com', 'Calle AR, 4709, Ciudad BE'),
(58, 'Santiago Herrera', '555-2058', 'santiago.herrera@email.com', 'Calle AS, 4800, Ciudad BF'),
(59, 'Carmen García', '555-2059', 'carmen.garcia@email.com', 'Calle AT, 4901, Ciudad BG'),
(60, 'Ricardo Martínez', '555-2060', 'ricardo.martinez@email.com', 'Calle AU, 5002, Ciudad BH'),
(61, 'Daniela Sánchez', '555-2061', 'daniela.sanchez@email.com', 'Calle AV, 5103, Ciudad BI'),
(62, 'Jorge Ramírez', '555-2062', 'jorge.ramirez@email.com', 'Calle AW, 5204, Ciudad BJ'),
(63, 'Andrea Martínez', '555-2063', 'andrea.martinez@email.com', 'Av. del Sur 5305, Ciudad BK'),
(64, 'Carlos Fernández', '555-2064', 'carlos.fernandez@email.com', 'Calle AX, 5406, Ciudad BL'),
(65, 'Sofia González', '555-2065', 'sofia.gonzalez@email.com', 'Calle AY, 5507, Ciudad BM'),
(66, 'Antonio Pérez', '555-2066', 'antonio.perez@email.com', 'Calle AZ, 5608, Ciudad BN'),
(67, 'Juan Carlos López', '555-2067', 'juancarlos.lopez@email.com', 'Calle BA, 5709, Ciudad BO'),
(68, 'Adriana Sánchez', '555-2068', 'adriana.sanchez@email.com', 'Calle BB, 5800, Ciudad BP'),
(69, 'Javier Gómez', '555-2069', 'javier.gomez@email.com', 'Calle BC, 5901, Ciudad BQ'),
(70, 'Natalia Romero', '555-2070', 'natalia.romero@email.com', 'Calle BD, 6002, Ciudad BR'),
(71, 'Victor Sánchez', '555-2071', 'victor.sanchez@email.com', 'Calle BE, 6103, Ciudad BS'),
(72, 'Cristina López', '555-2072', 'cristina.lopez@email.com', 'Calle BF, 6204, Ciudad BT'),
(73, 'Daniel González', '555-2073', 'daniel.gonzalez@email.com', 'Calle BG, 6305, Ciudad BU'),
(74, 'Sofia Ruiz', '555-2074', 'sofia.ruiz@email.com', 'Calle BH, 6406, Ciudad BV'),
(75, 'Laura Pérez', '555-2075', 'laura.perez@email.com', 'Calle BI, 6507, Ciudad BW'),
(76, 'David Ramírez', '555-2076', 'david.ramirez@email.com', 'Calle BJ, 6608, Ciudad BX'),
(77, 'Celia Sánchez', '555-2077', 'celia.sanchez@email.com', 'Calle BK, 6709, Ciudad BY');

create table proveedor_producto (
    id_proveedor_producto int primary key identity(1,1),
    id_proveedor int not null,
    id_producto int not null,
    fecha_suministro datetime default getdate(),
    cantidad_suministrada int not null,
    precio_suministro decimal(10,2) not null,
    foreign key (id_proveedor) references proveedores(id_proveedor),
    foreign key (id_producto) references productos(id_producto)
);

insert into proveedor_producto (id_proveedor, id_producto, fecha_suministro, cantidad_suministrada, precio_suministro)
values
(1, 1, '2024-11-01', 100, 20.00),
(1, 2, '2024-11-02', 150, 35.00),
(2, 3, '2024-11-03', 200, 50.00),
(2, 4, '2024-11-04', 120, 40.00),
(3, 5, '2024-11-05', 180, 95.00),
(3, 6, '2024-11-06', 75, 60.00),
(4, 7, '2024-11-07', 250, 55.00),
(4, 8, '2024-11-08', 130, 45.00),
(5, 9, '2024-11-09', 90, 40.00),
(5, 10, '2024-11-10', 110, 60.00),
(6, 11, '2024-11-11', 200, 70.00),
(6, 12, '2024-11-12', 150, 50.00),
(7, 13, '2024-11-13', 300, 30.00),
(7, 14, '2024-11-14', 180, 120.00),
(8, 15, '2024-11-15', 220, 90.00),
(8, 16, '2024-11-16', 160, 80.00),
(9, 17, '2024-11-17', 140, 25.00),
(9, 18, '2024-11-18', 190, 55.00),
(10, 19, '2024-11-19', 170, 45.00),
(10, 20, '2024-11-20', 100, 50.00);

SELECT p.nombre, ps.cantidad_suministrada, ps.precio_suministro, ps.fecha_suministro
FROM proveedor_producto ps
JOIN productos p ON ps.id_producto = p.id_producto
WHERE ps.id_proveedor = 1;

create table compras (
    id_compra int primary key identity(1,1),
    id_cliente int not null,
    id_producto int not null,
    cantidad int not null,
    fecha_compra datetime default getdate(),
    total decimal(10,2) not null,
    foreign key (id_cliente) references clientes(id_cliente),
    foreign key (id_producto) references productos(id_producto)
);

insert into compras (id_cliente, id_producto, cantidad, fecha_compra, total)
values
(1, 1, 2, '2024-11-01', 40.00),
(1, 3, 1, '2024-11-02', 50.00),
(2, 5, 3, '2024-11-03', 285.00),
(2, 2, 5, '2024-11-04', 175.00),
(3, 7, 1, '2024-11-05', 55.00),
(3, 9, 4, '2024-11-06', 160.00),
(4, 6, 2, '2024-11-07', 120.00),
(4, 10, 3, '2024-11-08', 180.00),
(5, 8, 1, '2024-11-09', 45.00),
(5, 11, 4, '2024-11-10', 280.00),
(6, 12, 2, '2024-11-11', 100.00),
(6, 14, 5, '2024-11-12', 600.00),
(7, 15, 3, '2024-11-13', 270.00),
(7, 17, 2, '2024-11-14', 50.00),
(8, 16, 6, '2024-11-15', 480.00),
(8, 19, 3, '2024-11-16', 135.00),
(9, 18, 2, '2024-11-17', 110.00),
(9, 20, 1, '2024-11-18', 50.00),
(10, 1, 4, '2024-11-19', 80.00),
(10, 3, 3, '2024-11-20', 150.00);

-- Historial de compras de un cliente especifico
SELECT c.nombre_cliente, p.nombre, cm.cantidad, cm.total, cm.fecha_compra
FROM compras cm
JOIN clientes c ON cm.id_cliente = c.id_cliente
JOIN productos p ON cm.id_producto = p.id_producto
WHERE cm.id_cliente = 4;

create table categorias (
    id_categoria int primary key identity(1,1),
    nombre_categoria varchar(100) not null
);

insert into categorias (nombre_categoria)
values 
('Electrónica'),
('Ropa y accesorios'),
('Hogar y decoración'),
('Alimentos y bebidas'),
('Deportes y aire libre'),
('Juguetes y juegos'),
('Salud y belleza'),
('Automotriz'),
('Libros y medios'),
('Música y entretenimiento');

alter table productos
add id_categoria int;

alter table productos
add foreign key (id_categoria) references categorias(id_categoria);


update productos set id_categoria = 1 where id_producto in (1, 2, 3, 4);   -- Electrónica
update productos set id_categoria = 2 where id_producto in (5, 6, 7, 8);   -- Ropa y accesorios
update productos set id_categoria = 3 where id_producto in (9, 10, 11, 12); -- Hogar y decoración
update productos set id_categoria = 4 where id_producto in (13, 14, 15);   -- Alimentos y bebidas
update productos set id_categoria = 5 where id_producto in (16, 17, 18);   -- Deportes y aire libre
update productos set id_categoria = 6 where id_producto in (19, 20);      -- Juguetes y juegos
update productos set id_categoria = 7 where id_producto in (21, 22, 23);   -- Salud y belleza
update productos set id_categoria = 8 where id_producto in (24, 25);      -- Automotriz
update productos set id_categoria = 9 where id_producto in (26, 27, 28);  -- Libros y medios
update productos set id_categoria = 10 where id_producto in (29, 30);    -- Música y entretenimiento

SELECT p.id_producto, p.nombre, c.nombre_categoria
FROM productos p
JOIN categorias c ON p.id_categoria = c.id_categoria;

create table inventario (
    id_inventario int primary key identity(1,1),
    id_producto int not null,
    cantidad_en_stock int not null,
    fecha_actualizacion datetime default getdate(),
);

insert into inventario (id_producto, cantidad_en_stock)
values
(1, 100),  
(2, 150),  
(3, 200),  
(4, 50),   
(5, 120),  
(6, 80),   
(7, 70),   
(8, 90),   
(9, 60),  
(10, 30),  
(11, 110), 
(12, 140), 
(13, 200), 
(14, 60),  
(15, 180), 
(16, 50),  
(17, 30),  
(18, 120),
(19, 200), 
(20, 90),  
(21, 75),  
(22, 95),  
(23, 60),  
(24, 150), 
(25, 180), 
(26, 200), 
(27, 50),  
(28, 110), 
(29, 130), 
(30, 100), 
(31, 140), 
(32, 200), 
(33, 70),  
(34, 90), 
(35, 60), 
(36, 120),
(37, 80),  
(38, 50),  
(39, 70),  
(40, 90),  
(41, 100), 
(42, 80),  
(43, 60),  
(44, 75),  
(45, 120), 
(46, 50),  
(47, 200), 
(48, 130), 
(49, 90),  
(50, 140), 
(51, 180), 
(52, 100), 
(53, 150), 
(54, 60),  
(55, 80), 
(56, 200), 
(57, 130), 
(58, 90),  
(59, 70),  
(60, 50),  
(61, 100), 
(62, 80),  
(63, 200), 
(64, 50),  
(65, 70),  
(66, 90),  
(67, 140), 
(68, 100), 
(69, 120), 
(70, 150), 
(71, 50),  
(72, 80),  
(73, 90),  
(74, 200), 
(75, 70),  
(76, 60),  
(77, 80),  
(78, 100), 
(79, 120), 
(80, 140), 
(81, 200), 
(82, 50),  
(83, 60),  
(84, 90),  
(85, 100), 
(86, 120), 
(87, 140), 
(88, 50),  
(89, 200), 
(90, 70),  
(91, 80),  
(92, 100), 
(93, 110), 
(94, 120), 
(95, 150), 
(96, 60), 
(97, 80),  
(98, 70), 
(99, 200), 
(100, 50);  

SELECT i.id_inventario, i.id_producto, p.nombre, i.cantidad_en_stock, i.fecha_actualizacion
FROM inventario i
JOIN productos p ON i.id_producto = p.id_producto
ORDER BY i.id_inventario;

create table detalle_factura (
    id_detalle_factura int primary key identity(1,1),
    id_factura int not null,
    id_producto int not null,
    cantidad int not null,
    precio_unitario decimal(10,2) not null,
    total decimal(10,2) not null,
    foreign key (id_producto) references productos(id_producto)
);


insert into detalle_factura (id_factura, id_producto, cantidad, precio_unitario, total)
values
(1, 1, 2, 50.00, 100.00),  
(1, 2, 1, 100.00, 100.00), 
(2, 3, 5, 40.00, 200.00),  
(2, 4, 3, 25.00, 75.00),   
(3, 5, 2, 60.00, 120.00),  
(3, 6, 1, 80.00, 80.00),   
(4, 7, 10, 15.00, 150.00), 
(4, 8, 5, 30.00, 150.00),  
(5, 9, 7, 22.00, 154.00),  
(5, 10, 4, 50.00, 200.00), 
(6, 11, 6, 90.00, 540.00), 
(6, 12, 3, 150.00, 450.00),
(7, 13, 2, 200.00, 400.00),
(7, 14, 1, 180.00, 180.00),
(8, 15, 5, 100.00, 500.00),
(8, 16, 8, 70.00, 560.00), 
(9, 17, 3, 150.00, 450.00),
(9, 18, 6, 40.00, 240.00), 
(10, 19, 2, 110.00, 220.00),
(10, 20, 7, 25.00, 175.00), 
(11, 21, 3, 50.00, 150.00), 
(11, 22, 10, 15.00, 150.00),
(12, 23, 1, 200.00, 200.00),
(12, 24, 2, 175.00, 350.00),
(13, 25, 6, 100.00, 600.00),
(13, 26, 4, 120.00, 480.00),
(14, 27, 8, 45.00, 360.00), 
(14, 28, 2, 200.00, 400.00),
(15, 29, 3, 150.00, 450.00),
(15, 30, 1, 300.00, 300.00);


create procedure sp_consultar_productos_proveedores
as
begin
    set nocount on;

    select 
        p.id_producto, 
        p.nombre as producto, 
        p.tipo_producto, 
        p.genero, 
        p.precio, 
        pr.nombre as proveedor, 
        pp.fecha_suministro, 
        pp.cantidad_suministrada
    from productos p
    inner join proveedor_producto pp on p.id_producto = pp.id_producto
    inner join proveedores pr on pp.id_proveedor = pr.id_proveedor;
end;

create procedure sp_registrar_compra (
    @id_cliente int,
    @id_producto int,
    @cantidad int
)
as
begin
    declare @precio_unitario decimal(10,2);
    declare @total decimal(10,2);

    -- Obtener el precio del producto
    select @precio_unitario = precio 
    from productos 
    where id_producto = @id_producto;

    -- Calcular el total
    set @total = @precio_unitario * @cantidad;

    -- Insertar en la tabla de compras
    insert into compras (id_cliente, id_producto, cantidad, fecha_compra, total)
    values (@id_cliente, @id_producto, @cantidad, getdate(), @total);

    -- Actualizar el inventario
    update inventario
    set cantidad_en_stock = cantidad_en_stock - @cantidad,
        fecha_actualizacion = getdate()
    where id_producto = @id_producto;
end;

create procedure sp_consultar_inventario_categoria (@id_categoria int)
as
begin
    set nocount on;

    select 
        c.nombre_categoria, 
        p.nombre as producto, 
        p.genero, 
        i.cantidad_en_stock, 
        i.fecha_actualizacion
    from inventario i
    inner join productos p on i.id_producto = p.id_producto
    inner join categorias c on p.id_categoria = c.id_categoria
    where c.id_categoria = @id_categoria;
end;

create procedure sp_compras_por_cliente (@id_cliente int)
as
begin
    set nocount on;

    select 
        cl.nombre_cliente, 
        c.fecha_compra, 
        p.nombre as producto, 
        c.cantidad, 
        c.total
    from compras c
    inner join clientes cl on c.id_cliente = cl.id_cliente
    inner join productos p on c.id_producto = p.id_producto
    where cl.id_cliente = @id_cliente;
end;

create table control_eventos (
    id_evento int primary key identity(1,1),
    nombre_tabla varchar(50) not null,
    operacion varchar(10) not null,
    usuario varchar(50) not null,
    fecha_evento datetime default getdate(),
    detalle nvarchar(max)
);


select * from control_eventos;


select * 
from control_eventos
where operacion = 'update';


select * 
from control_eventos
where nombre_tabla = 'productos';

alter table control_eventos
add ip_cliente varchar(50), aplicacion varchar(100), duracion_ms int;


select detalle
from control_eventos
where id_evento = 1;









