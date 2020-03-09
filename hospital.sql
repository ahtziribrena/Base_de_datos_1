create database hospital;
use hospital;

create table pacientes(numero_de_seguridad_social int,nombre_del_paciente varchar(50),
domicilio varchar(50),poblacion varchar(50),codigo_postal int,numero_de_telefono int,
numero_historial_clinico int,observaciones varchar(150), 
primary key(numero_historial_clinico))engine=innoDB;

create table ingreso(numero_de_historial int,enfermedades varchar(60),
fecha_de_ingreso datetime,codigo_de_identificacion_del_medico int,numero_de_cama int,
observaciones varchar(50),primary key(codigo_de_identificacion_del_medico),
foreign key (numero_de_historial)references pacientes(numero_historial_clinico))engine=innoDB;

create table medicos(codigo_identificacion_medico int,nombre varchar(60),
especialidad varchar(15),foreign key (codigo_identificacion_medico)references ingreso(codigo_de_identificacion_del_medico))engine=innoDB;