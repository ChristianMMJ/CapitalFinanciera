using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CAPITALFINANCIERA.APP.BL;
using Ext.Net;
using CAPITALFINANCIERA.APP.EL;
using System.IO;

namespace CAPITALFINANCIERAUSA_WEBPAGE.admin
{
    public partial class FormaImagenesProyecto : System.Web.UI.Page
    {
        /// <summary>
        /// Evento que se lanza al cargar la página
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
        /// Evento de clic del botón Guardar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void imgbtnGuardar_Click(object sender, DirectEventArgs e)
        {
            //1. Obtener datos de la Forma y saber si es edición o nuevo
            string strRegistro = e.ExtraParams["registro"];
            string strRuta;

            string strcookieEditarImagenesAvancesProyectos = Cookies.GetCookie("cookieEditarImagenesAvancesProyectos").Value;
            Dictionary<string, string> dRegistro = JSON.Deserialize<Dictionary<string, string>>(strRegistro);
            ImagenAvanceProyecto oImagenAvanceProyecto = new ImagenAvanceProyecto();

            //2. Por cada elemento del submit de la Forma detectar el campo y asignarlo al objeto correspondiente
            foreach (KeyValuePair<string, string> sd in dRegistro)
            {
                switch (sd.Key)
                {
                    //3. Datos del usuario
                    case "txtfID":
                        oImagenAvanceProyecto.ID = Convert.ToInt32(sd.Value);
                        break;
                    case "cmbProyecto":
                        oImagenAvanceProyecto.Proyecto = sd.Value;
                        break;
                    case "cmbAvance":
                        oImagenAvanceProyecto.Avance = sd.Value;
                        break;
                    case "txtfNombre":
                        oImagenAvanceProyecto.Nombre = sd.Value;
                        break;
                    case "txtaDescripcion":
                        oImagenAvanceProyecto.Descripcion = sd.Value;
                        break;
                    case "fufImagenAvanceProyecto":
                        oImagenAvanceProyecto.Descripcion = sd.Value;
                        break;
                }
            }

            //4. Complementar el proyecto
            oImagenAvanceProyecto.Proyecto = JSON.Deserialize<string>(e.ExtraParams["proyecto"]);

            //5. Validar si es nuevo o es uno existente
            if (strcookieEditarImagenesAvancesProyectos.Equals("Nuevo"))
            {
                //6. Validar si es abierto con Internet Explorer o Edge, recortar la ruta
                if (Request.ServerVariables["HTTP_USER_AGENT"].Contains("Edge") || Request.Browser.Browser == "InternetExplorer")
                {
                    strRuta = fufImagenAvanceProyecto.FileName;
                    strRuta = strRuta.Substring(strRuta.LastIndexOf(@"\") + 1, strRuta.Length - strRuta.LastIndexOf(@"\") - 1);
                }
                else
                {
                    strRuta = fufImagenAvanceProyecto.FileName;
                }

                //7. Asignar la ruta de la imagen o dirección
                oImagenAvanceProyecto.Direccion = "\\ImagenesAvancesProyectos\\" + oImagenAvanceProyecto.Proyecto + "\\" + oImagenAvanceProyecto.Avance + "\\" + strRuta;

                //8. Insertar en la base de datos y guardar imagen
                oImagenAvanceProyecto.ID = ImagenAvanceProyectoBusiness.Insertar(oImagenAvanceProyecto);
                Directory.CreateDirectory(Server.MapPath(" ") + "\\ImagenesAvancesProyectos\\" + oImagenAvanceProyecto.Proyecto + "\\" + oImagenAvanceProyecto.Avance);
                fufImagenAvanceProyecto.PostedFile.SaveAs(Server.MapPath(" ") + "\\ImagenesAvancesProyectos\\" + oImagenAvanceProyecto.Proyecto + "\\" + oImagenAvanceProyecto.Avance + "\\" + strRuta);

                //9. Mandar mensaje con el código del registro de la imagen
                var success = new JFunction { Fn = "imgbtnGuardar_Click_Success" };
                X.Msg.Alert("Registro completo", "<p align='center'>Imagen registrada con ID: " + oImagenAvanceProyecto.ID + ".</p>", success).Show();
            }
            else
            {
                //Asignar el ID del registro
                oImagenAvanceProyecto.ID = JSON.Deserialize<int>(e.ExtraParams["id"]);

                //Obtener una copia del registro original
                ImagenAvanceProyecto copyImagenAvanceProyecto = ImagenAvanceProyectoBusiness.ObtenerImagenAvanceProyectoPorID(oImagenAvanceProyecto.ID);

                if (fufImagenAvanceProyecto.HasFile)
                {
                    //6. Validar si es abierto con Internet Explorer o Edge, recortar la ruta
                    if (Request.ServerVariables["HTTP_USER_AGENT"].Contains("Edge") || Request.Browser.Browser == "InternetExplorer")
                    {
                        strRuta = fufImagenAvanceProyecto.FileName;
                        strRuta = strRuta.Substring(strRuta.LastIndexOf(@"\") + 1, strRuta.Length - strRuta.LastIndexOf(@"\") - 1);
                    }
                    else
                    {
                        strRuta = fufImagenAvanceProyecto.FileName;
                    }

                    //7. Asignar la ruta de la imagen o dirección
                    oImagenAvanceProyecto.Direccion = "\\ImagenesAvancesProyectos\\" + oImagenAvanceProyecto.Proyecto + "\\" + oImagenAvanceProyecto.Avance + "\\" + strRuta;

                    //Actualizar la base de datos
                    ImagenAvanceProyectoBusiness.Actualizar(oImagenAvanceProyecto);

                    //Eliminar el archivo anterior
                    File.Delete(Server.MapPath(" ") + copyImagenAvanceProyecto.Direccion);

                    //Guardar la nueva imagen
                    Directory.CreateDirectory(Server.MapPath(" ") + "\\ImagenesAvancesProyectos\\" + oImagenAvanceProyecto.Proyecto + "\\" + oImagenAvanceProyecto.Avance);
                    fufImagenAvanceProyecto.PostedFile.SaveAs(Server.MapPath(" ") + oImagenAvanceProyecto.Direccion);
                }
                else
                {
                    oImagenAvanceProyecto.Direccion = copyImagenAvanceProyecto.Direccion;

                    //Actualizar la base de datos
                    ImagenAvanceProyectoBusiness.Actualizar(oImagenAvanceProyecto);
                }

                //Mandar mensaje con el código del Usuario
                var success = new JFunction { Fn = "imgbtnGuardar_Click_Success" };
                X.Msg.Alert("Actualización completa", "<p align='center'>Se han actualizado los datos de la imagen con ID: " + oImagenAvanceProyecto.ID + ".</p>", success).Show();
            }
        }

        /// <summary>
        /// Evento que se lanza al cargar el store de ImagenAvanceProyecto
        /// </summary>
        [DirectMethod]
        public void sImagenAvanceProyecto_Load()
        {
            string cookieEditarImagenesAvancesProyectos = Cookies.GetCookie("cookieEditarImagenesAvancesProyectos").Value;

            if (!cookieEditarImagenesAvancesProyectos.Equals("Nuevo"))
            {
                ImagenAvanceProyecto oImagenAvanceProyecto = ImagenAvanceProyectoBusiness.ObtenerImagenAvanceProyectoPorID(Convert.ToInt32(cookieEditarImagenesAvancesProyectos));
                sImagenAvanceProyecto.Add(new
                {
                    ID = oImagenAvanceProyecto.ID,
                    Proyecto = oImagenAvanceProyecto.Proyecto,
                    Avance = oImagenAvanceProyecto.Avance,
                    Nombre = oImagenAvanceProyecto.Nombre,
                    Descripcion = oImagenAvanceProyecto.Descripcion,
                    Direccion = oImagenAvanceProyecto.Direccion
                });
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="nuevoImagenAvanceProyecto"></param>
        /// <param name="anteriorImagenAvanceProyecto"></param>
        private void MoverImagenCarpeta(ImagenAvanceProyecto nuevoImagenAvanceProyecto, ImagenAvanceProyecto anteriorImagenAvanceProyecto)
        {
        }
    }
}