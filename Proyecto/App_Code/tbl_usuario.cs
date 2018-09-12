using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//camilo suaza 29/08/2018
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.IO;
using System.Text;

/// <summary>
/// Descripción breve de tbl_usuario
/// </summary>
public class tbl_usuario
{
    public tbl_usuario()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public int guardar_tbl_usuario(string doc_usu,string nombre, string apellidos, string telefono, string clave, string email_usu)
    {//el orden de estos campos debe ser el mismo al orden de esta misma linea en el archivo CONTROLADOR
        int rdo = 1;
        try
        {
            ////PARA ENCRIPTAR LA CLAVE-----------------------------------------------------------
            SHA512 sha512 = SHA512Managed.Create();
            ASCIIEncoding encoding = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = sha512.ComputeHash(encoding.GetBytes(clave));
            for (int i = 0; i < stream.Length; i++){
            sb.AppendFormat("{0:x2}", stream[i]);
                }

            string claveEncriptada =  sb.ToString();

            var conex = new SqlConnection(ConfigurationManager.ConnectionStrings["homelunchConnectionString"].ConnectionString);
            var insertar = "insert into tbl_usuario values(" + doc_usu + ",'" + nombre + "','" + apellidos + "'," + telefono + ",'" + clave + "','" + email_usu + "')";
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
            string mensaje = e.Message;
        }
        return rdo;
    }
}
