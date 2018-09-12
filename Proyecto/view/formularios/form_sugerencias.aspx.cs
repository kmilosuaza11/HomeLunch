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

public partial class view_formularios_form_sugerencias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
     tbl_sugerencias sug = new tbl_sugerencias(); 

    protected void Button1_Click(object sender, EventArgs e)
    {
        int doc_usu;
        string sugerencia;
        string fecha;

        doc_usu = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
        sugerencia = txtSugerencia.Text;
        fecha = txtFecha.Text;

        if (doc_usu == 0)
        {
            Response.Write("<script >alert('Porfavor ingrese eldocumento')</script>");
            return;
        }
        else if (sugerencia == "")
        {
            Response.Write("<script>alert('Porfavor ingrese la sugerencia')</script>");
            return;
        }
        else if (fecha == "")
        {
            Response.Write("<script>alert('Porfavor ingrese la fecha')</script>");
            return;
        }

        int rdo = sug.guardar_tbl_sugerencias(doc_usu, sugerencia, fecha);

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