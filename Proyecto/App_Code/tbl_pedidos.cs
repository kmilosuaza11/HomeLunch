using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//camilo suaza 29/07/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de tbl_pedidos
/// </summary>
public class tbl_pedidos
{
    public tbl_pedidos()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int guardar_tbl_pedidos(string direccion, string fech_entrega, string hora, string ciudad, int doc_usu, string estado)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["homelunchConnectionString"].ConnectionString);


            var insertar = "insert into tbl_pedidos values('" + direccion + "','" + fech_entrega + "','" + hora + "','" + ciudad + "'," + doc_usu + ",'" + estado + "')";
            var comando = new SqlCommand(insertar, conex);
            conex.Open();
            int resultado = comando.ExecuteNonQuery();
            if (resultado == 0)
            {
                rdo = 0;
                conex.Close();
            }


        }

        catch (Exception e)
        {

        }
        return rdo;
    }








}