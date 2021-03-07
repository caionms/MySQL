select * from tabela_de_produtos;

call cursor_looping;

call cursor_looping_minha_solucao;

call Limite_Creditos;

call cursor_looping_campos;

select B.NUMERO as Numero, sum(A.QUANTIDADE * A.PRECO) as Faturamento, B.DATA_VENDA as Data_Venda from itens_notas_fiscais A
inner join notas_fiscais B on A.NUMERO = B.NUMERO
group by A.NUMERO; -- faturamento por nota fiscal, chave numero

select sum(A.QUANTIDADE * A.PRECO) as Faturamento, B.DATA_VENDA as Data_Venda from itens_notas_fiscais A
inner join notas_fiscais B on A.NUMERO = B.NUMERO
where month(Data_Venda) = 1 and year (Data_Venda) = 2017
group by Data_Venda;

call faturamento_mes_ano(1, 2017);

call faturamento_mes_ano_prof;
