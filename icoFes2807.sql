/*eliminar nuestra base de datos si tiene el mismo nombre*/
drop schema if exists fes_aragon;

/*crear una base de datos*/
create schema if not exists fes_aragon default character set utf8 collate utf8_spanish2_ci;

/*seleccionar la base de datos*/
USE fes_aragon;

/*CREAR UN TABLA*/

CREATE TABLE ALUMNO(
    nombre_alumno text not null,
    carrera text not null,
    no_cuenta int (10) not null,
    direccion varchar (8) not null,
    telefono varchar (8) not null,
    email text not null,
    password varchar (8) not null,
    fecha_registro datetime not null default current_timestamp,
    permisos int (11) not null default '1'
);

/*agregar un registro*/

insert into ALUMNO(nombre_alumno,carrera,no_cuenta,direccion,telefono,email,password,fecha_registro,permisos)values
('aaron Velasco', 'ico', '413112576', 'gloria15', '12354894', 'aaronvelascovea@outlook.com', '13515', '2021-03-09 12:49:56',1);


/*definir nuestras PK*/
alter table alumno
add primary key (no_cuenta);
commit;
/*los cambios son de manera permanente*/

/*codigo de la base de datos*/
