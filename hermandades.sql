CREATE DATABASE cofradias;
CREATE USER 'hermandades'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON cofradias.* to 'hermandades'@'%';
FLUSH PRIVILEGES;
exit
USE cofradias




create table hermandad(
    nombre_hermandad varchar(20),
    dia_salida date,
    iglesia varchar(20),
    constraint pk_hermandad primary key(hermandad)
);
create table titulares(
    nombre_titular varchar(20),
    nombre_hermandad varchar(20),
    escultor varchar(20),
    anyo varchar(4),
    constraint pk_titulares primary key(nombre_titular,nombre_hermandad),
    constraint fk_hermandad foreign key(nombre_hermandad) references hermandad(nombre_hermandad)
);


INSERT INTO cofradia values ('Borriquita', 'Domingo de Ramos', 'El Salvador');
INSERT INTO cofradia values ('el amor ', 'Domingo de Ramos', 'El Salvador');
INSERT INTO cofradia values ('La Estrella', 'Domingo de Ramos', 'San Jacinto');
INSERT INTO cofradia values ('Redencion','Lunes Santo','Santiago');
INSERT INTO cofradia values ('El cautivo','Lunes Santo','Santa Genoveva');
INSERT INTO cofradia values ('San Benito','Martes Santo','San Benito');
INSERT INTO cofradia values ('Los Estudiantes ','Martes Santo','Universidad');
INSERT INTO cofradia values ('La Sed','Miercoles Santo','Concepcion');
INSERT INTO cofradia values ('Sagrada Lanzada','Miercoles Santo','San Martin');
INSERT INTO cofradia values ('Pasion ','Jueves Santo','El salvador');
INSERT INTO cofradia values ('Quinta Angustia ','Jueves Santo','La Magdalena');
INSERT INTO cofradia values ('El silencio','Madrugada','Jesus Nazareno');
INSERT INTO cofradia values ('Calvario ','Madrugada','La Magdalena');
INSERT INTO cofradia values ('Cachorro','Vienes Santo','Patrocinio');
INSERT INTO cofradia values ('Monserrat','Vienes Santo','La Magdalena');
INSERT INTO cofradia values ('Soledad','Sabado Santo','San lorenzo');



INSERT INTO titulares values ('Nuestro Padre Jesus de la Salud ','Pedro Roldan','','1790','Borriquita');
INSERT INTO titulares values ('Cristo del Amor','Mesa','','1630','el amor');
INSERT INTO titulares values ('Cristo Cautivo','Duarte','','1945','El cautivo');
INSERT INTO titulares values ('Cristo de la Buena Muerte','Mesa','','1645','Estudiantes');
INSERT INTO titulares values ('Nuestro Padre Jesus de la Redencion ','Castillo Lastrucci','','1932','Redencion');
INSERT INTO titulares values ('Maria Santisima del Rocio ','Castillo Lastrucci','','1933','Redencion');
INSERT INTO titulares values ('Cristo de la Presentacion al pueblo ','Castillo Lastrucci','','1937','San Benito');
INSERT INTO titulares values ('Cristo de la Sangre ','Buiza','','1943','San Benito');
INSERT INTO titulares values ('Cristo de la Sed ','Duarte','','1963','la Sed');
INSERT INTO titulares values ('Maria Santisima de Consolacion ','Duarte','','1970','La Sed');
INSERT INTO titulares values ('Nuestro Padre Jesus Nazareno ','Ocampos','','1570','El silencio');
INSERT INTO titulares values ('Cristo del Descendimiento ','Mesa','','1570','Quinta Angustia');
INSERT INTO titulares values ('Maria Santisima de Concepcion ','Buiza','','1970','El silencio');
INSERT INTO titulares values ('Nuestro Padre Jesus de Pasion ','Montañes ','','1670','Pasion');
INSERT INTO titulares values ('Cristo de la Expiracion ','Ruiz Gijon','','1720','Cachorro');
INSERT INTO titulares values ('Nuestra Señora del Patrocinio ','Duarte','','1720','Cachorro');
INSERT INTO titulares values ('Cristo de la Conversion ','Mesa','','1620','Monserrat');
INSERT INTO titulares values ('Nuestra Señora de Monserrat ','Mesa','','1624','Monserrat');
INSERT INTO titulares values ('Nuestra Señora de la Soledad ','Verdi','','1720','Soledad');

