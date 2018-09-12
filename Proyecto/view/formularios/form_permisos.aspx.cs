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

public partial class view_formularios_permisos : System.Web.UI.Page
{
    tbl_permisos per = new tbl_permisos();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id_permiso;
        string permiso;

        id_permiso = Convert.ToInt32(TextBox1.Text);
        permiso = TextBox2.Text;

        if (id_permiso == 0)
        {
            Response.Write("<script >alert('Porfavor ingrese el ID del Permiso')</script>");
            return;
        } else if (permiso == "")
        {
            Response.Write("<script>alert('Porfavor ingrese el Permiso')</script>");
            return;
        }

        int rdo = per.guardar_tbl_permisos(id_permiso,permiso);

        if (rdo == 1)
        {
            Response.Write("<script>alert('Guardado Correctamente')</script>");
        }else if (rdo == 0)
        {
            Response.Write("<script>alert('Error al Guardar Porfavor Verifique El codigo')</script>");
        }

    }
}