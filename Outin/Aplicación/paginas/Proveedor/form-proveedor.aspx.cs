using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Aplicación.paginas.Proveedor
{
    public partial class form_proveedor : System.Web.UI.Page
    {
        controlProveedor prov = new controlProveedor();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList_Estado.Items.Add("Activo");
            DropDownList_Estado.Items.Add("Inactivo");
        }

        protected void btn_insertarProveedor_Click(object sender, EventArgs e)
        {
            bool est = false;
            if (DropDownList_Estado.Text == "Activo")
            {
                est = true;
            }
            prov.insertarProveedor(est, Convert.ToInt64(txt_contacto.Text), txt_direccion.Text, txt_Nombre.Text);
        }
    }
}