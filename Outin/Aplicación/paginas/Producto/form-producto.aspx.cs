using DataBase;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicación.paginas
{
    public partial class form_producto : System.Web.UI.Page
    {
        controlProductos producto = new controlProductos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("login.aspx");
            }
            DropDownList_Estado.Items.Add("Activo");
            DropDownList_Estado.Items.Add("Inactivo");
            DropDownList_Categoria.Items.Add("1");
        }

        protected void btn_insertarProducto_Click(object sender, EventArgs e)
        {
            producto.insertarProducto(txt_Nombre.Text, txt_Marca.Text, Convert.ToInt32(txt_StockMin.Text), Convert.ToInt32(txt_StockMax.Text), Convert.ToDouble(txt_Peso.Text),Convert.ToDecimal(txt_preCompra.Text),Convert.ToDecimal(txt_preVenta.Text), DropDownList_Estado.Text,Convert.ToInt32(txt_cantidad.Text), Convert.ToInt32(DropDownList_Categoria.Text));
        }

       
    }
}