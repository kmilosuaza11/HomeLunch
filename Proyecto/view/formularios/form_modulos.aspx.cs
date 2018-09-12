using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//camilo suaza 22/08/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class view_form_modulos : System.Web.UI.Page
{
    tbl_modulos mod = new tbl_modulos();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = "0";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id_modulo;
        string nom_modulo;

        id_modulo = Convert.ToInt32(TextBox1.Text);
        nom_modulo = TextBox2.Text;

        if (id_modulo == 0)
        {
            Response.Write("<script >alert('Porfavor ingrese el ID del Modulo')</script>");
            return;
        }
        else if (nom_modulo == "")
        {
            Response.Write("<script>alert('Porfavor ingrese el nombre del Modulo')</script>");
            return;
        }

        int rdo = mod.guardar_tbl_modulos(id_modulo, nom_modulo);

        if (rdo == 1)
        {
            Response.Write("<script>alert('Guardado Correctamente')</script>");
        }
        else if (rdo == 0)
        {
            Response.Write("<script>alert('Error al Guardar Porfavor Verifique El codigo')</script>");
        }

    }
}