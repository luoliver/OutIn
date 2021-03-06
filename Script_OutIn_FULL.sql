/*    ==ScriptingParameters==

    SourceServerVersion : SQL Server 2008 (10.0.2531)
    SourceDatabaseEngineEdition : Microsoft SQL Server Express Edition
    SourceDatabaseEngineType : SQL Server independiente

    TargetServerVersion : SQL Server 2017
    TargetDatabaseEngineEdition : Microsoft SQL Server Standard Edition
    TargetDatabaseEngineType : SQL Server independiente
*/
USE [master]
GO
/****** Object:  Database [Outin]    Script Date: 06/12/17 16:11:19 ******/
CREATE DATABASE [Outin] ON  PRIMARY 
( NAME = N'Outin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Outin.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Outin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Outin_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Outin] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Outin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Outin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Outin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Outin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Outin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Outin] SET ARITHABORT OFF 
GO
ALTER DATABASE [Outin] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Outin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Outin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Outin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Outin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Outin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Outin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Outin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Outin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Outin] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Outin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Outin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Outin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Outin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Outin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Outin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Outin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Outin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Outin] SET  MULTI_USER 
GO
ALTER DATABASE [Outin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Outin] SET DB_CHAINING OFF 
GO
USE [Outin]
GO
/****** Object:  Table [dbo].[CambioCliente]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CambioCliente](
	[ca_idcambio] [int] IDENTITY(1,1) NOT NULL,
	[ca_idlista] [int] NULL,
	[ca_movimientoinventario] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[ca_idcambio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[cat_idcategoria] [int] IDENTITY(1,1) NOT NULL,
	[cat_nombre] [varchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanoDevolucion]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanoDevolucion](
	[da_iddañodevolucion] [int] IDENTITY(1,1) NOT NULL,
	[da_movimientoinventario] [varchar](60) NOT NULL,
	[da_tipo] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[da_iddañodevolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleCompra]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleCompra](
	[dtl_idordencompra] [int] IDENTITY(1,1) NOT NULL,
	[dtl_cantidadproducto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dtl_idordencompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[em_identificacion] [varchar](30) NOT NULL,
	[em_fechanacimiento] [date] NOT NULL,
	[em_nombre] [varchar](70) NOT NULL,
	[em_contrasena] [varchar](50) NOT NULL,
	[em_tipoid] [varchar](40) NOT NULL,
	[em_direccion] [varchar](50) NOT NULL,
	[em_cargo] [varchar](50) NOT NULL,
	[em_contacto] [varchar](60) NOT NULL,
	[em_fechaentrada] [date] NOT NULL,
	[em_estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Empleado__A0FF701C7F60ED59] PRIMARY KEY CLUSTERED 
(
	[em_identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[it_iditems] [int] IDENTITY(1,1) NOT NULL,
	[it_observacion] [varchar](150) NULL,
	[it_texto] [varchar](200) NOT NULL,
	[it_calificacion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[it_iditems] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaChequeo]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaChequeo](
	[li_idlista] [int] IDENTITY(1,1) NOT NULL,
	[li_fecha] [date] NOT NULL,
	[li_iditems] [int] NULL,
	[li_serie] [int] NOT NULL,
	[li_pregunta] [varchar](200) NOT NULL,
	[li_calificacion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[li_idlista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimientoInventario]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimientoInventario](
	[mov_idmovimiento] [int] IDENTITY(1,1) NOT NULL,
	[mov_identificacionEmp] [varchar](30) NULL,
	[mov_idproducto] [int] NULL,
	[mov_idtipo] [int] NULL,
	[mov_fecha] [date] NOT NULL,
	[mov_fechavencimiento] [date] NOT NULL,
	[mov_ubicacion] [varchar](60) NOT NULL,
	[mov_cantidadproductos] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mov_idmovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenCompra]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenCompra](
	[or_idordencompra] [int] IDENTITY(1,1) NOT NULL,
	[or_detalle] [int] NULL,
	[or_lista] [int] NULL,
	[or_idproveedor] [int] NULL,
	[or_fecha] [date] NOT NULL,
	[or_total] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[or_idordencompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[pd_idproducto] [int] IDENTITY(1,1) NOT NULL,
	[pd_nombre] [varchar](70) NOT NULL,
	[pd_marca] [varchar](50) NULL,
	[pd_stockmin] [int] NOT NULL,
	[pd_stockmax] [int] NOT NULL,
	[pd_peso] [float] NOT NULL,
	[pd_precioventa] [money] NOT NULL,
	[pd_preciocompra] [money] NOT NULL,
	[pd_estado] [varchar](50) NOT NULL,
	[pd_cantidadproductos] [int] NOT NULL,
	[pd_idcategoria] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pd_idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[pro_idproveedor] [int] IDENTITY(1,1) NOT NULL,
	[pro_estado] [bit] NULL,
	[pro_contacto] [bigint] NOT NULL,
	[pro_direccion] [varchar](50) NOT NULL,
	[pro_nombreempresa] [varchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pro_idproveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[ti_idtipo] [int] IDENTITY(1,1) NOT NULL,
	[ti_nombre] [varchar](60) NOT NULL,
	[ti_descripcion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[ti_idtipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[ve_idventa] [int] IDENTITY(1,1) NOT NULL,
	[ve_fecha] [date] NOT NULL,
	[ve_cantidadproducto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ve_idventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Items] ADD  DEFAULT ((0)) FOR [it_calificacion]
GO
ALTER TABLE [dbo].[ListaChequeo] ADD  DEFAULT ((0)) FOR [li_calificacion]
GO
ALTER TABLE [dbo].[Producto] ADD  DEFAULT ((0)) FOR [pd_cantidadproductos]
GO
ALTER TABLE [dbo].[Proveedor] ADD  DEFAULT ((0)) FOR [pro_estado]
GO
ALTER TABLE [dbo].[CambioCliente]  WITH CHECK ADD FOREIGN KEY([ca_idlista])
REFERENCES [dbo].[ListaChequeo] ([li_idlista])
GO
ALTER TABLE [dbo].[ListaChequeo]  WITH CHECK ADD FOREIGN KEY([li_iditems])
REFERENCES [dbo].[Items] ([it_iditems])
GO
ALTER TABLE [dbo].[MovimientoInventario]  WITH CHECK ADD  CONSTRAINT [FK__Movimient__mov_i__38996AB5] FOREIGN KEY([mov_identificacionEmp])
REFERENCES [dbo].[Empleado] ([em_identificacion])
GO
ALTER TABLE [dbo].[MovimientoInventario] CHECK CONSTRAINT [FK__Movimient__mov_i__38996AB5]
GO
ALTER TABLE [dbo].[MovimientoInventario]  WITH CHECK ADD FOREIGN KEY([mov_idproducto])
REFERENCES [dbo].[Producto] ([pd_idproducto])
GO
ALTER TABLE [dbo].[MovimientoInventario]  WITH CHECK ADD FOREIGN KEY([mov_idtipo])
REFERENCES [dbo].[Tipo] ([ti_idtipo])
GO
ALTER TABLE [dbo].[OrdenCompra]  WITH CHECK ADD FOREIGN KEY([or_detalle])
REFERENCES [dbo].[DetalleCompra] ([dtl_idordencompra])
GO
ALTER TABLE [dbo].[OrdenCompra]  WITH CHECK ADD FOREIGN KEY([or_idproveedor])
REFERENCES [dbo].[Proveedor] ([pro_idproveedor])
GO
ALTER TABLE [dbo].[OrdenCompra]  WITH CHECK ADD FOREIGN KEY([or_lista])
REFERENCES [dbo].[ListaChequeo] ([li_idlista])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([pd_idcategoria])
REFERENCES [dbo].[Categoria] ([cat_idcategoria])
GO
/****** Object:  StoredProcedure [dbo].[insertarCambioCliente]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Cambio Cliente

create procedure [dbo].[insertarCambioCliente] 
(@lista int,@mov varchar(60))
as
begin 
	insert into CambioCliente ( ca_idlista, ca_movimientoinventario)
	values (@lista,@mov)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarCategoria]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Categoria (categoria de productos)

create procedure [dbo].[insertarCategoria] (@nom varchar(70))
as
begin 
	insert into Categoria (cat_nombre)
	values (@nom)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarDañoDevolucion]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- DanoDevolucion

create procedure [dbo].[insertarDañoDevolucion]
(@mov varchar(60),@tipo varchar(20))
as
begin
	insert into DanoDevolucion (da_movimientoinventario ,da_tipo)
	values(@mov,@tipo)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarDetalleCompra]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Detalle Compra

create procedure [dbo].[insertarDetalleCompra] (@cant int)
as
begin 
	insert into DetalleCompra(dtl_cantidadproducto)
	values (@cant)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarEmpleado]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Empleado corregir

CREATE procedure [dbo].[insertarEmpleado] 
(@id varchar(30),@nacimiento date, @nombre varchar(70),@contrasena varchar(50), @tipo varchar(40),@dir varchar(50),@cargo varchar(50),@contacto varchar(60),@entrada date,@estado varchar(50))
as
begin 
	insert into Empleado (em_identificacion,em_fechanacimiento,em_nombre,em_contrasena,em_tipoid,em_direccion,em_cargo,em_contacto,em_fechaentrada,em_estado)
	values (@id,@nacimiento,@nombre,@contrasena,@tipo,@dir,@cargo,@contacto,@entrada,@estado)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarListaChequeo]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Lista de Chequeo

create procedure [dbo].[insertarListaChequeo] 
(@fecha date,@items int, @serie int,@pregunta varchar(200),@calificacion bit)
AS
begin
	insert into ListaChequeo (li_fecha,li_iditems,li_serie ,li_pregunta ,li_calificacion)
	values (@fecha,@items,@serie,@pregunta,@calificacion)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarMoviInventario]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Movimiento Inventario

create procedure [dbo].[insertarMoviInventario] 
(@identificacion int, @producto int, @tipo int,@fecha date,@fechaVenc date,@ubicacion varchar(60),@cantidad int)
as
begin 
	insert into MovimientoInventario( mov_identificacionEmp ,mov_idproducto ,mov_idtipo,mov_fecha,mov_fechavencimiento,mov_ubicacion,mov_cantidadproductos)
	values (@identificacion,@producto,@tipo,@fecha,@fechaVenc,@ubicacion,@cantidad)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarOrdenCompra]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Orden de Compra

create procedure [dbo].[insertarOrdenCompra]
(@detalle int, @lista int,@proveedor int,@fecha date,@total money)
as
begin
	insert into OrdenCompra( or_detalle,or_lista,or_idproveedor,or_fecha,or_total)
	values(@detalle,@lista,@proveedor,@fecha,@total)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarProducto]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Producto

CREATE procedure [dbo].[insertarProducto]
(@nombre varchar(70),@marca varchar(50),@stockMin int,@stockMax int,@peso float,@preCompra money,@preVenta money,@estado varchar(50),@cant int = null,@categoria int)
as
begin
	insert into Producto ( pd_nombre,pd_marca,pd_stockmin,pd_stockmax,pd_peso,pd_preciocompra,pd_precioventa,pd_estado,pd_cantidadproductos,pd_idcategoria)
	values(@nombre,@marca,@stockMin,@stockMax,@peso,@preCompra,@preVenta,@estado,@cant,@categoria)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarProveedor]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Proveedor
CREATE procedure [dbo].[insertarProveedor]
(@estado bit, @contacto bigint,@direccion varchar(50), @nomEmpresa varchar(70))
as
begin
	insert into Proveedor ( pro_estado,pro_contacto,pro_direccion,pro_nombreempresa)
	values(@estado,@contacto,@direccion,@nomEmpresa)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarTipo]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Tipo movimiento inventario

create procedure [dbo].[insertarTipo]
(@nombre varchar(60),@descripcion varchar(60),@id int)
as
begin
	insert into Tipo ( ti_nombre,ti_descripcion)
	values(@nombre,@descripcion)
end
GO
/****** Object:  StoredProcedure [dbo].[insertarVenta]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Venta

create Procedure [dbo].[insertarVenta] (@fecha date,@cantidad int,@id int)
as
begin	
	insert into Venta ( ve_fecha,ve_cantidadproducto)
	values(@fecha,@cantidad)
end
GO
/****** Object:  StoredProcedure [dbo].[insetarItems]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[insetarItems] (@observacion varchar(150),@texto varchar(200),@calificacion bit)
as
begin
	insert into Items (it_observacion,it_texto,it_calificacion)
	values (@observacion,@texto,@calificacion)
end
GO
/****** Object:  StoredProcedure [dbo].[listarEmpleado]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[listarEmpleado]
as
select em_tipoid,em_identificacion,em_nombre,em_cargo,em_contacto,em_fechanacimiento,em_fechaentrada,em_estado from Empleado
GO
/****** Object:  StoredProcedure [dbo].[listProveedor]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[listProveedor]
as
select pro_nombreempresa as 'Nombre Empresa',pro_direccion as 'Direccion Empresa',pro_contacto as 'Numero de Contacto',pro_estado as 'Estado del proveedor'  from Proveedor
GO
/****** Object:  StoredProcedure [dbo].[validarUsuario]    Script Date: 06/12/17 16:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[validarUsuario]
(@usuario varchar(30),@contrasena varchar(50))
as 
begin
select * from Empleado 
where em_identificacion = @usuario and em_contrasena = @contrasena
end
GO
USE [master]
GO
ALTER DATABASE [Outin] SET  READ_WRITE 
GO
