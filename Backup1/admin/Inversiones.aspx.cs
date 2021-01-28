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
    public partial class Inversiones : System.Web.UI.Page
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
                sInversiones.DataSource = InversionBusiness.ObtenerInversiones();
                sInversiones.DataBind();
                rmInversiones.RegisterIcon(Icon.Delete);
            }
        }

        /// <summary>
        /// Actualiza la lista de inversiones
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OnReadData_sInversiones(object sender, StoreReadDataEventArgs e)
        {
            sInversiones.DataSource = InversionBusiness.ObtenerInversiones();
            sInversiones.DataBind();
        }

        /// <summary>
        /// Método para elimnar un registro de Inversiones
        /// </summary>
        /// <param name="strID"></param>
        [DirectMethod]
        public void EliminarInversion(string strID)
        {
            if (InversionBusiness.ValidarInversionEnUso(strID))
            {
                InversionBusiness.Borrar(strID);
                X.Msg.Alert("Atención", "Inversion " + strID + " eliminada.", new JFunction { Fn = "showResult" }).Show();
            }
            else
            {
                X.Msg.Alert("Error", "La inversion no se puede eliminar, verifique sus dependencias y dar de baja la inversion.", new JFunction { Fn = "showResult" }).Show();
            }
        }
    }
}