describe deputado;

/*
nome_civil,sexo,escolaridade,sigla_partido,estado_abrev
*/
select id_deputado,nome_civil,sexo,escolaridade,
sigla_partido,estado_abrev from deputado
where estado_abrev="SP";

-- deputados do sexo feminino
select id_deputado,nome_civil,sexo,escolaridade,
sigla_partido,estado_abrev from deputado
where estado_abrev="SP" and sexo="F";

-- agora foto
select id_deputado,nome_civil,sexo,escolaridade,
sigla_partido,estado_abrev,url_foto from deputado
where estado_abrev="SP" and sexo="F";

select id_deputado,nome_civil,sexo,escolaridade,
sigla_partido,estado_abrev,url_foto from deputado
where estado_abrev="SP" and sexo="M";

select id_deputado,nome_civil,sexo,escolaridade,
sigla_partido,estado_abrev,url_foto from deputado
where estado_abrev="SP" and sexo="M" and escolaridade <> "Superior";

select id_deputado,nome_civil,sexo,escolaridade,
sigla_partido,estado_abrev,url_foto from deputado
where estado_abrev="SP" and sexo="F" and escolaridade <> "Superior";

-- numero de deputados com superior completo

select count(id_deputado) as "Deputadas com superior completo",
(count(id_deputado) / 33 * 100) as "Percentual" from deputado
where estado_abrev="SP" and sexo="F" and escolaridade = "Superior";

-- deputados do sexo feminino que estão sem partido na região sudeste
-- SP, RJ, MG, ES
select id_deputado,nome_civil,sexo,escolaridade,
sigla_partido,estado_abrev,url_foto from deputado
where (estado_abrev="SP" or estado_abrev="RJ" or estado_abrev="MG" or estado_abrev="ES") 
and sexo="F" and sigla_partido is null;


