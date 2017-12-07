using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;


namespace Aplicación.paginas.Empleado
{
    public partial class form_Empleado : System.Web.UI.Page
    {
        controlEmpleado emp = new controlEmpleado();
        Respuesta rsp = new Respuesta();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("login.aspx");
            }
            DropDownList_Estado.Items.Add("Activo");
            DropDownList_Estado.Items.Add("Inactivo");
            DropDownList_tipoId.Items.Add("C.C.");
            DropDownList_tipoId.Items.Add("C.E.");
        }

        protected void btn_insertarProducto_Click(object sender, EventArgs e)
        {
            if(emp.insertarEmpleado(txt_identificacion.Text,cal_fecNacimiento.SelectedDate, txt_Nombre.Text,txt_Contrasena.Text, DropDownList_tipoId.Text, txt_direccion.Text, txt_cargo.Text, txt_contacto.Text, cal_fecIngreso.SelectedDate, DropDownList_Estado.Text))
            {
                lbl_info.Text = "Sucess";
            }
            else
            {
                lbl_info.Text = "Error" + rsp.Codigo + rsp.Rta;
            }
        }
    }
}