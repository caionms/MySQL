select * from tabela_de_vendedores;
select f_cliente_aleatorio();
select f_produto_aleatorio();
select f_vendedor_aleatorio();

select MAX(NUMERO) from notas_fiscais;
select * from notas_fiscais where NUMERO = f_ultima_nota();
select * from itens_notas_fiscais where NUMERO = f_ultima_nota();
call sp_inserir_venda('2021-03-07', 3, 100);
select * from notas_fiscais where NUMERO = f_ultima_nota();
select * from itens_notas_fiscais where NUMERO = f_ultima_nota();

select * from tab_faturamento where DATA_VENDA = '2021-03-07';