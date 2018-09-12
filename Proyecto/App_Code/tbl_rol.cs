using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//camilo suaza 22/08/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de tbl_rol
/// </summary>
public class tbl_rol
{
    public tbl_rol()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int guardar_tbl_rol(int id_rol, string nombre)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["homelunchConnectionString"].ConnectionString);

            var insertar = "insert into tbl_rol values(" + id_rol + ",'" + nombre + "')";
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