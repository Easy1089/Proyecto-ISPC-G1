DROP DATABASE IF EXISTS pelucanina;
CREATE DATABASE pelucanina CHARACTER SET utf8mb4;
USE pelucanina;
 
CREATE TABLE dueno (
    dni INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(10)
);
 
CREATE TABLE perro (
    id_perro INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sexo ENUM('H', 'M') NOT NULL,
    dni_dueno INT,
    FOREIGN KEY (dni_dueno) REFERENCES dueno(dni)
    
);
 
 CREATE TABLE historial (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    perro INT,
    FOREIGN KEY (perro) REFERENCES perro(id_perro),
    descripcion VARCHAR(100) NOT NULL,
    monto FLOAT UNSIGNED NOT NULL
);
 /* dueno*/

INSERT INTO dueno VALUES ('32794987', 'Melisa', 'Apaz', 'Publica S/N', '3512553895');
INSERT INTO dueno VALUES ('26171037', 'Claudio', 'Sanchez', 'Caseros 1268', '3574651783');
INSERT INTO dueno VALUES ('57993424', 'Paulina', 'Rubio', 'Mza 66 - Lote 9', '3574480433');
INSERT INTO dueno VALUES ('58993365', 'Martina', 'Diprenzzio', 'Mza 69 - Lote 1', '3574481910');
INSERT INTO dueno VALUES ('26171009', 'Pedro', 'Lopez', 'Mza 55 - Lote 7', '3574480267');
INSERT INTO dueno VALUES ('26171002', 'Juan Pedro', 'Magallanes', 'Mza 55 - Lote 7', '3574480267');
 
/* perro */
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (1, 'Olivia', '2021-09-22', 'M', '32794987');
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (2,'Teo', '2010-04-14', 'H', '32794987');
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (3,'Simón', '2020-02-20', 'H', '32794987');
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (4,'Lolo', '2022-01-26', 'H', '32794987');
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (5,'Panchi', '2021-07-26', 'M', '26171037');
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (6,'Caramelo', '2022-01-26', 'M', '57993424');
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (7,'Zoe', '2022-05-16', 'M', '58993365');
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (8,'Manchitas', '2022-11-20', 'H', '26171009');
INSERT INTO perro (id_perro, nombre, fecha_nacimiento, sexo, DNI_dueno) VALUES (9,'Alma', '2022-11-20', 'M', '26171002');

/* historial */
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2021-05-04', 1, 'alta', 5000);
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2021-08-04', 1, 'antibioticos', 1000);
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2022-05-04', 2, 'internación', 1200);
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2021-11-04', 2, 'baño', 500);
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2021-06-04', 3, 'baño', 500);
INSERT INTO historial(fecha, perro, descripcion, monto) VALUES ('2021-05-04', 4, 'baño', 500);

/*5. Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro*/

SELECT 
    p.nombre AS Perro,
    p.fecha_nacimiento AS FechaNacimiento,
    p.Sexo,
    d.dni AS DniDueno,
    CONCAT(d.apellido, ', ', d.nombre) AS Dueno
FROM
    perro p
        INNER JOIN
    dueno d ON d.dni = p.dni_dueno
WHERE
    d.nombre LIKE '%Pedro%'