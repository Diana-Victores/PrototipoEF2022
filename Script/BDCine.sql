/*BASE DE DATOS COLCHONERÍA*/
CREATE DATABASE IF NOT EXISTS `cineVision`;
USE `cineVision`;
/********************SEGURIDAD********************/
DROP TABLE IF EXISTS `tbl_modulos`;
CREATE TABLE IF NOT EXISTS `tbl_modulos` (
	pk_id_modulos INT NOT NULL,
    nombre_modulo VARCHAR(50) NOT NULL,
    descripcion_modulo VARCHAR(150) NOT NULL,
    estado_modulo TINYINT DEFAULT 0,
    primary key (`pk_id_modulos`)
);

DROP TABLE IF EXISTS `tbl_aplicaciones`;
CREATE TABLE IF NOT EXISTS `tbl_aplicaciones` (
	pk_id_aplicacion INT NOT NULL,
    nombre_aplicacion VARCHAR(50) NOT NULL,
    descripcion_aplicacion VARCHAR(150) NOT NULL,
    estado_aplicacion TINYINT DEFAULT 0,
    primary key (`pk_id_aplicacion`)
);

DROP TABLE IF EXISTS `tbl_AsignacionModuloAplicacion`;
CREATE TABLE IF NOT EXISTS `tbl_AsignacionModuloAplicacion` (
  fk_id_modulos INT NOT NULL,
  fk_id_aplicacion INT NOT NULL, 
  PRIMARY KEY (`fk_id_modulos`,`fk_id_aplicacion` ),
  FOREIGN KEY (`fk_id_modulos`) REFERENCES `tbl_modulos` (`pk_id_modulos`),
  FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  pk_id_usuario INT AUTO_INCREMENT NOT NULL,
  nombre_usuario VARCHAR(50) NOT NULL,
  apellido_usuario VARCHAR(50) NOT NULL,
  username_usuario VARCHAR(20) NOT NULL,
  password_usuario VARCHAR(100) NOT NULL,
  email_usuario VARCHAR(50) NOT NULL,
  ultima_conexion_usuario DATETIME NULL DEFAULT NULL,
  estado_usuario TINYINT DEFAULT 0 NOT NULL,
  pregunta varchar(50) not null,
  respuesta varchar(50) not null,
  PRIMARY KEY (`pk_id_usuario`)
);

DROP TABLE IF EXISTS `tbl_perfiles`;
CREATE TABLE IF NOT EXISTS `tbl_perfiles` (
	pk_id_perfil INT AUTO_INCREMENT NOT NULL,
    nombre_perfil VARCHAR(50) NOT NULL,
    descripcion_perfil VARCHAR(150) NOT NULL,
    estado_perfil TINYINT DEFAULT 0,
    primary key (pk_id_perfil)
);

DROP TABLE IF EXISTS `tbl_permisosAplicacionesUsuario`;
CREATE TABLE IF NOT EXISTS `tbl_permisosAplicacionesUsuario` (
  fk_id_aplicacion INT NOT NULL, 
  fk_id_usuario INT NOT NULL, 
  guardar_permiso BOOLEAN DEFAULT FALSE,
  modificar_permiso BOOLEAN DEFAULT FALSE,
  eliminar_permiso BOOLEAN DEFAULT FALSE,
  buscar_permiso BOOLEAN DEFAULT FALSE,
  imprimir_permiso BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (`fk_id_aplicacion`,`fk_id_usuario`),
  FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_permisosAplicacionPerfil`;
CREATE TABLE IF NOT EXISTS `tbl_permisosAplicacionPerfil` (
  fk_id_perfil INT NOT NULL, 
  fk_id_aplicacion INT NOT NULL, 
  guardar_permiso BOOLEAN DEFAULT FALSE,
  modificar_permiso BOOLEAN DEFAULT FALSE,
  eliminar_permiso BOOLEAN DEFAULT FALSE,
  buscar_permiso BOOLEAN DEFAULT FALSE,
  imprimir_permiso BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (`fk_id_perfil`,`fk_id_aplicacion`),
  FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_asignacionesPerfilsUsuario`;
CREATE TABLE IF NOT EXISTS `tbl_asignacionesPerfilsUsuario` (
  fk_id_usuario INT NOT NULL, 
  fk_id_perfil INT NOT NULL,
  PRIMARY KEY (`fk_id_usuario`,`fk_id_perfil` ),
  FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS `tbl_bitacoraDeEventos`;
CREATE TABLE IF NOT EXISTS `tbl_bitacoraDeEventos` (
  pk_id_bitacora INT AUTO_INCREMENT NOT NULL,
  fk_id_usuario INT NOT NULL,
  fk_id_aplicacion INT NOT NULL,
  fecha_bitacora DATE NOT NULL,
  hora_bitacora TIME NOT NULL,
  host_bitacora VARCHAR(45) NOT NULL,
  ip_bitacora VARCHAR(100) NOT NULL,
  accion_bitacora VARCHAR(50) NOT NULL,
  PRIMARY KEY (`pk_id_bitacora`),
  FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

/********************CONSULTAS INTELIGENTES********************/
DROP TABLE IF EXISTS tbl_consultainteligente;
CREATE TABLE IF NOT EXISTS tbl_consultainteligente (
	nombre_consulta varchar(50) not null,
    tabla_consulta varchar(50) not null,
    campos_consultas varchar(50) not null,
    alias_consultas varchar(50) not null,
    cadena_consultas varchar(80) not null,
    PkId INT NOT NULL,
    PRIMARY KEY (`PkId`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS tbl_consultainteligente1; 
CREATE TABLE IF NOT EXISTS tbl_consultainteligente1 (
 operador_consulta varchar(50) not null,
    campos_consulta varchar(50) not null,
    valor_consultas varchar(50) not null,
    PkId INT NOT NULL,   
    metodo varchar(50) not null,
    PRIMARY KEY (`PkId`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

DROP TABLE IF EXISTS tbl_consultainteligente2;
CREATE TABLE IF NOT EXISTS tbl_consultainteligente2 (
    PkId INT NOT NULL,
    ordenar_consulta varchar(50) not null,
    campo_consulta varchar(50) not null,    
    metodo varchar(50) not null,
    PRIMARY KEY (`PkId`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `mydb`.`Peliculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peliculas` (
  `idPeliculas` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Clasificación` VARCHAR(45) NULL,
  `Genero` VARCHAR(45) NULL,
  `Subtitulado` VARCHAR(45) NULL,
  `Idioma` VARCHAR(45) NULL,
  `precio` DOUBLE NULL,
  PRIMARY KEY (`idPeliculas`)
  )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Cines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cines` (
  `idCines` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Dirección` VARCHAR(45) NULL,
  PRIMARY KEY (`idCines`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Salas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Salas` (
  `idSalas` INT NOT NULL AUTO_INCREMENT,
  `fkCine` INT NOT NULL,
  `Descripción` VARCHAR(100) NULL,
  `formatoPeli` VARCHAR(45) NULL,
  `puntos` INT NULL,
  `precioSala` DOUBLE NULL,
  PRIMARY KEY (`idSalas`)
  )
ENGINE = InnoDB;
  
ALTER TABLE `Salas`
  ADD CONSTRAINT `fk_cinS` FOREIGN KEY (`fkCine`) 
  REFERENCES `Cines` (`idCines`);
  

-- -----------------------------------------------------
-- Table `mydb`.`horarioCine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `horarioCine` (
  `idhorarioCine` INT NOT NULL AUTO_INCREMENT,
  `fkPelicula` INT NULL,
  `fkSala` INT NOT NULL,
  `fechaHorario` TIMESTAMP NULL,
  PRIMARY KEY (`idhorarioCine`)
)
ENGINE = InnoDB;

ALTER TABLE `horarioCine`
  ADD CONSTRAINT `fkhcinP` FOREIGN KEY (`fkPelicula`) 
  REFERENCES `Peliculas` (`idPeliculas`);
ALTER TABLE `horarioCine`
  ADD CONSTRAINT `fkhcinSa` FOREIGN KEY (`fkSala`) 
  REFERENCES `Salas` (`idSalas`);
-- -----------------------------------------------------
-- Table `mydb`.`Derechos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Derechos` (
  `idDerechos` INT NOT NULL AUTO_INCREMENT,
  `fkPelicula` INT NOT NULL,
  `estadoDerechos` TINYINT NULL,
  PRIMARY KEY (`idDerechos`)
  )
ENGINE = InnoDB;

-- drop table derechos;

ALTER TABLE `Derechos`
  ADD CONSTRAINT `fkpder` FOREIGN KEY (`fkPelicula`) 
  REFERENCES `Peliculas` (`idPeliculas`);
-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Clientes` (
  `idClientes` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Nit` VARCHAR(45) NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Asientos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Asientos` (
  `idAsientos` INT NOT NULL AUTO_INCREMENT,
  `fkSala` INT NOT NULL,
  `Fila` INT NULL,
  `Columna` VARCHAR(45) NULL,
  PRIMARY KEY (`idAsientos`)
  )
ENGINE = InnoDB;

-- drop table Asientos;

ALTER TABLE `Asientos`
  ADD CONSTRAINT `fkasieS` FOREIGN KEY (`fkSala`) 
  REFERENCES `Salas` (`idSalas`);
-- -----------------------------------------------------
-- Table `mydb`.`Factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Factura` (
  `idFactura` INT NOT NULL AUTO_INCREMENT,
  `fkCliente` INT NULL,
  `metodoPago` VARCHAR(45) NULL,
  `subTotal` DOUBLE NULL,
  `impuesto` DOUBLE NULL,
  PRIMARY KEY (`idFactura`)
)
ENGINE = InnoDB;

ALTER TABLE `Factura`
  ADD CONSTRAINT `fkfacCl` FOREIGN KEY (`fkCliente`) 
  REFERENCES `Clientes` (`idClientes`);

-- -----------------------------------------------------
-- Table `mydb`.`Reservaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Reservaciones` (
  `idReservaciones` INT NOT NULL AUTO_INCREMENT,
  `fkAsientos` INT NOT NULL,
  `subTotalAsiento` DOUBLE NULL,
  `fkFactura` INT NULL,
  PRIMARY KEY (`idReservaciones`)
  )
ENGINE = InnoDB;
  
ALTER TABLE `Reservaciones`
  ADD CONSTRAINT `fkresas` FOREIGN KEY (`fkAsientos`) 
  REFERENCES `Asientos` (`idAsientos`);
  
ALTER TABLE `Reservaciones`
  ADD CONSTRAINT `fkresfac` FOREIGN KEY (`fkFactura`) 
  REFERENCES `Factura` (`idFactura`);
  
-- -----------------------------------------------------
-- Table `mydb`.`registroPuntos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registroPuntos` (
  `idregistroPuntos` INT NOT NULL AUTO_INCREMENT,
  `fkCliente` INT NOT NULL,
  `puntosAcum` INT NULL,
  `puntosUsados` INT NULL,
  PRIMARY KEY (`idregistroPuntos`)
  )
ENGINE = InnoDB;
  
--  drop table registroPuntos;
  
ALTER TABLE `registroPuntos`
  ADD CONSTRAINT `fkregCl` FOREIGN KEY (`fkCliente`) 
  REFERENCES `Clientes` (`idClientes`);  


-- SET SQL_MODE=@OLD_SQL_MODE;
-- SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
-- SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;





