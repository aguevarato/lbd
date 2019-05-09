Create Database ServicioMilitar 
use ServicioMilitar

create table Servicio(
	Codigo_Servi tinyint not null,
	Nombre_Acti varchar(50)not null,

	constraint pk_CS primary key(Codigo_Servi)
)

create table Cuerpo(
	Codigo_Cuerpo tinyint not null, 
	denominacion tinyint not null,

	constraint pk_Co primary key(Codigo_Cuerpo)
)

create table Soldado (
	Codigo_Sold tinyint not null,
	Nombre_Soldado varchar(50) not null,
	Apell_Sold varchar(50) not null,
	Grado_Soldado varchar (2) not null,

	constraint pk_Co primary key(Codigo_Sold)
	Constraint FK_Codigo1 foreing key (Codigo_cuer) references Cuerpo (Codigo_Cuerpo)
)

create table Cuartel(
	Codigo_Cua varchar(50) not null, 
	Nombre_Cua varchar(50) not null,
	Ubicacion varchar (100)

	constraint pk_Cuartel primary key(Codigo_Cua)
)

create table Compania (
	Numero_CIA tinyint not null,
	actividad varchar(100) not null,
	
	constraint pk_NC primary key(Numero_CIA)

)

create table Ubicacion(
	Codigo_U varchar(50) not null,
	lugar VARCHAR(50) not null, 
	constraint pk_CU primary key(Codigo_U)
) 

select * from Cuartel 
insert into Cuartel  values (180, 'Base de Logistic', 3)
insert into Cuartel values (181, 'Base Naval', 1);


alter table Cuartel add Abrv varchar(7)

begin transaction update1
	update Cuartel set Abrv = 'BD' where ClaveM = 180
	update Cuartel set Abrv = 'LBD' where ClaveM = 181
	

rollback transaction update1

select * from Cuartel

select * from Soldado
insert into Soldado values(101, 'Juan','Garcia', 3)
insert into Soldado values(102, 'David',' Almaguer', 3 )
insert into Soldado values(103, 'Alan', 'Gonzalez', 3)
insert into Soldado values(104, 'Jesus', 'Alejandro', 3)

select * from Servicio

insert into Servicio values(20, 'Capitan')
insert into Servicio values(21, 'Soldado')
insert into Servicio values(22, 'Sargento Mayor')

