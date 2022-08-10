DROP DATABASE IF EXISTS pelucanina;
CREATE DATABASE pelucanina CHARACTER SET utf8mb4;
USE pelucanina;
 

CREATE TABLE dueno (
    dni INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(9)
);
 
CREATE TABLE perro (
    id_perro INT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sexo ENUM('H', 'M') NOT NULL,
    FOREIGN KEY (id_perro) REFERENCES dueno(dni)
    
);
 
 CREATE TABLE historial (
    id_historial INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    FOREIGN KEY (perro) REFERENCES perro(id_perro),
    descripcion VARCHAR(100) NOT NULL,
    monto FLOAT UNSIGNED NOT NULL
);
 /* dueno*/

INSERT INTO persona VALUES ('79503962', 'Cristina', 'Lemke', 'Saturno', '669162534');
INSERT INTO persona VALUES ('82842571', 'Ramón', 'Herzog', 'Urano', '626351429');
INSERT INTO persona VALUES ('61142000', 'Esther', 'Spencer','Plutón', NULL);
INSERT INTO persona VALUES ('46900725', 'Daniel','Pacocha', 'Andarax', '679837625');
INSERT INTO persona VALUES ('85366986', 'Carmen', 'Streich', 'Almanzora', NULL);
INSERT INTO persona VALUES ('73571384', 'Alfredo', 'Stiedemann', 'Guadalquivir', '950896725');
INSERT INTO persona VALUES ('82937751', 'Manolo', 'Hamill', 'C/ Duero', '950263514');
INSERT INTO persona VALUES ('80502866', 'Alejandro', 'Kohler', 'C/ Tajo', '668726354');
INSERT INTO persona VALUES ('10485008', 'Antonio', 'Fahey', 'Sierra de los Filabres', NULL);
INSERT INTO persona VALUES ('85869555', 'Guillermo', 'Ruecker','Sierra de Gádor', NULL);
INSERT INTO persona VALUES ('04326833', 'Micaela', 'Monahan', 'C/ Veleta', '662765413');
INSERT INTO persona VALUES ('11578526', 'Inma', 'Lakin', 'Picos de Europa', '678652431');
INSERT INTO persona VALUES ('79221403', 'Francesca', 'Schowalter', 'Quinto pino', NULL);
INSERT INTO persona VALUES ('79089577', 'Juan', 'Gutiérrez', 'Los pinos', '678652431');
INSERT INTO persona VALUES ('41491230', 'Antonio', 'Domínguez', 'C/ Cabo de Gata', '626652498');
INSERT INTO persona VALUES ('64753215', 'Irene', 'Hernández', 'C/ Zapillo', '628452384');
INSERT INTO persona VALUES ('85135690', 'Sonia', 'Gea', 'C/ Mercurio', '678812017');
 
/* perro */
INSERT INTO perro VALUES (3303,'pelu', '2020/08/21', 'H','85135690');
INSERT INTO perro VALUES (3304,'colita', '2021/09/22', 'H','64753215');
INSERT INTO perro VALUES (3310,'goku', '1999/04/14', 'M','41491230');
INSERT INTO perro VALUES (3308,'cacho', '2019/03/01', 'M','79089577');
INSERT INTO perro VALUES (3309,'india', '2020/02/20', 'H','11578526');
INSERT INTO perro VALUES (4021,'sonia', '2022/01/26', 'H','04326833');
INSERT INTO perro VALUES (4022,'sol', '2001/11/28', 'H','85869555');
INSERT INTO perro VALUES (2325,'vicente','2006/12/29', 'M','10485008');
INSERT INTO perro VALUES (1406,'lola', '2007/11/30', 'H','80502866');
INSERT INTO perro VALUES (5698,'luna', '2003/10/04', 'H','82937751');
INSERT INTO perro VALUES (5263,'benji', '2022/08/06', 'M','73571384');
INSERT INTO perro VALUES (5698,'arena', '2014/08/10', 'H','85366986');
INSERT INTO perro VALUES (7898,'pata', '2022/11/18', 'H','46900725');
INSERT INTO perro VALUES (6542,'huesos', '2021/01/22', 'M','61142000');
INSERT INTO perro VALUES (3254,'enana', '2020/05/28', 'H','82842571');
INSERT INTO perro VALUES (3300,'moro', '2020/04/23', 'M','79503962');


/* historial */
INSERT INTO historial VALUES (1, '2021/04/23', 3300, 'básica', 4000);
INSERT INTO historial VALUES (2, '2020/03/24', 7898, 'básica', 1300);
INSERT INTO historial VALUES (3, '2019/09/23', 5698, 'básica', 1520);
INSERT INTO historial VALUES (4, '2022/08/05', 5698, 'básica', 2500);
INSERT INTO historial VALUES (5, '2022/04/23', 1406, 'básica', 900);
INSERT INTO historial VALUES (6, '2010/10/13', 4021, 'alta', 5500);
INSERT INTO historial VALUES (7, '2022/04/02', 4022, 'básica', 4000);
INSERT INTO historial VALUES (8, '2021/04/16', 3303, 'básica', 450);
INSERT INTO historial VALUES (9, '2021/05/04', 3309, 'alta', 5000);
INSERT INTO historial VALUES (10, '2022/03/23', 3300, 'básica', 4000);