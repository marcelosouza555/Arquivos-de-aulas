USE sprint2;

CREATE TABLE professor(
IdProfessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar (30),
especialidade1 varchar (40),
especialidade2 varchar (40))auto_increment = 100;

INSERT INTO professor VALUES
	(null, 'Marise', 'Machine', 'IOT', 'Clone'),
    (null, 'Ronaldo', 'Fenomeno', 'Futebol', 'Esports'),
    (null, 'Dick', 'Vigarista', 'Corrida', 'Maluca'),
    (null, 'Finn', 'Jake', 'Hora', 'Aventura'),
    (null, 'Bob', 'Esponja', 'Cozinha', 'Maluquice'),
    (null, 'Ronaldinho', 'Gaucho', 'Futebol', 'Dibri');
    
CREATE TABLE disciplina (
IdDisc int primary key auto_increment,
nomeDisc varchar(45),
FkProfessor int,
constraint FkProf foreign key (FkProfessor)
	references professor (IdProfessor));

INSERT INTO disciplina VALUES
	(null, 'Robos', '100'),
    (null, 'Como ser Brabo', '101'),
    (null, 'Veloz', '102');

select * from disciplina join professor
	on FkProfessor = IdProfessor;

select nomeDisc, nome from disciplina join professor
	on FkProfessor= IdProfessor;

select * from disciplina join professor
	on FkProfessor= IdProfessor 
    Where sobrenome = 'Vigarista';

select especialidade1 from 


select * from professor;
select * from disciplina;

drop table disciplina;
drop table professor;

    

