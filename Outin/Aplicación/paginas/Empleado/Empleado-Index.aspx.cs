using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Aplicación.paginas.Empleado
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        controlEmpleado emp = new controlEmpleado();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Llenartable();
        }
        public void Llenartable()
        {
            try
            {
                grvEmpleados.DataSource = emp.listarEmpleados();
                grvEmpleados.DataBind();
                lbl_info.Text = emp.Codigo + emp.Rta;
            }
            catch (Exception ex)
            {
                lbl_info.Text = emp.Codigo + ex.Message;
            }
        }
    }
}