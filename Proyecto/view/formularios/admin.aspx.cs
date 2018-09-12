using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_formularios_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Bienvenido: " + Session["usuario"]);

        string usuario = (string)Session["usuario"];
        if(Session["usuario"]==null)
        {
            Response.Redirect("form_inicio.aspx");
        }
    }
}