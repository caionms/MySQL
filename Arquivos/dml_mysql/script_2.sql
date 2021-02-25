alter table ITENS_NOTAS add primary key (CODIGO, NUMERO);

insert into PRODUTOS values ('1040108', 'Light - 350 ml - Laranja', 'Laranja', '350 ml', 'Lata', 4.15), 
('1040109', 'Light - 350 ml - Uva', 'Uva', '350 ml', 'Lata', 4.80);

insert into PRODUTOS (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA) 
values ('1040110', 'Light - 350 ml - Açai', 'Açai', '350 ml', 'Lata', 5.30);

select * from PRODUTOS;

insert into CLIENTES (CPF, NOME, ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, DATA_NASCIMENTO, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA)
values ('1471156710', 'Érica Carvalho', 'R. Iriquitia', 'Jardins', 'São Paulo', 'SP', '80012212', '1990-09-01', 27, 'F', 170000, 24500, 0),
('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', 'Água Santa', 'Rio de Janeiro', 'RJ', '22000000', '2000-02-12', 18, 'M', 100000, 20000, 1), 
('2600586709', 'César Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 'Rio de Janeiro', 'RJ', '22020001', '2000-03-12', 18, 'M', 120000, 22000, 0); 

select * from CLIENTES;