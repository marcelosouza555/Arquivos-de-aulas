CREATE DATABASE petshop;

USE petshop;

CREATE TABLE cliente (
idCliente int primary key auto_increment,
nome varchar (45),
sobrenome varchar (45),
fixo char (10),
celular char (11),
cep char (8));

INSERT INTO cliente VALUES
	(null, 'Duke', 'Nukem', '1156565656', '11988887777', '04444444'),
    (null , 'Scott', 'Summers', '1156555555', '11966665555', '03333333'),
    (null, 'Alex', 'Summers', '1155575658', '11944443333', '02222222');
    
SELECT * FROM cliente;

CREATE TABLE pet (
idPet int auto_increment,
fkCliente int,
constraint fkCli foreign key (fkCliente)
	references cliente (idCliente),
primary key (idPet, fkCliente),
nome varchar (45),
tipo varchar (45),
dtNasc date,
raca varchar (45)) auto_increment 101;

INSERT INTO pet VALUES
	(null, '1', 'tyson', 'cachorro', '2022-10-04', 'pitbull'),
    (null , '2', 'myke', 'cachorro', '2022-07-02', 'doberman'),
    (null, '3', 'meg', 'gato', '2020-03-05', 'persia');
    
SELECT * FROM pet;

ALTER TABLE cliente MODIFY COLUMN nome varchar (50);

SELECT * FROM pet WHERE tipo = 'cachorro';

SELECT nome, dtNasc FROM pet;

SELECT * FROM pet ORDER BY nome;

SELECT * FROM cliente ORDER BY cep DESC;

SELECT * FROM pet
	WHERE nome LIKE 'm%';
    
SELECT * FROM cliente
	WHERE sobrenome LIKE 'Summers';
    
UPDATE cliente SET fixo= '1159595858'
	WHERE idCliente = 1;

SELECT * FROM cliente;

SELECT * FROM pet JOIN cliente 
	ON fkCliente = idCliente;
    
DELETE FROM pet WHERE idPet = 103;

SELECT * FROM pet;

DROP TABLE pet, cliente;



