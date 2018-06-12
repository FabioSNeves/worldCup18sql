CREATE TABLE fabio_w18times (
  idPais int identity NOT NULL Primary Key,
  nomePais varchar(30) not null,
  nomeGrupo varchar(02)
  );
  ALTER TABLE fabio_w18times ADD CONSTRAINT fk_idGrupo 
  FOREIGN KEY (idGrupo) 
  REFERENCES fabio_w18grupos (idGrupo)


CREATE TABLE fabio_w18jogadores (
  nomeJogadores varchar(30) NOT NULL Primary Key ,
  posicao varchar(20) not null,
  gols int,
  idPais int,
  CONSTRAINT fk_IdPais 
  FOREIGN KEY (IdPais) REFERENCES fabio_w18times (IdPais)
  );
  ALTER TABLE fabio_w18times ADD CONSTRAINT fk_nomeJogadores 
  FOREIGN KEY (nomeJogadores) 
  REFERENCES fabio_w18jogadores (nomeJogadores)


CREATE TABLE fabio_w18grupoA (
  idGrupo varchar(02) NOT NULL Primary Key ,
  nomePais varchar(30) unique
  posicaoTabela int,
  partidas int,
  vitorias int,
  empates int,
  derrotas int,
  gp int,
  gc int,
  saldo int,
  nomePais varchar(30) unique,
  idPais int,
  CONSTRAINT fk_IdPaisGrupoA
  FOREIGN KEY (IdPais) REFERENCES fabio_w18times (IdPais)
  );


CREATE TABLE fabio_visitante (
  nomeVisitante varchar(30) NOT NULL Primary Key ,
  golsVisitante int,
  idGrupo varchar(02),
  CONSTRAINT fk_IdGrupoVisitante 
  FOREIGN KEY (IdGrupo) REFERENCES fabio_w18grupos (IdGrupo),
  idPais int,
  CONSTRAINT fk_IdPaisVisitante 
  FOREIGN KEY (IdPais) REFERENCES fabio_w18times (IdPais)
  );


CREATE TABLE fabio_mandante (
  nomeMandante varchar(30) NOT NULL Primary Key,
  golsMandante int,
  idGrupo varchar(02),
  CONSTRAINT fk_IdGrupoMandante 
  FOREIGN KEY (IdGrupo) REFERENCES fabio_w18grupos (IdGrupo),
  idPais int,
  CONSTRAINT fk_IdPaisMandante 
  FOREIGN KEY (IdPais) REFERENCES fabio_w18times (IdPais)
  );


CREATE TABLE fabio_w18partidas (
  idPartida int NOT NULL Primary Key identity,
  nomeMandante varchar(30),
  CONSTRAINT fk_nomeMandante 
  FOREIGN KEY (nomeMandante) REFERENCES fabio_mandante (nomeMandante),
  nomeVisitante varchar(30),
  CONSTRAINT fk_nomeVisitante 
  FOREIGN KEY (nomeVisitante) REFERENCES fabio_visitante (nomeVisitante),
  nomeJogadores varchar(30),
  CONSTRAINT fk_nomeJogadoresPartidas 
  FOREIGN KEY (nomeJogadores) REFERENCES fabio_w18jogadores (nomeJogadores)
  );


insert into fabio_w18times values ('Brasil', null, null);
insert into fabio_w18times values ('Argentina', null, null);
insert into fabio_w18times values ('Rússia', null, null);
insert into fabio_w18times values ('Senegal', null, null);
insert into fabio_w18times values ('Irã', null, null);
insert into fabio_w18times values ('Coréia do Sul', null, null);
insert into fabio_w18times values ('Japão', null, null);
insert into fabio_w18times values ('Arábia Saudita', null, null);
insert into fabio_w18times values ('Australia', null, null);
insert into fabio_w18times values ('Tunísia', null, null);
insert into fabio_w18times values ('Nigéria', null, null);
insert into fabio_w18times values ('Marrocos', null, null);
insert into fabio_w18times values ('Egito', null, null);
insert into fabio_w18times values ('México', null, null);
insert into fabio_w18times values ('Costa Rica', null, null);
insert into fabio_w18times values ('Panamá', null, null);
insert into fabio_w18times values ('Uruguai', null, null);
insert into fabio_w18times values ('Colômbia', null, null);
insert into fabio_w18times values ('Peru', null, null);
insert into fabio_w18times values ('França', null, null);
insert into fabio_w18times values ('Portugal', null, null);
insert into fabio_w18times values ('Alemanha', null, null);
insert into fabio_w18times values ('Sérvia', null, null);
insert into fabio_w18times values ('Polônia', null, null);
insert into fabio_w18times values ('Inglaterra', null, null);
insert into fabio_w18times values ('Espanha', null, null);
insert into fabio_w18times values ('Bélgica', null, null);
insert into fabio_w18times values ('Islândia', null, null);
insert into fabio_w18times values ('Suiça', null, null);
insert into fabio_w18times values ('Croácia', null, null);
insert into fabio_w18times values ('Suécia', null, null);
insert into fabio_w18times values ('Dinamarca', null, null);

insert into fabio_w18grupoA values ('A1', null, null, null, null, null, null, null, null, 5);
insert into fabio_w18grupoA values ('A2', null, null, null, null, null, null, null, null, 10);
insert into fabio_w18grupoA values ('A3', null, null, null, null, null, null, null, null, 15);
insert into fabio_w18grupoA values ('A4', null, null, null, null, null, null, null, null, 19);

update fabio_w18times set nomeGrupo = 'A' where idPais in (5, 10, 15, 19);

insert into fabio_w18grupoB values ('B1', null, null, null, null, null, null, null, null, 7);
insert into fabio_w18grupoB values ('B2', null, null, null, null, null, null, null, null, 14);
insert into fabio_w18grupoB values ('B3', null, null, null, null, null, null, null, null, 23);
insert into fabio_w18grupoB values ('B4', null, null, null, null, null, null, null, null, 28);

update fabio_w18times set nomeGrupo = 'B' where idPais in (7, 14, 23, 28); 

insert into fabio_w18grupoC values ('C1', null, null, null, null, null, null, null, null, 22);
insert into fabio_w18grupoC values ('C2', null, null, null, null, null, null, null, null, 11);
insert into fabio_w18grupoC values ('C3', null, null, null, null, null, null, null, null, 21);
insert into fabio_w18grupoC values ('C4', null, null, null, null, null, null, null, null, 34);

update fabio_w18times set nomeGrupo = 'C' where idPais in (22, 11, 21, 34); 

insert into fabio_w18grupoD values ('D1', null, null, null, null, null, null, null, null, 2);
insert into fabio_w18grupoD values ('D2', null, null, null, null, null, null, null, null, 30);
insert into fabio_w18grupoD values ('D3', null, null, null, null, null, null, null, null, 13);
insert into fabio_w18grupoD values ('D4', null, null, null, null, null, null, null, null, 32);

update fabio_w18times set nomeGrupo = 'D' where idPais in (2, 30, 13, 32); 

insert into fabio_w18grupoE values ('E1', null, null, null, null, null, null, null, null, 1);
insert into fabio_w18grupoE values ('E2', null, null, null, null, null, null, null, null, 17);
insert into fabio_w18grupoE values ('E3', null, null, null, null, null, null, null, null, 31);
insert into fabio_w18grupoE values ('E4', null, null, null, null, null, null, null, null, 25);

update fabio_w18times set nomeGrupo = 'E' where idPais in (1, 17, 31, 25);

insert into fabio_w18grupoF values ('F1', null, null, null, null, null, null, null, null, 24);
insert into fabio_w18grupoF values ('F2', null, null, null, null, null, null, null, null, 16);
insert into fabio_w18grupoF values ('F3', null, null, null, null, null, null, null, null, 33);
insert into fabio_w18grupoF values ('F4', null, null, null, null, null, null, null, null, 8);

update fabio_w18times set nomeGrupo = 'F' where idPais in (24, 16, 33, 8); 

insert into fabio_w18grupoG values ('G1', null, null, null, null, null, null, null, null, 29);
insert into fabio_w18grupoG values ('G2', null, null, null, null, null, null, null, null, 18);
insert into fabio_w18grupoG values ('G3', null, null, null, null, null, null, null, null, 12);
insert into fabio_w18grupoG values ('G4', null, null, null, null, null, null, null, null, 27);

update fabio_w18times set nomeGrupo = 'G' where idPais in (29, 18, 12, 27); 

insert into fabio_w18grupoH values ('H1', null, null, null, null, null, null, null, null, 26);
insert into fabio_w18grupoH values ('H2', null, null, null, null, null, null, null, null, 6);
insert into fabio_w18grupoH values ('H3', null, null, null, null, null, null, null, null, 20);
insert into fabio_w18grupoH values ('H4', null, null, null, null, null, null, null, null, 9);

update fabio_w18times set nomeGrupo = 'H' where idPais in (26, 6, 20, 9);

select * from fabio_w18times;
select * from fabio_w18jogadores;
select * from fabio_w18grupoA;
select * from fabio_w18grupoB;
select * from fabio_visitante;
select * from fabio_mandante;
select * from fabio_w18partidas;

ALTER TABLE fabio_w18grupoH DROP constraint UQ__fabio_w1__F73FD3D1B6985C3C;
ALTER TABLE fabio_w18grupoH DROP column nomePais;

insert into fabio_mandante values (3, 0, 'A', 10);
insert into fabio_visitante values (3, 0, 'A', 10);
insert into fabio_w18partidas values (1, 10, null);

select * from fabio_mandante AS a
    INNER JOIN fabio_visitante AS t ON
        a.idGrupo = t.idGrupo
		order by t.idGrupo asc;

select * from fabio_w18times 
		order by nomeGrupo asc;

select * from fabio_visitante;
delete from fabio_visitante where idPais = 10;
