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
            if (Session["usuario"]!=null)
            {
                Response.Redirect("Index_Full.aspx");
            }
        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            try
            {
                 controlEmpleado emp = new controlEmpleado();
            if ((emp.validarEmpleado(txt_usuario.Text, txt_contrasena.Text)) != null)
            {
                validarUsuarioResult emp1 = emp.validarEmpleado(txt_usuario.Text, txt_contrasena.Text);
                Session["usuario"] = emp1;
                lbl_info.Text = "Acediste correctamente " + emp1.em_nombre;
                    Response.Redirect("Index_Full.aspx");
            }
            else
            {
                lbl_info.Text = "Error";
            }
            }
            catch (Exception)
            {

                throw;
            }
           
            
        }
    }
}