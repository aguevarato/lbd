create database Practica8
USE Practica8

CREATE TABLE Alumnos (
	Id uniqueidentifier NOT NULL,
	Nombre varchar(20) NOT NULL,
	ApellidoPaterno varchar(15) NOT NULL,
	ApellidoMaterno varchar(15) NOT NULL,
	Matricula int NOT NULL,

		Constraint PK_AI primary Key (Id)
)

CREATE TABLE Edificios(
	Id uniqueidentifier NOT NULL,
	UbicacionDelEdificio varchar(30) NOT NULL,

		Constraint PK_A primary Key (Id)
)

CREATE TABLE Excursion(
	Nombre uniqueidentifier NOT NULL,
	fecha date NOT NULL,
	PrecioPorAlumno int NOT NULL,
	Hora time(7) NOT NULL,

		Constraint PK_AA primary Key (Nombre)
)

CREATE TABLE Libros(
	Codigo uniqueidentifier NOT NULL,
	Edicion int NOT NULL,
	FechaDePublicacion date NOT NULL,
	AñosQueTieneElLibro  AS (datediff(year,FechaDePublicacion,getdate())),

		Constraint PK_AB primary Key (Codigo)
)

CREATE TABLE Maestros(
	Id uniqueidentifier NOT NULL,
	Nombre varchar(20) NOT NULL,
	ApellidoPaterno varchar(15) NOT NULL,
	ApellidoMaterno varchar(15) NOT NULL,
	FechaDeNacimiento date NOT NULL,
	Edad  AS (datediff(year,[FechaDeNacimiento],getdate())),

		Constraint PK_AC primary Key (Id)
)


CREATE TABLE Materias(

	Id uniqueidentifier NOT NULL,
	NombreDeLaMateria varchar(50) NOT NULL,
	GradoDeLaMateria varchar(15) NOT NULL,

		Constraint PK_AD primary Key (Id)
)


CREATE TABLE Nomina(
	NumeroDeEmpleado uniqueidentifier NOT NULL,
	Horas int NOT NULL,
	Pago money NOT NULL,
	Recibo  AS (Horas*pago),

		Constraint PK_AM primary Key (NumeroDeEmpleado)
)


CREATE TABLE PagosDeColegiatura(
	Matricula uniqueidentifier NOT NULL,
	Inscripcion int NOT NULL,
	Materias int NOT NULL,
	Beca decimal(18, 0) NOT NULL,
	PagoFinal  AS (Beca*(Inscripcion+Materias)),

		Constraint PK_AE primary Key (Matricula)
)


CREATE TABLE PagosFinalBackup(
	Matricula uniqueidentifier NOT NULL,
	Inscripcion int NOT NULL,
	Materias int NOT NULL,
	Beca decimal(18, 0) NOT NULL,
	PagoFinal decimal(29, 0) NULL

		Constraint PK_AF primary Key (Matricula)
)


CREATE TABLE Prueba(
	numero nchar(10) NULL,
	numerodos nchar(10) NULL,
	numerotres nchar(10) NULL

		
) 

CREATE TABLE Salones(
	Id uniqueidentifier NOT NULL,
	Nombre varchar(5) NOT NULL,
	CantidadDeAsientos int NOT NULL,
	Ubicacion varchar(20) NOT NULL,
	Descripcion  AS ((Ubicacion+'')+Nombre),

		Constraint PK_AH primary Key (Id)
)

CREATE TABLE TallaUniforme(
	Id uniqueidentifier NOT NULL,
	UniformeDeportivo varchar(5) NOT NULL,
	UniformeGala varchar(5) NOT NULL,
	PedidosDeUniformes  AS (UniformeDeportivo+UniformeGala),

		Constraint PK_AI primary Key (Id)
)


INSERT Alumnos (Id, Nombre, ApellidoPaterno, ApellidoMaterno, Matricula) VALUES (N'2dfdgra', N'Juan', N'Reyna', N'Garza', 1937862)

INSERT Alumnos (Id, Nombre, ApellidoPaterno, ApellidoMaterno, Matricula) VALUES (N'9090a0bd-7a6d-47cc-b8f8-ddc1b43d528d', N'Roberto', N'Antonio', N'lala', 1616584)


INSERT Alumnos (Id, Nombre, ApellidoPaterno, ApellidoMaterno, Matricula) VALUES (N'f9fae2b5-cd35-4b7b-970e-b350db170ab3', N'Alex', N'montemayor', N'perez', 1548545)



INSERT Edificios (Id, UbicacionDelEdificio) VALUES (N'55facc58-c4b6-492d-aa98-06c7755a0c75', N'PinoZuares')
INSERT Edificios (Id, UbicacionDelEdificio) VALUES (N'bd12ace1-4973-42fa-b5b7-0fe87d744309', N'LazaroCardenas')
INSERT Edificios (Id, UbicacionDelEdificio) VALUES (N'fabfd061-bdd5-4615-be59-38fc8c7f372d', N'Consitucion')



INSERT Excursion (Nombre, fecha, PrecioPorAlumno, Hora) VALUES (N'97fdc400-138e-4bb8-87ea-08c4e857ace3', CAST(N'2019-03-22' AS Date), 10, CAST(N'14:41:33.5566667' AS Time))
INSERT Excursion (Nombre, fecha, PrecioPorAlumno, Hora) VALUES (N'407173c8-d5d2-4cca-b350-2a1941e13f55', CAST(N'2019-03-22' AS Date), 5, CAST(N'14:41:33.5600000' AS Time))
INSERT Excursion (Nombre, fecha, PrecioPorAlumno, Hora) VALUES (N'9d53f510-a4be-44ee-b4ed-abed0f6d7969', CAST(N'2019-03-22' AS Date), 3, CAST(N'14:41:33.5566667' AS Time))


INSERT Libros (Codigo, Edicion, FechaDePublicacion) VALUES (N'5f04e9c6-d83c-48b8-be6e-2263fc607f6c', 30, CAST(N'2019-03-22' AS Date))
INSERT Libros (Codigo, Edicion, FechaDePublicacion) VALUES (N'0e55e23c-7643-4851-93c1-287703961c12', 78, CAST(N'2019-03-22' AS Date))
INSERT Libros (Codigo, Edicion, FechaDePublicacion) VALUES (N'211a6f68-bdb1-4142-bbd5-8d4e6bd13634', 7, CAST(N'2019-03-22' AS Date))



INSERT Maestros (Id, Nombre, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento) VALUES (N'3644fb03-e1ec-40c6-b197-0918cd894dcb', N'jamesD', N'ackerman', N'ames', CAST(N'2019-03-22' AS Date))
INSERT Maestros (Id, Nombre, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento) VALUES  (N'70bcf3e8-db7a-4062-b3e7-1aa44123f6e3', N'jao ', N'albeson', N'ackerman', CAST(N'2019-03-22' AS Date))
INSERT Maestros (Id, Nombre, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento) VALUES  (N'100ca078-0184-40ce-8240-735533c0c488', N'Francisco', N'perez', N'Santiago', CAST(N'2019-03-22' AS Date))




INSERT Materias (Id, NombreDeLaMateria, GradoDeLaMateria) VALUES (N'78ae47b8-6eef-4cae-83a7-0b80d8b60873', N'EducacionFisica', N'9')
INSERT Materias (Id, NombreDeLaMateria, GradoDeLaMateria) VALUES (N'97182c45-e5d9-4bf6-906d-2f642757ef65', N'LabDeProgramacion', N'7')
INSERT Materias (Id, NombreDeLaMateria, GradoDeLaMateria) VALUES (N'e3596440-81d8-49b7-8929-4a70ba00c6cd', N'Ciencias Naturales', N'1')



INSERT Nomina (NumeroDeEmpleado, Horas, Pago) VALUES (N'a1b15339-c1b8-42bf-8973-10fb64f0b910', 15, 11.0000)
INSERT Nomina (NumeroDeEmpleado, Horas, Pago) VALUES (N'd8192925-297c-4f55-ad52-3b631090076d', 7, 9.0000)
INSERT Nomina (NumeroDeEmpleado, Horas, Pago) VALUES (N'9e1d77f7-9eaf-48a4-9c81-f5461bd37317', 6, 8.0000)



INSERT PagosDeColegiatura (Matricula, Inscripcion, Materias, Beca) VALUES (N'e58ec726-476b-423e-a399-0533d87db470', 1, 2, CAST(3 AS Decimal(18, 0)))
INSERT PagosDeColegiatura (Matricula, Inscripcion, Materias, Beca) VALUES (N'ee275dd8-6ca5-4e00-aeae-771b67e24cba', 5, 44, CAST(4 AS Decimal(18, 0)))
INSERT PagosDeColegiatura (Matricula, Inscripcion, Materias, Beca) VALUES (N'2bf891aa-e84b-4a8d-a9c3-b051cc870ff7', 9, 7, CAST(12 AS Decimal(18, 0)))

INSERT PagosFinalBackup (Matricula, Inscripcion, Materias, Beca, PagoFinal) VALUES (N'e58ec726-476b-423e-a399-0533d87db470', 1, 2, CAST(3 AS Decimal(18, 0)), CAST(9 AS Decimal(29, 0)))
INSERT PagosFinalBackup (Matricula, Inscripcion, Materias, Beca, PagoFinal) VALUES (N'ee275dd8-6ca5-4e00-aeae-771b67e24cba', 5, 44, CAST(4 AS Decimal(18, 0)), CAST(196 AS Decimal(29, 0)))
INSERT PagosFinalBackup (Matricula, Inscripcion, Materias, Beca, PagoFinal) VALUES (N'2bf891aa-e84b-4a8d-a9c3-b051cc870ff7', 9, 7, CAST(12 AS Decimal(18, 0)), CAST(192 AS Decimal(29, 0)))

INSERT Salones (Id, Nombre, CantidadDeAsientos, Ubicacion) VALUES (N'660324a8-9937-4889-86b8-07392140214c', N'sexto', 12, N'piso3')
INSERT Salones (Id, Nombre, CantidadDeAsientos, Ubicacion) VALUES (N'19c487a0-7940-4a7d-b85b-fc9d8e5f579d', N'octo', 45, N'piso4')
INSERT Salones (Id, Nombre, CantidadDeAsientos, Ubicacion) VALUES (N'dc85298e-6597-4ce0-8ef0-8e87f682c8c2', N'septi', 133, N'piso4')

INSERT TallaUniforme (Id, UniformeDeportivo, UniformeGala) VALUES (N'423be08b-6b38-413d-8110-0e49a6eec5b3', N'333', N'20')
INSERT TallaUniforme (Id, UniformeDeportivo, UniformeGala) VALUES (N'9d4763ca-f878-4899-a1f2-517b5dda5cb2', N'333', N'20')
INSERT TallaUniforme (Id, UniformeDeportivo, UniformeGala) VALUES (N'e8e8dcd2-5be5-41b4-988c-74109d824c7a', N'333', N'20')


GO
create procedure cantidaddeasientos
as
select*from Salones where CantidadDeAsientos >=15

GO
create procedure edicionMayorA30
as
select*from Libros where Edicion > 30

GO
create procedure  MaestrosLLamadosWillian
as
select*from Maestros where Nombre ='willian'
GO
create procedure  materiasmayora15
as
select*from PagosDeColegiatura where Materias >15
GO

create procedure pagoesmenora10
as
select *from Nomina where Pago < 10
GO
create procedure PrecioMenorAdiez
as
select*from Excursion where PrecioPorAlumno < 10

GO
create procedure tallaUniforme2 
as
select *from TallaUniforme where UniformeDeportivo = 333
GO

create procedure TodosLosAlumnos
as
SELECT *from Alumnos

GO

create procedure ubicacionDeAlfonsoReyes
as
select*from Edificios where UbicacionDelEdificio ='AlfonsoReyes'
GO
