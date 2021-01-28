using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;
using CAPITALFINANCIERA.APP.BL;
using CAPITALFINANCIERA.APP.EL;

namespace CAPITALFINANCIERAUSA_WEBPAGE.admin
{
    public partial class FormaInversion : System.Web.UI.Page
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
                //Cargar el ComboBox de Usuarios
                sUsuarios.DataSource = UsuarioBusiness.ObtenerUsuarios();
                sUsuarios.DataBind();

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
            string strUsuario = e.ExtraParams["usuario"];
            string strcookieEditarInversion = Cookies.GetCookie("cookieEditarInversion").Value;

            //2. Deserealizar datos
            Dictionary<string, string> dRegistro = JSON.Deserialize<Dictionary<string, string>>(strRegistro);
            Usuario oUsuario = JSON.Deserialize<List<Usuario>>(strUsuario).FirstOrDefault();

            //3. Declarar objetos a utilizar
            Inversion oInversion = new Inversion();

            //4. Por cada elemento del submit de la Forma detectar el campo y asignarlo al objeto correspondiente
            foreach (KeyValuePair<string, string> sd in dRegistro)
            {
                switch (sd.Key)
                {
                    //3. Datos del usuario
                    case "txtfID":
                        oInversion.ID = sd.Value;
                        break;
                    case "cmbUsuario":
                        oInversion.Usuario = sd.Value;
                        break;
                    case "cmbProyecto":
                        oInversion.Proyecto = sd.Value;
                        break;
                    case "dfFecha":
                        oInversion.Fecha = Convert.ToDateTime(sd.Value);
                        break;
                    case "nfValorInversion":
                        oInversion.Monto = Convert.ToDecimal(sd.Value);
                        break;
                    case "nfPorcentaje":
                        oInversion.Porcentaje = Convert.ToDouble(sd.Value);
                        break;
                    case "cmbTipoInversion":
                        oInversion.Tipo = sd.Value;
                        break;
                    case "cmbEstatus":
                        oInversion.Estatus = sd.Value;
                        break;
                }
            }

            //5. Validar si es nuevo o es uno existente
            if (strcookieEditarInversion.Equals("Nuevo"))
            {
                oInversion.UsuarioAlta = oUsuario.ID;
                oInversion.FechaAlta = DateTime.Now;
                oInversion.UsuarioModificacion = oUsuario.ID;
                oInversion.FechaModificacion = DateTime.Now;

                //6. Insertar en la base de datos
                oInversion.ID = InversionBusiness.Insertar(oInversion);

                //6. Mandar mensaje con el código del proveedor
                var success = new JFunction { Fn = "imgbtnGuardar_Click_Success" };
                X.Msg.Alert("Registro completo", "<p align='center'>Inversión registrada con ID: <br/>" + oInversion.ID + ".</p>", success).Show();
            }
            else
            {
                oInversion.ID = strcookieEditarInversion;
                oInversion.UsuarioModificacion = oUsuario.ID;
                oInversion.FechaModificacion = DateTime.Now;

                //7. Actualizar los datos del usuario
                InversionBusiness.Actualizar(oInversion);

                //8. Mandar mensaje con el código del Usuario
                var success = new JFunction { Fn = "imgbtnGuardar_Click_Success" };
                X.Msg.Alert("Actualización completa", "<p align='center'>Se han actualizado los datos de la inversión <br/>" + oInversion.ID + ".</p>", success).Show();
            }
        }

        /// <summary>
        /// Evento que se lanza al cargar el store
        /// </summary>
        [DirectMethod]
        public void sInversion_Load()
        {
            string strcookieEditarInversion = Cookies.GetCookie("cookieEditarInversion").Value;

            if (!strcookieEditarInversion.Equals("Nuevo"))
            {
                Inversion oInversion = InversionBusiness.ObtenerInversionPorID(strcookieEditarInversion);
                sInversion.Add(new
                {
                    ID = oInversion.ID,
                    Usuario = oInversion.Usuario,
                    Proyecto = oInversion.Proyecto,
                    Fecha = oInversion.Fecha,
                    Monto = oInversion.Monto,
                    Porcentaje = oInversion.Porcentaje,
                    Tipo = oInversion.Tipo,
                    Estatus = oInversion.Estatus,
                    UsuarioAlta = oInversion.UsuarioAlta,
                    FechaAlta = oInversion.FechaAlta,
                    UsuarioModificacion = oInversion.UsuarioModificacion,
                    FechaModificacion = oInversion.FechaModificacion
                });
            }
        }
    }
}