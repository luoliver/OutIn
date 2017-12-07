using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicación
{
    public partial class Index_Full : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"]==null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                string script = @"<script type='text/javascript'>
                            asignarbotones();
                        </script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "asignarbotones", script, false);
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session["usuario"] = null;
            Response.Redirect("login.aspx");
        }
    }
}