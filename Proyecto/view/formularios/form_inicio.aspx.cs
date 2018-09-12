using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form_inicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
                Response.Cache.SetAllowResponseInBrowserHistory(false);
                Response.Cache.SetNoStore();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/view/form_pedidos.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/view/form_contratos.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/view/form_sugerencias.aspx");
    }


    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/view/form_listadopedidos.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/view/form_listadocontratos.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/view/form_genproductos.aspx");
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/view/form_listadosugerencias.aspx");
    }
}