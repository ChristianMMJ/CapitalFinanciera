using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using CAPITALFINANCIERA.APP.EL;
using CAPITALFINANCIERA.APP.BL;
using Ext.Net;

namespace CAPITALFINANCIERAUSA_WEBPAGE
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strHost = Request.ServerVariables["HTTP_HOST"];
            string strUrl = Request.ServerVariables["URL"];
            string strLink = strHost + strUrl;

            if (strLink == "capitalfinancierausa.com/contacto" || strLink == "localhost/CAPITALFINANCIERAUSA_WEBPAGE/contacto.aspx" || strLink == "www.osef.com.mx/contacto.aspx")
                dHeader.Style.Add("display", "none");

            if (strLink == "capitalfinancierausa.com/index.aspx" || strLink == "localhost/CAPITALFINANCIERAUSA_WEBPAGE/index.aspx" || strLink == "www.osef.com.mx/index.aspx")
                liFinance_Navigation_Index.Attributes["class"] = "current-page-item";
            else
                liFinance_Navigation_Index.Attributes["class"] = "";
        }

        /// <summary>
        /// Evento de autenticación del control Login
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void lLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //1. Declaración de variables
            FormsAuthenticationTicket tkt;
            String cookiestr;
            HttpCookie ck;
            Usuario oUsuario;

            //2. Obtener nombre de usuario y passsword
            string strUsuario = lLogin.UserName;
            string strContrasena = lLogin.Password;

            //3. Obtener control TextField del password
            TextBox txtfPassword = (TextBox)lLogin.FindControl("Password");

            if (strUsuario.Equals("INVERSIONISTA") && strContrasena.Equals("inversionesbienesraices"))
            {
                //5. Autenticar verdadero y redireccionar a la pantalla principal
                FormsAuthentication.SetAuthCookie(strUsuario, true);
                e.Authenticated = true;

                lLogin.DestinationPageUrl = "~/negocios/index.aspx";
            }

            //4. Validar si el nombre de usuario y el password son correctos
            else if (UsuarioBusiness.ValidarUsuarioContrasena(strUsuario, strContrasena))
            {
                //5. Autenticar verdadero y redireccionar a la pantalla principal
                FormsAuthentication.SetAuthCookie(strUsuario, true);
                e.Authenticated = true;

                oUsuario = UsuarioBusiness.ObtenerUsuarioPorID(strUsuario);
                if (oUsuario == null)
                    oUsuario = UsuarioBusiness.ObtenerUsuarioPorCorreo(strUsuario);

                //7. Asignar variable de Session y Ticket de Session
                Session["Usuario"] = oUsuario;
                string id = JSON.Serialize(oUsuario);
                tkt = new FormsAuthenticationTicket(1, strUsuario, DateTime.Now, DateTime.Now.AddMinutes(60), true, id);
                cookiestr = FormsAuthentication.Encrypt(tkt);
                ck = new HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);
                ck.Expires = tkt.Expiration;
                ck.Path = FormsAuthentication.FormsCookiePath;
                Response.Cookies.Add(ck);
            }
            else
            {
                //8. Sino la contraseña es incorrecta
                txtfPassword.Focus();
            }
        }
    }
}