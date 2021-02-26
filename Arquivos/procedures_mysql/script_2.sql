select NOME, TIMESTAMPDIFF(YEAR, c.data_de_nascimento, CURDATE()) as idade from tabela_de_clientes c;

select NOME, IDADE from tabela_de_clientes c;

update tabela_de_clientes set IDADE = TIMESTAMPDIFF(YEAR, data_de_nascimento, CURDATE()) 
where NOME = 'César Teixeira';

update tabela_de_clientes set IDADE = TIMESTAMPDIFF(YEAR, data_de_nascimento, CURDATE()) 
where NOME = 'Marcos Nougeuira';

select NOME, IDADE from tabela_de_clientes c;

call atualizar_idade;