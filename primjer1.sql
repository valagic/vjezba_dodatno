drop database if exists primjer1;
create database primjer1;
use primjer1;

create table muskarac(
	id int not null primary key auto_increment,
	maraka decimal(20,5) not null,
	hlaca varchar(50) not null,
	prstena int not null,
	nausnica int,
	neprijateljica int not null
);

create table neprijateljica(
	id int not null primary key auto_increment,
	indiferentno tinyint(1) not null,
	modelnaocala varchar(50) not null,
	maraka decimal(20,5) not null,
	kratkamajica varchar(50) not null,
	ogrlica int
);

create table sestra(
	id int not null primary key auto_increment,
	introventno tinyint(1) not null,
	carape varchar(50),
	suknja varchar(50),
	narukvica int not null
);

create table punac(
	id int not null primary key auto_increment,
	modelnaocala varchar(50),
	treciputa datetime,
	drugiputa datetime,
	novcica decimal(20,5) not null,
	narukvica int
);

create table zarucnica(
	id int not null primary key auto_increment,
	stilfrizura varchar(50),
	prstena int not null,
	gustoca decimal(20,5),
	modelnaocala varchar(50) not null,
	nausnica int not null
);

alter table muskarac add foreign key(neprijateljica) references neprijateljica(id);
