using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Interfaces_frmEncriptacionMD5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOk_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrEmpty(txtTexto.Text)) throw new Exception("ingrese texto a encriptar.");
            Web.logica.Clases.clsEncriptacion obclsEncriptacion = new Web.logica.Clases.clsEncriptacion();
            lblTextoEncriptado.Text = obclsEncriptacion.stEncriptar(txtTexto.Text);
        }
        catch (Exception ex)
        {
            Response.Write("<Script Language='javaScript'>parent.alert('" + ex.Message  + "')</Script>");
        }
    }
}