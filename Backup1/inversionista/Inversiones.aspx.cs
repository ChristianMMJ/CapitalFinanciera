using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CAPITALFINANCIERA.APP.BL;
using CAPITALFINANCIERA.APP.EL;
using System.Web.Security;
using Ext.Net;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace CAPITALFINANCIERAUSA_WEBPAGE.inversionista
{
    public partial class Inversiones1 : System.Web.UI.Page
    {
        HtmlGenericControl hgcTimeLinePrincipal;

        /// <summary>
        /// Se produce al principio de la inicialización de la página.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_PreInit(object sender, EventArgs e)
        {
            //1. Obtener y validar Usuario
            UsuarioBusiness.checkValidSession(this);
            Usuario oUsuario = (Usuario)Session["Usuario"];

            //2. Si no existe la Sesión salir de la página
            if (oUsuario == null)
            {
                FormsAuthentication.SignOut();
                Response.Redirect("Login.aspx", true);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //1. Obtener Usuario y validar Sesión
            UsuarioBusiness.checkValidSession(this);
            Cookies.Set("osefTheme", ConfigurationManager.AppSettings["osefTheme"].ToString(), DateTime.Now.AddDays(30), "/", null, false);
            Usuario oUsuario = (Usuario)Session["Usuario"];

            if (!Page.IsPostBack)
            {
                //2. Obtener los proyectos con los cuales tiene inversiones el usuario            
                List<Inversion> lInversion = InversionBusiness.ObtenerInversionPorUsuario(oUsuario.ID);
                List<Proyecto> lProyecto = new List<Proyecto>();

                foreach (Inversion sd in lInversion)
                {
                    if (sd.RProyecto.Estatus == "ALTA")
                        lProyecto.Add(sd.RProyecto);
                }

                //3. Asignar al ComboBox los proyectos y asignar el primero
                ddlProyecto.DataSource = lProyecto.OrderBy(proyecto => proyecto.Nombre);
                ddlProyecto.DataBind();

                CrearLineaTiempo();
            }

        }

        /// <summary>
        /// Se desencadena después de que el usuario hace clic en el vínculo de cierre de sesión y se completa el proceso de cierre de sesión.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void lsIfahto_OnLoggedOut(Object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Se produce cuando el usuario hace clic en el botón de cierre de sesión.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void lsIfahto_OnLoggingOut(Object sender, LoginCancelEventArgs e)
        {
            //Borrar sesión
            Session.Abandon();
        }

        /// <summary>
        /// Evento al seleccionar un elemento de la lista de Movimientos
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlProyecto_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            CrearLineaTiempo();
        }

        /// <summary>
        /// Método que crea la línea de tiempo
        /// </summary>
        private void CrearLineaTiempo()
        {
            //1. Declaración de objetos y variables
            Usuario oUsuario = (Usuario)Session["Usuario"];
            Proyecto cProyecto = ProyectoBusiness.ObtenerProyectoPorID(ddlProyecto.SelectedValue);
            Inversion oInversion = InversionBusiness.ObtenerInversionPorUsuarioProyecto(oUsuario.ID, cProyecto.ID);
            double dUtilidad = 0;
            double dUtilidadTotal = 0;
            int iPorcentaje = 0;

            List<string> lRestauracionNombre;
            List<ImagenAvanceProyecto> lImagenAvanceProyectoCompra;
            List<ImagenAvanceProyecto> lImagenAvanceProyectoRestauracion;
            List<ImagenAvanceProyecto> lImagenAvanceProyectoEnVenta;
            List<ImagenAvanceProyecto> lImagenAvanceProyectoPoolFinalizado;

            //2. Calcular la utilidad de la inversión en base al avance del proyecto
            if (cProyecto.Avances.Equals("COMPRA"))
            {
                dUtilidad = (double)oInversion.Monto * (oInversion.Porcentaje / 100) * (double)0.25;
                iPorcentaje = 25;
            }
            else if (cProyecto.Avances.Equals("RESTAURACIÓN"))
            {
                dUtilidad = (double)oInversion.Monto * (oInversion.Porcentaje / 100) * (double)0.5;
                iPorcentaje = 50;
            }
            else if (cProyecto.Avances.Equals("EN VENTA"))
            {
                dUtilidad = (double)oInversion.Monto * (oInversion.Porcentaje / 100) * (double)0.75;
                iPorcentaje = 75;
            }
            else
            {
                dUtilidad = (double)oInversion.Monto * (oInversion.Porcentaje / 100);
                iPorcentaje = 100;
            }

            dUtilidadTotal = (double)oInversion.Monto * (oInversion.Porcentaje / 100);

            //3. Asignar información en texto de la utilidad de la inversión
            h3Inversion.InnerText = "INVERSIÓN: " + oInversion.Monto.ToString("C") + " USD";
            h3Utilidad.InnerText = "UTILIDAD GENERADA AL MOMENTO: " + dUtilidad.ToString("C") + " USD";
            h3UtilidadTotal.InnerText = "UTILIDAD TOTAL DE INVERSIÓN " + dUtilidadTotal.ToString("C") + " USD";
            dValorPorcentajeBarra.Attributes.Add("style", "width: " + iPorcentaje + "%;");
            dValorPorcentaje.InnerText = iPorcentaje + "%";

            hgcTimeLinePrincipal = new HtmlGenericControl("div");
            hgcTimeLinePrincipal.Attributes.Add("class", "main-timeline");
            timelinestyle.Controls.Add(hgcTimeLinePrincipal);


            //4. Crear el primer bloque que es COMPRA el cual va todo agrupado
            lImagenAvanceProyectoCompra = cProyecto.RImagenAvanceProyecto.FindAll(
                                            delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                            {
                                                return RImagenAvanceProyecto.Avance == "COMPRA";
                                            }
                                        );           

            if (lImagenAvanceProyectoCompra.Count > 0)
                GeneraLineaTiempoAgrupado(lImagenAvanceProyectoCompra[0].Nombre, lImagenAvanceProyectoCompra[0].Avance, lImagenAvanceProyectoCompra[0].Descripcion, "timeline", "fa fa-shopping-cart", lImagenAvanceProyectoCompra);

            //5. Crear segundo bloque que es restauración el cual se agrupa por el nombre
            lImagenAvanceProyectoRestauracion = cProyecto.RImagenAvanceProyecto.FindAll(
                                            delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                            {
                                                return RImagenAvanceProyecto.Avance == "RESTAURACIÓN";
                                            }
                                        );

            //6. Separar de la lista de restauración los nombres diferentes para ser agrupados
            lRestauracionNombre = lImagenAvanceProyectoRestauracion.Select(x => x.Nombre).Distinct().ToList();

            //7. Por cada nombre diferente generar un nodo de la línea de tiempo
            foreach (string sd in lRestauracionNombre)
            {
                //8. Tomar solo los elementos  dela lista que coincidan con el primer nombre
                List<ImagenAvanceProyecto> lImagenAvanceProyectoRestauracionNombre;
                lImagenAvanceProyectoRestauracionNombre = lImagenAvanceProyectoRestauracion.FindAll(
                                                delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                                {
                                                    return RImagenAvanceProyecto.Nombre == sd;
                                                }
                                            );

                GeneraLineaTiempoAgrupado(lImagenAvanceProyectoRestauracionNombre[0].Nombre, lImagenAvanceProyectoRestauracionNombre[0].Nombre, lImagenAvanceProyectoRestauracionNombre[0].Descripcion, "timeline timeline2n", "fa fa-building", lImagenAvanceProyectoRestauracionNombre);
            }

            //9. Crear tercer bloque que es EN VENTA y va todo agrupado
            lImagenAvanceProyectoEnVenta = cProyecto.RImagenAvanceProyecto.FindAll(
                                            delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                            {
                                                return RImagenAvanceProyecto.Avance == "EN VENTA";
                                            }
                                        );

            if (lImagenAvanceProyectoEnVenta.Count > 0)
                GeneraLineaTiempoAgrupado(lImagenAvanceProyectoEnVenta[0].Nombre, lImagenAvanceProyectoEnVenta[0].Avance, lImagenAvanceProyectoEnVenta[0].Descripcion, "timeline timeline3n", "fa fa-dollar-sign", lImagenAvanceProyectoEnVenta);

            //10. Crear último bloque que es POOL FINALIZADO y va todo agrupado
            lImagenAvanceProyectoPoolFinalizado = cProyecto.RImagenAvanceProyecto.FindAll(
                                            delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                            {
                                                return RImagenAvanceProyecto.Avance == "POOL FINALIZADO";
                                            }
                                        );

            if (lImagenAvanceProyectoPoolFinalizado.Count > 0)
                GeneraLineaTiempoAgrupado(lImagenAvanceProyectoPoolFinalizado[0].Nombre, lImagenAvanceProyectoPoolFinalizado[0].Avance, lImagenAvanceProyectoPoolFinalizado[0].Descripcion, "timeline timeline4n", "fa fa-check-circle", lImagenAvanceProyectoPoolFinalizado);
        }

        /// <summary>
        /// Genera el evento del lado izquierdo con fotografía pero con todas las fotos agrupadas
        /// </summary>
        /// <param name="strNombre"></param>
        /// <param name="strEstado"></param>
        /// <param name="strDescripcion"></param>
        /// <param name="strFecha"></param>
        /// <param name="strImagen"></param>
        private void GeneraLineaTiempoAgrupado(string strNombre, string strEstado, string strDescripcion, string strTipoTimeLine, string strIcono, List<ImagenAvanceProyecto> lImagenAvanceProyecto)
        {
            HtmlGenericControl hgcTimeLine = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineIcon = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineIconFont = new HtmlGenericControl("i");
            HtmlGenericControl hgcTimeLineContent = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineTitulo = new HtmlGenericControl("h3");
            HtmlGenericControl hgcTimeLineDescripcion = new HtmlGenericControl("p");
            HtmlGenericControl hgcTimeLineLinkGaleria = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineGaleriaOculta = new HtmlGenericControl("div");
            
            hgcTimeLine.Attributes.Add("class", strTipoTimeLine);
            hgcTimeLineIcon.Attributes.Add("class", "timeline-icon");
            hgcTimeLineIconFont.Attributes.Add("class", strIcono);
            hgcTimeLineContent.Attributes.Add("class", "timeline-content");

            hgcTimeLineTitulo.Attributes.Add("class", "title");
            hgcTimeLineTitulo.InnerText = strNombre;

            hgcTimeLineDescripcion.Attributes.Add("class", "description");
            hgcTimeLineDescripcion.InnerText = strDescripcion;

            hgcTimeLineLinkGaleria.Attributes.Add("href", "..//admin" + lImagenAvanceProyecto[0].Direccion);
            hgcTimeLineLinkGaleria.Attributes.Add("style", "pointer-events: auto;");
            hgcTimeLineLinkGaleria.Attributes.Add("data-fancybox", "images-preview-" + strEstado);
            hgcTimeLineLinkGaleria.Attributes.Add("data-width", "1500");
            hgcTimeLineLinkGaleria.Attributes.Add("data-height", "1000");
            hgcTimeLineLinkGaleria.Attributes.Add("data-thumbs", "{'autoStart':true}");
            hgcTimeLineLinkGaleria.InnerText = " Ver galería";

            hgcTimeLineGaleriaOculta.Attributes.Add("style", "display: none;");

            hgcTimeLinePrincipal.Controls.Add(hgcTimeLine);
            hgcTimeLine.Controls.Add(hgcTimeLineIcon);
            hgcTimeLineIcon.Controls.Add(hgcTimeLineIconFont);
            hgcTimeLine.Controls.Add(hgcTimeLineContent);
            hgcTimeLineContent.Controls.Add(hgcTimeLineTitulo);
            hgcTimeLineContent.Controls.Add(hgcTimeLineDescripcion);
            hgcTimeLineDescripcion.Controls.Add(hgcTimeLineLinkGaleria);
            hgcTimeLineContent.Controls.Add(hgcTimeLineGaleriaOculta);

            //Generar tantos <a> como sean de fotografias
            bool bPrimerImagen = false;
            foreach (ImagenAvanceProyecto sd in lImagenAvanceProyecto)
            {
                if (bPrimerImagen)
                {
                    HtmlGenericControl hgcTimeLineImageFancyBox = new HtmlGenericControl("a");

                    hgcTimeLineImageFancyBox.Attributes.Add("href", "..//admin" + sd.Direccion);
                    hgcTimeLineImageFancyBox.Attributes.Add("data-fancybox", "images-preview-" + strEstado);
                    hgcTimeLineImageFancyBox.Attributes.Add("data-thumb", "..//admin" + sd.Direccion);

                    hgcTimeLineGaleriaOculta.Controls.Add(hgcTimeLineImageFancyBox);
                }
                else
                    bPrimerImagen = true;
            }
        }
    }
}