select * from tabela_de_vendedores inner join tabela_de_clientes 
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

select X.CPF, X.TOTAL from (SELECT CPF, COUNT(*) AS TOTAL FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF) X
  WHERE X.TOTAL > 2000;
  
