select ESTADO, avg(LIMITE_DE_CREDITO) as `MEDIA DE LIMITE` from tabela_de_clientes group by ESTADO order by `MEDIA DE LIMITE` asc;

select EMBALAGEM, count(*) as CONTADOR from tabela_de_produtos group by EMBALAGEM;

select ESTADO, BAIRRO, avg(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes where CIDADE = 'Rio de Janeiro' group by ESTADO, BAIRRO;

select sum(LIMITE_DE_CREDITO) as `SOMA TOTAL` from tabela_de_clientes;

select max(QUANTIDADE) as `Maior quantidade` from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035';

select count(*) from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' and QUANTIDADE = 99;