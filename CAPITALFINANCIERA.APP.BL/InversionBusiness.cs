using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CAPITALFINANCIERA.APP.EL;
using CAPITALFINANCIERA.APP.DL;

namespace CAPITALFINANCIERA.APP.BL
{
    /// <summary>
    /// Clase que se encarga de la manipulación de capa de negocio de Inversiones
    /// </summary>
    public class InversionBusiness
    {
        #region Insertar

        /// <summary>
        /// Método que inserta un nuevo registro a la tabla de Inversiones
        /// </summary>
        /// <param name="iInversion"></param>
        public static string Insertar(Inversion iInversion)
        {
            return InversionDataAccess.Insertar(iInversion);
        }

        #endregion

        #region Modificar

        /// <summary>
        /// Método que actualiza un nuevo objeto de la clase Inversion
        /// </summary>
        /// <param name="uInversion"></param>
        /// <returns></returns>
        public static int Actualizar(Inversion uInversion)
        {
            return InversionDataAccess.Actualizar(uInversion);
        }

        #endregion

        #region Eliminar

        /// <summary>
        /// Método que elimina un objeto de la clase Inversion por su ID
        /// </summary>
        /// <param name="strID"></param>
        public static int Borrar(string strID)
        {
            return InversionDataAccess.Borrar(strID);
        }

        #endregion

        #region Consultar

        /// <summary>
        /// Método que obtiene una lista de todos los objetos registrados de Inversion
        /// </summary>
        /// <returns></returns>
        public static List<Inversion> ObtenerInversiones()
        {
            return InversionDataAccess.ObtenerInversiones();
        }

        /// <summary>
        /// Obtener un objeto de la clase Inversion por su ID
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static Inversion ObtenerInversionPorID(string strID)
        {
            return InversionDataAccess.ObtenerInversionPorID(strID);
        }

        /// <summary>
        /// Obtener una lista de objetos tipo Inversion  por el Usuario
        /// </summary>
        /// <param name="strUsuario"></param>
        /// <returns></returns>
        public static List<Inversion> ObtenerInversionPorUsuario(string strUsuario)
        {
            List<Inversion> lInversion = InversionDataAccess.ObtenerInversionPorUsuario(strUsuario);

            foreach (Inversion sd in lInversion)
                sd.RProyecto = ProyectoBusiness.ObtenerProyectoPorID(sd.Proyecto);

            return lInversion;
        }

        /// <summary>
        /// Obtener todos los objetos de Inversiones por un usuario y proyecto
        /// </summary>
        /// <param name="strUsuario"></param>
        /// <param name="strProyecto"></param>
        /// <returns></returns>
        public static Inversion ObtenerInversionPorUsuarioProyecto(string strUsuario, string strProyecto)
        {
            return InversionDataAccess.ObtenerInversionPorUsuarioProyecto(strUsuario, strProyecto);
        }

        /// <summary>
        /// Valida un registro de Inversion por su ID
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static bool ValidarInversionEnUso(string strID)
        {
            return InversionDataAccess.ValidarInversionEnUso(strID);
        }

        #endregion

        #region Acción

        #endregion
    }
}
