-- create database academias;
-- Tabla academias
-- CREATE TABLE academia (
--   id int not null AUTO_INCREMENT,
--   nombre varchar(100),
--   telefono varchar(45),
--   web varchar(100),
--   PRIMARY KEY(id)
-- );

-- CREATE TABLE profesor (
--   id int not null AUTO_INCREMENT,
--   nombre varchar(80),
--   apellido varchar(80),
--   telefono varchar(45),
--   email varchar(255),
--   academia_id int,
--   PRIMARY KEY(id),
--   FOREIGN KEY(academia_id) REFERENCES academia(id)
-- );

-- CREATE TABLE alumno (
--   id int not null AUTO_INCREMENT,
--   nombre varchar(80),
--   apellido varchar(80),
--   telefono varchar(45),
--   email varchar(255),
--   academia_id int,
--   PRIMARY KEY(id),
--   FOREIGN KEY(academia_id) REFERENCES academia(id)
-- );

-- CREATE TABLE curso (
--   id int not null AUTO_INCREMENT,
--   nombre varchar(80),
--   descripcion text, 
--   profesor_id int,
--   PRIMARY KEY(id),
--   FOREIGN KEY(profesor_id) REFERENCES profesor(id)
-- );

-- CREATE TABLE alumno_x_curso (
--   id int not null AUTO_INCREMENT,
--   alumno_id int,
--   curso_id int,
--   PRIMARY KEY(id),
--   FOREIGN KEY(alumno_id) REFERENCES alumno(id),
--   FOREIGN KEY(curso_id) REFERENCES curso(id)
-- );

-- CREATE TABLE nota (
--   id int not null AUTO_INCREMENT,
--   alumno_id int,
--   curso_id int,
--   nota float,
--   PRIMARY KEY(id),
--   FOREIGN KEY(alumno_id) REFERENCES alumno(id),
--   FOREIGN KEY(curso_id) REFERENCES curso(id) 
-- );

-- INSERT INTO academia (
--   nombre, telefono, web
-- ) VALUES ( 'Academia Online de Colombia', '573218468744', 'academiadecolombia.com.co');

-- ALTER TABLE estudiantes
--    add cuteness varchar(255);
  
-- SELECT cuteness FROM estudiantes where name = 'Jonathan';
-- UPDATE estudiantes
--   SET name = 'Jonathan'
--   WHERE name = 'Johannes';
-- SELECT * FROM estudiantes;
