select * from tabela_de_clientes;

call cliente_novo_velho('1471156710');

call cliente_novo_velho('19290992743');

select DATA_VENDA, count(*) from notas_fiscais group by DATA_VENDA;

call Testa_Numero_Notas('2015-01-02');
