using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("form_registro.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("form_inicio.aspx");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSetTableAdapters.tbl_usuarioTableAdapter obj = new DataSetTableAdapters.tbl_usuarioTableAdapter();
            //para tomar los valores de usuario y contraseña para mandarlas an dataset
            String email_usu = obj.login(txtCorreo.Text,txtClave.Text);
            if(email_usu!=null)
            {
                Session["usuario"] = email_usu;
                Response.Redirect("verificar.aspx");
            }
        }
        catch
        {
            lblError.Text = "Usuario o contraseña Incorrecta";
        }
    }
}