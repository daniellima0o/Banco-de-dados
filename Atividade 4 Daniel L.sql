use modeloclassico;
use sakila_pt;
select * from pedidos;

-- 1
select * from pagamentos
where montante_pago = (select max(montante_pago) from pagamentos);

-- 2
select * from pagamentos
where montante_pago >(select avg(montante_pago) from pagamentos);

-- 3
select funcionarios.primeiro_nome, escritorios.pais
from funcionarios
inner join escritorios
on escritorios.escritorios_id = funcionarios.escritorio_id
where escritorios.pais = 'USA';

-- 4

SELECT clientes.cliente_id, pedidos.cliente_id
FROM clientes
INNER JOIN pedidos
ON clientes.cliente_id = pedidos.cliente_id
WHERE NOT EXISTS (cliente_id);

-- 5

SELECT titulo, preco_da_locacao
from filme
WHERE preco_da_locacao >(SELECT AVG(preco_da_locacao) FROM filme);

-- 6 
select titulo, duracao_da_locacao
from filme
where duracao_da_locacao = (select max(duracao_da_locacao) from filme);

-- 7
select titulo, custo_da_substituicao
from filme
where custo_de_substituicao = (select min(custo_de_substituicao) from filme);
