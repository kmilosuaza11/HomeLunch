using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_formularios_verificar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["usuario"].Equals("admin@admin.com"))
        {
            Response.Redirect("admin.aspx");
        }
        else
        {
            Response.Redirect("usuario.aspx");
        }
    }
}