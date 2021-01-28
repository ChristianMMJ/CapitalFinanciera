using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CAPITALFINANCIERA.APP.EL
{
    /// <summary>
    /// Clase que controla la entidad de Inversiones
    /// </summary>
    public class Inversion
    {
        #region Campos

        string id;
        string usuario;
        string proyecto;
        DateTime fecha;
        decimal monto;
        double porcentaje;
        string tipo;
        string estatus;
        string usuarioalta;
        DateTime fechaalta;
        string usuariomodificacion;
        DateTime fechamodificacion;

        Usuario rusuario;
        Proyecto rproyecto;

        #endregion

        #region Propiedades

        public string ID
        {
            get { return id; }
            set { id = value; }
        }

        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }

        public string Proyecto
        {
            get { return proyecto; }
            set { proyecto = value; }
        }

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        public decimal Monto
        {
            get { return monto; }
            set { monto = value; }
        }

        public double Porcentaje
        {
            get { return porcentaje; }
            set { porcentaje = value; }
        }

        public string Tipo
        {
            get { return tipo; }
            set { tipo = value; }
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

        public Usuario RUsuario
        {
            get { return rusuario; }
            set { rusuario = value; }
        }

        public Proyecto RProyecto
        {
            get { return rproyecto; }
            set { rproyecto = value; }
        }

        #endregion
    }
}
