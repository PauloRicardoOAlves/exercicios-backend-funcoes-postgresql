select count(estoque) from farmacia;

select min(idade) from usuarios;

select max(idade) from usuarios;

select avg(idade) as media from usuarios where idade >=18;

select count(id) from farmacia where categoria = 'blue' or categoria = 'black';

select categoria, sum(estoque) as "total em estoque" from farmacia group by categoria;

select sum(estoque) from farmacia where categoria is null;

select count(estoque) from farmacia where categoria is null;

select concat(medicamento, ' ', '(', categoria, ')') from farmacia;

select concat(id, ' - ', medicamento, ' (', coalesce(categoria, 'sem categoria'), ')') from farmacia;

select nome, idade, cadastro::date from usuarios where extract(year from cadastro::date) = ('2020');

select nome, idade, email, age(cadastro::timestamp) from usuarios;

select nome, idade, email, age(cadastro::date) from usuarios where idade >= 60;

select categoria, sum(estoque) from farmacia group by categoria;
