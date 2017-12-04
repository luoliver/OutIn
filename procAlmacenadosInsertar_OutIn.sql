-- Procedimientos Almacenados OutIn
-- Insertar
-- Items (items_ListaDeChequeo)
use Outin
go
create Procedure insetarItems (@observacion varchar(150),@texto varchar(200),@calificacion bit)
as
begin
	insert into Items (it_observacion,it_texto,it_calificacion)
	values (@observacion,@texto,@calificacion)
end
go
-- Lista de Chequeo

create procedure insertarListaChequeo 
(@fecha date,@items int, @serie int,@pregunta varchar(200),@calificacion bit)
AS
begin
	insert into ListaChequeo (li_fecha,li_iditems,li_serie ,li_pregunta ,li_calificacion)
	values (@fecha,@items,@serie,@pregunta,@calificacion)
end
go

-- Cambio Cliente

create procedure insertarCambioCliente 
(@lista int,@mov varchar(60))
as
begin 
	insert into CambioCliente ( ca_idlista, ca_movimientoinventario)
	values (@lista,@mov)
end
go

-- Categoria (categoria de productos)

create procedure insertarCategoria (@nom varchar(70))
as
begin 
	insert into Categoria (cat_nombre)
	values (@nom)
end
go

-- DanoDevolucion

create procedure insertarDañoDevolucion
(@mov varchar(60),@tipo varchar(20))
as
begin
	insert into DanoDevolucion (da_movimientoinventario ,da_tipo)
	values(@mov,@tipo)
end
go
-- Detalle Compra

create procedure insertarDetalleCompra (@cant int)
as
begin 
	insert into DetalleCompra(dtl_cantidadproducto)
	values (@cant)
end
go
-- Empleado corregir

create procedure insertarEmpleado 
(@nacimiento date, @nombre varchar(70), @tipo varchar(40),@dir varchar(50),@cargo varchar(50),@contacto varchar(60),@entrada date,@estado varchar(50))
as
begin 
	insert into Empleado (em_fechanacimiento,em_nombre,em_tipoid,em_direccion,em_cargo,em_contacto,em_fechaentrada,em_estado)
	values (@nacimiento,@nombre,@tipo,@dir,@cargo,@contacto,@entrada,@estado)
end
go
--Movimiento Inventario

create procedure insertarMoviInventario 
(@identificacion int, @producto int, @tipo int,@fecha date,@fechaVenc date,@ubicacion varchar(60),@cantidad int)
as
begin 
	insert into MovimientoInventario( mov_identificacionEmp ,mov_idproducto ,mov_idtipo,mov_fecha,mov_fechavencimiento,mov_ubicacion,mov_cantidadproductos)
	values (@identificacion,@producto,@tipo,@fecha,@fechaVenc,@ubicacion,@cantidad)
end
go
--- Orden de Compra

create procedure insertarOrdenCompra
(@detalle int, @lista int,@proveedor int,@fecha date,@total money)
as
begin
	insert into OrdenCompra( or_detalle,or_lista,or_idproveedor,or_fecha,or_total)
	values(@detalle,@lista,@proveedor,@fecha,@total)
end
go
-- Producto

create procedure insertarProducto
(@nombre varchar(70),@marca varchar(50),@stockMin int,@stockMax int,@peso float,@preCompra money,@preVenta money,@estado varchar(50),@cant int = null,@categoria int)
as
begin
	insert into Producto ( pd_nombre,pd_marca,pd_stockmin,pd_stockmax,pd_peso,pd_preciocompra,mov_precioventa,pd_estado,pd_cantidadproductos,pd_idcategoria)
	values(@nombre,@marca,@stockMin,@stockMax,@peso,@preCompra,@preVenta,@estado,@cant,@categoria)
end
go
-- Proveedor
create procedure insertarProveedor
(@estado bit, @contacto bigint,@direccion varchar(50), @nomEmpresa varchar(70),@id int)
as
begin
	insert into Proveedor ( pro_estado,pro_contacto,pro_direccion,pro_nombreempresa)
	values(@estado,@contacto,@direccion,@nomEmpresa)
end
go
-- Tipo movimiento inventario

create procedure insertarTipo
(@nombre varchar(60),@descripcion varchar(60),@id int)
as
begin
	insert into Tipo ( ti_nombre,ti_descripcion)
	values(@nombre,@descripcion)
end
go
-- Venta

create Procedure insertarVenta (@fecha date,@cantidad int,@id int)
as
begin	
	insert into Venta ( ve_fecha,ve_cantidadproducto)
	values(@fecha,@cantidad)
end
go