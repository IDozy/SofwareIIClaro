--SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
--START TRANSACTION;
--SET time_zone = "+00:00";

--
-- Base de datos: `dba_ers_entrenamiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE alumnos (
  id INTEGER AUTO_INCREMENT PRIMARY key,
  DNI_Alumno varchar(300) NOT NULL,
  Nombre_Alumno varchar(300) NOT NULL,
  Apellido_Paterno_Alumno varchar(300) NOT NULL,
  Apellido_Materno_Alumno varchar(300) NOT NULL,
  Sexo_Alumno BOOLEAN NOT NULL DEFAULT TRUE,
  Telefono_Alumno varchar(300) NOT NULL DEFAULT '000000000',
  Empresa_Codigo varchar(300) NOT NULL,
  Id_Ubicacion varchar(300) NOT NULL,
  Id_Usuario varchar(300) NOT NULL,
  Id_Asistencias varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE asistencias (
  id INTEGER AUTO_INCREMENT PRIMARY key,
  Id_Asistencias varchar(300) NOT NULL,
  Fecha_Asistencias datetime DEFAULT NULL,
  Id_Tipo_Asistencias varchar(300) NOT NULL,
  Id_Justificacion varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE certificado (
   id INTEGER AUTO_INCREMENT PRIMARY key,
  Id_Certificado varchar(300) NOT NULL,
  Nombre_Certificado varchar(300) NOT NULL,
  Estado_Certificado varchar(300) NOT NULL,
  DNI_Instructor varchar(300) NOT NULL,
  DNI_Alumno varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE detalle_venta (
  id INTEGER AUTO_INCREMENT PRIMARY key,
  Id_Detalle_Ventas varchar(5) NOT NULL,
  Precio_Venta decimal(5,2) NOT NULL DEFAULT 0.00,
  Cantidad_Venta int(11) NOT NULL DEFAULT 0,
  Id_Ventas varchar(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE empresa (
  id INTEGER AUTO_INCREMENT PRIMARY key,
  Empresa_Codigo varchar(300) NOT NULL,
  Empresa_Nombre varchar(300) NOT NULL,
  Empresa_Descripcion varchar(300) NOT NULL,
  Empresa_RUC varchar(300) NOT NULL DEFAULT '00000000000',
  Id_Ubicacion varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `DNI_Instructor` varchar(300) NOT NULL,
  `Nombre_Instructor` varchar(300) NOT NULL,
  `Apellido_Paterno_Instructor` varchar(300) NOT NULL,
  `Apellido_Materno_Instructor` varchar(300) NOT NULL,
  `Especialidad_Instructor` varchar(300) NOT NULL,
  `Id_Usuario` varchar(300) NOT NULL,
  `Id_Asistencias` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `justificacion`
--

CREATE TABLE `justificacion` (
  `Id_Justificacion` varchar(300) NOT NULL,
  `Tipo_Justificacion` varchar(300) NOT NULL DEFAULT '--'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE notas (
  Id_Notas varchar(300) NOT NULL,
  Nota_Entrada varchar(300) NOT NULL DEFAULT '00',
  Nota_Salida varchar(300) NOT NULL DEFAULT '00',
  Nota_Oral varchar(300) NOT NULL DEFAULT '00',
  Estado_Nota varchar(300) NOT NULL,
  DNI_Alumno varchar(300) NOT NULL,
  Id_Curso varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE personal (
  Id_Personal varchar(300) NOT NULL,
  Nombre_Personal varchar(300) NOT NULL,
  Apellido_Paterno_Personal varchar(300) NOT NULL,
  Apellido_Materno_Personal varchar(300) NOT NULL,
  Telefono_Personal varchar(300) DEFAULT NULL,
  Id_Asistencias varchar(300) NOT NULL,
  Id_Ubicacion varchar(300) NOT NULL,
  Id_Tipo_Personal varchar(300) NOT NULL,
  Id_Usuario varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE sesion (
  Sesion_Codigo varchar(300) NOT NULL,
  Sesion_Fecha datetime NOT NULL,
  Sesion_Periodo varchar(300) NOT NULL,
  Sesion_Hora_Inicio time NOT NULL,
  Sesion_Hora_Fin time NOT NULL,
  Sesion_Observaciones varchar(300) NOT NULL,
  Sesion_Lugar varchar(300) NOT NULL,
  Sesión_Horas time NOT NULL,
  Id_Curso varchar(300) NOT NULL DEFAULT '',
  DNI_Instructor varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_asistencias`
--

CREATE TABLE tipo_asistencias (
  Id_Tipo_Asistencias varchar(300) NOT NULL,
  Tipo_Asistencia varchar(300) NOT NULL DEFAULT '--'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_personal`
--

CREATE TABLE tipo_personal (
  Id_Tipo_Personal varchar(5) NOT NULL,
  Tipo varchar(15) NOT NULL DEFAULT '--'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE ubicacion (
  Id_Ubicacion varchar(5) NOT NULL,
  Nombre_Ubicacion varchar(50) NOT NULL,
  Tipo_Ubicacion varchar(10) NOT NULL,
  Referencia_Ubicacion varchar(100) NOT NULL DEFAULT 'No refence'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE usuario (
  Id_Usuario varchar(5) NOT NULL,
  Usuario_Nombre varchar(50) NOT NULL,
  Usuario_Password varchar(50) NOT NULL,
  Usuario_Email varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE ventas (
  Id_Ventas varchar(300) NOT NULL,
  Fecha_Venta datetime NOT NULL,
  Estado_Venta varchar(300) NOT NULL ,
  Id_Personal varchar(300) NOT NULL ,
  Id_Curso varchar(300) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`DNI_Alumno`),
  ADD KEY `FK_alumnos_empresa` (`Empresa_Codigo`),
  ADD KEY `FK_alumnos_ubicacion` (`Id_Ubicacion`),
  ADD KEY `FK_alumnos_usuario` (`Id_Usuario`),
  ADD KEY `FK_alumnos_asistencias` (`Id_Asistencias`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`Id_Asistencias`),
  ADD KEY `FK__tipo_asistencias` (`Id_Tipo_Asistencias`),
  ADD KEY `FK_asistencias_justificacion` (`Id_Justificación`);

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`Id_Certificado`),
  ADD KEY `FK_certificado_instructor` (`DNI_Instructor`),
  ADD KEY `FK_certificado_alumnos` (`DNI_Alumno`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Id_Curso`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`Id_Detalle_Ventas`),
  ADD KEY `FK__ventas` (`Id_Ventas`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`Empresa_Codigo`),
  ADD KEY `FK_empresa_ubicacion` (`Id_Ubicacion`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`DNI_Instructor`),
  ADD KEY `FK_instructor_usuario` (`Id_Usuario`),
  ADD KEY `FK_instructor_asistencias` (`Id_Asistencias`);

--
-- Indices de la tabla `justificacion`
--
ALTER TABLE `justificacion`
  ADD PRIMARY KEY (`Id_Justificacion`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`Id_Notas`),
  ADD KEY `FK_notas_alumnos` (`DNI_Alumno`),
  ADD KEY `FK_notas_curso` (`Id_Curso`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`Id_Personal`),
  ADD KEY `FK__asistencias` (`Id_Asistencias`),
  ADD KEY `FK__ubicacion` (`Id_Ubicacion`),
  ADD KEY `FK__tipo_personal` (`Id_Tipo_Personal`),
  ADD KEY `FK__usuario` (`Id_Usuario`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`Sesion_Codigo`),
  ADD KEY `FK_sesion_curso` (`Id_Curso`),
  ADD KEY `FK_sesion_instructor` (`DNI_Instructor`);

--
-- Indices de la tabla `tipo_asistencias`
--
ALTER TABLE `tipo_asistencias`
  ADD PRIMARY KEY (`Id_Tipo_Asistencias`) USING BTREE;

--
-- Indices de la tabla `tipo_personal`
--
ALTER TABLE `tipo_personal`
  ADD PRIMARY KEY (`Id_Tipo_Personal`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`Id_Ubicacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`Id_Ventas`),
  ADD KEY `FK__personal` (`Id_Personal`),
  ADD KEY `FK__curso` (`Id_Curso`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `FK_alumnos_asistencias` FOREIGN KEY (`Id_Asistencias`) REFERENCES `asistencias` (`Id_Asistencias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_alumnos_empresa` FOREIGN KEY (`Empresa_Codigo`) REFERENCES `empresa` (`Empresa_Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_alumnos_ubicacion` FOREIGN KEY (`Id_Ubicacion`) REFERENCES `ubicacion` (`Id_Ubicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_alumnos_usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `FK__tipo_asistencias` FOREIGN KEY (`Id_Tipo_Asistencias`) REFERENCES `tipo_asistencias` (`Id_Tipo_Asistencias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_asistencias_justificacion` FOREIGN KEY (`Id_Justificación`) REFERENCES `justificacion` (`Id_Justificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `FK_certificado_alumnos` FOREIGN KEY (`DNI_Alumno`) REFERENCES `alumnos` (`DNI_Alumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_certificado_instructor` FOREIGN KEY (`DNI_Instructor`) REFERENCES `instructor` (`DNI_Instructor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `FK__ventas` FOREIGN KEY (`Id_Ventas`) REFERENCES `ventas` (`Id_Ventas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK_empresa_ubicacion` FOREIGN KEY (`Id_Ubicacion`) REFERENCES `ubicacion` (`Id_Ubicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `FK_instructor_asistencias` FOREIGN KEY (`Id_Asistencias`) REFERENCES `asistencias` (`Id_Asistencias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_instructor_usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `FK_notas_alumnos` FOREIGN KEY (`DNI_Alumno`) REFERENCES `alumnos` (`DNI_Alumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_notas_curso` FOREIGN KEY (`Id_Curso`) REFERENCES `curso` (`Id_Curso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `FK__asistencias` FOREIGN KEY (`Id_Asistencias`) REFERENCES `asistencias` (`Id_Asistencias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__tipo_personal` FOREIGN KEY (`Id_Tipo_Personal`) REFERENCES `tipo_personal` (`Id_Tipo_Personal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__ubicacion` FOREIGN KEY (`Id_Ubicacion`) REFERENCES `ubicacion` (`Id_Ubicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__usuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD CONSTRAINT `FK_sesion_curso` FOREIGN KEY (`Id_Curso`) REFERENCES `curso` (`Id_Curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_sesion_instructor` FOREIGN KEY (`DNI_Instructor`) REFERENCES `instructor` (`DNI_Instructor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `FK__curso` FOREIGN KEY (`Id_Curso`) REFERENCES `curso` (`Id_Curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__personal` FOREIGN KEY (`Id_Personal`) REFERENCES `personal` (`Id_Personal`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;
