create table usuario(
idusuario int auto_increment primary key,
login varchar(20) not null unique,
senha varchar(200) not null,
email varchar(100) not null unique,
nome varchar(50)
);

insert into usuario(idusuario,login,senha,email,nome)
values(1000,"admin","123","admin@localhost.com","Adiministrador");
select * from usuario;