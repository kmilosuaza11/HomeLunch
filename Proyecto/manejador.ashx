<%@ WebHandler Language="C#" Class="manejador" %>

using System;
using System.Web;
 using System.Data;


public class manejador :  IHttpHandler,System.Web.SessionState.IRequiresSessionState {

    public void ProcessRequest (HttpContext context) {
       
            if (context.Session["Registro"] != null)
            {
                DataTable tbRegistro = (DataTable)context.Session["Registro"];
                DataRow drRegistro = tbRegistro.Select(string.Format("id_producto={0}", context.Request.QueryString["id_producto"]))[0];
                byte[] imagen = (byte[])drRegistro["imagen"];
                context.Response.ContentType = "image/jpg";
                context.Response.OutputStream.Write(imagen, 0, imagen.Length);
            }   
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}