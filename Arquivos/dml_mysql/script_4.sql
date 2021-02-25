select * from VENDEDORES;	

select * from PRODUTOS;

delete from PRODUTOS;

update PRODUTOS set PRECO_LISTA = 5 where CODIGO = 1000889;

select * from PRODUTOS where SABOR = 'Maracujá';

update PRODUTOS set PRECO_LISTA = PRECO_LISTA * 1.10 where SABOR = 'Maracujá';

select * from CLIENTES where CPF = '19290992743';

update CLIENTES set ENDERECO = 'R. Jorge Emílio 23', BAIRRO = 'Santo Amaro',  CIDADE = 'São Paulo', ESTADO = 'SP', CEP = '8833223' where CPF = '19290992743';