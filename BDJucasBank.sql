create table clientes(
idCliente int identity not null,
nome varchar (50) not null,
cpf char (11) not null unique,
dataNascimento date not null,
telefone varchar (20),
celular varchar (20) not null,
email varchar (50),
logradouro varchar (75) not null,
cep char (8) not null,
cidade varchar (50) not null,
estado char (2) not null,
genero char (1) not null,
renda numeric (10,2) not null,
loginCliente char (11) not null unique,
senha char (6) not null,
constraint pk_clientes primary key (idCliente),
);

create table conta(
idConta int identity not null,
idCliente int not null,
statusConta varchar (50) check (statusConta in ('ATIVA', 'INATIVA', 'BLOQUEADA', 'EM ANÁLISE')) not null,
tipoConta varchar (10) not null,
saldo numeric (10,2) not null,
limite numeric (10,2) not null,
dataAbertura datetime not null,
dataEncerramento datetime,
constraint pk_conta primary key (idConta),
constraint fk_clientes_conta foreign key (idCliente) references clientes (idCliente),
);


create table tipoOperacao(
idTipoOperacao int identity not null,
nomeOperacao varchar (50) not null,
constraint pk_idTipoOperacao primary key (idTipoOperacao)
);

create table movimentacoes(
idMovimentacao int identity not null,
idContaOrigem int not null,
idContaDestino int not null,
idTipoOperacao int not null,
dataHora datetime,
valor numeric (10,2),
constraint pk_idMovimentacao primary key (idMovimentacao),
constraint fk_conta_Origem_movimentacoes foreign key (idContaOrigem) references conta (idConta),
constraint fk_conta_Destino_movimentacoes foreign key (idContaDestino) references conta (idConta),
constraint fk_tipoOperacao_movimentacoes foreign key (idTipoOperacao) references tipoOperacao (idTipoOperacao),
);

create table agendamento(
idAgendamento int identity not null,
idTipoOperacao int not null,
idContaOrigem int not null,
idContaDestino int not null,
valor numeric (10,2) not null,
dataAgendamento datetime not null,
cancelarAgendamento datetime,
statusAgendamento varchar (30) check (statusAgendamento in ('AGENDADO', 'REALIZADO', 'CANCELADO - SEM FUNDO', 'CANCELADO PELO CLIENTE')),
constraint pk_idAgendamento primary key (idAgendamento),
constraint fk_tipoOperacao_agendamento foreign key (idTipoOperacao) references tipoOperacao (idTipoOperacao),
constraint fk_conta_Origem_agendamento foreign key (idContaOrigem) references conta (idConta),
constraint fk_conta_Destino_agendamento foreign key (idContaDestino) references conta (idConta),
);
