Create database Practica_2 
USE [Practica_2]
CREATE TABLE [dbo].[Alumnos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[ApellidoPaterno] [varchar](15) NOT NULL,
	[ApellidoMaterno] [varchar](15) NOT NULL,
	[Matricula] [int] NOT NULL,


		Constraint PK_IC primary Key (Id)
)

CREATE TABLE [dbo].[Edificios](
	[Id] [uniqueidentifier] NOT NULL,
	[UbicacionDelEdificio] [varchar](30) NOT NULL,

	

		Constraint PK_RA primary Key (Id)
)

CREATE TABLE [dbo].[Excursion](
	[Nombre] [uniqueidentifier] NOT NULL,
	[fecha] [date] NOT NULL,
	[PrecioPorAlumno] [int] NOT NULL,
	[Hora] [time](7) NOT NULL,

		Constraint PK_RE primary Key (Nombre)
)


CREATE TABLE [dbo].[Libros](
	[Nombre] [uniqueidentifier] NOT NULL,
	[Edicion] [int] NOT NULL,
	[FechaDePublicacion] [date] NOT NULL,
	[AñosQueTieneElLibro]  AS (datediff(year,[FechaDePublicacion],getdate())),

		Constraint PK_RI primary Key (Nombre)
)


CREATE TABLE [dbo].[Maestros](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[ApellidoPaterno] [varchar](15) NOT NULL,
	[ApellidoMaterno] [varchar](15) NOT NULL,
	[FechaDeNacimiento] [date] NOT NULL,
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),


		Constraint PK_RO primary Key (Id)
)

CREATE TABLE [dbo].[Materias](
	[Id] [uniqueidentifier] NOT NULL,
	[NombreDeLaMateria] [varchar](50) NOT NULL,
	[GradoDeLaMateria] [varchar](15) NOT NULL,


		Constraint PK_KO primary Key (Id)
)

CREATE TABLE [dbo].[Nomina](
	[NumeroDeEmpleado] [uniqueidentifier] NOT NULL,
	[Horas] [int] NOT NULL,
	[Pago] [money] NOT NULL,
	[Recibo]  AS ([Horas]*[pago]),


		Constraint PK_RU primary Key (NumeroDeEmpleado)
)

CREATE TABLE [dbo].[PagosDeColegiatura](
	[Matricula] [uniqueidentifier] NOT NULL,
	[Inscripcion] [int] NOT NULL,
	[Materias] [int] NOT NULL,
	[Beca] [decimal](18, 0) NOT NULL,
	[PagoFinal]  AS ([Beca]*([Inscripcion]+[Materias])),

		Constraint PK_EF primary Key (Matricula)
)


CREATE TABLE [dbo].[Salones](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](5) NOT NULL,
	[CantidadDeAsientos] [int] NOT NULL,
	[Ubicacion] [varchar](20) NOT NULL,
	[Descripcion]  AS (([Ubicacion]+'')+[Nombre]),

		Constraint PK_DO primary Key (Id)
)


CREATE TABLE [dbo].[TallaUniforme](
	[Id] [uniqueidentifier] NOT NULL,
	[UniformeDeportivo] [varchar](5) NOT NULL,
	[UniformeGala] [varchar](5) NOT NULL,
	[PedidosDeUniformes]  AS ([UniformeDeportivo]+[UniformeGala]),

		Constraint PK_MO primary Key (Id)
)



	INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Juan','Reyna','Garza',1937862);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Bob','Peo','Prat',1243244);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Pepper','Martinez','elos',1546547);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Luis','Jimenez','cortez',9876543);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'RITA','Gomez','Rata',214767);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Solo','happy','garza', 123456);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Alexis','Romero','perez',127789);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Johnathan','Calamardo','garza',987654);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Anastacio','salas','montalvo',86543);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'Obama','patricio','soledad',98675432);


INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'Morones');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'LazaroCardenas');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'Alameda');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'Reforma');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'Gomez Palacio');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'Universidad');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'Universidad');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'San Pedro');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'Central');

INSERT INTO Edificios(Id,UbicacionDelEdificio)
Values(NEWID(),'Ramero');


INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),3, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),1, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),1, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),1, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),23, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),42, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),62, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),75, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),76, GETDATE() );

INSERT INTO Excursion(Nombre,Fecha,PrecioPorAlumno,Hora)
Values(NEWID(),GETDATE(),24, GETDATE() );



INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),1,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),3,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),6,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),7,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),15,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),19,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),30,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),17,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),25,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),78,GETDATE());

Ya abajo

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'Jose','perez','Santiago',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'Luis','Carlos','marquez',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'Crocker','gonzales','futterkiste',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'Lenard','aiona','abbott',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'Jou ','albesto','hacekrman',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'lola','aackerman','ames',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'Armstrong','case','lee',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'Anita','Huerfanita','baiey',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'willian','levi','ettinger',GETDATE());

INSERT INTO Maestros(Id,Nombre,ApellidoPaterno,ApellidoMaterno,FechaDeNacimiento)
Values(NEWID(),'alfred','Barry','chester',GETDATE());




INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'Matematicas','4');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'Fisica','5');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'Hisotoria','2');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'Ciencias Naturales','1');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'Sistemas Operativos','3');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'programacion','8');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'estadistica','7');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'EducacionFisica','9');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'LabDeProgramacion','7');

INSERT INTO Materias(Id,NombreDeLaMateria,GradoDeLaMateria)
Values(NEWID(),'Analysis y administracion de riesgo','9');



INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),15,12);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),15,11);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),4,3);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),6,8);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),7,9);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),15,7);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),16,6);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),66,2);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),65,78);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),32,2);



INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),1,2,3);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),3,2,5);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),4,66,4);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),5,4,8);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),9,7,12);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),55,4,7);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),5,66,23);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),2,45,7);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),25,45,6);

INSERT INTO PagosDeColegiatura(Matricula,Inscripcion,Materias,Beca)
Values(NEWID(),5,44,4);


INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'pri',2,'piso1');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'segun',6,'piso1');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'terce',6,'piso2');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'cuarto',66,'piso2');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'quint',45,'piso2');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'sexto',12,'piso3');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'septi',133,'piso4');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'octo',45,'piso4');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'nove',66,'piso5');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'deci',44,'piso6');



INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),5,1);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),9,4);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),3,1);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),5,6);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),9,10);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),15,2);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),4,32);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),4,65);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),5,44);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),6,21);


--10 inserts extras 


INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),140,130);

INSERT INTO TallaUniforme(Id,UniformeDeportivo,UniformeGala)
Values(NEWID(),445,445);

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'once',44,'piso8');

INSERT INTO Salones(Id,Nombre,CantidadDeAsientos,Ubicacion)
Values(NEWID(),'trece',44,'piso9');

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),25,244);

INSERT INTO Nomina(NumeroDeEmpleado,Horas,Pago)
Values(NEWID(),454,444);

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),88,GETDATE());

INSERT INTO Libros(Nombre,Edicion,FechaDePublicacion)
Values(NEWID(),98,GETDATE());

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'sapo','esponja','litle',1665486);

INSERT INTO Alumnos (Id,Nombre,ApellidoPaterno,ApellidoMaterno,Matricula)
Values(NEWID(),'angel','antonio','jersey',1665486);


--Delete 

DELETE from TallaUniforme where UniformeDeportivo = 140;
DELETE from TallaUniforme where UniformeDeportivo = 445;
DELETE from Salones where Nombre = 'once';
DELETE from Salones where Nombre = 'trece';
DELETE from Nomina where Horas = 244;
DELETE from Nomina where Horas = 444;
DELETE from Libros where Edicion = 88;
DELETE from Libros where Edicion = 98;
DELETE from Alumnos where Nombre = 'antonio';
DELETE from Alumnos where Nombre = 'esponja';


--Update

Update TallaUniforme Set UniformeGala  = 20;
Update TallaUniforme Set UniformeDeportivo=333 where UniformeGala < 30;
Update Salones Set Nombre = 'nada';
update Salones set Nombre = 'lleno';
Update Nomina set Horas = 0;
update Nomina set Horas = 10000 where Horas <30;
update Libros set Edicion = 0;
update Libros set Edicion= 322;
update Alumnos set Nombre = 'Martinez' where Nombre= 'Crocker';
update Alumnos set Nombre = 'Miguel Angel ' where Nombre ='amy';



Select * from Materias
--En esta parte se seleccionan todos los datos de la tabla materias

select *from Libros 
where Edicion > 10;
-- se escoje de la tabla de libros donde la edicion del libro sea mayor a 10 

select *from Alumnos 
where Matricula >20+5;
--De la tabla de alumno  se mostraran a los alumnos que tengan una matricula mayor a 25


select * from Maestros inner join Materias on Maestros.Nombre != Materias.NombreDeLaMateria
-- se juntan las tablass de maestros y materias y quiero que me muestre cuando los nombres no son iguales de los maestros con los de la materia 

select * from Nomina inner join Excursion on Nomina.Pago = Excursion.PrecioPorAlumno
-- se combinan dos tablas  que es la de nomina y excursion la cual manda datos en las  cuales la nomina es igual al precio de la excursion por alumno

select * from PagosDeColegiatura inner join Nomina on PagosDeColegiatura.PagoFinal < Nomina.Pago
-- se combinan dos tablas que es la de nomina y el pago final de colegiatura  el cual mostrara los datos del pago final de colegiatura que sean menores a el pago de nomina

select * from PagosDeColegiatura left outer join Nomina on PagosDeColegiatura.PagoFinal < Nomina.Pago
-- se combinan 2 tablas que es la de pagos de colegiatura y nomina los cuales el left joinnos permite seleccionar algunas fulas de una tabla aunque estas no tengan correspondencia con las filas de la otra tabla las cuales el pago final tiene que ser menor al pago de la nomina

select * from Nomina right outer join Excursion on Nomina.Pago = Excursion.PrecioPorAlumno
where Nomina.Pago > 2
-- se busca que  el pago de la nomina sea igual al precio por alumno pero con una condicion de que tiene que ser mayor de 2

select * into PagosFinalBackup from PagosDeColegiatura
-- hacer un backup  de la tabla de pagos de colegiatura

Drop table PagosFinalBackup;
--tumba la tabla de pagos final backup

select Pago, min(Horas) 'horas'
from Nomina
group by Pago, Horas
having Horas < 10;

-- aqui se selecciona de la tabla pago las horas minimas a 10 
use [Practica_2];

select * from  Alumnos
group by ApellidoMaterno
having (ApellidoMaterno) = 'martinez';
-- se busca en la tabla de alumnos  el apellido materno que es garza
 