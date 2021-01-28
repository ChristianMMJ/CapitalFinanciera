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
    /// Clase que administra los datos de la tabla de Proyectos
    /// </summary>
    public class ProyectoDataAccess
    {
        #region Insertar

        /// <summary>
        /// Método que inserta un nuevo registro a la tabla de Usuarios
        /// </summary>
        /// <param name="iProyecto"></param>
        public static string Insertar(Proyecto iProyecto)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spI_InsertarProyecto";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 8;
                sqlpID.Direction = ParameterDirection.Output;

                SqlParameter sqlpNombre = new SqlParameter();
                sqlpNombre.ParameterName = "@Nombre";
                sqlpNombre.SqlDbType = SqlDbType.VarChar;
                sqlpNombre.Value = iProyecto.Nombre;

                SqlParameter sqlpDireccion = new SqlParameter();
                sqlpDireccion.ParameterName = "@Direccion";
                sqlpDireccion.SqlDbType = SqlDbType.VarChar;
                sqlpDireccion.Value = iProyecto.Direccion;

                SqlParameter sqlpMonto = new SqlParameter();
                sqlpMonto.ParameterName = "@Monto";
                sqlpMonto.SqlDbType = SqlDbType.Money;
                sqlpMonto.Value = iProyecto.Monto;

                SqlParameter sqlpObservaciones = new SqlParameter();
                sqlpObservaciones.ParameterName = "@Observaciones";
                sqlpObservaciones.SqlDbType = SqlDbType.VarChar;
                sqlpObservaciones.Value = iProyecto.Observaciones;

                SqlParameter sqlpAvances = new SqlParameter();
                sqlpAvances.ParameterName = "@Avances";
                sqlpAvances.SqlDbType = SqlDbType.VarChar;
                sqlpAvances.Value = iProyecto.Avances;

                SqlParameter sqlpEstatus = new SqlParameter();
                sqlpEstatus.ParameterName = "@Estatus";
                sqlpEstatus.SqlDbType = SqlDbType.VarChar;
                sqlpEstatus.Value = iProyecto.Estatus;

                SqlParameter sqlpUsuarioAlta = new SqlParameter();
                sqlpUsuarioAlta.ParameterName = "@UsuarioAlta";
                sqlpUsuarioAlta.SqlDbType = SqlDbType.VarChar;
                sqlpUsuarioAlta.Value = iProyecto.UsuarioAlta;

                SqlParameter sqlpFechaAlta = new SqlParameter();
                sqlpFechaAlta.ParameterName = "@FechaAlta";
                sqlpFechaAlta.SqlDbType = SqlDbType.SmallDateTime;
                sqlpFechaAlta.Value = iProyecto.FechaAlta;

                SqlParameter sqlpUsuarioModificacion = new SqlParameter();
                sqlpUsuarioModificacion.ParameterName = "@UsuarioModificacion";
                sqlpUsuarioModificacion.SqlDbType = SqlDbType.VarChar;
                sqlpUsuarioModificacion.Value = iProyecto.UsuarioModificacion;

                SqlParameter sqlpFechaModificacion = new SqlParameter();
                sqlpFechaModificacion.ParameterName = "@FechaModificacion";
                sqlpFechaModificacion.SqlDbType = SqlDbType.SmallDateTime;
                sqlpFechaModificacion.Value = iProyecto.FechaModificacion;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);
                sqlcComando.Parameters.Add(sqlpNombre);
                sqlcComando.Parameters.Add(sqlpDireccion);
                sqlcComando.Parameters.Add(sqlpMonto);
                sqlcComando.Parameters.Add(sqlpObservaciones);
                sqlcComando.Parameters.Add(sqlpAvances);
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
                throw new Exception("Error capa de datos (public static int Insertar(Proyecto " + iProyecto.Nombre + ")): " + ex.Message);
            }
        }

        #endregion

        #region Modificar

        /// <summary>
        /// Método que actualiza un registro a la tabla de Proyectos por su ID
        /// </summary>
        /// <param name="uProyecto"></param>
        public static int Actualizar(Proyecto uProyecto)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spU_ActualizarProyecto";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 8;
                sqlpID.Value = uProyecto.ID;

                SqlParameter sqlpNombre = new SqlParameter();
                sqlpNombre.ParameterName = "@Nombre";
                sqlpNombre.SqlDbType = SqlDbType.VarChar;
                sqlpNombre.Value = uProyecto.Nombre;

                SqlParameter sqlpDireccion = new SqlParameter();
                sqlpDireccion.ParameterName = "@Direccion";
                sqlpDireccion.SqlDbType = SqlDbType.VarChar;
                sqlpDireccion.Value = uProyecto.Direccion;

                SqlParameter sqlpMonto = new SqlParameter();
                sqlpMonto.ParameterName = "@Monto";
                sqlpMonto.SqlDbType = SqlDbType.Money;
                sqlpMonto.Value = uProyecto.Monto;

                SqlParameter sqlpObservaciones = new SqlParameter();
                sqlpObservaciones.ParameterName = "@Observaciones";
                sqlpObservaciones.SqlDbType = SqlDbType.VarChar;
                sqlpObservaciones.Value = uProyecto.Observaciones;

                SqlParameter sqlpAvances = new SqlParameter();
                sqlpAvances.ParameterName = "@Avances";
                sqlpAvances.SqlDbType = SqlDbType.VarChar;
                sqlpAvances.Value = uProyecto.Avances;

                SqlParameter sqlpEstatus = new SqlParameter();
                sqlpEstatus.ParameterName = "@Estatus";
                sqlpEstatus.SqlDbType = SqlDbType.VarChar;
                sqlpEstatus.Value = uProyecto.Estatus;

                SqlParameter sqlpUsuarioModificacion = new SqlParameter();
                sqlpUsuarioModificacion.ParameterName = "@UsuarioModificacion";
                sqlpUsuarioModificacion.SqlDbType = SqlDbType.VarChar;
                sqlpUsuarioModificacion.Value = uProyecto.UsuarioModificacion;

                SqlParameter sqlpFechaModificacion = new SqlParameter();
                sqlpFechaModificacion.ParameterName = "@FechaModificacion";
                sqlpFechaModificacion.SqlDbType = SqlDbType.SmallDateTime;
                sqlpFechaModificacion.Value = uProyecto.FechaModificacion;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);
                sqlcComando.Parameters.Add(sqlpNombre);
                sqlcComando.Parameters.Add(sqlpDireccion);
                sqlcComando.Parameters.Add(sqlpMonto);
                sqlcComando.Parameters.Add(sqlpObservaciones);
                sqlcComando.Parameters.Add(sqlpAvances);
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
                throw new Exception("Error capa de datos (public static int Actualizar(Proyecto " + uProyecto.ID + ")): " + ex.Message);
            }
        }

        #endregion

        #region Eliminar

        /// <summary>
        /// Método que borrar un registro de Proyectos por su ID
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
                sqlcComando.CommandText = "web_spD_BorrarProyecto";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 8;
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
                throw new Exception("Error capa de datos (public static int Borrar(Proyecto " + strID + ")): " + ex.Message);
            }
        }

        #endregion

        #region Consultar

        /// <summary>
        /// Obtener todos los registros de Proyectos
        /// </summary>
        /// <returns></returns>
        public static List<Proyecto> ObtenerProyectos()
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spS_ObtenerProyectos";

                //2. Declarar los parametros

                //3. Agregar los parametros al comando

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa filas
                SqlDataReader reader = sqlcComando.ExecuteReader();

                //6. Asignar la lista de Clientes
                List<Proyecto> result = LibraryGenerics<Proyecto>.ConvertDataSetToList(reader);

                //7. Cerrar la conexión
                sqlcComando.Connection.Close();

                //8. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static List<Proyecto> ObtenerProyectos()): " + ex.Message);
            }
        }

        /// <summary>
        /// Obtener un registro de Proyecto por su ID
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static Proyecto ObtenerProyectoPorID(string strID)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spS_ObtenerProyectoPorID";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 8;
                sqlpID.Value = strID;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa filas
                SqlDataReader reader = sqlcComando.ExecuteReader();

                //6. Asignar la lista de Clientes
                Proyecto result = LibraryGenerics<Proyecto>.ConvertDataSetToList(reader).FirstOrDefault();

                //7. Cerrar la conexión
                sqlcComando.Connection.Close();

                //8. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static Proyecto ObtenerProyectoPorID(string " + strID + ")): " + ex.Message);
            }
        }

        /// <summary>
        /// Método que valida el proyecto para su posible eliminación
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static bool ValidarProyectoEnUso(string strID)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcClienteComando = new SqlCommand();
                sqlcClienteComando.Connection = sqlcConectar;
                sqlcClienteComando.CommandType = CommandType.StoredProcedure;
                sqlcClienteComando.CommandText = "web_spS_ValidarProyectoEnUso";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Char;
                sqlpID.Size = 8;
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
                throw new Exception("Error capa de datos (ValidarProyectoEnUso(string " + strID + ")): " + ex.Message);
            }
        }

        #endregion

        #region Acción

        #endregion
    }
}
