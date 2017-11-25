-- Procedimientos Almacenados OutIn
-- Modificar
-- Items (items_ListaDeChequeo)
use Outin
go
create Procedure modificarItems (@observacion varchar(150),@texto varchar(200),@calificacion bit,@id int)
as
begin
	update Items set it_observacion = @observacion,it_texto = @texto ,it_calificacion = @calificacion
	where it_iditems = @id
end
go
-- Lista de Chequeo

create procedure modificarListaChequeo 
(@fecha date,@items int, @serie int,@pregunta varchar(200),@calificacion bit, @id int)
AS
begin
	update ListaChequeo set li_fecha = @fecha,li_iditems=@items,li_serie = @serie,li_pregunta = @pregunta,li_calificacion = @calificacion
	where li_idlista = @id
end
go

-- Cambio Cliente

create procedure modificarCambioCliente 
(@lista int,@mov varchar(60),@id int)
as
begin 
	update CambioCliente set ca_idlista = @lista, ca_movimientoinventario = @mov
	where ca_idcambio = @id
end
go

-- Categoria (categoria de productos)

create procedure modificarCategoria (@nom varchar(70),@id int)
as
begin 
	update Categoria set cat_nombre=@nom
	where cat_idcategoria = @id
end
go

-- DanoDevolucion

create procedure modificarDañoDevolucion
(@mov varchar(60),@tipo varchar(20), @id int)
as
begin
	update DanoDevolucion set da_movimientoinventario = @mov,da_tipo= @tipo
	where da_iddañodevolucion=@id
end
go
-- Detalle Compra

create procedure modificarDetalleCompra (@cant int, @id int)
as
begin 
	update DetalleCompra set dtl_cantidadproducto=@cant
	where dtl_idordencompra = @id
end
go
-- Empleado corregir

create procedure modificarEmpleado 
(@nacimiento date, @nombre varchar(70), @tipo varchar(40),@dir varchar(50),@cargo varchar(50),@contacto varchar(60),@entrada date,@estado varchar(50),@id varchar(30))
as
begin 
	update Empleado set em_fechanacimiento = @nacimiento,em_nombre = @nombre,em_tipoid = @tipo,em_direccion = @dir,em_cargo = @cargo,em_contacto = @contacto,em_fechaentrada = @entrada,em_estado=@estado
	where em_identificacion = @id
end
go
--Movimiento Inventario

create procedure modificarMoviInventario 
(@identificacion int, @producto int, @tipo int,@fecha date,@fechaVenc date,@precioVenta money,@ubicacion varchar(60),@precioCompra money,@cantProducto int, @total money,@id int)
as
begin 
	update MovimientoInventario set mov_identificacionEmp = @identificacion,mov_idproducto = @producto,mov_idtipo = @tipo,mov_fecha=@fecha,mov_fechavencimiento=@fechaVenc,mov_precioventa=@precioVenta,mov_ubicacion=@ubicacion,mov_preciocompra=@precioCompra,mov_cantidadproductos=@cantProducto,mov_total = @total
	where mov_idmovimiento = @id
end
go
--- Orden de Compra

create procedure modificarOrdenCompra
(@detalle int, @lista int,@proveedor int,@fecha date,@total money,@id int)
as
begin
	update OrdenCompra set or_detalle=@detalle,or_lista=@lista,or_idproveedor=@proveedor,or_fecha=@fecha,or_total=@total
	where or_idordencompra = @id
end
go
-- Producto

create procedure modificarProducto
(@nombre varchar(70),@marca varchar(50),@stockMin int,@stockMax int,@peso float,@estado varchar(50),@categoria int,@id int)
as
begin
	update Producto set pd_nombre=@nombre,pd_marca=@marca,pd_stockmin=@stockMin,pd_stockmax=@stockMax,pd_peso=@peso,pd_estado=@estado,pd_idcategoria=@categoria
	where pd_idproducto = @id
end
go
-- Proveedor
create procedure modificarProveedor
(@estado bit, @contacto bigint,@direccion varchar(50), @nomEmpresa varchar(70),@id int)
as
begin
	update Proveedor set pro_estado=@estado,pro_contacto=@contacto,pro_direccion=@direccion,pro_nombreempresa=@nomEmpresa
	where pro_idproveedor = @id
end
go
-- Tipo movimiento inventario

create procedure modificarTipo
(@nombre varchar(60),@descripcion varchar(60),@id int)
as
begin
	update Tipo set ti_nombre=@nombre,ti_descripcion=@descripcion
	where ti_idtipo = @id
end
go
-- Venta

create Procedure modficarVenta (@fecha date,@cantidad int,@id int)
as
begin	
	update Venta set ve_fecha=@fecha,ve_cantidadproducto=@cantidad
	where ve_idventa = @id
end
go