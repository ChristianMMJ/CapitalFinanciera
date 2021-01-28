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
    /// Clase que administra los datos de la tabla de ImagenesAvancesProyectos
    /// </summary>
    public class ImagenAvanceProyectoDataAccess
    {
        #region Insertar

        /// <summary>
        /// Método que inserta un nuevo registro a la tabla de ImagenesAvancesProyectos
        /// </summary>
        /// <param name="iImagenAvanceProyecto"></param>
        public static int Insertar(ImagenAvanceProyecto iImagenAvanceProyecto)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spI_InsertarImagenAvanceProyecto";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Int;
                sqlpID.Direction = ParameterDirection.Output;

                SqlParameter sqlpProyecto = new SqlParameter();
                sqlpProyecto.ParameterName = "@Proyecto";
                sqlpProyecto.SqlDbType = SqlDbType.Char;
                sqlpProyecto.Precision = 8;
                sqlpProyecto.Value = iImagenAvanceProyecto.Proyecto;

                SqlParameter sqlpAvance = new SqlParameter();
                sqlpAvance.ParameterName = "@Avance";
                sqlpAvance.SqlDbType = SqlDbType.VarChar;
                sqlpAvance.Value = iImagenAvanceProyecto.Avance;

                SqlParameter sqlpNombre = new SqlParameter();
                sqlpNombre.ParameterName = "@Nombre";
                sqlpNombre.SqlDbType = SqlDbType.VarChar;
                sqlpNombre.Value = iImagenAvanceProyecto.Nombre;

                SqlParameter sqlpDescripcion = new SqlParameter();
                sqlpDescripcion.ParameterName = "@Descripcion";
                sqlpDescripcion.SqlDbType = SqlDbType.VarChar;
                sqlpDescripcion.Value = iImagenAvanceProyecto.Descripcion;

                SqlParameter sqlpDireccion = new SqlParameter();
                sqlpDireccion.ParameterName = "@Direccion";
                sqlpDireccion.SqlDbType = SqlDbType.VarChar;
                sqlpDireccion.Value = iImagenAvanceProyecto.Direccion;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);
                sqlcComando.Parameters.Add(sqlpProyecto);
                sqlcComando.Parameters.Add(sqlpAvance);
                sqlcComando.Parameters.Add(sqlpNombre);
                sqlcComando.Parameters.Add(sqlpDescripcion);
                sqlcComando.Parameters.Add(sqlpDireccion);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción INSERT que regresa un dato que es el ID
                int result = Convert.ToInt32(sqlcComando.ExecuteScalar());

                //6. Cerrar la conexión
                sqlcComando.Connection.Close();

                //7. Regresar el resultado
                return Convert.ToInt32(sqlcComando.Parameters["@ID"].Value);
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static int Insertar(ImagenAvanceProyecto " + iImagenAvanceProyecto.Nombre + ")): " + ex.Message);
            }
        }

        #endregion

        #region Modificar

        /// <summary>
        /// Método que actualiza un registro a la tabla de ImagenAvanceProyecto por su ID
        /// </summary>
        /// <param name="uImagenAvanceProyecto"></param>
        public static int Actualizar(ImagenAvanceProyecto uImagenAvanceProyecto)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spU_ActualizarImagenAvanceProyecto";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Int;
                sqlpID.Value = uImagenAvanceProyecto.ID;

                SqlParameter sqlpProyecto = new SqlParameter();
                sqlpProyecto.ParameterName = "@Proyecto";
                sqlpProyecto.SqlDbType = SqlDbType.Char;
                sqlpProyecto.Precision = 8;
                sqlpProyecto.Value = uImagenAvanceProyecto.Proyecto;

                SqlParameter sqlpAvance = new SqlParameter();
                sqlpAvance.ParameterName = "@Avance";
                sqlpAvance.SqlDbType = SqlDbType.VarChar;
                sqlpAvance.Value = uImagenAvanceProyecto.Avance;

                SqlParameter sqlpNombre = new SqlParameter();
                sqlpNombre.ParameterName = "@Nombre";
                sqlpNombre.SqlDbType = SqlDbType.VarChar;
                sqlpNombre.Value = uImagenAvanceProyecto.Nombre;

                SqlParameter sqlpDescripcion = new SqlParameter();
                sqlpDescripcion.ParameterName = "@Descripcion";
                sqlpDescripcion.SqlDbType = SqlDbType.VarChar;
                sqlpDescripcion.Value = uImagenAvanceProyecto.Descripcion;

                SqlParameter sqlpDireccion = new SqlParameter();
                sqlpDireccion.ParameterName = "@Direccion";
                sqlpDireccion.SqlDbType = SqlDbType.VarChar;
                sqlpDireccion.Value = uImagenAvanceProyecto.Direccion;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);
                sqlcComando.Parameters.Add(sqlpProyecto);
                sqlcComando.Parameters.Add(sqlpAvance);
                sqlcComando.Parameters.Add(sqlpNombre);
                sqlcComando.Parameters.Add(sqlpDescripcion);
                sqlcComando.Parameters.Add(sqlpDireccion);

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
                throw new Exception("Error capa de datos (public static int Actualizar(ImagenAvanceProyecto " + uImagenAvanceProyecto.ID + ")): " + ex.Message);
            }
        }

        #endregion

        #region Eliminar

        /// <summary>
        /// Método que borrar un registro de ImagenesAvancesProyectos por su ID
        /// </summary>
        /// <param name="iID"></param>
        public static int Borrar(int iID)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spD_BorrarImagenesAvancesProyectos";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Int;
                sqlpID.Value = iID;

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
                throw new Exception("Error capa de datos (public static int Borrar(int " + iID + ")): " + ex.Message);
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
        /// Obtener un registro de ImagenAvanceProyecto por su ID
        /// </summary>
        /// <param name="iID"></param>
        /// <returns></returns>
        public static ImagenAvanceProyecto ObtenerImagenAvanceProyectoPorID(int iID)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spS_ObtenerImagenAvanceProyectoPorID";

                //2. Declarar los parametros
                SqlParameter sqlpID = new SqlParameter();
                sqlpID.ParameterName = "@ID";
                sqlpID.SqlDbType = SqlDbType.Int;
                sqlpID.Value = iID;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpID);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa filas
                SqlDataReader reader = sqlcComando.ExecuteReader();

                //6. Asignar la lista de Clientes
                ImagenAvanceProyecto result = LibraryGenerics<ImagenAvanceProyecto>.ConvertDataSetToList(reader).FirstOrDefault();

                //7. Cerrar la conexión
                sqlcComando.Connection.Close();

                //8. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static ImagenAvanceProyecto ObtenerImagenAvanceProyectoPorID(string " + iID + ")): " + ex.Message);
            }
        }

        /// <summary>
        /// Obtener una lista de registros de ImagenAvanceProyecto por el Identificador del Proyecto
        /// </summary>
        /// <param name="strID"></param>
        /// <returns></returns>
        public static List<ImagenAvanceProyecto> ObtenerImagenAvanceProyectoPorProyecto(string strProyecto)
        {
            try
            {
                //1. Configurar la conexión y el tipo de comando
                SqlConnection sqlcConectar = new SqlConnection(ConfigurationManager.ConnectionStrings["CAPITALFINANCIERAUSA"].ConnectionString);
                SqlCommand sqlcComando = new SqlCommand();
                sqlcComando.Connection = sqlcConectar;
                sqlcComando.CommandType = CommandType.StoredProcedure;
                sqlcComando.CommandText = "web_spS_ObtenerImagenAvanceProyectoPorProyecto";

                //2. Declarar los parametros
                SqlParameter sqlpProyecto = new SqlParameter();
                sqlpProyecto.ParameterName = "@Proyecto";
                sqlpProyecto.SqlDbType = SqlDbType.Char;
                sqlpProyecto.Size = 8;
                sqlpProyecto.Value = strProyecto;

                //3. Agregar los parametros al comando
                sqlcComando.Parameters.Add(sqlpProyecto);

                //4. Abrir la conexión
                sqlcComando.Connection.Open();

                //5. Ejecutar la instrucción SELECT que regresa filas
                SqlDataReader reader = sqlcComando.ExecuteReader();

                //6. Asignar la lista de Clientes
                List<ImagenAvanceProyecto> result = LibraryGenerics<ImagenAvanceProyecto>.ConvertDataSetToList(reader);

                //7. Cerrar la conexión
                sqlcComando.Connection.Close();

                //8. Regresar el resultado
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error capa de datos (public static List<ImagenAvanceProyecto> ObtenerImagenAvanceProyectoPorProyecto(string " + strProyecto + ")): " + ex.Message);
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
