create database sprint2;
use sprint2;

create table cliente(
idCliente int primary key auto_increment,
nome varchar(45) ,
telefone char(11),
email varchar (100),
fkConta int
);

insert into cliente values 
(null,'Gustavo','14998888119','gustavoo@gmail.com','200'),
(null,'Leticia','11997738546','leticia@sptech.school','201'),
(null,'Igor','11988359264','igor@gmail.com','202'),
(null,'Nayara','11988332723','nayara@gmail.com','203'),
(null,'Gabriel','15993565214','gabriel@gmail.com','204');

create table conta(
 idConta int primary key auto_increment ,
 saldo varchar (40),
  divida varchar (40),
 dtVencimento date
)auto_increment=200;

insert into conta values 
(null,'520','20','2023-10-01'),
(null,'10000','200','2023-10-29'),
(null,'3601','2500','2023-11-01'),
(null,'10','0','2023-10-02'),
(null,'63','53','2023-12-06');

  select*from cliente;

 select*from conta;
 SELECT * FROM cliente JOIN conta
    ON idConta = fkConta;
 