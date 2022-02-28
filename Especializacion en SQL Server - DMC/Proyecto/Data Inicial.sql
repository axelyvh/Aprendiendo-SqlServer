use [Axel.Sistema]
go

-- ELIMINAR DATA

--delete from Paciente
--DELETE FROM Paciente
--DBCC CHECKIDENT ('Paciente', RESEED, 0)

--delete from TipoDocumento

--delete from Rol
--DELETE FROM Rol
--DBCC CHECKIDENT ('Rol', RESEED, 0)

--delete from Sede
--DELETE FROM Sede
--DBCC CHECKIDENT ('Sede', RESEED, 0)

--delete from Origen
--DELETE FROM Origen
--DBCC CHECKIDENT ('Origen', RESEED, 0)

-- AGREGAR DATA

insert into TipoDocumento values('01','LIBRETA ELECTORAL O DNI','L.E / DNI','8','1')
insert into TipoDocumento values('04','CARNET DE EXTRANJERIA','CARNET EXT.','12','1')
insert into TipoDocumento values('06','REG. UNICO DE CONTRIBUYENTES','RUC','11','1')
insert into TipoDocumento values('07','PASAPORTE','PASAPORTE','12','1')
insert into TipoDocumento values('11','PART. DE NACIMIENTO-IDENTIDAD','P. NAC.','15','1')
insert into TipoDocumento values('00','OTROS','OTROS','15','1')

insert into Rol values('Administrador','1')
insert into Rol values('Doctor','1')
insert into Rol values('Cajero','1')

insert into Origen values('Referido','1')
insert into Origen values('Facebook','1')
insert into Origen values('Web','1')
insert into Origen values('Compañas','1')

insert into Sede values('San Isidro', '','1')
insert into Sede values('Surco', '','1')
insert into Sede values('San borja', '','1')

insert into Especialidad values('ODONTOLOGIA GENERAL','1')
insert into Especialidad values('REHABILITACION ORAL','1')
insert into Especialidad values('PERIODONCIA','1')
insert into Especialidad values('ODONTOPEDIATRIA','1')

insert into EstadoPago values('Pendiente','1')
insert into EstadoPago values('Pago Parcial','1')
insert into EstadoPago values('Pago Total','1')

insert into FormaPago values('Efectivo','1')
insert into FormaPago values('Tarjeta de Débito','1')
insert into FormaPago values('Tarjeta de Crédito','1')

insert into EstadoCita values('No Confirmada','0','1')
insert into EstadoCita values('Anulada','1','1')
insert into EstadoCita values('Confirmada','0','1')
insert into EstadoCita values('Reprogramada','0','1')
insert into EstadoCita values('No Asistió','1','1')
insert into EstadoCita values('Atendiéndose','0','1')
insert into EstadoCita values('Atendida','1','1')

insert into Usuario values('axel','123','1','Axel','Vasquez','01','12365321','1')
insert into Usuario values('doctor1','1234','1','Doctor 1','Ape 1','01','69856326','2')
insert into Usuario values('doctor2','12345','1','Doctor 2','Ape 2','01','36487154','2')

insert into UsuarioSede values('1','1','1')
insert into UsuarioSede values('1','2','0')
insert into UsuarioSede values('1','3','0')
insert into UsuarioSede values('2','1','1')
insert into UsuarioSede values('2','2','0')
insert into UsuarioSede values('2','3','0')
insert into UsuarioSede values('3','1','1')
insert into UsuarioSede values('3','2','0')
insert into UsuarioSede values('3','3','0')

insert into Paciente values('01','12345681','Nombre 1','Apellido 1','01/01/1999','1','1',GETDATE(),'1')
insert into Paciente values('01','12345682','Nombre 2','Apellido 2','02/01/1999','2','1',GETDATE(),'2')
insert into Paciente values('01','12345683','Nombre 3','Apellido 3','03/01/1999','3','1',GETDATE(),'3')
insert into Paciente values('01','12345684','Nombre 4','Apellido 4','04/01/1999','4','1',GETDATE(),'1')
insert into Paciente values('01','12345685','Nombre 5','Apellido 5','05/01/1999','1','1',GETDATE(),'1')

insert into Cita values('1','2','1',GETDATE(),'1')
insert into Cita values('2','3','3',GETDATE(),'2')
insert into Cita values('3','2','1',GETDATE(),'3')
insert into Cita values('4','2','2',GETDATE(),'1')
insert into Cita values('5','3','3',GETDATE(),'1')

insert into CitaEstado values('1','1',GETDATE(),'0')
insert into CitaEstado values('1','3',GETDATE(),'1')
insert into CitaEstado values('2','1',GETDATE(),'0')
insert into CitaEstado values('2','3',GETDATE(),'1')
insert into CitaEstado values('3','1',GETDATE(),'1')
insert into CitaEstado values('4','1',GETDATE(),'1')
insert into CitaEstado values('5','1',GETDATE(),'1')


insert into OrdenVenta values('1','1',GETDATE())
insert into OrdenVenta values('2','2',GETDATE())
insert into OrdenVenta values('3','3',GETDATE())
insert into OrdenVenta values('4','3',GETDATE())
insert into OrdenVenta values('5','3',GETDATE())

insert into Pagos values('1','2','200',GETDATE(),'1')
insert into Pagos values('1','2','200',GETDATE(),'0')
insert into Pagos values('2','3','1500',GETDATE(),'0')
insert into Pagos values('3','4','1700',GETDATE(),'0')
insert into Pagos values('1','5','1000',GETDATE(),'0')
