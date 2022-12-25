# Learning databases with MySQL

Compilatorio de conocimientos a la hora de gestionar bases de datos.

## Instalación

Para la instalación tuve que buscar la guía específica para [ Arch Linux ](https://wiki.archlinux.org/title/MariaDB) la cuál consiste en instalar MariaDB, configurar usuarios e inicializar el Daemon para que funcione el servidor SQL en segundo plano.

## Software de gestión

Para gestionar todo lo relacionado a MariaDB instalé [phpMyAdmin](https://wiki.archlinux.org/title/phpMyAdmin#Installation) el cuál requiere el paquete `phpMyAdmin` usando pacman. Posteriormente se configura Apache (httpd.service) para montar y correr la aplicación phpMyAdmin en la dirección http://localhost/phpmyadmin

## Crear mi primera base de datos

Esto se puede hacer de diferentes maneras, ya sea desde la terminal local con los comandos `mariadb -u user -p` o  bien `mysql -u user -p` teniendo la siguiente salida:

```sh
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.9.4-MariaDB Arch Linux

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>
```

Normalmente se usará `root` como parámetro en `user`, siempre teniendo en cuenta que el usuario en el que estemos logueados en la terminal sea el usuario `root`

El primer comando a usar será:

```sql
CREATE DATABASE database_name;
```

¡Ya con esto tenemos una base de datos lista para que empecemos a crear tablas!

## Creación de tablas

Un ejemplo claro de creación de tablas puede ser el siguiente:

```sql
CREATE TABLE estudiantes(
  id_student int AUTO_INCREMENT,
  name varchar(255),
  gender varchar(255),
  grade float,
  PRIMARY KEY(id_student)
);
```

Como se puede ver el nombre de la tabla es `estudiantes` la cuál tiene 4 colúmnas:

- `id_estudiante` : Identificador único para cada estudiante (`PRIMARY KEY`) 
- `name` : Nombre del estudiante
- `gender` : Género del estudiante
- `grade` : Calificación

Aquí entra un nuevo término, la `PRIMARY KEY`, esta será la colúmna principal de esta tabla, la cuál se usará para identificar cada uno de los registros de forma única. El cuál se usará para consultar o relacionar cada uno de los estudiantes con otras tablas.

## Editar, renombrar y borrar columnas de una tabla

### Añadir nuevas columnas

Para editar una tabla agregando una nueva columna se utiliza el siguiente código:

```sql
ALTER TABLE table_name
ADD new_column_name datatype;
```

De esta forma, reutilizando el ejemplo anterior con la tabla `estudiantes`, podemos agregar una nueva columna llamada `code` que guarde el código de identificación del estudiante, con tipo `INT`, así:

```sql
ALTER TABLE estudiantes
  ADD code INT;
```

### Renombrar columnas

Para renombrar una columna se utiliza el siguiente código:

```sql
ALTER TABLE table_name
RENAME COLUMN old_name to new_name;
```

### Eliminar columnas

Se pueden eliminar columnas así:

```sql
ALTER TABLE table_name
DROP COLUMN column_name; 
```

## Insertar datos

También conocido como `registro`.

Para insertar datos, por ejemplo, a la tabla `estudiantes` se utiliza el siguiente comando:

```sql
INSERT INTO estudiantes (
  name, gender, grade
) VALUES ( 'Jonathan', 'Male', '1.4' );
```

### Editar registros

Para editar un registro se utiliza el siguiente código:

```sql
UPDATE table_name set column_name = 'Value' where condition;
```

Por ejemplo, para cambiar el nombre del registro del ejemplo anterior se haría lo siguiente:

```sql
UPDATE estudiantes set name = 'Johannes' where name = 'Jonathan';
```

## Consultas

Aquí recopilaré varias formas de hacer consultas, desde las más simples hasta las más complejas que he podido aprender.

La forma general de consultar es la siguiente:

```sql
SELECT attribute(s) FROM tableName;
```

### Consultar toda una tabla

Para consultar todos los registros de una tabla se utiliza el siguiente comando:

```sql
SELECT * FROM tableName;
``` 

Aquí el atributo es `*` para expresar (en Regex, regular expression) todos los atributos de la tabla, devolviendo así todos los atributos de todos los registros. 
# LearningDB
