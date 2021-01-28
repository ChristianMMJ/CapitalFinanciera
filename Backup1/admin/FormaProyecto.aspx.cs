using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;
using CAPITALFINANCIERA.APP.EL;
using CAPITALFINANCIERA.APP.BL;

namespace CAPITALFINANCIERAUSA_WEBPAGE.admin
{
    public partial class FormaProyecto : System.Web.UI.Page
    {
        /// <summary>
        /// Evento que se lanza al cargar la página
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            sImagenesAvancesProyectos.DataSource = ImagenAvanceProyectoBusiness.ObtenerImagenAvanceProyectoPorProyecto(Cookies.GetCookie("cookieEditarProyecto").Value);
            sImagenesAvancesProyectos.DataBind();
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
            string strUsuario = e.ExtraParams["usuario"];
            string strcookieEditarProyecto = Cookies.GetCookie("cookieEditarProyecto").Value;

            //2. Deserealizar datos
            Dictionary<string, string> dRegistro = JSON.Deserialize<Dictionary<string, string>>(strRegistro);
            Usuario oUsuario = JSON.Deserialize<List<Usuario>>(strUsuario).FirstOrDefault();

            //3. Declarar objetos a utilizar
            Proyecto oProyecto = new Proyecto();

            //4. Por cada elemento del submit de la Forma detectar el campo y asignarlo al objeto correspondiente
            foreach (KeyValuePair<string, string> sd in dRegistro)
            {
                switch (sd.Key)
                {
                    //3. Datos del usuario
                    case "txtfID":
                        oProyecto.ID = sd.Value;
                        break;
                    case "txtfNombre":
                        oProyecto.Nombre = sd.Value;
                        break;
                    case "txtfDireccion":
                        if (sd.Value == null)
                            oProyecto.Direccion = null;
                        else
                            oProyecto.Direccion = sd.Value;
                        break;
                    case "nfMonto":
                        oProyecto.Monto = Convert.ToDecimal(sd.Value);
                        break;
                    case "cmbAvance":
                        oProyecto.Avances = sd.Value;
                        break;
                    case "cmbEstatus":
                        oProyecto.Estatus = sd.Value;
                        break;
                    case "txtaObservaciones":
                        if (sd.Value == null)
                            oProyecto.Observaciones = null;
                        else
                            oProyecto.Observaciones = sd.Value;
                        break;
                }
            }

            //5. Validar si es nuevo o es uno existente
            if (strcookieEditarProyecto.Equals("Nuevo"))
            {
                oProyecto.UsuarioAlta = oUsuario.ID;
                oProyecto.FechaAlta = DateTime.Now;
                oProyecto.UsuarioModificacion = oUsuario.ID;
                oProyecto.FechaModificacion = DateTime.Now;

                //6. Insertar en la base de datos
                oProyecto.ID = ProyectoBusiness.Insertar(oProyecto);

                //6. Mandar mensaje con el código del proveedor
                var success = new JFunction { Fn = "imgbtnGuardar_Click_Success" };
                X.Msg.Alert("Registro completo", "<p align='center'>Proyecto registrado con ID: <br/>" + oProyecto.ID + ".</p>", success).Show();
            }
            else
            {
                oProyecto.ID = strcookieEditarProyecto;
                oProyecto.UsuarioModificacion = oUsuario.ID;
                oProyecto.FechaModificacion = DateTime.Now;

                //7. Actualizar los datos del usuario
                ProyectoBusiness.Actualizar(oProyecto);

                //8. Mandar mensaje con el código del Usuario
                var success = new JFunction { Fn = "imgbtnGuardar_Click_Success" };
                X.Msg.Alert("Actualización completa", "<p align='center'>Se han actualizado los datos del proyecto <br/>" + oProyecto.ID + ".</p>", success).Show();
            }
        }

        /// <summary>
        /// Evento que se lanza al cargar el store
        /// </summary>
        [DirectMethod]
        public void sProyecto_Load()
        {
            string strcookieEditarProyecto = Cookies.GetCookie("cookieEditarProyecto").Value;

            if (!strcookieEditarProyecto.Equals("Nuevo"))
            {
                Proyecto oProyecto = ProyectoBusiness.ObtenerProyectoPorID(strcookieEditarProyecto);
                sProyecto.Add(new
                {
                    ID = oProyecto.ID,
                    Nombre = oProyecto.Nombre,
                    Direccion = oProyecto.Direccion,
                    Monto = oProyecto.Monto,
                    Observaciones = oProyecto.Observaciones,
                    Avances = oProyecto.Avances,
                    Estatus = oProyecto.Estatus,
                    UsuarioAlta = oProyecto.UsuarioAlta,
                    FechaAlta = oProyecto.FechaAlta,
                    UsuarioModificacion = oProyecto.UsuarioModificacion,
                    FechaModificacion = oProyecto.FechaModificacion
                });
            }
        }

        /// <summary>
        /// Método para elimnar un registro de ImagenAvanceProyecto
        /// </summary>
        /// <param name="iID"></param>
        [DirectMethod]
        public void EliminarImagenAvanceProyecto(int iID)
        {
            ImagenAvanceProyectoBusiness.Borrar(iID, Server.MapPath(" "));
            //X.Msg.Alert("Atención", "Imagen Avance Proyecto " + iID + " eliminado.", new JFunction { Fn = "showResult" }).Show();
            X.Msg.Alert("Atención", "Imagen Avance Proyecto " + iID + " eliminado.").Show();
        }
    }
}