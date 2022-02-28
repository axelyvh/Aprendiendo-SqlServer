use [Axel.Sistema]
go

-- DWH: Pacientes

select 
p.NumDocumento,
ori.Descripcion 'Origen',
CONVERT(date, p.FechaCreacion) 'FechaCreacion',
sed.Descripcion 'Sede'
from Paciente p
inner join Origen ori on p.OrigenId = ori.Id
inner join Sede sed on p.SedeId = sed.Id
where CONVERT(date, p.FechaCreacion) = CONVERT(date, GETDATE())

-- DWH: Pagos

select 
fp.Descripcion 'FormaPago',
sed.Descripcion 'Sede',
convert(date, pa.FechaCreacion) 'FechaCreacion',
SUM(pa.Monto) 'Monto'
from Pagos pa
inner join FormaPago fp on pa.FormaPagoId = fp.Id
inner join OrdenVenta ov on pa.OrdenVentaId = ov.Id
inner join Cita cit on ov.CitaId = cit.Id
inner join Sede sed on cit.SedeId = sed.Id
where pa.Anulado <> 1
group by fp.Descripcion, sed.Descripcion, convert(date, pa.FechaCreacion)

-- DWH: Citas
select 
cit.Id 'CitaId',
usu.Nombres 'Doctor',
esp.Descripcion 'Especialidad',
CONVERT(date, cit.FechaCreacion) 'FechaCreacion',
ec.Descripcion 'EstadoDescripcion',
ce.FechaCreacion 'EstadoFecha',
ec.Finalizado 'EstadoFinalizado',
sed.Descripcion 'Sede'
from Cita cit
inner join Usuario usu on cit.DoctorId = usu.Id
inner join Especialidad esp on cit.EspecialidadId = esp.Id
inner join Sede sed on cit.SedeId = sed.Id
inner join CitaEstado ce on cit.Id = ce.CitaId and ce.Estado = 1
inner join EstadoCita ec on ce.EstadoCitaId = ec.Id
where 
(ec.Finalizado = 0 or CONVERT(date, ce.FechaCreacion) = CONVERT(date, GETDATE()))

-- DWH: Sedes
select Descripcion from Sede