-- Danyelle Steven Giraldo Jimenez

create database localidades;

use localidades;

create table departamento(
    id int primary key,
    nombre_departamento varchar(50)
);

create table municipio(
    id int primary key,
    nombre_municipio varchar(50),
    id_departamento int,
    foreign key(id_departamento) references departamento(id)
);

create table localidades(
    iddepartamento int,
    nombre_departamento varchar(50),
    idmunicipio int,
    nombre_municipio varchar(50)
);

