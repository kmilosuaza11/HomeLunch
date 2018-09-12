using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//camilo suaza 29/08/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class form_registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
  
    }
    tbl_usuario usu = new tbl_usuario();


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/view/form_inicio.aspx");
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        string doc_usu;
        string nombre;
        string apellidos;
        string telefono;
        string clave;
        string email_usu;

        doc_usu = txtDocumento.Text;
        nombre = txtNombre.Text;
        apellidos = txtApellido.Text;
        telefono = txtTelefono.Text;
        clave = txtClave.Text;
        email_usu = txtCorreo.Text;

        if (doc_usu == "")
        {
            // Response.Write("<script >alert('Porfavor ingrese eldocumento')</script>");
            lblDocumento.Text = "porfavor ingrese el documento";
            return;
        }
        else if (nombre == "")
        {
            Response.Write("<script>alert('Porfavor ingrese el nombre')</script>");
            return;
        }
        else if (apellidos == "")
        {
            Response.Write("<script>alert('Porfavor ingrese apellidos')</script>");
            return;
        }
        else if (telefono == "")
        {
            Response.Write("<script>alert('Porfavor ingrese telefono')</script>");
            return;
        }
        else if (clave == "")
        {
            Response.Write("<script>alert('Porfavor ingrese la clave')</script>");
            return;
        }
        else if (email_usu == "")
        {
            Response.Write("<script>alert('Porfavor ingrese el correo')</script>");
            return;
        }

        int rdo = usu.guardar_tbl_usuario(doc_usu, nombre, apellidos, telefono, clave, email_usu);

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