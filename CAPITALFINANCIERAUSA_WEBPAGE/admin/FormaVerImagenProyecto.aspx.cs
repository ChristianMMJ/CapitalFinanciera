using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;

namespace CAPITALFINANCIERAUSA_WEBPAGE.admin
{
    public partial class FormaSubirImagenesProyecto : System.Web.UI.Page
    {
        /// <summary>
        /// Evento que se lanza al cargar la página
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            imgVerImagen.ImageUrl = Cookies.GetCookie("cookieVerImagenProyecto").Value;
        }
    }
}