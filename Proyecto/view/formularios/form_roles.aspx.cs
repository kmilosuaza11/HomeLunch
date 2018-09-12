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

public partial class view_formularios_form_roles : System.Web.UI.Page
{
    tbl_rol rol = new tbl_rol();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id_rol;
        string nombre;

        id_rol = Convert.ToInt32(TextBox1.Text);
        nombre = TextBox2.Text;

        if (id_rol == 0)
        {
            Response.Write("<script >alert('Porfavor ingrese el ID del Rol')</script>");
            return;
        }
        else if (nombre == "")
        {
            Response.Write("<script>alert('Porfavor ingrese el nombre del rol')</script>");
            return;
        }

        int rdo = rol.guardar_tbl_rol(id_rol, nombre);

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