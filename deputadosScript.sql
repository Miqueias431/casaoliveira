create database basedosdados;
use basedosdados;

create table deputados(
id_deputado numeric,
cpf numeric,
nome_civil varchar(70),
nome_civil_upper varchar(70),
sexo varchar(15),
municipio_nacimento varchar(50),
estado_abrev_nascimento varchar(50),
data_nascimento date,
escolaridade varchar(50),
escolaridade_nova varchar(50),
ultimo_status_nome varchar(50),
ultimo_status_nome_eleitoral varchar(50),
sigla_partido_original varchar(50),
sigla_partido varchar(50),
estado_abrev varchar(50),
ultimo_status_data datetime,
ultima_legislatura numeric,
ultimo_status_condicao_eleitoral varchar(50),
ultimo_status_situacao varchar(50),
gabinete_predio varchar(50),
gabinete_andar varchar(50),
gabinete_sala varchar(50),
gabinete_telefone varchar(50),
email varchar(250),
gabinete_nome numeric,
url_partido varchar(50),
url_foto varchar(50),
capture_date datetime,
api_url varchar(200)
)
