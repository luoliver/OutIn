<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Aplicación.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Usuario: " runat="server" for="usuario"/>
            <input type="text" name="usuario" id="usuario" placeholder="ingresa tu usuario" />
            <asp:Label Text="Contraseña" runat="server" for="contrasena"/>
            <input type="password" name="contrasena" id="contrasena" placeholder="ingresa contraseña"/>
            <asp:Button ID="btn_ingresar" runat="server" Text="Ingresar" OnClick="btn_ingresar_Click" />
            
        </div>       
    </form>
</body>
</html>
