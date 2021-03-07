SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) AS TOTAL_VENDA FROM 
notas_fiscais A INNER JOIN itens_notas_fiscais B
ON A.NUMERO = B.NUMERO
group by DATA_VENDA;

call Comparativo_Vendas('2015-04-09','2017-09-26');

call Comparativo_Vendas_Case_Cond('2015-04-09','2017-09-26');