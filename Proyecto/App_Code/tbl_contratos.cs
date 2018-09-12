using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//camilo suaza 30/08/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de tbl_contratos
/// </summary>
public class tbl_contratos
{
    public tbl_contratos()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public int guardar_tbl_contratos(int doc_usu, string descripcion, string producto, string estado, string fech_ini, string fech_fin)
    {
        int rdo = 1;
        try
        {
            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["homelunchConnectionString"].ConnectionString);

            var insertar = "insert into tbl_contratos values(" + doc_usu + ",'" + descripcion +"','" + producto + "','" + estado + "','" + fech_ini + "','" + fech_fin + "')";
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