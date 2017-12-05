using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using DataBase;


namespace Aplicación
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            controlEmpleado emp = new controlEmpleado();
            if ((emp.validarEmpleado(txt_usuario.Text, txt_contrasena.Text)) != null)
            {
                Session["usuario"] = emp.validarEmpleado(txt_usuario.Text, txt_contrasena.Text);
                lbl_info.Text = "Acediste correctamente";
            }
            else
            {
                lbl_info.Text = "Error";
            }
            
        }
    }
}