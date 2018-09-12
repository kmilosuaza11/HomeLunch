using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_formularios_contacto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // nuestro variable mensage
        string mensaje;
        // mensaje
        mensaje = "Hola Usuario:Mensaje de tu pagina " + Environment.NewLine + "Nombres: " + txtName.Text + Environment.NewLine + "Telefono: " + txtTelefono.Text + Environment.NewLine + "Email: " + txtEmail.Text + Environment.NewLine + "Asunto: " +
       txtAsunto.Text + Environment.NewLine + "Mensaje: " + txtMensaje.Text;

        //configuracion de nuestro correo 
        System.Net.Mail.MailMessage correo = new System.Net.Mail.MailMessage();
        correo.From = new System.Net.Mail.MailAddress(txtEmail.Text);
        //direccion de remitente
        correo.To.Add(txtEmail.Text);
        string s =txtAsunto.Text;
        //Asunto de mensaje
        correo.Subject = s;
        // el cuerpo de nuestro mensaje
        correo.Body = mensaje;
        // si no queremos que el correo no sea en html ponemos false en este caso
        correo.IsBodyHtml = false;
        //Prioridad de mensaje en este caso es suma inportancia si queremos normal..asignas normal

        correo.Priority = System.Net.Mail.MailPriority.Normal;
        // credenciales para  conectar con el servidor en este caso es HOTMAIL y el puerto de servidor 587
        
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
        // ASIGNAS TU CREDENCIAL DE HOTMAIL..Y CONTRASEÑA
        smtp.Credentials = new System.Net.NetworkCredential("lnchhome@gmail.com", "98020353708");
        smtp.EnableSsl = true;
        try
        {
            // Y ASIGNAMOS EL EMVIO
            smtp.Send(correo);
            // SI ALGO PASA NOS MUESTRA UN MENSAJE
            Labelerror.Text = "Mensaje enviado satisfactoriamente";
            // 
            //
            //SUSCRIBETE PARA MAS VIDEOS COMO ESTE..
            // O VISITANOS EN FANPAGE CPIPRODESIGN
            //GRACIAS..

            //RECUERDA SI QUIERES DESCARGAR EL FORMULARIO DEJARE EL LINK DE DESCARGA GRACIAS.SUSCRIBETE PARA MAS VIDEOS



        }
        catch (Exception ex)
        {
            //throw ex;
            Labelerror.Text = "ERROR: " + ex.Message.ToString();
        }



    }
}