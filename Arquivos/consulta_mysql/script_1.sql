use sucos_vendas;

select * from tabela_de_produtos;

select * from tabela_de_produtos where EMBALAGEM = 'Garrafa' or TAMANHO = '470 ml';

select * from tabela_de_produtos where EMBALAGEM = 'Garrafa' and TAMANHO = '470 ml';

select * from tabela_de_produtos where not(EMBALAGEM = 'Garrafa' or TAMANHO = '470 ml');

select * from tabela_de_produtos where EMBALAGEM = 'Garrafa' and not (TAMANHO = '470 ml');

select * from tabela_de_produtos where SABOR in ('Laranja', 'Manga');

select * from tabela_de_produtos where not(EMBALAGEM = 'Garrafa');

select * from tabela_de_clientes where NOME like '%Mattos';