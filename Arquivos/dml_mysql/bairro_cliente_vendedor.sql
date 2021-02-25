select * from VENDEDORES A inner join sucos_vendas.tabela_de_vendedores B
on A.MATRICULA = substring(B.MATRICULA,3,3);

update VENDEDORES A inner join sucos_vendas.tabela_de_vendedores B on A.MATRICULA = substring(B.MATRICULA,3,3)
set A.FERIAS = B.DE_FERIAS;

select count(*) from CLIENTES C inner join VENDEDORES V on C.BAIRRO = V.BAIRRO
group by C.BAIRRO; 

select distinct BAIRRO from CLIENTES;

select distinct BAIRRO from VENDEDORES;

select distinct C.BAIRRO, count(*) from CLIENTES C inner join VENDEDORES V
on C.BAIRRO = V.BAIRRO
group by C.BAIRRO;

select C.CPF, C.VOLUME_COMPRA, C.BAIRRO from CLIENTES C inner join VENDEDORES V
on C.BAIRRO = V.BAIRRO;

update CLIENTES C inner join VENDEDORES V on C.BAIRRO = V.BAIRRO
set C.VOLUME_COMPRA = C.VOLUME_COMPRA * 1.30;