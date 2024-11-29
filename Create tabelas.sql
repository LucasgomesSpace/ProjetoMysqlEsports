use esports;

/*  TABELA PESSOA */

create table pessoa(
idpess integer primary key auto_increment,
nome varchar(100),
idade integer,
sexo char(1)
);

/* TABELA JOGADOR */

create table jogador (
idJ integer primary key auto_increment,
Fk_idpess integer,
foreign key (Fk_idpess) references pessoa (idpess));

/* TABELA PONTUAÇÃO*/

create table pontuação(
idpts integer primary key auto_increment,
Fk_idJ integer,
pts integer,
foreign key (Fk_idJ) references jogador (idJ));

/*NOME DAS EQUIPES*/

create table equipe (
idEqn integer primary key auto_increment,
nomeequipe varchar(100)
);

/* TABELA JUNÇÃO DE EQUIPE COM JOGADOR*/

create table equipes (
ideq integer primary key auto_increment,
Fk_idEqn integer,
Fk_idJ integer,
foreign key (Fk_idEqn) references equipe (idEqn),
foreign key (Fk_idJ) references jogador (idJ));

/* TABELA PARTIDA */

create table partida (
idpart integer primary key auto_increment,
diapartida date
);

/* TABELA MODALIDADE*/

create table modalidade (
idm integer primary key auto_increment,
modname varchar(100)
);

/*JUNÇÃO PARTIDA/EQUIPES/MODALIDADE EM UM PLACAR*/

create table placar (
idplacar integer primary key auto_increment,
Fk_idm integer,
Fk_ideq integer,
ptsfinal integer,
Fk_idpart integer,
foreign key (Fk_idm) references modalidade (idm),
foreign key (Fk_idpart) references  partida (idpart),
foreign key (Fk_ideq) references equipes (ideq));
