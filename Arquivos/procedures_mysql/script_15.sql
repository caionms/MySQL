select f_acha_tipo_sabor ('Laranja');

select NOME_DO_PRODUTO, SABOR from tabela_de_produtos where f_acha_tipo_sabor (SABOR) = 'Neutro';

select DATA_VENDA as `Data da venda`, f_numero_notas(DATA_VENDA) as `Quantidade de notas` 
from notas_fiscais where year(DATA_VENDA) = 2015 group by DATA_VENDA;

select * from notas_fiscais;

select f_numero_notas('2015-01-01');

