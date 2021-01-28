using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;
using CAPITALFINANCIERA.APP.BL;

namespace CAPITALFINANCIERAUSA_WEBPAGE.admin
{
    public partial class Proyectos : System.Web.UI.Page
    {
        /// <summary>
        /// Evento que se lanza al cargar la página
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!X.IsAjaxRequest)
            {
                sProyectos.DataSource = ProyectoBusiness.ObtenerProyectos();
                sProyectos.DataBind();
                rmProyectos.RegisterIcon(Icon.Delete);
            }
        }

        /// <summary>
        /// Actualiza la lista de proyectos
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OnReadData_sProyectos(object sender, StoreReadDataEventArgs e)
        {
            sProyectos.DataSource = ProyectoBusiness.ObtenerProyectos();
            sProyectos.DataBind();
        }

        /// <summary>
        /// Método para elimnar un registro de Proyectos
        /// </summary>
        /// <param name="strID"></param>
        [DirectMethod]
        public void EliminarProyecto(string strID)
        {
            if (ProyectoBusiness.ValidarProyectoEnUso(strID))
            {
                ProyectoBusiness.Borrar(strID);
                X.Msg.Alert("Atención", "Proyecto " + strID + " eliminado.", new JFunction { Fn = "showResult" }).Show();
            }
            else
            {
                X.Msg.Alert("Error", "El proyecto no se puede eliminar, verifique sus dependencias y dar de baja al proyecto.", new JFunction { Fn = "showResult" }).Show();
            }
        }
    }
}