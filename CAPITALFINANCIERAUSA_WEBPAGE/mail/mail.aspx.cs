using System;
using System.Net;
using System.Net.Mail;
using System.Web.Services;

namespace CAPITALFINANCIERAUSA_WEBPAGE.mail
{
    public partial class mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        public static string onEnviarCorreo(string strNombre, string strCorreo, string strAsunto, string strTelefono, string strMensaje)
        {
            //1. Configurar
            SmtpClient servidorDeCorreo = new SmtpClient("smtp.gmail.com", 587);
            servidorDeCorreo.EnableSsl = true;
            //servidorDeCorreo.DeliveryMethod = SmtpDeliveryMethod.Network;
            //servidorDeCorreo.UseDefaultCredentials = false;
            servidorDeCorreo.Credentials = new NetworkCredential("capitalfinancieramxusa@gmail.com", "jamesbond666");
            //2. Crear Objeto de mensaje
            MailMessage mmMensaje = new MailMessage();

            //3. Agregar lista de correos destinos al objeto Mensaje
            mmMensaje.To.Add("contacto@capitalfinancierausa.com");

            //4. Configurar asunto, cuerpo
            mmMensaje.Subject = strAsunto;
            mmMensaje.Body = "Usted ha sido contactado desde el sitio web <strong>" + "https://www.capitalfinancierausa.com" + "</strong> <br><br><b>Nombre:</b> " + strNombre + " <br><br><b>Teléfono:</b> " + strTelefono + " <br><br><b>Correo:</b> " + strCorreo + "<br><br><b>Mensaje: </b> <br>" + strMensaje;

            //5. Remitente
            MailAddress maFrom = new MailAddress(strCorreo);
            mmMensaje.From = maFrom;

            //6. Copia oculta
            //mmMensaje.Bcc.Add("osef@hotmail.com");

            mmMensaje.IsBodyHtml = true;

            //7. Configurar que regrese notificaciones por fallos y enviar
            mmMensaje.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure | DeliveryNotificationOptions.OnSuccess;
            try
            {
                servidorDeCorreo.Send(mmMensaje);
                return "1";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }

        }

    }
}
