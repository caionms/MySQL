select TBSABOR.TAMANHO, TBSABOR.ANO, TBSABOR.QUANTIDADE_SABOR, round((TBSABOR.QUANTIDADE_SABOR/TBANO.QUANTIDADE_ANO)*100,2) as PARTICIPACAO from 
(select TAMANHO, year(DATA_VENDA) as ANO, sum(QUANTIDADE) as QUANTIDADE_SABOR from tabela_de_produtos TB 
inner join itens_notas_fiscais INF on TB.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on INF.NUMERO = NF.NUMERO
where year(DATA_VENDA) = 2016
group by TAMANHO, year(DATA_VENDA)) TBSABOR
inner join 
(select year(DATA_VENDA) as ANO, sum(QUANTIDADE) as QUANTIDADE_ANO from tabela_de_produtos TB 
inner join itens_notas_fiscais INF on TB.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on INF.NUMERO = NF.NUMERO
where year(DATA_VENDA) = 2016
group by year(DATA_VENDA)) TBANO
on TBSABOR.ANO = TBANO.ANO
order by TBSABOR.QUANTIDADE_SABOR desc;