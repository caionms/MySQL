select distinct EMBALAGEM, TAMANHO from tabela_de_produtos;

select distinct EMBALAGEM, TAMANHO, SABOR from tabela_de_produtos where SABOR = 'Laranja';

select distinct EMBALAGEM, TAMANHO, SABOR from tabela_de_produtos;

select * from tabela_de_clientes limit 5;

select * from tabela_de_clientes limit 2,3;

select NOME_DO_PRODUTO, CODIGO_DO_PRODUTO from tabela_de_produtos limit 5;

select * from notas_fiscais where DATA_VENDA = '2017-01-01' limit 10 ;

select * from tabela_de_produtos order by PRECO_DE_LISTA desc;

select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO;

select * from tabela_de_produtos order by EMBALAGEM desc, NOME_DO_PRODUTO asc;

select CODIGO_DO_PRODUTO from tabela_de_produtos where NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';

select QUANTIDADE from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' order by QUANTIDADE desc;