-- use learningDB;
SELECT * FROM animales;
-- SELECT * FROM animales where estado = 'triste';
-- show CREATE TABLE animales;
-- CREATE TABLE `animales` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `tipo` varchar(255) DEFAULT NULL,\n  `estado` varchar(255) DEFAULT NULL,\n  PRIMARY KEY (`id`),\n  UNIQUE KEY `id` (`id`)\n) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE estudiantes(
  id_student int AUTO_INCREMENT,
  name varchar(255),
  gender varchar(255),
  grade float,
  PRIMARY KEY(id_student)
);

-- insert into estudiantes (name, gender, grade) values ('Jonathan', 'helicóptero apache', 3.2);

-- INSERT INTO animales (
--   tipo, estado
-- ) VALUES ( 'felipe', 'triste' );

-- select * from estudiantes;
-- select name from estudiantes where grade > 3;
-- select name from estudiantes where grade > 3 AND gender != 'male';

-- delete from animales where estado = 'triste';

-- update animales set estado = 'triste' where tipo = 'dragon';
update animales set estado = 'alegre' where tipo = 'dragon';

SELECT * FROM animales;

---------------------------------

-- CREATE TABLE user (
--   id int not null auto_increment,
--   name varchar(50) not null,
--   edad int not null,
--   email varchar(100) not null,
--   PRIMARY KEY(id)
-- );

-- INSERT INTO user (
--   name, edad, email
-- ) VALUES ( 'Oscar', 25, 'oscar@gmail.com' );
-- INSERT INTO user (
--   name, edad, email
-- ) VALUES ( 'Layla', 15, 'layla@gmail.com' );
-- INSERT INTO user (
--   name, edad, email
-- ) VALUES ( 'Nicolas', 36, 'nico@gmail.com' );
-- INSERT INTO user (
--   name, edad, email
-- ) VALUES ( 'Chanchito', 7, 'chanchito@gmail.com' );

-- DELETE FROM user
--   WHERE edad >= 7;

-- SELECT * FROM user;
-- SELECT * FROM user limit 1;
-- SELECT * FROM user where edad > 15;
-- SELECT * FROM user where edad >= 15;
-- SELECT * FROM user where edad > 20 and email = 'nico@gmail.com';
-- SELECT * FROM user where edad > 20 or email = 'layla@gmail.com';
-- SELECT * FROM user where email != 'layla@gmail.com';
-- SELECT * FROM user where edad between 15 and 30;
-- SELECT * FROM user where email like '%gmail%';

-- UPDATE user
--   SET email = 'layla@hotmail.com'
--   WHERE name = 'Layla';

-- SELECT * FROM user where email like '%hotmail%';

-- SELECT * FROM user order by edad asc;
-- SELECT * FROM user order by edad desc;

-- SELECT max(edad) as mayor FROM user;
-- SELECT min(edad) as menor FROM user;

-- SELECT id, name FROM user;
-- SELECT id as número, name as nombre FROM user;

-- SELECT id FROM user where name = 'Nicolas';

-- CREATE TABLE products (
--   id int not null auto_increment,
--   name varchar(50) not null,
--   created_by int not null,
--   marca varchar(50) not null,
--   PRIMARY KEY(id),
--   FOREIGN KEY(created_by) REFERENCES user(id)
-- );

-- rename table products to product;

-- INSERT INTO product (
--   name, created_by, marca
-- ) VALUES 
--   ('ipad', 5, 'apple'),
--   ('iphone', 5, 'apple'),
--   ('watch', 6, 'apple'),
--   ('macbook', 5, 'apple'),
--   ('imac', 7, 'apple'),
--   ('ipad mini', 6, 'apple');

-- SELECT * FROM product;

-- select u.id, u.email, p.name from user u left join product p on u.id = p.created_by order by id asc;
-- select u.id, u.email, p.name from user u right join product p on u.id = p.created_by order by id asc;
-- select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by order by id asc;
-- select u.id, u.email, p.id, p.name from user u cross join product p;

-- INSERT INTO product (
--   name, created_by, marca
-- ) VALUES ( 'Mi band', 8, 'xiaomi');

-- select u.name as Creador, count(p.id) as Cantidad, p.marca as Marca from product p inner join user u on p.created_by = u.id group by created_by;

-- SELECT marca, count(id) as cantidad FROM product group by marca;

-- select u.name as Creador, count(p.id) as Cantidad, p.marca as Marca 
-- from product p inner join user u on p.created_by = u.id 
-- group by created_by having marca != 'apple';

-- select u.name as Creador, count(p.id) as Cantidad, p.marca as Marca from product p inner join user u on p.created_by = u.id group by created_by having marca = 'apple' and count(p.id) >= 2;
