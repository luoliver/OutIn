<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form-Empleado.aspx.cs" Inherits="Aplicación.paginas.Empleado.form_Empleado" %>

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
                        <asp:Label ID="lbl_titulo" runat="server" Text="Insertar Empleado"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_identificacion" runat="server" Text="Identificación" For="txt_identificacion"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_identificacion" runat="server" placeholder="Ingresa identificacion del empleado"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_nombre" runat="server" Text="Nombre" For="txt_Nombre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Nombre" runat="server" placeholder="Ingresa nombre empleado"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_Contrasena" runat="server" Text="Contraseña" For="txt_Contrasena"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_Contrasena" runat="server" placeholder="Ingresa Contraseña del empleado"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lbl_tipoId" runat="server" Text="Tipo Identificacion" for="DropDownList_tipoId"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList_tipoId" runat="server">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_direccion" runat="server" Text="Dirección" for="txt_direccion"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_direccion" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_cargo" runat="server" Text="Cargo" for="txt_cargo"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_cargo" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lbl_Contacto" runat="server" Text="Numero de Contacto" for="txt_contacto"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_contacto" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_fechaNacimiento" runat="server" Text="Fecha de Nacimiento" for="cal_fecNacimiento"></asp:Label></td>
                    <td>
                        <asp:Calendar ID="cal_fecNacimiento" runat="server"></asp:Calendar> </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_fechaIngreso" runat="server" Text="Fecha de Ingreso" for="cal_fecIngreso"></asp:Label></td>
                    <td>
                        <asp:Calendar ID="cal_fecIngreso" runat="server"></asp:Calendar> </td>
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
            <asp:Label ID="lbl_info" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
