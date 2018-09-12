using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//camilo suaza 30/08/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class form_contratos : System.Web.UI.Page
{
    tbl_contratos con = new tbl_contratos();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        int doc_usu;
        string descripcion;
        string producto;
        string estado;
        string fech_ini;
        string fech_fin;

        doc_usu = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
        descripcion = TextBox1.Text;
        producto = DropDownList2.Text;
        estado = TextBox2.Text;
        fech_ini = TextBox3.Text;
        fech_fin = TextBox4.Text;


        if (doc_usu == 0)
        {
            Response.Write("<script >alert('Porfavor ingrese el documento')</script>");
            return;
        }
        else if (descripcion == "")
        {
            Response.Write("<script>alert('Porfavor ingrese la descripcion')</script>");
            return;
        }
        else if (producto == "")
        {
            Response.Write("<script>alert('Porfavor ingrese prodcuto')</script>");
            return;
        }
        else if (estado == "")
        {
            Response.Write("<script>alert('Porfavor ingrese estado')</script>");
            return;
        }
        else if (fech_ini == "")
        {
            Response.Write("<script>alert('Porfavor ingrese fecha inicio')</script>");
            return;
        }
        else if (fech_fin == "")
        {
            Response.Write("<script>alert('Porfavor ingrese fecha fin')</script>");
            return;
        }

        int rdo = con.guardar_tbl_contratos(doc_usu, descripcion, producto, estado, fech_ini, fech_fin);

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