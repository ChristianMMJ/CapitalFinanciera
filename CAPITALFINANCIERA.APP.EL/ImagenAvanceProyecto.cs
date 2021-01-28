using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CAPITALFINANCIERA.APP.EL
{
    /// <summary>
    /// Clase que controla la entidad de ImagenesAvancesProyectos
    /// </summary>
    public class ImagenAvanceProyecto
    {
        #region Campos

        int id;
        string proyecto;
        string avance;
        string nombre;
        string descripcion;
        string direccion;

        #endregion

        #region Propiedades

        public int ID
        {
            get { return id; }
            set { id = value; }
        }

        public string Proyecto
        {
            get { return proyecto; }
            set { proyecto = value; }
        }

        public string Avance
        {
            get { return avance; }
            set { avance = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }

        #endregion
    }
}
