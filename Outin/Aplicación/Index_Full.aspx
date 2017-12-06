<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index_Full.aspx.cs" Inherits="Aplicación.Index_Full" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="icon" type="image/png" href="imagenes/logo-caja.png" />
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/modal.css">
<link rel="stylesheet" href="css/tablas.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/buscar.css">

<title>Outin</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
		<div class="wrapper">
			<div class="logo"><img src="imagenes/logo.png" alt=""></div>
			
			<nav>
				<a href="#" id="inicio">Inicio</a>
				<a href="#" id="nuevo">Nuevo producto</a>
				<a href="#" id="gestionar">Gestionar productos</a>
				<a href="#" id="cambios">Cambios</a>
                <asp:button runat="server" text="CerrarSession" OnClick="Unnamed1_Click" />
			</nav>
		</div>
	</header>
	
	<div id="contenido">
		
	</div>
	
	<footer>
			<h5>Designed by Outin</h5>	
		    <a href="">Contactenos</a>
	</footer>
	<script src="js/navegar.js"></script>
        </div>
    </form>
</body>
</html>
