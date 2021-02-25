select X.EMBALAGEM, X.MAIOR_PRECO from vw_maximo_embalagens X where X.MAIOR_PREC >= 10;

select concat(NOME, '(', CPF, ')') as RESULTADO from tabela_de_clientes;
SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM tabela_de_clientes;

select NOME, concat(ENDERECO_1, ',', ENDERECO_2 , BAIRRO, ',' , CIDADE, ',' ,ESTADO) as ENDERECO from tabela_de_clientes;