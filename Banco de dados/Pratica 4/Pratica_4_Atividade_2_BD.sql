use sprint2;

create table aluno (
idAluno int primary key auto_increment,
nomeAluno varchar (45),
bairro varchar (45)) auto_increment=10;

insert into aluno values
	(null, 'kaka', 'alfa'),
    (null, 'CR7', 'beta'),
    (null, 'messi', 'delta'),
    (null, 'lewis', 'omega');
    
create table curso (
idCurso int primary key auto_increment,
nome varchar (50),
sigla char (3),
coordenador varchar (45),
fkAluno int,
constraint fkAlu foreign key (fkAluno)
references aluno (idAluno)) auto_increment=20;

insert into curso values
	(null, 'Controle de bola', 'FUT', 'Ronaldo', '10'),
    (null, 'Magia com o Dribri', 'MCD', 'Ronaldinho', '10'),
    (null, 'Exterminador', 'EXT', 'Robocop', '13');
    
select * from curso join aluno
	on fkAluno= idAluno;
    
select nomeAluno from curso join aluno
	on fkAluno= idAluno
    where sigla =  'FUT';
    
update aluno set bairro= 'alfa'
	where idAluno = '12';
update aluno set bairro= 'beta'
	where idAluno= '13';
    
alter table aluno add constraint chkBairro 
	check (bairro in ('alfa', 'beta'));


    

