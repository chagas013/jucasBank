/* 1.Inserir de forma implícita 8 correntistas */

insert into clientes
values ('Donald', '11122233344', '20/06/2000', null, '13991234567', 'donald@gmail.com', 'Rua Benedito Ernesto Guimarães', '11070020', 'Santos', 'SP', 'M', '2000.00', '11122233344', '200600'),
	   ('Margarida', '22233344455', '15/02/1997', null, '13988888888', 'margarida@gmail.com', 'Rua Freitas Guimarães', '11050235', 'São Vicente', 'SP', 'F', '2550.00', '22233344455', '150297'),
	   ('Patinhas', '3334445566', '13/04/1991', null, '1399999999', 'patinhas@gmail.com', 'Rua dos Ipes', '11030247', 'Santos', 'SP', 'M', '1000000.00', '33344455566', '130491'),
	   ('Huguinho', '44455566677', '31/12/2002', null, '13998765432', 'huguinho@gmail.com', 'Av 9 de Julho', '11171157', 'Cubatão', 'SP', 'M', '5294.00', '44455566677', '311202'),
	   ('Luizinho', '55566677788', '31/12/2002', null, '13997418529', 'luizinho@gmail.com', 'Av Brasil', '11701314', 'Praia Grande', 'SP', 'M', '3214.00', '55566677788', '311202'),
	   ('Zezinho', '66677788899', '01/01/2003', null, '32993258741', 'zezinho@gmail.com', 'Rua das Fazendas', '11395780', 'São João del Rei', 'MG', 'M', '13500.00', '66677788899', '010103'),
	   ('Mickey', '77788899900', '06/10/1974', null, '21981267942', 'mickey@gmail.com', 'Rua F', '11050157', 'Rio de Janeiro', 'RJ', 'M', '22394.00', '77788899900', '061074'),
	   ('Minie', '00011122233', '29/05/1980', null, '11991919191', 'minie@gmail.com', 'Av do Estado', '11219097', 'São Paulo', 'SP', 'F', '12500.00', '00011122233', '290580');

/* 2. Inserir de forma explícita uma conta para cada correntista
Dados conforme abaixo, demais dados livres. Atenção para colocar
datas de aberturas anteriores a data de hoje. */

insert into conta (idCliente, statusConta, tipoConta, saldo, limite, dataAbertura)
	values (1, 'ATIVA', 'Corrente', '1000.00', '350.00', '12/09/2019'),
		   (2, 'BLOQUEADA', 'Corrente', '450.50', '787.50', '05/04/2019'),
		   (3, 'ATIVA', 'CorrenteKK', '650000.50', '350000.00', '12/09/2009'),
		   (4, 'ATIVA', 'Corrente', '500.00', '1852.90', '30/06/2021'),
		   (5, 'ATIVA', 'Corrente', '3500.00', '1124.90', '30/06/2021'),
		   (6, 'BLOQUEADA', 'Corrente', '700.25', '4725.00', '12/09/2019'),
		   (7, 'ATIVA', 'Corrente', '9500.25', '7837.90', '25/07/2006'),
		   (8, 'ATIVA', 'Corrente', '12500.50', '4375.00', '22/01/2005');

/* 3.Inserir mais duas contas ao Patinhas
Dados conforme abaixo, demais dados livres. Atenção para colocar
datas de aberturas anteriores a data de hoje. */

insert into conta (idCliente, statusConta, tipoConta, saldo, limite, dataAbertura)
	values (3, 'ATIVA', 'CorrenteKK', '1000000.50', '350000.00', '05/11/2011'),
	       (3, 'ATIVA', 'Poupança', '250000.00', '350000.00', '05/11/2011');


/* 4.Inserir os Tipos de Operacao
      DEBITO
      SAQUE
      TRANSFERÊNCIA */

insert into tipoOperacao
values ('Débito'),
       ('Saque'),
	   ('Transferência');


/* 5.Agendar uma transferência da conta do Patinhas que possui saldo de 250000.00 para a conta de 650000.50. Agendar para 25DEZ23, valor 100000.00 */

insert into agendamento (idTipoOperacao, idContaOrigem, idContaDestino, valor, dataAgendamento)
values (3, 26, 19, '100000.00', '25/12/2023'); 


/* 6.Atualizar todo o endereço da Minie (logradouro, numero e complemento), mas mantendo a cidade. */

update clientes
set logradouro = 'Av Bandeirantes 1614 ap 1105'
where idCliente = 8
/* Adicionar na tabela numero e complemento */


/* 7.Atualizar o celular do Mickey */

update clientes
set celular = '21997402397'
where idCliente = 7


/* 8.Inserir 2 saques conforme dados abaixo:
      Conta do Mickey, valor: 100.00
      Conta do Huguinho, valor: 250.00 */

insert into movimentacoes (idContaOrigem, idContaDestino, idTipoOperacao, valor)
values (23, 23, 2, '100.00'),
	   (20, 20, 2, '250.00');

	update movimentacoes 
	set dataHora = '18/03/2023' where idMovimentacao=6
	
	
/* 9.Inserir 2 depósitos conforme dados abaixo:
      Conta da Minie, valor: 1100.00
      Conta do Donald, valor: 450.00 */

insert into movimentacoes (idContaOrigem, idContaDestino, idTipoOperacao, valor)
values (24, 24, 1, 1100.00),
       (17, 17, 1, 450.00);


/* 10.Inserir 2 transferências conforme dados abaixo:
      Conta da Zezinho para conta da Minie, valor: 350.50
      Conta do Donald para conta da Huguinho, valor: 50.00 */

insert into movimentacoes (idContaOrigem, idContaDestino, idTipoOperacao, valor)
values (22, 24, 3, 350.50),
       (17, 20, 3, 50.00);



select * from conta
select * from clientes
select * from tipoOperacao
select * from agendamento
select * from movimentacoes

/* 11.Buscar nome, contato, cidade e estado de todos os correntistas com contas bloqueadas, em ordem alfabética. */

select nome, celular, cidade, estado from clientes where idCliente = 2 or idCliente = 6 order by nome asc

/* 12.Buscar quantos correntistas o banco possui por cidade. */

select cidade, count (nome) as 'Qtd de Correntistas' from clientes group by cidade

/* 13.Buscar todas as movimentações que ocorreram em determinado mês/ano. O mês e o ano ficam a seu critério */

select * from movimentacoes where dataHora > '01/04/2023' and dataHora < '30/04/2023'  

/* 14.Buscar o nome do correntista e a data de criação da conta, exibindo os correntistas mais antigos primeiro. */


