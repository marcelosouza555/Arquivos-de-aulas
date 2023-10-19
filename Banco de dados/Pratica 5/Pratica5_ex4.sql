-- AULA 10
CREATE DATABASE Natacao;

USE natacao;

CREATE TABLE treinador (
idTreinador int primary key auto_increment,
nome varchar(45),
dtNasc date,
fkExperiente int,
constraint fkExperiente foreign key (fkExperiente)
	references treinador (idTreinador)) auto_increment= 10;

INSERT INTO treinador VALUES
	(NULL, 'Kaline', '1956-10-10', null),
    (NULL, 'Marcela', '2000-10-10', 10),
    (NULL, 'Thiago Gomes', '2000-10-11', 10),
    (NULL, 'Rayssa', '2000-10-12', 10),
    (NULL, 'Vera', '2020-10-13', null);
    
    SELECT * FROM treinador;
        
    
    CREATE TABLE nadador (
    idNatador int primary key auto_increment,
    nome varchar (045),
    cep char(8),
    num varchar(45),
    complemento varchar (45),
    fkTreinador int,
    constraint fkNadadorTreinador foreign key (fkTreinador)
		references treinador(idTreinador)) auto_increment= 100;
	
    INSERT INTO nadador (nome, fkTreinador) VALUES
		('Roberta', 11),
        ('Leonardo', 11),
        ('Murilo', null);
        
SELECT n.nome as NomeNadador,
t.nome as NomeTreinador,
e.nome as NomeExperiente
FROM treinador as t
JOIN treinador as e
ON t.fkExperiente = e.idTreinador
JOIN nadador as n
ON n.fkTreinador = t.idTreinador;

SELECT * FROM nadador left JOIN treinador
	ON idTreinador = fkTreinador;

alter table nadador rename column idNatador to idNadador;

CREATE TABLE convidado (
idConvidado int,
fkNadador int,
primary key (idConvidado, fkNadador),
nome varchar (45),
foreign key (fkNadador) references nadador(idNadador));

ALTER TABLE convidado MODIFY COLUMN idConvidado int auto_increment;

INSERT INTO convidado VALUES
	(NULL, 100, 'Roberto'),
    (NULL, 100, 'Robert'),
    (NULL, 101, 'Leonarda'),
    (NULL, 102, 'Murila');

/*l) Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados
dos respectivos treinadores orientadores.*/
SELECT * FROM treinador as tExp
JOIN treinador as tNov
ON tExp.fkExperiente = tNov.idTreinador
JOIN nadador as n
ON n.fkTreinador= tExp.idTreinador;

SELECT * FROM nadador;