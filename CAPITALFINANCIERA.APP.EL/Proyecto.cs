using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CAPITALFINANCIERA.APP.EL
{
    /// <summary>
    /// Clase que controla la entidad de Proyectos
    /// </summary>
    public class Proyecto
    {
        #region Campos

        string id;
        string nombre;
        string direccion;
        decimal monto;
        string observaciones;
        string avances;
        string estatus;
        string usuarioalta;
        DateTime fechaalta;
        string usuariomodificacion;
        DateTime fechamodificacion;

        List<ImagenAvanceProyecto> rimagenavanceproyecto;

        #endregion

        #region Propiedades

        public string ID
        {
            get { return id; }
            set { id = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }

        public decimal Monto
        {
            get { return monto; }
            set { monto = value; }
        }

        public string Observaciones
        {
            get { return observaciones; }
            set { observaciones = value; }
        }

        public string Avances
        {
            get { return avances; }
            set { avances = value; }
        }

        public string Estatus
        {
            get { return estatus; }
            set { estatus = value; }
        }

        public string UsuarioAlta
        {
            get { return usuarioalta; }
            set { usuarioalta = value; }
        }

        public DateTime FechaAlta
        {
            get { return fechaalta; }
            set { fechaalta = value; }
        }

        public string UsuarioModificacion
        {
            get { return usuariomodificacion; }
            set { usuariomodificacion = value; }
        }

        public DateTime FechaModificacion
        {
            get { return fechamodificacion; }
            set { fechamodificacion = value; }
        }

        public List<ImagenAvanceProyecto> RImagenAvanceProyecto
        {
            get { return rimagenavanceproyecto; }
            set { rimagenavanceproyecto = value; }
        }

        #endregion
    }
}
