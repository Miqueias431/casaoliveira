/*
-- selecionar o banco de dados
use casaoliveira;

-- exibir todos os bancos de dados
show databases;

-- Exibir todas as tabelas de um banco de dados
show tables;

-- exibir a estrutura de uma tabela
describe usuario;

-- vamos exibir os dados presentes na tabela usuario
-- utilizaremos o comando select
select * from usuario; 

-- comando para cadastrar o primeiro usuario
insert into usuario(nomeusuario,senha,foto)values("Rodrigo",sha1("GatoNet#1234"),"usuario.jpg");

-- comando para atualizar os dados da tabla usuario
-- vamos atualizar a senha para um novo valor
-- criptografado usando MD5 ou SHA
-- Vamos fazer um teste
select md5("abc123") from dual;
select sha1("abc123") from dual;

update usuario set senha=sha1("abc123") where idusuario=1;
-- Descrever a tabela contato
describe contato;
insert into contato(telefoneresidencial,telefonecelular,email)
values("11-5692-7842","11-97412-5826","rodrigop321@gmail.com.br");
select * from contato;

-- agora iremos cadastrar o endereco do admin
describe endereco;
insert into endereco(tipologradouro,logradouro,numero,complemento,bairro,cep,cidade,estado)
values("Rua","Piringa","15","Bloco 1","Patriota","08726-30","São Paulo","SP");
select * from endereco;

describe cargo;
insert into cargo(titulocargo,salario,departamento)
values("Vendero",1500.0,"Caixa");
select * from cargo;

describe funcionario;
insert into funcionario(nomefuncionario,cpf,idcargo,expediente,idusuario,idendereco,idcontato)
values("Vendedor","85796278",3,"Segunda a Sabado. 7h as 21h",3,3,3);
select * from funcionario;
*/
use casaoliveira;

-- exibir todos banscos de dados
show databases;

-- exibir todas as tabelas do banco de dados casa oliveira
show tables;

-- exibir a estrutura da tabela ususarios
describe usuario;

-- Inserir o usuário operador
insert into usuario(nomeusuario,senha,foto)
values("operador",sha1('123'),"operardor.jpg");

-- exibir o usuário cadastrado
select * from usuario;

-- alterar a senha do operardor
update usuario set senha=sha1("abc") where idusuario=4;

-- selecionar a tabela de usuario
select * from usuario;

-- para apagar o registro iremos usar o comando DELETE
delete from usuario where idusuario=4;

-- selecionar a tabela de usuario
select * from usuario;

-- apagar todos o usuarios da tabela
delete from usuario;

-- inserir um novo usuario
insert into usuario(idusuario,nomeusuario,senha,foto)
values(100,"tadeu",sha1("tadeu"),"tadeu.jpg");

insert into usuario(nomeusuario,senha,foto)
values("thais",sha1("thais"),"thais.jpg");

-- exibir o usuário cadastrado
select * from usuario;

-- descrever a tabela cargo
describe cargo;

-- inserir novo cargo
insert into cargo(titulocargo,salario,departamento)
values("Operardora de Caixa",2350.60,"Operacional");

-- exibir o cargo cadastrado
select * from cargo;

-- descrevendo o contato
describe contato;
insert into contato(telefoneresidencial,telefonecelular,email)
values("11-5606300","11-95845-7851","thais@gmail.com.br");
select * from contato;

-- describe endereco
describe endereco;
insert into endereco(tipologradouro,logradouro,numero,complemento,bairro,cep,cidade,estado)
values("Rua","Marechal Trindade","12","Casa do Fundo","Jardim Alegre","03428-010","Leme","São Paulo");
select * from endereco;

-- exibir a estrutura da tabela funcionario
describe funcionario;
insert into funcionario(nomefuncionario,cpf,idcargo,expediente,idusuario,idendereco,idcontato)
values("Thais Marcondo","5428464584","4","Segunda-Sexta:8h-18h",101,4,4);
select * from funcionario;

-- vamos inserir o contato do fornecedor PepsiCO
insert into contato(telefonecomercial,telefonecelular,email)
values("11-6658-5532","11-96581-8845","contato@pepisico.com.br");
select * from contato;

describe endereco;
insert into endereco(tipologradouro,logradouro,numero,complemento,bairro,cep,cidade,estado)
values("Avenida","Martha Gomes","1024","Quarteirão 2","Vila Joana","03425-012","Itapira","São Paulo");
select * from endereco;

insert into fornecedor(razaosocial,nomefantasia,cnpj,idcontato,idendereco)
values("Industria Alimenticia","PepsiCO","40028922",4,4);
select * from fornecedor;

describe produto;

insert into produto(nomeproduto,categoria,descricao,idfornecedor,preco)
values("Refrigerante","Bebidas","Refrigerante tipo cola em lata 300ml",1,3.50),
		("Salgadinho","Cereais","Salgadinho de churrasco Torcida",1,6);
select * from produto;

insert into contato(telefoneresidencial,telefonecelular,email)
values("11-8596-7745","11-96584-5320","wagner@gmail.com");
select * from contato;