<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form-producto.aspx.cs" Inherits="Aplicación.paginas.form_producto" %>

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
                        <asp:Label ID="lbl_titulo" runat="server" Text="Insertar Producto"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_nombre" runat="server" Text="Nombre" For="txt_Nombre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Nombre" runat="server" placeholder="Ingresa nombre producto"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_Marca" runat="server" Text="Marca" For="txt_Marca"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_Marca" runat="server" placeholder="Ingresa marca producto"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_stockMin" runat="server" Text="Stock Minimo" for="txt_StockMin"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_StockMin" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_stockMax" runat="server" Text="Stock Maximo" for="txt_StockMax"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_StockMax" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lbl_preCompra" runat="server" Text="Precio de Compra" for="txt_preCompra"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_preCompra" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_preVenta" runat="server" Text="Precio de Venta" for="txt_preVenta"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_preVenta" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_peso" runat="server" Text="Peso" for="txt_Peso"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_Peso" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_estado" runat="server" Text="Estado" for="DropDownList_Estado"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList_Estado" runat="server">
                        </asp:DropDownList></td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lblCantidad" runat="server" Text="Cantidad de Productos" for="txt_cantidad"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_cantidad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_categoria" runat="server" Text="Categoria" for="DropDownList_Categoria"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList_Categoria" runat="server"></asp:DropDownList></td>
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
