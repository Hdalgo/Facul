drop database Exercicioaula6;
create schema if not exists `Exercicioaula6` Default character set utf8;
Use  `Exercicioaula6`;

Create Table if not exists `Exercicioaula6`. `Estudantes` (
`nome` varchar (255),
`email` varchar (255),
`telefone` varchar (255),
`altura` decimal (3,2),
`aprovado` tinyint(1)
)
Engine = InnoDB;

insert into Estudantes (nome,email,telefone,altura,aprovado)
	values ('João paulo','jpapim@gmail.com','3345-0909',1.68,1);
    insert into Estudantes (nome,email,telefone,altura,aprovado)
	values ('José paulo','jose@gmail.com','3345-5555',1.88,0);
    insert into Estudantes (nome,email,telefone,altura,aprovado)
	values ('Maria','maria@gmail.com','3345-8888',1.98,1);
    insert into Estudantes (nome,email,telefone,altura,aprovado)
	values ('Joana','joana@gmail.com','3345-0909',1.48,0);
    insert into Estudantes (nome,email,telefone,altura,aprovado)
	values ('Josefina','Josefina@gmail.com','3345-8765',1.58,0);
    Select * From Estudantes;
    

    
	
