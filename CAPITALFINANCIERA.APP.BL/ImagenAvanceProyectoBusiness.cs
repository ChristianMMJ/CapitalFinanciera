using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CAPITALFINANCIERA.APP.EL;
using CAPITALFINANCIERA.APP.DL;
using System.IO;

namespace CAPITALFINANCIERA.APP.BL
{
    /// <summary>
    /// Clase que se encarga de la manipulación de capa de negocio de ImagenAvanceProyecto
    /// </summary>
    public class ImagenAvanceProyectoBusiness
    {
        #region Insertar

        /// <summary>
        /// Método que inserta un nuevo objeto de ImagenAvanceProyecto
        /// </summary>
        /// <param name="iImagenAvanceProyecto"></param>
        public static int Insertar(ImagenAvanceProyecto iImagenAvanceProyecto)
        {
            return ImagenAvanceProyectoDataAccess.Insertar(iImagenAvanceProyecto);
        }

        #endregion

        #region Modificar

        /// <summary>
        /// Método que actualiza las propiedades de un objeto de la clase ImagenAvanceProyecto
        /// </summary>
        /// <param name="uImagenAvanceProyecto"></param>
        /// <returns></returns>
        public static int Actualizar(ImagenAvanceProyecto uImagenAvanceProyecto)
        {
            return ImagenAvanceProyectoDataAccess.Actualizar(uImagenAvanceProyecto);
        }

        #endregion

        #region Eliminar

        /// <summary>
        /// Método que elimina un objeto de la clase ImagenAvanceProyecto por su ID
        /// </summary>
        /// <param name="iID"></param>
        public static int Borrar(int iID, string strServerMapPath)
        {
            //1. Obtener un objeto tipo ImagenAvanceProyecto
            ImagenAvanceProyecto oImagenAvanceProyecto = ImagenAvanceProyectoBusiness.ObtenerImagenAvanceProyectoPorID(iID);

            //2. Eliminar de la base de datos el registro de la fotográfia
            int iRespuesta = ImagenAvanceProyectoDataAccess.Borrar(iID);

            //3. Eliminar la imagen del disco duro
            File.Delete(strServerMapPath + oImagenAvanceProyecto.Direccion);

            return iRespuesta;
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
        /// Obtener un objeto de la clase ImagenAvanceProyecto por su ID
        /// </summary>
        /// <param name="iID"></param>
        /// <returns></returns>
        public static ImagenAvanceProyecto ObtenerImagenAvanceProyectoPorID(int iID)
        {
            return ImagenAvanceProyectoDataAccess.ObtenerImagenAvanceProyectoPorID(iID);
        }

        /// <summary>
        /// Método que obtiene una lista de objetos ImagenAvanceProyectos por su propiedad Proyecto
        /// </summary>
        /// <param name="strProyecto"></param>
        /// <returns></returns>
        public static List<ImagenAvanceProyecto> ObtenerImagenAvanceProyectoPorProyecto(string strProyecto)
        {
            return ImagenAvanceProyectoDataAccess.ObtenerImagenAvanceProyectoPorProyecto(strProyecto);
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
