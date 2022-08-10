DROP DATABASE IF EXISTS pelucanina;
CREATE DATABASE pelucanina CHARACTER SET utf8mb4;
USE pelucanina;

CREATE TABLE Dueno (
    DNI INT not null,
    Nombre VARCHAR(25) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
	Direccion VARCHAR(50) NOT NULL,
    Telefono VARCHAR(9) NOT NULL,
    PRIMARY KEY(DNI)
);

CREATE TABLE Perro (
    id_perro INT AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    fecha_nac DATE NOT NULL,
    sexo ENUM('H', 'M') NOT NULL,
    DNI_dueno int not null,
     PRIMARY KEY(id_perro)
);

ALTER TABLE Perro ADD FOREIGN KEY(DNI_dueno) REFERENCES Dueno(DNI);

 CREATE TABLE historial (
    id_historial INT AUTO_INCREMENT,
    fecha DATE NOT NULL,
    id_perro int  not null,
    descripcion VARCHAR(100) NOT NULL,
    monto FLOAT NOT NULL,
  PRIMARY KEY(id_historial));

ALTER TABLE historial ADD FOREIGN KEY(id_perro) REFERENCES perro(id_perro);

INSERT INTO dueno VALUES ('79503962', 'Cristina', 'Lemke', 'Saturno', '669162534');
INSERT INTO dueno VALUES ('82842571', 'Ramón', 'Herzog', 'Urano', '626351429');
INSERT INTO dueno VALUES ('46900725', 'Daniel','Pacocha', 'Andarax', '679837625');
INSERT INTO dueno VALUES ('73571384', 'Alfredo', 'Stiedemann', 'Guadalquivir', '950896725');
INSERT INTO dueno VALUES ('82937751', 'Manolo', 'Hamill', 'C/ Duero', '950263514');
INSERT INTO dueno VALUES ('80502866', 'Alejandro', 'Kohler', 'C/ Tajo', '668726354');
INSERT INTO dueno VALUES ('04326833', 'Micaela', 'Monahan', 'C/ Veleta', '662765413');
INSERT INTO dueno VALUES ('11578526', 'Inma', 'Lakin', 'Picos de Europa', '678652431');
INSERT INTO dueno VALUES ('79089577', 'Juan', 'Gutiérrez', 'Los pinos', '678652431');
INSERT INTO dueno VALUES ('41491230', 'Antonio', 'Domínguez', 'C/ Cabo de Gata', '626652498');
INSERT INTO dueno VALUES ('64753215', 'Irene', 'Hernández', 'C/ Zapillo', '628452384');
INSERT INTO dueno VALUES ('85135690', 'Sonia', 'Gea', 'C/ Mercurio', '678812017');

INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('Colita', '2021-09-22', 'H', '79503962');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('goku', '1999-04-14', 'H', '82937751');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('india', '2020-02-20', 'M', '41491230');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('sonia', '2022-01-26', 'M', '11578526');

INSERT INTO historial(fecha, id_perro, descripcion, monto) VALUES ('2021-05-04', 1, 'alta', 5000);
INSERT INTO historial(fecha, id_perro, descripcion, monto) VALUES ('2021-08-04', 1, 'antibioticos', 1000);
INSERT INTO historial(fecha, id_perro, descripcion, monto) VALUES ('2022-05-04', 2, 'internación', 1200);
INSERT INTO historial(fecha, id_perro, descripcion, monto) VALUES ('2021-11-04', 2, 'baño', 500);
INSERT INTO historial(fecha, id_perro, descripcion, monto) VALUES ('2021-06-04', 3, 'baño', 500);
INSERT INTO historial(fecha, id_perro, descripcion, monto) VALUES ('2021-05-04', 4, 'baño', 500);

