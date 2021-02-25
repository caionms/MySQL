select ESTADO, sum(LIMITE_DE_CREDITO) as SOMA_LIMITE from tabela_de_clientes group by ESTADO having SUM(LIMITE_DE_CREDITO) > 900000;

select EMBALAGEM, max(PRECO_DE_LISTA) as MAIOR_PRECO, MIN(PRECO_DE_LISTA) as MENOR_PRECO from tabela_de_produtos group by EMBALAGEM having SUM(PRECO_DE_LISTA) <= 80;

select VOLUME_DE_COMPRA, NOME from tabela_de_clientes order by VOLUME_DE_COMPRA desc;

select CPF, count(*) from notas_fiscais where year(DATA_VENDA) = 2016 group by CPF having count(*) > 2000;