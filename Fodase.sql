CREATE SCHEMA IF NOT EXISTS `LojaProjecao` DEFAULT CHARACTER SET utf8;
USE `LojaProjecao`;
CREATE TABLE `clientes`(
	`idCliente` INT NOT NULL AUTO_INCREMENT,
	`nomeCliente` VARCHAR(50) NOT NULL,
    `sexoCliente` CHAR(1) NOT NULL,
    `status` CHAR(1) NOT NULL,
    
    CONSTRAINT `PK_Cliente` PRIMARY KEY (`idCliente`),
    CONSTRAINT `CH_Cliente` CHECK (`sexoCliente` IN ('F', 'M'))
)ENGINE = InnoDB;
CREATE TABLE `documentos`(
	`idDocumento` INT NOT NULL AUTO_INCREMENT,
	`idCliente` INT NOT NULL,
    `tipoDocumento` VARCHAR(25) NOT NULL,
    `numeroDocumento` VARCHAR(15),
    
    CONSTRAINT `PK_Documento` PRIMARY KEY (`idDocumento`),
    CONSTRAINT `FK_idCliente` FOREIGN KEY (`idCliente`)
						REFERENCES clientes (`idCliente`)
)ENGINE = InnoDB;

INSERT INTO clientes VALUES (NULL, 'João da Silva', 'M', 'A');
INSERT INTO clientes VALUES (NULL, 'Maria da Silva', 'F', 'A');
INSERT INTO clientes VALUES (NULL, 'Jose da Silva', 'M', 'I');

SELECT * FROM clientes;

INSERT INTO documentos VALUES (NULL,1 ,'RG', '1.345.678');
INSERT INTO documentos VALUES (NULL,2 ,'CPF', '345.345.678-00');
INSERT INTO documentos VALUES (NULL,3 ,'RG', '2.345.678-X');

SELECT * FROM documentos;
select `clientes`.*from `documentos`
Inner Join `clientes` on `documentos`.`idCliente`=`idDocumento`
Order by `clientes`.`idCliente` ASC;

SELECT clientes.* FROM clientes WHERE sexoCliente = 'M';
SELECT clientes.* FROM clientes WHERE status = 'A';
SELECT clientes.*,tipoDocumento FROM  clientes, documentos WHERE clientes.idCLiente = documentos.idCliente AND documentos.tipoDocumento= 'CPF';
