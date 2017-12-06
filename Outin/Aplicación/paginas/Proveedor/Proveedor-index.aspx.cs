using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Aplicación.paginas.Proveedor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        controlProveedor prv = new controlProveedor();
        protected void Page_Load(object sender, EventArgs e)
        {
            listarTable();
        }
        public  void listarTable()
        {
            try
            {
                grvProveedor.DataSource = prv.listarProveedores();
                grvProveedor.DataBind();
                lbl_info.Text = "Ok";
            }
            catch (Exception ex)
            {
                lbl_info.Text = prv.Codigo + ex.Message;
            }
            
        }
    }
}