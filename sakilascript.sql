-- exibir todas as tabelas do banco de dados sekila
show tables;

-- var a estrutura da tabela actor
describe actor;
describe actor_info;

-- selecionar todos os dados da tabela actor
select * from actor;
select * from actor_info;
select * from actor_info where first_name="Nick";

select * from film;
select count(title) from film;

-- ordenar os filmes em ordem decrescente
select * from film order by film_id desc;
select * from film;
select * from film_category;

-- selecionar as tabelas filme e categoria
select film.*,category.* from film,category, film_category;

-- consulta com INNER JOIN
select film.*,category.* from film inner join film_category
on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id;

-- ordenando os dados dos filmes e categorias
select film.*,category.* from film inner join film_category
on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
order by film.film_id;

select * from category;
describe address;

select address.*,customer.* from customer
inner join address on customer.address_id = address.address_id;
/*
customer:
	- first-name
    - last name
    - email
    - active
address:
	- address
    - district
    - phone
city:
	- city
*/

select c.first_name,c.last_name,c.email,c.active,
a.address,a.district,a.phone,ci.city from
customer c inner join address a
on c.address_id = a.address_id
inner join city ci on a.city_id = ci.city_id;

-- vamos juntar (concatenar) os campos first_name e last_name
select concat(c.first_name," ",c.last_name),c.email,c.active,
a.address,a.district,a.phone,ci.city from
customer c inner join address a
on c.address_id = a.address_id
inner join city ci on a.city_id = ci.city_id;

select a.address,a.district,a.phone,
s.first_name,s.last_name,s.email
from address a inner join staff s 
on a.address_id = s.address_id;



