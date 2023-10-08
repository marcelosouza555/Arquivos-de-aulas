CREATE DATABASE socioeconomico;

USE socioeconomico;

CREATE TABLE pessoa (
idPessoa int primary key auto_increment,
nome varchar (45),
dtNasc date,
profissao varchar(45));

INSERT INTO pessoa VALUES
	(NULL, 'Ronaldo', '1980-12-05', 'jogador'),
    (NULL, 'Kaka', '1998-05-25', 'jogador'),
    (NULL, 'Guga', '1988-07-23', 'tenista');

SELECT * FROM pessoa;

CREATE TABLE gasto (
idGasto int auto_increment,
fkPessoa int,
constraint fkIndividual foreign key (fkPessoa)
	references pessoa (idPessoa),
primary key (idGasto, fkPessoa),
dtGasto date,
valor float,
descricao varchar(45)) auto_increment= 10;

INSERT INTO gasto VALUES
	(NULL, 1, '2023-10-06', '25542.85', 'vitrineClub'),
    (NULL, 2, '2023-10-03','3450.75', 'espelho'),
    (NULL, 3, '2023-09-28', '1505000.00', 'auston martin');
    
SELECT * FROM gasto;

/* Exiba somente os dados de cada tabela, mas filtrando por algum dado da
tabela (por exemplo, as pessoas de alguma profissão, etc).*/
SELECT pessoa.profissao AS 'Profissão', gasto.valor AS 'Valor'
	FROM pessoa JOIN gasto
	ON idPessoa= fkPessoa WHERE profissao= 'jogador';

-- Exiba os dados das pessoas e dos seus gastos correspondentes.
SELECT * FROM pessoa JOIN gasto
	ON idPessoa= fkPessoa;
    
/*Exiba os dados de uma determinada pessoa e dos seus gastos
correspondentes.*/
 SELECT * FROM pessoa JOIN gasto
	ON idPessoa= fkPessoa WHERE idPessoa= 1;

-- Atualize valores já inseridos na tabela
UPDATE gasto SET valor = 1550500
	WHERE idGasto = '12';

SELECT * FROM gasto;

-- Exclua um ou mais registros de alguma tabela.
DELETE FROM gasto WHERE idGasto= '11';

