
CREATE TABLE curso (
  id INTEGER AUTO_INCREMENT PRIMARY key,
  Codigo_Curso varchar(300) NOT NULL,
  Curso_Nombre varchar(300) DEFAULT NULL,
  EstadoCurso boolean DEFAULT false,
  Curso_Duracion  INTEGER(6) NOT NULL, 
  Curso_Tipo VarChar(300) DEFAULT NULL,
  Curso_Costo DECIMAL(20,2) DEFAULT NULL,
  Curso_Costo_Dolares DECIMAL (20,2) DEFAULT NULL,
  Descripcion varchar(300) DEFAULT NULL
)


CREATE TABLE `instructor` (
  `DNI_Instructor` varchar(300) NOT NULL PRIMARY KEY,
  `Nombre_Instructor` varchar(300) NOT NULL,
  `Apellido_Paterno_Instructor` varchar(300) NOT NULL,
  `Apellido_Materno_Instructor` varchar(300) NOT NULL,
  `Especialidad_Instructor` varchar(300) NOT NULL
  
);