select year(A.DATA_VENDA) as ANO, floor(sum(A.IMPOSTO * (QUANTIDADE * PRECO))) as IMPOSTO_TOTAL from notas_fiscais A inner join itens_notas_fiscais B on A.NUMERO = B.NUMERO where year(A.DATA_VENDA) = 2016 group by ANO; 

SELECT YEAR(DATA_VENDA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) 
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA)