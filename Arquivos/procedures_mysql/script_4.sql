select * from tabela_de_vendedores;

call Reajuste_Comissao(0.90);

call inclui_novo_produto_parametro('4000136','Sabor da Montanha 500 ml - Tomate','Tomate','500 ml','Garrafa', 9.30);

select * from tabela_de_produtos;

select * from vendas_sucos.PRODUTOS;