INSERT INTO PRODUTOS (CODIGO,DESCRITOR,SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
     VALUES ('1001012','Sabor dos Alpes 700 ml - Manga','Manga','700 ml','Garrafa',7.50),
         ('1001000','Sabor dos Alpes 700 ml - Melão','Melão','700 ml','Garrafa',7.50),
         ('1001002','Sabor dos Alpes 700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),
         ('1001003','Sabor dos Alpes 700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),
         ('1001004','Sabor dos Alpes 700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),
         ('1001005','Sabor dos Alpes 700 ml - Açai','Açai','700 ml','Garrafa',7.50),
         ('1001006','Sabor dos Alpes 1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),
         ('1001007','Sabor dos Alpes 1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),
         ('1001008','Sabor dos Alpes 1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),
         ('1001009','Sabor dos Alpes 1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),
         ('1001010','Sabor dos Alpes 1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),
         ('1001011','Sabor dos Alpes 1 Litro - Açai','Açai','1 Litro','Garrafa',7.50);
         
select * from PRODUTOS where substring(DESCRITOR,1,15) = 'Sabor dos Alpes';  

delete from PRODUTOS where TAMANHO = '1 Litro' 
and substring(DESCRITOR,1,15) = 'Sabor dos Alpes';

select CODIGO_DO_PRODUTO from sucos_vendas.tabela_de_produtos;

select CODIGO from PRODUTOS where CODIGO not in(
select CODIGO_DO_PRODUTO from sucos_vendas.tabela_de_produtos);

delete from PRODUTOS where CODIGO not in(
select CODIGO_DO_PRODUTO from sucos_vendas.tabela_de_produtos);

select * from CLIENTES C inner join NOTAS N 
on C.CPF = N.CPF
where C.IDADE <= 18;

DELETE A FROM NOTAS A
INNER JOIN CLIENTES B ON A.CPF = B.CPF
WHERE B.IDADE <= 18;

select * from NOTAS;
