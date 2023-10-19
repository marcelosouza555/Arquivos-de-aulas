use sprint2;

create table pessoa (
idPessoa int primary key auto_increment,
nome varchar (45),
cpf char(11),
fkPessoa int,
constraint fkGente foreign key (fkPessoa)
references pessoa (idPessoa));

insert into pessoa values
	(null, 'Marla', '99999999999', null),
    (null, 'Fabiola', '88888888888', null);
    
select * from pessoa;

update pessoa set fkPessoa = 1 where idPessoa= 2;

select * from pessoa as filho join pessoa as mae
on filho.fkPessoa =mae.idPessoa;

