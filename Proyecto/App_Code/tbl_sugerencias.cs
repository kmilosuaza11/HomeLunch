using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//camilo suaza 29/08/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de tbl_sugerencias
/// </summary>
public class tbl_sugerencias
{
    public tbl_sugerencias()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int guardar_tbl_sugerencias(int doc_usu, string sugerencia, string fecha)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["homelunchConnectionString"].ConnectionString);

            var insertar = "insert into tbl_sugerencias values(" + doc_usu + ",'" + sugerencia + "','" + fecha + "')";
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