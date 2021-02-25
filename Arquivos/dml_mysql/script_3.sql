use vendas_sucos;

select * from sucos_vendas.tabela_de_produtos;

select CODIGO_DO_PRODUTO as CODIGO, NOME_DO_PRODUTO as DESCRITOR, EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA as PRECO_LISTA
from sucos_vendas.tabela_de_produtos
where CODIGO_DO_PRODUTO not in (select CODIGO from PRODUTOS);

insert into PRODUTOS (CODIGO, DESCRITOR, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
select CODIGO_DO_PRODUTO as CODIGO, NOME_DO_PRODUTO as DESCRITO, EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA as PRECO_LISTA
from sucos_vendas.tabela_de_produtos
where CODIGO_DO_PRODUTO not in (select CODIGO from PRODUTOS);

select * from sucos_vendas.tabela_de_clientes;

insert into CLIENTES
select CPF, NOME, ENDERECO_1 as ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO as DATA_NASCIMENTO, IDADE, SEXO, LIMITE_DE_CREDITO as LIMITE_CREDITO, VOLUME_DE_COMPRA as VOLUME_COMPRA, PRIMEIRA_COMPRA
from sucos_vendas.tabela_de_clientes
where CPF not in (select CPF from CLIENTES);