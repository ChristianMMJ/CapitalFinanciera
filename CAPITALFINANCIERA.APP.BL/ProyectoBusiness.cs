using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CAPITALFINANCIERA.APP.EL;
using CAPITALFINANCIERA.APP.DL;

namespace CAPITALFINANCIERA.APP.BL
{
    /// <summary>
    /// Clase que se encarga de la manipulación de capa de negocio de Proyectos
    /// </summary>
    public class ProyectoBusiness
    {
        #region Insertar

        /// <summary>
        /// Método que inserta un nuevo registro a la tabla de Proyectos
        /// </summary>
        /// <param name="iProyecto"></param>
        public static string Insertar(Proyecto iProyecto)
        {
            return ProyectoDataAccess.Insertar(iProyecto);
        }

        #endregion

        #region Modificar

        /// <summary>
        /// Método que actualiza un nuevo objeto de la clase Proyecto
        /// </summary>
        /// <param name="uProyecto"></param>
        /// <returns></returns>
        public static int Actualizar(Proyecto uProyecto)
        {
            return ProyectoDataAccess.Actualizar(uProyecto);
        }

        #endregion

        #region Eliminar

        /// <summary>
        /// Método que elimina un objeto de la clase Proyectos por su ID
        /// </summary>
        /// <param name="strID"></param>
        public static int Borrar(string strID)
        {
            return ProyectoDataAccess.Borrar(strID);
        }

        #endregion

        #region Consultar

        /// <summary>
        /// Método que obtiene una lista de todos los objetos registrados de Proyectos
        /// </summary>
        /// <returns></returns>
        public static List<Proyecto> ObtenerProyectos()
        {
            return ProyectoDataAccess.ObtenerProyectos();
        }

        /// <summary>
        /// Obtener un objeto de la clase Proyecto por su ID
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static Proyecto ObtenerProyectoPorID(string strID)
        {
            Proyecto cProyecto = ProyectoDataAccess.ObtenerProyectoPorID(strID);
            cProyecto.RImagenAvanceProyecto = ImagenAvanceProyectoDataAccess.ObtenerImagenAvanceProyectoPorProyecto(cProyecto.ID);

            return cProyecto;
        }

        /// <summary>
        /// Valida un registro de Proyecto por su ID
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static bool ValidarProyectoEnUso(string strID)
        {
            return ProyectoDataAccess.ValidarProyectoEnUso(strID);
        }

        #endregion

        #region Acción

        #endregion
    }
}
