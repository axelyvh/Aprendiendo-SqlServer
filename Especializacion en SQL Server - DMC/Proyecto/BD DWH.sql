use master
go

IF DB_ID('Axel.DWH') IS NOT NULL
drop database [Axel.DWH]
go

create database [Axel.DWH]
go

use [Axel.DWH] 
go

DROP TABLE IF EXISTS Pacientes;
GO
create table Pacientes
(
NumDocumento bigint not null,
Origen varchar(50) not null,
FechaCreacion date not null,
Sede varchar(45) not null,
)
GO

DROP TABLE IF EXISTS Pagos;
GO
create table Pagos
(
FormaPago varchar(50) not null,
Monto float not null,
FechaCreacion date not null,
Sede varchar(50) not null
)
GO

DROP TABLE IF EXISTS Citas;
GO
create table Citas
(
CitaId int not null,
Doctor varchar(50) not null,
Especialidad varchar(50) not null,
FechaCreacion date not null,
EstadoDescripcion varchar(50) not null,
EstadoFecha date not null,
EstadoFinalizado bit,
Sede varchar(45)
)
GO

DROP TABLE IF EXISTS Sedes;
GO
create table Sedes
(
Descripcion VARCHAR(45) NOT NULL
)
GO