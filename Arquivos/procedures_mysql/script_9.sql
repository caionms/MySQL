select CODIGO_DO_PRODUTO, SABOR from tabela_de_produtos;

call acha_tipo_sabor_erro('1004327');

select CODIGO_DO_PRODUTO, PRECO_DE_LISTA from tabela_de_produtos;

call acha_status_preco_case('1004327');

select * from tabela_de_produtos;