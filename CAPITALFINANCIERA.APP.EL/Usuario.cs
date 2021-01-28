﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CAPITALFINANCIERA.APP.EL
{
    /// <summary>
    /// Clase que controla la entidad de Usuarios
    /// </summary>
    public class Usuario
    {
        #region Campos

        string id;
        string correo;
        string nombre;
        string apaterno;
        string amaterno;
        string acceso;
        string contrasena;
        string estatus;
        string empresa;
        bool bloqueado;
        bool enlinea;
        DateTime fechaalta;
        Nullable<DateTime> fechabloqueo;
        Nullable<DateTime> ultimoacceso;
        Nullable<DateTime> cambiocontrasena;        

        #endregion

        #region Propiedades

        public string ID
        {
            get { return id; }
            set { id = value; }
        }

        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string APaterno
        {
            get { return apaterno; }
            set { apaterno = value; }
        }


        public string AMaterno
        {
            get { return amaterno; }
            set { amaterno = value; }
        }

        public string Acceso
        {
            get { return acceso; }
            set { acceso = value; }
        }

        public string Contrasena
        {
            get { return contrasena; }
            set { contrasena = value; }
        }

        public string Estatus
        {
            get { return estatus; }
            set { estatus = value; }
        }

        public string Empresa
        {
            get { return empresa; }
            set { empresa = value; }
        }

        public bool Bloqueado
        {
            get { return bloqueado; }
            set { bloqueado = value; }
        }

        public bool EnLinea
        {
            get { return enlinea; }
            set { enlinea = value; }
        }

        public DateTime FechaAlta
        {
            get { return fechaalta; }
            set { fechaalta = value; }
        }

        public Nullable<DateTime> FechaBloqueo
        {
            get { return fechabloqueo; }
            set { fechabloqueo = value; }
        }

        public Nullable<DateTime> UltimoAcceso
        {
            get { return ultimoacceso; }
            set { ultimoacceso = value; }
        }

        public Nullable<DateTime> CambioContrasena
        {
            get { return cambiocontrasena; }
            set { cambiocontrasena = value; }
        }

        #endregion
    }
}