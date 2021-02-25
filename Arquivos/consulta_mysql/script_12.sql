select concat('O dia de hoje é : ',
DATE_FORMAT(CURRENT_TIMESTAMP(), '%Y')) as RESULTADO;

select concat('O dia de hoje é : ',
DATE_FORMAT(CURRENT_TIMESTAMP(), '%m/%y')) as RESULTADO;

select concat('O cliente ', TC.NOME, ' faturou ', round(sum(INF.QUANTIDADE * INF.PRECO),2) , ' no ano de ', year(DATA_VENDA)) as RESULTADO
from tabela_de_clientes TC inner join notas_fiscais NF on TC.CPF = NF.CPF
inner join itens_notas_fiscais INF on NF.NUMERO = INF.NUMERO 
where year(NF.DATA_VENDA) = 2016 group by TC.NOME, year(DATA_VENDA);



SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CAST(SUM(INF.QUANTIDADE * INF.preco) AS char (20))
 , ' no ano ', CAST(YEAR(NF.DATA_VENDA) AS char (20))) AS SENTENCA FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.NOME, YEAR(DATA_VENDA)