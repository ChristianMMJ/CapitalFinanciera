using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace CAPITALFINANCIERAUSA_WEBPAGE.mail
{
    public partial class mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1. Obtener datos del formulario contacto
            string strNombre = Request.QueryString["n"].ToString();
            string strCorreo = Request.QueryString["e"].ToString();
            string strAsunto = Request.QueryString["a"].ToString();
            string strTelefono = Request.QueryString["t"].ToString();
            string strMensaje = Request.QueryString["m"].ToString();

            //2. Configurar
            SmtpClient servidorDeCorreo = new SmtpClient("smtp.gmail.com", 587);
            servidorDeCorreo.EnableSsl = true;
            servidorDeCorreo.Credentials = new NetworkCredential("contacto@capitalfinancierausa.com", "jamesbond666");

            //6. Crear Objeto de mensaje
            MailMessage mmMensaje = new MailMessage();

            //7. Agregar lista de correos destinos al objeto Mensaje
            mmMensaje.To.Add("contacto@capitalfinancierausa.com");

            //9. Configurar asunto, cuerpo
            mmMensaje.Subject = strAsunto;
            mmMensaje.Body = "Usted ha sido contactado desde el sitio web <strong>" + "https://www.capitalfinancierausa.com" + "</strong> <br><br><b>Nombre:</b> " + strNombre + " <br><br><b>Teléfono:</b> " + strTelefono + " <br><br><b>Correo:</b> " + strCorreo + "<br><br><b>Mensaje: </b> <br>"  + strMensaje;

            //10. Remitente
            MailAddress maFrom = new MailAddress(strCorreo);
            mmMensaje.From = maFrom;

            //11. Copia oculta
            //mmMensaje.Bcc.Add("osef@hotmail.com");

            mmMensaje.IsBodyHtml = true;

            //12. Configurar que regrese notificaciones por fallos y enviar
            mmMensaje.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure | DeliveryNotificationOptions.OnSuccess;
            try
            {
                servidorDeCorreo.Send(mmMensaje);
                Response.Write("success");
            }
            catch (Exception ex)
            {
            }
        }
    }
}