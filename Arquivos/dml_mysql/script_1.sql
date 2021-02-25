create table PRODUTOS (
CODIGO varchar(100) not null,
DESCRITOR varchar(100) null,
SABOR varchar(50) null,
TAMANHO varchar(50) null,
EMBALAGEM varchar(50) null, 
PRECO_LISTA float null,
primary key(CODIGO));

create table VENDEDORES (
MATRICULA varchar(5) not null,
NOME varchar(100) null,
BAIRRO varchar(50) null,
COMISSAO float null,
DATA_ADMISSAO date null,
FERIAS bit(1) null,
primary key(MATRICULA));

CREATE TABLE clientes (
  CPF varchar(11) NOT NULL,
  NOME varchar(100) DEFAULT NULL,
  ENDERECO varchar(150) DEFAULT NULL,
  BAIRRO varchar(50) DEFAULT NULL,
  CIDADE varchar(50) DEFAULT NULL,
  ESTADO varchar(45) DEFAULT NULL,
  CEP varchar(8) DEFAULT NULL,
  DATA_NASCIMENTO date DEFAULT NULL,
  IDADE int(11) DEFAULT NULL,
  SEXO varchar(1) DEFAULT NULL,
  LIMITE_CREDITO float DEFAULT NULL,
  VOLUME_COMPRA float DEFAULT NULL,
  PRIMEIRA_COMPRA bit(1) DEFAULT NULL,
  PRIMARY KEY (CPF)
);

rename table clientes to CLIENTES;

alter table NOTAS drop foreign key MATRICULA;

create table ITENS_NOTAS(
NUMERO varchar(5) not null,
CODIGO varchar(10) not null,
QUANTIDADE int(11) null,
PRECO float null,
primary key(NUMERO, CODIGO)
);	

drop table ITENS_NOTAS;

alter table NOTAS add constraint notas_fk_1 foreign key (CPF) references CLIENTES (CPF);

alter table NOTAS add constraint notas_fk_2 foreign key (MATRICULA) references VENDEDORES (MATRICULA);

alter table ITENS_NOTAS add constraint itens_notas_fk_1 foreign key (CODIGO) references PRODUTOS (CODIGO);

alter table ITENS_NOTAS add constraint itens_notas_fk_2 foreign key (NUMERO) references NOTAS (NUMERO);