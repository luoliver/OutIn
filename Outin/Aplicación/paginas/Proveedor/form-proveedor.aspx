<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form-proveedor.aspx.cs" Inherits="Aplicación.paginas.Proveedor.form_proveedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th colspan="2">
                        <asp:Label ID="lbl_titulo" runat="server" Text="Insertar Proveedor"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_nombre" runat="server" Text="Nombre" For="txt_Nombre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Nombre" runat="server" placeholder="Ingresa nombre proveedor"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_contacto" runat="server" Text="Contacto" For="txt_contacto"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_contacto" runat="server" placeholder="Ingresa numero de contacto"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_direccion" runat="server" Text="Direccion" for="txt_direccion"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_direccion" runat="server"></asp:TextBox></td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="lbl_estado" runat="server" Text="Estado" for="DropDownList_Estado"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList_Estado" runat="server">
                        </asp:DropDownList></td>
                </tr>     
                 <tr>
                    <td colspan="2">
                        <asp:Button ID="btn_insertarProducto" runat="server" Text="Insertar Producto" OnClick="btn_insertarProducto_Click" /></td>                    
                </tr>  
            </table>
        </div>
    </form>
</body>
</html>
