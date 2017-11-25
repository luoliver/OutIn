<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOutIn.Master" AutoEventWireup="true" CodeBehind="producto_form.aspx.cs" Inherits="Aplicación.producto_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table style="height: 286px; width: 258px">
        <tr>
            <th colspan="2">
                <asp:Label ID="lbl_Titulo" runat="server" Text="Insertar Producto"></asp:Label>
            </th>
        </tr>
        <tr>
            <td>
                <asp:label id="lbl_nomProducto" runat="server" text="Nombre" for="txt_nomProducto"></asp:label>
    
            </td>
            <td>
                <asp:TextBox ID="txt_nomProducto" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:label id="lbl_marcaProducto" runat="server" text="Marca" for="txt_marcaProducto"></asp:label>
    
            </td>
            <td>
                <asp:TextBox ID="txt_marcaProducto" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:label id="lbl_stockMin" runat="server" text="Stock Minimo" for="txt_stockMin"></asp:label>
    
            </td>
            <td>
                <asp:TextBox ID="txt_stockMin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:label id="lbl_stockMax" runat="server" text="Stock Maximo" for="txt_stockMax"></asp:label>
    
            </td>
            <td>
<asp:TextBox ID="txt_stockMax" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:label id="lbl_peso" runat="server" text="Peso" for="txt_peso"></asp:label>
   
            </td>
            <td>
 <asp:TextBox ID="txt_peso" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:label id="lbl_estado" runat="server" text="Estado" for="txt_estado"></asp:label>
    
            </td>
            <td>
<asp:TextBox ID="txt_estado" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                 <asp:label id="lbl_categoria" runat="server" text="Categoria" for="txt_categoria"></asp:label>
   
            </td>
            <td>
 <asp:TextBox ID="txt_categoria" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:button runat="server" text="Registrar Producto" id="btn_enviarProducto" style="margin-bottom: 0px" />
            </td>
        </tr>
    </table>
    


</asp:Content>
