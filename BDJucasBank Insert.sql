﻿/* 1.Inserir de forma implícita 8 correntistas */

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