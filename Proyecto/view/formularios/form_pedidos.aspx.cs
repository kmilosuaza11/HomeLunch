using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//camilo suaza 29/07/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class form_pedidos : System.Web.UI.Page
{
    tbl_pedidos ped = new tbl_pedidos();
    int usuario;


    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["usuario"] == null)
        {
            Response.Redirect("form_login.aspx");
        }
        usuario = (int)Session["usuario"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string direccion;
        string fech_entrega;
        string hora;
        string ciudad;
        string estado;



        direccion = TextBox1.Text;
        fech_entrega = TextBox2.Text;
        hora = TextBox3.Text;
        ciudad = TextBox4.Text;
        //eliminar por que lla viene el usuario
        estado = TextBox5.Text;


        if (direccion == "")
        {
            Response.Write("<script>alert('ingrese la direccion')</script>");
            return;
        }
        else
        if (fech_entrega == "")
        {
            Response.Write("<script>alert('ingrese Fecha')</script>");
            return;

        }
        else
        if (hora == "")
        {
            Response.Write("<script>alert('ingrese la Hora')</script>");
            return;
        }
        else
        if (ciudad == "")
        {
            Response.Write("<script>alert('ingrese la ciudad')</script>");
            return;
        }       
        else
        if (estado == "")
        {
            Response.Write("<script>alert('ingrese el estado')</script>");
            return;
        }
        int rdo = ped.guardar_tbl_pedidos(direccion, fech_entrega, hora, ciudad, usuario, estado);

        if (rdo == 1)
        {
            Response.Write("<script>alert('guardado correctamente')</script>");
        }
        else
        if (rdo == 0)
        {
            Response.Write("<script>alert('error al guardar')</script>");
        }
        else
        {
            Response.Write("<script>alert('error al guardar')</script>");
        }
    }
}