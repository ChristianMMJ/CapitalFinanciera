using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;
using CAPITALFINANCIERA.APP.BL;
using CAPITALFINANCIERA.APP.EL;
using System.IO;

namespace CAPITALFINANCIERAUSA_WEBPAGE.admin
{
    public partial class FormaMultiImagenesProyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Validar que no sea una petición Ajax
            if (!X.IsAjaxRequest)
            {
                //Cargar el ComboBox de Proyectos
                sProyectos.DataSource = ProyectoBusiness.ObtenerProyectos();
                sProyectos.DataBind();
            }
        }

        /// <summary>
        /// Evento que se lanza al subir las imagenes
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void MultiUpload1_FileUpload(object sender, FileUploadEventArgs e)
        {
            //1. Declaración de objetos y variables
            ImagenAvanceProyecto oImagenAvanceProyecto = new ImagenAvanceProyecto();
            string strRuta;

            //2. Validar si es abierto con Internet Explorer o Edge, recortar la ruta
            strRuta = e.FileName;
            strRuta = strRuta.Substring(strRuta.LastIndexOf(@"\") + 1, strRuta.Length - strRuta.LastIndexOf(@"\") - 1);

            //3. Asignar los valores de los campos que complementan el objeto a insertar como imagen
            oImagenAvanceProyecto.Avance = cmbAvance.Value.ToString();
            oImagenAvanceProyecto.Nombre = txtfNombre.Text;
            oImagenAvanceProyecto.Descripcion = txtaDescripcion.Text;
            oImagenAvanceProyecto.Proyecto = Cookies.GetCookie("cookieEditarProyecto").Value;

            //4. Asignar la ruta de la imagen o dirección
            oImagenAvanceProyecto.Direccion = "\\ImagenesAvancesProyectos\\" + oImagenAvanceProyecto.Proyecto + "\\" + oImagenAvanceProyecto.Avance + "\\" + strRuta;

            //5. Insertar en la base de datos y guardar imagen
            oImagenAvanceProyecto.ID = ImagenAvanceProyectoBusiness.Insertar(oImagenAvanceProyecto);
            Directory.CreateDirectory(Server.MapPath(" ") + "\\ImagenesAvancesProyectos\\" + oImagenAvanceProyecto.Proyecto + "\\" + oImagenAvanceProyecto.Avance);
            e.PostedFile.SaveAs(Server.MapPath(" ") + "\\ImagenesAvancesProyectos\\" + oImagenAvanceProyecto.Proyecto + "\\" + oImagenAvanceProyecto.Avance + "\\" + strRuta);

            //9. Mandar mensaje con el código del registro de la imagen
            X.Msg.Notify(new NotificationConfig { Title="Registro completo", HideDelay = 20000, Html = "<p align='center'>Imagen registrada con ID: " + oImagenAvanceProyecto.ID + ".</p>" }).Show();
        }
    }
}