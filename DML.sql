-- Danyelle Steven Giraldo Jimenez

\copy localidades (iddepartamento, nombre_departamento, idmunicipio, nombre_municipio) FROM '/home/camper/Descargas/localidades.xlsx - Sheet1.csv' DELIMITER ',' CSV HEADER;

UPDATE localidades
SET iddepartamento = 0
WHERE iddepartamento IS NULL;


insert into departamento(id, nombre_departamento)
	select distinct iddepartamento, nombre_departamento from localidades 
	order by nombre_departamento ASC;
	
insert into municipio(id,nombre_municipio,id_departamento)
	select distinct idmunicipio, nombre_municipio, iddepartamento from localidades 
	order by nombre_municipio ASC; 