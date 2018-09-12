using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//camilo suaza 22/08/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de tbl_permisos
/// </summary>
public class tbl_permisos
{
    public tbl_permisos()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public int guardar_tbl_permisos(int id_permiso, string permiso)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["homelunchConnectionString"].ConnectionString);

            var insertar = "insert into tbl_permisos values(" + id_permiso + ",'" + permiso + "')";
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