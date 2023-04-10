-- populando a tabela comorbidade
insert DimComorbidade(ComorbidadePulmao,
					  ComorbidadeCardio,
					  ComorbidadeRenal,
					  ComorbidadeDiabetes,
					  ComorbidadeTabagismo,
					  ComorbidadeObesidade)
select 
    ComorbidadePulmao,
	ComorbidadeCardio,
	ComorbidadeRenal,
	ComorbidadeDiabetes,
	ComorbidadeTabagismo,
	ComorbidadeObesidade
from tabela_covid
group by ComorbidadePulmao,
	ComorbidadeCardio,
	ComorbidadeRenal,
	ComorbidadeDiabetes,
	ComorbidadeTabagismo,
	ComorbidadeObesidade;
    
-- populando a tabela sexo
insert dimsexo(Sexo)
select sexo
from tabela_covid
group by sexo;

-- populando a tabela dimLocal
insert dimlocal(Municipio, Bairro)
select municipio, bairro
from tabela_covid
group by municipio, bairro;

-- populando a tabela dimetnia
insert dimetnia(racacor)
select racacor
from tabela_covid
group by racacor;

-- populando a tabela fatmortes
insert fatmortes
select a.idcomorbidade, b.idsexo, c.idlocal, d.idetnia
from dimcomorbidade as a
inner join dimsexo as b
inner join dimlocal as c
inner join dimetnia as d;
