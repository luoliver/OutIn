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
            <asp:Label Text="Usuario: " runat="server" for="txt_usuario"/>
            <asp:TextBox ID="txt_usuario" runat="server" placeholder="ingresa tu usuario"></asp:TextBox>
            <asp:Label Text="Contraseña" runat="server" for="txt_contrasena"/>
            <asp:TextBox ID="txt_contrasena" runat="server" placeholder="ingresa contraseña"></asp:TextBox>
            <asp:Button ID="btn_ingresar" runat="server" Text="Ingresar" OnClick="btn_ingresar_Click" />
            <asp:Label ID="lbl_info" runat="server" Text=""></asp:Label>
            
        </div>       
    </form>
</body>
</html>
