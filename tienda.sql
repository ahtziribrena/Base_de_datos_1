create database tienda;
use tienda;
create table proveedor(nombre_proveedor varchar (50), telefono varchar (10), primary key(nombre_proveedor));

create table productos(nombreproducto varchar(50),codigo varchar(16),precioventa float,
cantidad_existente int,precioproveedor int, proveedorproducto varchar(50),
primary key(nombreproducto,precioventa),foreign key (proveedorproducto) references proveedor(nombre_proveedor));

create table compra(nombre varchar (50),precio float, fecha datetime, foreign key(nombre, precio) references productos(nombreproducto,precioventa)); 
                                               