CREATE DATABASE sprint2;
USE sprint2;

CREATE TABLE atleta (
idAtleta int primary key auto_increment,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int);

INSERT INTO atleta VALUES
	(null, 'Alexandre', 'handbol', '3'),
    (null, 'Alex', 'handbol', '5'),
    (null, 'Neymar', 'futebol', '10'),
    (null, 'Ronaldo', 'futebol', '50'),
    (null, 'Kaka', 'futebol', '30');

CREATE TABLE pais (
idPais int primary key auto_increment,
nome varchar (30),
capital varchar (40)) auto_increment= 10;

INSERT INTO pais VALUES
	(null, 'Brasil', 'brasilia'),
    (null, 'Mexico', 'taco'),
    (null, 'Espanha', 'barcelona'),
    (null, 'Inglaterra', 'Londres');

ALTER TABLE atleta ADD column fkPais int;

ALTER TABLE atleta ADD constraint fkPais
	foreign key (fkPais) references pais(idPais);

UPDATE atleta SET fkPais = 10
	WHERE idAtleta IN ('3','4','5');

UPDATE atleta SET fkPais= 11
	WHERE idAtleta IN ('1');

UPDATE atleta SET fkPais= 13
	WHERE idAtleta ='2';

SELECT * FROM pais JOIN atleta
	ON fkPais = idPais;

SELECT atleta.nome,
	pais.nome
    FROM pais JOIN atleta
	ON idPais= fkPais;

SELECT * FROM atleta JOIN pais ON capital = 'brasilia';


    
