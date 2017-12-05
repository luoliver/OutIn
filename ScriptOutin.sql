create database Outin
go
use OutIn
go
create table Empleado(
em_identificacion varchar(30) primary key  not null,
em_fechanacimiento date not null,
em_nombre varchar(70) not null,
em_tipoid varchar(40) not null,
em_direccion varchar(50) not null,
em_cargo varchar(50) not null,
em_contacto varchar(60)not null,
em_fechaentrada date not null,
em_estado varchar(50)not null) 



create table DetalleCompra(
dtl_idordencompra int not null identity primary key,
dtl_cantidadproducto int not null)


create table Proveedor(
pro_idproveedor int identity not null primary key,
pro_estado bit default 0,
pro_contacto bigint not null,
pro_direccion varchar(50) not null,
pro_nombreempresa varchar(70) not null)


create table Items(
it_iditems int identity not null  primary key,
it_observacion varchar(150),
it_texto varchar(200) not null,
it_calificacion bit  default 0 not null)


create table ListaChequeo(
li_idlista int identity not null primary key,
li_fecha date not null,
li_iditems int FOREIGN KEY (li_iditems) REFERENCES Items(it_iditems),
li_serie int  not null,
li_pregunta varchar(200) not null,
li_calificacion bit default 0 not null)


create table CambioCliente(
ca_idcambio int identity not null primary key,
ca_idlista int FOREIGN KEY (ca_idlista)REFERENCES ListaChequeo(li_idlista),
ca_movimientoinventario varchar(60))

create table OrdenCompra(
or_idordencompra int not null identity primary key,
/*(FK)*/or_detalle int  FOREIGN KEY (or_detalle)REFERENCES DetalleCompra(dtl_idordencompra),
/*(FK)*/or_lista int FOREIGN KEY (or_lista) REFERENCES ListaChequeo(li_idlista),
/*(FK)*/or_idproveedor int FOREIGN KEY (or_idproveedor)REFERENCES Proveedor(pro_idproveedor),
or_fecha date not null,
or_total money not null)   

create table DanoDevolucion(
da_iddañodevolucion int identity not null primary key,
da_movimientoinventario varchar(60) not null,
da_tipo varchar(20)not null)


create table Venta(
ve_idventa int identity not null primary key,
ve_fecha date not null,
ve_cantidadproducto int)


create table Tipo(
ti_idtipo int identity not null primary key,
ti_nombre varchar(60) not null,
ti_descripcion varchar(60))


create table Categoria(
cat_idcategoria int identity not null primary key,
cat_nombre varchar(70)not null)


create table Producto(
pd_idproducto int identity not null primary key,
pd_nombre varchar(70) not null,
pd_marca varchar(50),
pd_stockmin int not null,
pd_stockmax int not null,
pd_peso float not null, 
mov_precioventa money not null,
pd_preciocompra money not null,
pd_estado varchar(50) not null,
pd_cantidadproductos int default 0 not null,
pd_idcategoria int FOREIGN KEY (pd_idcategoria) REFERENCES Categoria(cat_idcategoria))


create table MovimientoInventario(
mov_idmovimiento int identity not null primary key,
/*(FK)*/mov_identificacionEmp varchar(30) FOREIGN KEY (mov_identificacionEmp) REFERENCES Empleado(em_identificacion),
/*(FK)*/mov_idproducto int FOREIGN KEY (mov_idproducto) REFERENCES producto(pd_idproducto), 
/*(FK)*/mov_idtipo int FOREIGN KEY (mov_idtipo) REFERENCES Tipo(ti_idtipo),
mov_fecha date not null,
mov_fechavencimiento date not null,
mov_ubicacion varchar(60) not null,
mov_cantidadproductos int not null
)
go
