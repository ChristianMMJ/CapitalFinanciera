using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CAPITALFINANCIERA.APP.EL;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using CAPITALFINANCIERA.LIBRARY.COMMON.Generics;

namespace CAPITALFINANCIERA.APP.DL
{
    /// <summary>
    /// Clase que administra los datos de la tabla de Inversiones
    /// </summary>
    public class InversionDataAccess
    {
        #region Insertar

        /// <summary>
        /// Método que inserta un nuevo registro a la tabla de Inversiones
        /// </summary>
        /// <param name="iInversion"></param>
        public static string Insertar(Inversion iInversion)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spI_InsertarInversion";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 10;
                sqlpID.Direction = ParameterDirection.Output;

                SqlParameter sqlpUsuario = new SqlParameter();
                sqlpUsuario.ParameterName = "@Usuario";
                sqlpUsuario.SqlDbType = SqlDbType.VarChar;
                sqlpUsuario.Value = iInversion.Usuario;

                SqlParameter sqlpProyecto = new SqlParameter();
                sqlpProyecto.ParameterName = "@Proyecto";
                sqlpProyecto.SqlDbType = SqlDbType.Char;
                sqlpProyecto.Size = 8;
                sqlpProyecto.Value = iInversion.Proyecto;

                SqlParameter sqlpFecha = new SqlParameter();
                sqlpFecha.ParameterName = "@Fecha";
                sqlpFecha.SqlDbType = SqlDbType.SmallDateTime;
                sqlpFecha.Value = iInversion.Fecha;

                SqlParameter sqlpMonto = new SqlParameter();
                sqlpMonto.ParameterName = "@Monto";
                sqlpMonto.SqlDbType = SqlDbType.Money;
                sqlpMonto.Value = iInversion.Monto;

                SqlParameter sqlpPorcentaje = new SqlParameter();
                sqlpPorcentaje.ParameterName = "@Porcentaje";
                sqlpPorcentaje.SqlDbType = SqlDbType.Float;
                sqlpPorcentaje.Value = iInversion.Porcentaje;

                SqlParameter sqlpTipo = new SqlParameter();
                sqlpTipo.ParameterName = "@Tipo";
                sqlpTipo.SqlDbType = SqlDbType.Char;
                sqlpTipo.Size = 1;
                sqlpTipo.Value = iInversion.Tipo;

                SqlParameter sqlpEstatus = new SqlParameter();
                sqlpEstatus.ParameterName = "@Estatus";
                sqlpEstatus.SqlDbType = SqlDbType.VarChar;
                sqlpEstatus.Value = iInversion.Estatus;

                SqlParameter sqlpUsuarioAlta = new SqlParameter();
                sqlpUsuarioAlta.ParameterName = "@UsuarioAlta";
                sqlpUsuarioAlta.SqlDbType = SqlDbType.VarChar;
                sqlpUsuarioAlta.Value = iInversion.UsuarioAlta;

                SqlParameter sqlpFechaAlta = new SqlParameter();
                sqlpFechaAlta.ParameterName = "@FechaAlta";
                sqlpFechaAlta.SqlDbType = SqlDbType.SmallDateTime;
                sqlpFechaAlta.Value = iInversion.FechaAlta;

                SqlParameter sqlpUsuarioModificacion = new SqlParameter();
                sqlpUsuarioModificacion.ParameterName = "@UsuarioModificacion";
                sqlpUsuarioModificacion.SqlDbType = SqlDbType.VarChar;
                sqlpUsuarioModificacion.Value = iInversion.UsuarioModificacion;

                SqlParameter sqlpFechaModificacion = new SqlParameter();
                sqlpFechaModificacion.ParameterName = "@FechaModificacion";
                sqlpFechaModificacion.SqlDbType = SqlDbType.SmallDateTime;
                sqlpFechaModificacion.Value = iInversion.FechaModificacion;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);
                sqlcComando.Parameters.Add(sqlpUsuario);
                sqlcComando.Parameters.Add(sqlpProyecto);
                sqlcComando.Parameters.Add(sqlpFecha);
                sqlcComando.Parameters.Add(sqlpMonto);
                sqlcComando.Parameters.Add(sqlpPorcentaje);
                sqlcComando.Parameters.Add(sqlpTipo);                
                sqlcComando.Parameters.Add(sqlpEstatus);
                sqlcComando.Parameters.Add(sqlpUsuarioAlta);
                sqlcComando.Parameters.Add(sqlpFechaAlta);
                sqlcComando.Parameters.Add(sqlpUsuarioModificacion);
                sqlcComando.Parameters.Add(sqlpFechaModificacion);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción INSERT que regresa un dato que es el ID
                int result = Convert.ToInt32(sqlcComando.ExecuteScalar());

                //6. Cerrar la conexión
                sqlcComando.Connection.Close();

                //7. Regresar el resultado
                return sqlcComando.Parameters["@ID"].Value.ToString();
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static int Insertar(Inversion " + iInversion.Proyecto + ")): " + ex.Message);
            }
        }

        #endregion

        #region Modificar

        /// <summary>
        /// Método que actualiza un registro a la tabla de Inversiones por su ID
        /// </summary>
        /// <param name="uInversion"></param>
        public static int Actualizar(Inversion uInversion)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spU_ActualizarInversion";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 10;
                sqlpID.Value = uInversion.ID;

                SqlParameter sqlpUsuario = new SqlParameter();
                sqlpUsuario.ParameterName = "@Usuario";
                sqlpUsuario.SqlDbType = SqlDbType.VarChar;
                sqlpUsuario.Value = uInversion.Usuario;

                SqlParameter sqlpProyecto = new SqlParameter();
                sqlpProyecto.ParameterName = "@Proyecto";
                sqlpProyecto.SqlDbType = SqlDbType.Char;
                sqlpProyecto.Size = 8;
                sqlpProyecto.Value = uInversion.Proyecto;

                SqlParameter sqlpFecha = new SqlParameter();
                sqlpFecha.ParameterName = "@Fecha";
                sqlpFecha.SqlDbType = SqlDbType.SmallDateTime;
                sqlpFecha.Value = uInversion.Fecha;

                SqlParameter sqlpMonto = new SqlParameter();
                sqlpMonto.ParameterName = "@Monto";
                sqlpMonto.SqlDbType = SqlDbType.Money;
                sqlpMonto.Value = uInversion.Monto;

                SqlParameter sqlpPorcentaje = new SqlParameter();
                sqlpPorcentaje.ParameterName = "@Porcentaje";
                sqlpPorcentaje.SqlDbType = SqlDbType.Float;
                sqlpPorcentaje.Value = uInversion.Porcentaje;

                SqlParameter sqlpTipo = new SqlParameter();
                sqlpTipo.ParameterName = "@Tipo";
                sqlpTipo.SqlDbType = SqlDbType.Char;
                sqlpTipo.Size = 1;
                sqlpTipo.Value = uInversion.Tipo;

                SqlParameter sqlpEstatus = new SqlParameter();
                sqlpEstatus.ParameterName = "@Estatus";
                sqlpEstatus.SqlDbType = SqlDbType.VarChar;
                sqlpEstatus.Value = uInversion.Estatus;

                SqlParameter sqlpUsuarioModificacion = new SqlParameter();
                sqlpUsuarioModificacion.ParameterName = "@UsuarioModificacion";
                sqlpUsuarioModificacion.SqlDbType = SqlDbType.VarChar;
                sqlpUsuarioModificacion.Value = uInversion.UsuarioModificacion;

                SqlParameter sqlpFechaModificacion = new SqlParameter();
                sqlpFechaModificacion.ParameterName = "@FechaModificacion";
                sqlpFechaModificacion.SqlDbType = SqlDbType.SmallDateTime;
                sqlpFechaModificacion.Value = uInversion.FechaModificacion;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);
                sqlcComando.Parameters.Add(sqlpUsuario);
                sqlcComando.Parameters.Add(sqlpProyecto);
                sqlcComando.Parameters.Add(sqlpFecha);
                sqlcComando.Parameters.Add(sqlpMonto);
                sqlcComando.Parameters.Add(sqlpPorcentaje);
                sqlcComando.Parameters.Add(sqlpTipo);
                sqlcComando.Parameters.Add(sqlpEstatus);
                sqlcComando.Parameters.Add(sqlpUsuarioModificacion);
                sqlcComando.Parameters.Add(sqlpFechaModificacion);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción UPDATE que no regresa filas
                int result = sqlcComando.ExecuteNonQuery();

                //6. Cerrar la conexión
                sqlcComando.Connection.Close();

                //7. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static int Actualizar(Inversion " + uInversion.ID + ")): " + ex.Message);
            }
        }

        #endregion

        #region Eliminar

        /// <summary>
        /// Método que borrar un registro de Inversiones por su ID
        /// </summary>
        /// <param name="strID"></param>
        public static int Borrar(string strID)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spD_BorrarInversion";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 10;
                sqlpID.Value = strID;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción DELETE que no regresa filas
                int result = sqlcComando.ExecuteNonQuery();

                //6. Cerrar la conexión
                sqlcComando.Connection.Close();

                //7. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static int Borrar(Inversion " + strID + ")): " + ex.Message);
            }
        }

        #endregion

        #region Consultar

        /// <summary>
        /// Obtener todos los registros de Inversiones
        /// </summary>
        /// <returns></returns>
        public static List<Inversion> ObtenerInversiones()
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spS_ObtenerInversiones";

                //2. Declarar los parametros

                //3. Agregar los parametros al comando

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa filas
                SqlDataReader reader = sqlcComando.ExecuteReader();

                //6. Asignar la lista de Clientes
                List<Inversion> result = LibraryGenerics<Inversion>.ConvertDataSetToList(reader);

                //7. Cerrar la conexión
                sqlcComando.Connection.Close();

                //8. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static List<Inversion> ObtenerInversiones()): " + ex.Message);
            }
        }

        /// <summary>
        /// Obtener un registro de Inversion por su ID
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static Inversion ObtenerInversionPorID(string strID)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spS_ObtenerInversionPorID";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 10;
                sqlpID.Value = strID;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa filas
                SqlDataReader reader = sqlcComando.ExecuteReader();

                //6. Asignar la lista de Clientes
                Inversion result = LibraryGenerics<Inversion>.ConvertDataSetToList(reader).FirstOrDefault();

                //7. Cerrar la conexión
                sqlcComando.Connection.Close();

                //8. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static Inversion ObtenerInversionPorID(string " + strID + ")): " + ex.Message);
            }
        }

        /// <summary>
        /// Obtener todos los registros de Inversiones por un usuario
        /// </summary>
        /// <param name="strUsuario"></param>
        /// <returns></returns>
        public static List<Inversion> ObtenerInversionPorUsuario(string strUsuario)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spS_ObtenerInversionPorUsuario";

                //2. Declarar los parametros
                SqlParameter sqlpUsuario = new SqlParameter();
                sqlpUsuario.ParameterName = "@Usuario";
                sqlpUsuario.SqlDbType = SqlDbType.VarChar;
                sqlpUsuario.Value = strUsuario;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpUsuario);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa filas
                SqlDataReader reader = sqlcComando.ExecuteReader();

                //6. Asignar la lista de Clientes
                List<Inversion> result = LibraryGenerics<Inversion>.ConvertDataSetToList(reader);

                //7. Cerrar la conexión
                sqlcComando.Connection.Close();

                //8. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static List<Inversion> ObtenerInversionPorUsuario(string " + strUsuario + ")): " + ex.Message);
            }
        }

        /// <summary>
        /// Obtener todos los registros de Inversiones por un usuario y proyecto
        /// </summary>
        /// <param name="strUsuario"></param>
        /// <param name="strProyecto"></param>
        /// <returns></returns>
        public static Inversion ObtenerInversionPorUsuarioProyecto(string strUsuario, string strProyecto)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spS_ObtenerInversionPorUsuarioProyecto";

                //2. Declarar los parametros
                SqlParameter sqlpUsuario = new SqlParameter();
                sqlpUsuario.ParameterName = "@Usuario";
                sqlpUsuario.SqlDbType = SqlDbType.VarChar;
                sqlpUsuario.Value = strUsuario;

                SqlParameter sqlpProyecto = new SqlParameter();
                sqlpProyecto.ParameterName = "@Proyecto";
                sqlpProyecto.SqlDbType = SqlDbType.VarChar;
                sqlpProyecto.Value = strProyecto;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpUsuario);
                sqlcComando.Parameters.Add(sqlpProyecto);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa filas
                SqlDataReader reader = sqlcComando.ExecuteReader();

                //6. Asignar la lista de Clientes
                Inversion result = LibraryGenerics<Inversion>.ConvertDataSetToList(reader).FirstOrDefault();

                //7. Cerrar la conexión
                sqlcComando.Connection.Close();

                //8. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static Inversion ObtenerInversionPorUsuarioProyecto(string " + strUsuario + ", string " + strProyecto + ")): " + ex.Message);
            }
        }

        /// <summary>
        /// Método que valida la Inversion para su posible eliminación
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static bool ValidarInversionEnUso(string strID)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcClienteComando = new SqlCommand();
                sqlcClienteComando.Connection = sqlcConectar;
                sqlcClienteComando.CommandType = CommandType.StoredProcedure;
                sqlcClienteComando.CommandText = "web_spS_ValidarInversionEnUso";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 10;
                sqlpID.Value = strID;

                //3. Agregar los parametros al comando
                sqlcClienteComando.Parameters.Add(sqlpID);

                //4. Abrir la conexión
                sqlcClienteComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa un dato
                bool result = Convert.ToBoolean(sqlcClienteComando.ExecuteScalar());

                //6. Cerrar la conexión
                sqlcClienteComando.Connection.Close();

                //7. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (ValidarInversionEnUso(string " + strID + ")): " + ex.Message);
            }
        }

        #endregion

        #region Acción

        #endregion
    }
}
