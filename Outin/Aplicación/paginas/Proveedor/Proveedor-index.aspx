<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proveedor-index.aspx.cs" Inherits="Aplicación.paginas.Proveedor.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grvProveedor" runat="server"></asp:GridView>
            <asp:Label ID="lbl_info" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
