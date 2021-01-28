using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using CAPITALFINANCIERA.APP.EL;
using CAPITALFINANCIERA.APP.BL;
using System.Web.Security;
using Ext.Net;
using System.Configuration;

namespace CAPITALFINANCIERAUSA_WEBPAGE.inversionista
{
    public partial class Inversiones : System.Web.UI.Page
    {
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
                    lProyecto.Add(sd.RProyecto);

                //3. Asignar al ComboBox los proyectos y asignar el primero
                ddlProyecto.DataSource = lProyecto;
                ddlProyecto.DataBind();

                CrearLineaTiempo();
            }
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
        /// Método que crea la línea de tiempo
        /// </summary>
        private void CrearLineaTiempo()
        {
            //1. Declaración de objetos y variables
            Usuario oUsuario = (Usuario)Session["Usuario"];
            Proyecto cProyecto = ProyectoBusiness.ObtenerProyectoPorID(ddlProyecto.SelectedValue);
            Inversion oInversion = InversionBusiness.ObtenerInversionPorUsuarioProyecto(oUsuario.ID, cProyecto.ID);
            double dUtilidad = 0;
            int iPorcentaje = 0;

            List<string> lRestauracionNombre;
            List<ImagenAvanceProyecto> lImagenAvanceProyectoCompra;
            List<ImagenAvanceProyecto> lImagenAvanceProyectoRestauracion;
            List<ImagenAvanceProyecto> lImagenAvanceProyectoEnVenta;
            List<ImagenAvanceProyecto> lImagenAvanceProyectoPoolFinalizado;
            string strPosicion;

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

            //2. Asignar información en texto de la utilidad de la inversión
            h3Inversion.InnerText = "INVERSIÓN: " + oInversion.Monto.ToString("C") + " USD";
            h3Utilidad.InnerText = "UTILIDAD GENERADA EN ESTE MOMENTO: " + dUtilidad.ToString("C") + " USD";
            dValorPorcentajeBarra.Attributes.Add("style", "width: " + iPorcentaje + "%;");
            dValorPorcentaje.InnerText = iPorcentaje + "%";

            //2. Crear el primer bloque que es COMPRA el cual va todo agrupado
            strPosicion = "IZQUIERDA";
            GeneraTitulo("COMPRA");
            lImagenAvanceProyectoCompra = cProyecto.RImagenAvanceProyecto.FindAll(
                                            delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                            {
                                                return RImagenAvanceProyecto.Avance == "COMPRA";
                                            }
                                        );

            if (lImagenAvanceProyectoCompra.Count > 0)
                GeneraEventoIzquierdoAgrupado(lImagenAvanceProyectoCompra[0].Nombre, lImagenAvanceProyectoCompra[0].Avance, lImagenAvanceProyectoCompra[0].Descripcion, "", "..//admin" + lImagenAvanceProyectoCompra[0].Direccion, lImagenAvanceProyectoCompra);

            //3. Crear segundo bloque que es restauración el cual se agrupa por el nombre
            strPosicion = "DERECHA";
            GeneraTitulo("RESTAURACIÓN");
            lImagenAvanceProyectoRestauracion = cProyecto.RImagenAvanceProyecto.FindAll(
                                            delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                            {
                                                return RImagenAvanceProyecto.Avance == "RESTAURACIÓN";
                                            }
                                        );

            //Separar de la lista de restauración los nombres diferentes para ser agrupados
            lRestauracionNombre = lImagenAvanceProyectoRestauracion.Select(x => x.Nombre).Distinct().ToList();

            //Por cada nombre diferente generar un nodo de la línea de tiempo
            foreach (string sd in lRestauracionNombre)
            {
                //Tomar solo los elementos  dela lista que coincidan con el primer nombre
                List<ImagenAvanceProyecto> lImagenAvanceProyectoRestauracionNombre;
                lImagenAvanceProyectoRestauracionNombre = lImagenAvanceProyectoRestauracion.FindAll(
                                                delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                                {
                                                    return RImagenAvanceProyecto.Nombre == sd;
                                                }
                                            );

                if (strPosicion.Equals("IZQUIERDA"))
                {
                    GeneraEventoIzquierdoAgrupadoNombre(lImagenAvanceProyectoRestauracionNombre[0].Nombre, lImagenAvanceProyectoRestauracionNombre[0].Avance, lImagenAvanceProyectoRestauracionNombre[0].Descripcion, "", "..//admin" + lImagenAvanceProyectoRestauracionNombre[0].Direccion, lImagenAvanceProyectoRestauracionNombre);
                    strPosicion = "DERECHA";
                }
                else
                {
                    GeneraEventoDerechoAgrupadoNombre(lImagenAvanceProyectoRestauracionNombre[0].Nombre, lImagenAvanceProyectoRestauracionNombre[0].Avance, lImagenAvanceProyectoRestauracionNombre[0].Descripcion, "", "..//admin" + lImagenAvanceProyectoRestauracionNombre[0].Direccion, lImagenAvanceProyectoRestauracionNombre);
                    strPosicion = "IZQUIERDA";
                }
            }

            //4. Crear tercer bloque que es EN VENTA y va todo agrupado
            strPosicion = "IZQUIERDA";
            GeneraTitulo("EN VENTA");

            lImagenAvanceProyectoEnVenta = cProyecto.RImagenAvanceProyecto.FindAll(
                                            delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                            {
                                                return RImagenAvanceProyecto.Avance == "EN VENTA";
                                            }
                                        );

            if (lImagenAvanceProyectoEnVenta.Count > 0)
                GeneraEventoIzquierdoAgrupado(lImagenAvanceProyectoEnVenta[0].Nombre, lImagenAvanceProyectoEnVenta[0].Avance, lImagenAvanceProyectoEnVenta[0].Descripcion, "", "..//admin" + lImagenAvanceProyectoEnVenta[0].Direccion, lImagenAvanceProyectoEnVenta);

            //5. Crear último bloque que es POOL FINALIZADO y va todo agrupado
            strPosicion = "DERECHA";
            GeneraTitulo("POOL FINALIZADO");

            lImagenAvanceProyectoPoolFinalizado = cProyecto.RImagenAvanceProyecto.FindAll(
                                            delegate(ImagenAvanceProyecto RImagenAvanceProyecto)
                                            {
                                                return RImagenAvanceProyecto.Avance == "POOL FINALIZADO";
                                            }
                                        );

            if (lImagenAvanceProyectoPoolFinalizado.Count > 0)
                GeneraEventoDerechoAgrupado(lImagenAvanceProyectoPoolFinalizado[0].Nombre, lImagenAvanceProyectoPoolFinalizado[0].Avance, lImagenAvanceProyectoPoolFinalizado[0].Descripcion, "", "..//admin" + lImagenAvanceProyectoPoolFinalizado[0].Direccion, lImagenAvanceProyectoPoolFinalizado);
        }

        /// <summary>
        /// Genera el titulo del estado
        /// </summary>
        /// <param name="strNombre"></param>
        private void GeneraTitulo(string strNombre)
        {
            HtmlGenericControl hgcTitulo1 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTitulo2 = new HtmlGenericControl("div");
            HtmlGenericControl hgcParrafo = new HtmlGenericControl("p");

            hgcTitulo1.Attributes.Add("class", "row timeline-movement timeline-movement-top");
            hgcTitulo2.Attributes.Add("class", "timeline-badge timeline-future-movement");

            if (strNombre.Equals("COMPRA") || strNombre.Equals("EN VENTA"))
                hgcParrafo.Attributes.Add("class", "compra");

            hgcParrafo.InnerText = strNombre;

            hgcTitulo2.Controls.Add(hgcParrafo);
            hgcTitulo1.Controls.Add(hgcTitulo2);
            timeline.Controls.Add(hgcTitulo1);
        }

        /// <summary>
        /// Genera el evento del lado izquierdo con fotografía
        /// </summary>
        /// <param name="strNombre"></param>
        /// <param name="strEstado"></param>
        /// <param name="strDescripcion"></param>
        /// <param name="strFecha"></param>
        /// <param name="strImagen"></param>
        private void GeneraEventoIzquierdo(string strNombre, string strEstado, string strDescripcion, string strFecha, string strImagen)
        {
            HtmlGenericControl hgcTimeLineImage1 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage2 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage3 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage4 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage5 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage6 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage7 = new HtmlGenericControl("ul");
            HtmlGenericControl hgcTimeLineImage8 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage9 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage10 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineImage11 = new HtmlGenericControl("img");
            HtmlGenericControl hgcTimeLineImage12 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage13 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage14 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineImage15 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage16 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineImage17 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage18 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineImage19 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage20 = new HtmlGenericControl("p");
            HtmlGenericControl hgcTimeLineImage21 = new HtmlGenericControl("small");
            HtmlGenericControl hgcTimeLineImage22 = new HtmlGenericControl("i");
            HtmlGenericControl hgcTimeLineImage23 = new HtmlGenericControl("div");

            hgcTimeLineImage1.Attributes.Add("class", "row timeline-movement");
            hgcTimeLineImage1.Attributes.Add("style", "margin-bottom: 0px;");
            hgcTimeLineImage2.Attributes.Add("class", "timeline-badge center-left");
            hgcTimeLineImage3.Attributes.Add("class", "col-sm-6  timeline-item");
            hgcTimeLineImage4.Attributes.Add("class", "row");
            hgcTimeLineImage5.Attributes.Add("class", "col-sm-11");
            hgcTimeLineImage6.Attributes.Add("class", "timeline-panel credits  anim animate fadeInLeft");
            hgcTimeLineImage7.Attributes.Add("class", "timeline-panel-ul");
            hgcTimeLineImage8.Attributes.Add("class", "lefting-wrap");
            hgcTimeLineImage9.Attributes.Add("class", "img-wraping");
            hgcTimeLineImage10.Attributes.Add("href", "#");

            hgcTimeLineImage11.Attributes.Add("src", strImagen);
            hgcTimeLineImage11.Attributes.Add("class", "img-responsive");
            hgcTimeLineImage11.Attributes.Add("alt", "user-image");

            hgcTimeLineImage12.Attributes.Add("class", "righting-wrap");
            hgcTimeLineImage14.Attributes.Add("href", "#");
            hgcTimeLineImage14.Attributes.Add("class", "importo");
            hgcTimeLineImage14.InnerText = strNombre;

            hgcTimeLineImage16.Attributes.Add("class", "causale");
            hgcTimeLineImage16.Attributes.Add("style", "color:#000; font-weight: 600;");
            hgcTimeLineImage16.InnerText = strEstado;

            hgcTimeLineImage18.Attributes.Add("class", "causale");
            hgcTimeLineImage18.InnerText = strDescripcion;

            hgcTimeLineImage21.Attributes.Add("class", "text-muted");
            hgcTimeLineImage21.InnerText = strFecha;

            hgcTimeLineImage22.Attributes.Add("class", "glyphicon glyphicon-time");
            hgcTimeLineImage23.Attributes.Add("class", "clear");

            timeline.Controls.Add(hgcTimeLineImage1);
            hgcTimeLineImage1.Controls.Add(hgcTimeLineImage2);
            hgcTimeLineImage1.Controls.Add(hgcTimeLineImage3);
            hgcTimeLineImage3.Controls.Add(hgcTimeLineImage4);
            hgcTimeLineImage4.Controls.Add(hgcTimeLineImage5);
            hgcTimeLineImage5.Controls.Add(hgcTimeLineImage6);
            hgcTimeLineImage6.Controls.Add(hgcTimeLineImage7);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage8);
            hgcTimeLineImage8.Controls.Add(hgcTimeLineImage9);
            hgcTimeLineImage9.Controls.Add(hgcTimeLineImage10);
            hgcTimeLineImage10.Controls.Add(hgcTimeLineImage11);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage12);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage13);
            hgcTimeLineImage13.Controls.Add(hgcTimeLineImage14);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage15);
            hgcTimeLineImage15.Controls.Add(hgcTimeLineImage16);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage17);
            hgcTimeLineImage17.Controls.Add(hgcTimeLineImage18);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage19);
            hgcTimeLineImage19.Controls.Add(hgcTimeLineImage20);
            hgcTimeLineImage20.Controls.Add(hgcTimeLineImage21);
            hgcTimeLineImage21.Controls.Add(hgcTimeLineImage22);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage23);
        }

        /// <summary>
        /// Genera el evento del lado izquierdo con fotografía pero con todas las fotos agrupadas
        /// </summary>
        /// <param name="strNombre"></param>
        /// <param name="strEstado"></param>
        /// <param name="strDescripcion"></param>
        /// <param name="strFecha"></param>
        /// <param name="strImagen"></param>
        private void GeneraEventoIzquierdoAgrupado(string strNombre, string strEstado, string strDescripcion, string strFecha, string strImagen, List<ImagenAvanceProyecto> lImagenAvanceProyecto)
        {
            HtmlGenericControl hgcTimeLineImage1 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage2 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage3 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage4 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage5 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage6 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage7 = new HtmlGenericControl("ul");
            HtmlGenericControl hgcTimeLineImage8 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage9 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage10 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineImage11 = new HtmlGenericControl("img");
            HtmlGenericControl hgcTimeLineImage12 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage13 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage14 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineImage15 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage16 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineImage17 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage18 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineImage19 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage20 = new HtmlGenericControl("p");
            HtmlGenericControl hgcTimeLineImage21 = new HtmlGenericControl("small");
            HtmlGenericControl hgcTimeLineImage22 = new HtmlGenericControl("i");
            HtmlGenericControl hgcTimeLineImage23 = new HtmlGenericControl("div");

            //Generar las imagenes en contenedor
            HtmlGenericControl hgcTimeLineImage24 = new HtmlGenericControl("div");

            hgcTimeLineImage1.Attributes.Add("class", "row timeline-movement");
            hgcTimeLineImage1.Attributes.Add("style", "margin-bottom: 0px;");
            hgcTimeLineImage2.Attributes.Add("class", "timeline-badge center-left");
            hgcTimeLineImage3.Attributes.Add("class", "col-sm-6  timeline-item");
            hgcTimeLineImage4.Attributes.Add("class", "row");
            hgcTimeLineImage5.Attributes.Add("class", "col-sm-11");
            hgcTimeLineImage6.Attributes.Add("class", "timeline-panel credits  anim animate fadeInLeft");
            hgcTimeLineImage7.Attributes.Add("class", "timeline-panel-ul");
            hgcTimeLineImage8.Attributes.Add("class", "lefting-wrap");
            hgcTimeLineImage9.Attributes.Add("class", "img-wraping");
            hgcTimeLineImage10.Attributes.Add("href", strImagen);
            hgcTimeLineImage10.Attributes.Add("data-fancybox", "images-preview-" + strEstado);
            hgcTimeLineImage10.Attributes.Add("data-thumbs", "{'autoStart':true}");

            hgcTimeLineImage11.Attributes.Add("src", strImagen);
            hgcTimeLineImage11.Attributes.Add("class", "img-responsive");
            hgcTimeLineImage11.Attributes.Add("alt", "user-image");

            hgcTimeLineImage12.Attributes.Add("class", "righting-wrap");
            hgcTimeLineImage14.Attributes.Add("href", "#");
            hgcTimeLineImage14.Attributes.Add("class", "importo");
            hgcTimeLineImage14.InnerText = strNombre;

            hgcTimeLineImage16.Attributes.Add("class", "causale");
            hgcTimeLineImage16.Attributes.Add("style", "color:#000; font-weight: 600;");
            hgcTimeLineImage16.InnerText = strEstado;

            hgcTimeLineImage18.Attributes.Add("class", "causale");
            hgcTimeLineImage18.InnerText = strDescripcion;

            hgcTimeLineImage21.Attributes.Add("class", "text-muted");
            hgcTimeLineImage21.InnerText = strFecha;

            hgcTimeLineImage22.Attributes.Add("class", "glyphicon glyphicon-time");
            hgcTimeLineImage23.Attributes.Add("class", "clear");

            hgcTimeLineImage24.Attributes.Add("style", "display: none;");

            timeline.Controls.Add(hgcTimeLineImage1);
            hgcTimeLineImage1.Controls.Add(hgcTimeLineImage2);
            hgcTimeLineImage1.Controls.Add(hgcTimeLineImage3);
            hgcTimeLineImage1.Controls.Add(hgcTimeLineImage24);
            hgcTimeLineImage3.Controls.Add(hgcTimeLineImage4);
            hgcTimeLineImage4.Controls.Add(hgcTimeLineImage5);
            hgcTimeLineImage5.Controls.Add(hgcTimeLineImage6);
            hgcTimeLineImage6.Controls.Add(hgcTimeLineImage7);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage8);
            hgcTimeLineImage8.Controls.Add(hgcTimeLineImage9);
            hgcTimeLineImage9.Controls.Add(hgcTimeLineImage10);
            hgcTimeLineImage10.Controls.Add(hgcTimeLineImage11);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage12);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage13);
            hgcTimeLineImage13.Controls.Add(hgcTimeLineImage14);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage15);
            hgcTimeLineImage15.Controls.Add(hgcTimeLineImage16);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage17);
            hgcTimeLineImage17.Controls.Add(hgcTimeLineImage18);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage19);
            hgcTimeLineImage19.Controls.Add(hgcTimeLineImage20);
            hgcTimeLineImage20.Controls.Add(hgcTimeLineImage21);
            hgcTimeLineImage21.Controls.Add(hgcTimeLineImage22);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage23);

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

                    hgcTimeLineImage24.Controls.Add(hgcTimeLineImageFancyBox);
                }
                else
                    bPrimerImagen = true;
            }
        }

        /// <summary>
        /// Genera el evento del lado izquierdo con fotografía pero con todas las fotos agrupadas
        /// </summary>
        /// <param name="strNombre"></param>
        /// <param name="strEstado"></param>
        /// <param name="strDescripcion"></param>
        /// <param name="strFecha"></param>
        /// <param name="strImagen"></param>
        private void GeneraEventoIzquierdoAgrupadoNombre(string strNombre, string strEstado, string strDescripcion, string strFecha, string strImagen, List<ImagenAvanceProyecto> lImagenAvanceProyecto)
        {
            HtmlGenericControl hgcTimeLineImage1 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage2 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage3 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage4 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage5 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage6 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage7 = new HtmlGenericControl("ul");
            HtmlGenericControl hgcTimeLineImage8 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage9 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage10 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineImage11 = new HtmlGenericControl("img");
            HtmlGenericControl hgcTimeLineImage12 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineImage13 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage14 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineImage15 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage16 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineImage17 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage18 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineImage19 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineImage20 = new HtmlGenericControl("p");
            HtmlGenericControl hgcTimeLineImage21 = new HtmlGenericControl("small");
            HtmlGenericControl hgcTimeLineImage22 = new HtmlGenericControl("i");
            HtmlGenericControl hgcTimeLineImage23 = new HtmlGenericControl("div");

            //Generar las imagenes en contenedor
            HtmlGenericControl hgcTimeLineImage24 = new HtmlGenericControl("div");

            hgcTimeLineImage1.Attributes.Add("class", "row timeline-movement");
            hgcTimeLineImage1.Attributes.Add("style", "margin-bottom: 0px;");
            hgcTimeLineImage2.Attributes.Add("class", "timeline-badge center-left");
            hgcTimeLineImage3.Attributes.Add("class", "col-sm-6  timeline-item");
            hgcTimeLineImage4.Attributes.Add("class", "row");
            hgcTimeLineImage5.Attributes.Add("class", "col-sm-11");
            hgcTimeLineImage6.Attributes.Add("class", "timeline-panel credits  anim animate fadeInLeft");
            hgcTimeLineImage7.Attributes.Add("class", "timeline-panel-ul");
            hgcTimeLineImage8.Attributes.Add("class", "lefting-wrap");
            hgcTimeLineImage9.Attributes.Add("class", "img-wraping");
            hgcTimeLineImage10.Attributes.Add("href", strImagen);
            hgcTimeLineImage10.Attributes.Add("data-fancybox", "images-preview-" + strEstado + "-" + strNombre);
            hgcTimeLineImage10.Attributes.Add("data-thumbs", "{'autoStart':true}");

            hgcTimeLineImage11.Attributes.Add("src", strImagen);
            hgcTimeLineImage11.Attributes.Add("class", "img-responsive");
            hgcTimeLineImage11.Attributes.Add("alt", "user-image");

            hgcTimeLineImage12.Attributes.Add("class", "righting-wrap");
            hgcTimeLineImage14.Attributes.Add("href", "#");
            hgcTimeLineImage14.Attributes.Add("class", "importo");
            hgcTimeLineImage14.InnerText = strNombre;

            hgcTimeLineImage16.Attributes.Add("class", "causale");
            hgcTimeLineImage16.Attributes.Add("style", "color:#000; font-weight: 600;");
            hgcTimeLineImage16.InnerText = strEstado;

            hgcTimeLineImage18.Attributes.Add("class", "causale");
            hgcTimeLineImage18.InnerText = strDescripcion;

            hgcTimeLineImage21.Attributes.Add("class", "text-muted");
            hgcTimeLineImage21.InnerText = strFecha;

            hgcTimeLineImage22.Attributes.Add("class", "glyphicon glyphicon-time");
            hgcTimeLineImage23.Attributes.Add("class", "clear");

            hgcTimeLineImage24.Attributes.Add("style", "display: none;");

            timeline.Controls.Add(hgcTimeLineImage1);
            hgcTimeLineImage1.Controls.Add(hgcTimeLineImage2);
            hgcTimeLineImage1.Controls.Add(hgcTimeLineImage3);
            hgcTimeLineImage1.Controls.Add(hgcTimeLineImage24);
            hgcTimeLineImage3.Controls.Add(hgcTimeLineImage4);
            hgcTimeLineImage4.Controls.Add(hgcTimeLineImage5);
            hgcTimeLineImage5.Controls.Add(hgcTimeLineImage6);
            hgcTimeLineImage6.Controls.Add(hgcTimeLineImage7);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage8);
            hgcTimeLineImage8.Controls.Add(hgcTimeLineImage9);
            hgcTimeLineImage9.Controls.Add(hgcTimeLineImage10);
            hgcTimeLineImage10.Controls.Add(hgcTimeLineImage11);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage12);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage13);
            hgcTimeLineImage13.Controls.Add(hgcTimeLineImage14);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage15);
            hgcTimeLineImage15.Controls.Add(hgcTimeLineImage16);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage17);
            hgcTimeLineImage17.Controls.Add(hgcTimeLineImage18);
            hgcTimeLineImage12.Controls.Add(hgcTimeLineImage19);
            hgcTimeLineImage19.Controls.Add(hgcTimeLineImage20);
            hgcTimeLineImage20.Controls.Add(hgcTimeLineImage21);
            hgcTimeLineImage21.Controls.Add(hgcTimeLineImage22);
            hgcTimeLineImage7.Controls.Add(hgcTimeLineImage23);

            //Generar tantos <a> como sean de fotografias
            bool bPrimerImagen = false;
            foreach (ImagenAvanceProyecto sd in lImagenAvanceProyecto)
            {
                if (bPrimerImagen)
                {
                    HtmlGenericControl hgcTimeLineImageFancyBox = new HtmlGenericControl("a");

                    hgcTimeLineImageFancyBox.Attributes.Add("href", "..//admin" + sd.Direccion);
                    hgcTimeLineImageFancyBox.Attributes.Add("data-fancybox", "images-preview-" + strEstado + "-" + strNombre);
                    hgcTimeLineImageFancyBox.Attributes.Add("data-thumb", "..//admin" + sd.Direccion);

                    hgcTimeLineImage24.Controls.Add(hgcTimeLineImageFancyBox);
                }
                else
                    bPrimerImagen = true;
            }
        }

        /// <summary>
        /// Genera el evento del lado derecho con fotografía
        /// </summary>
        /// <param name="strNombre"></param>
        /// <param name="strEstado"></param>
        /// <param name="strDescripcion"></param>
        /// <param name="strFecha"></param>
        /// <param name="strImagen"></param>
        private void GeneraEventoDerecho(string strNombre, string strEstado, string strDescripcion, string strFecha, string strImagen)
        {
            HtmlGenericControl hgcTimeLineDerechoImage1 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage2 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage3 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage4 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage5 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage6 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage7 = new HtmlGenericControl("ul");
            HtmlGenericControl hgcTimeLineDerechoImage8 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage9 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage10 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineDerechoImage11 = new HtmlGenericControl("img");
            HtmlGenericControl hgcTimeLineDerechoImage12 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage13 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage14 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineDerechoImage15 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage16 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineDerechoImage17 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage18 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineDerechoImage19 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage20 = new HtmlGenericControl("p");
            HtmlGenericControl hgcTimeLineDerechoImage21 = new HtmlGenericControl("small");
            HtmlGenericControl hgcTimeLineDerechoImage22 = new HtmlGenericControl("i");
            HtmlGenericControl hgcTimeLineDerechoImage23 = new HtmlGenericControl("div");

            hgcTimeLineDerechoImage1.Attributes.Add("class", "row timeline-movement");
            hgcTimeLineDerechoImage1.Attributes.Add("style", "margin-bottom: 0px;");    
            hgcTimeLineDerechoImage2.Attributes.Add("class", "timeline-badge center-right");
            hgcTimeLineDerechoImage3.Attributes.Add("class", "offset-sm-6 col-sm-6  timeline-item");
            hgcTimeLineDerechoImage4.Attributes.Add("class", "row");
            hgcTimeLineDerechoImage5.Attributes.Add("class", "offset-sm-1 col-sm-11");
            hgcTimeLineDerechoImage6.Attributes.Add("class", "timeline-panel debits  anim animate  fadeInRight");
            hgcTimeLineDerechoImage7.Attributes.Add("class", "timeline-panel-ul");
            hgcTimeLineDerechoImage8.Attributes.Add("class", "lefting-wrap");
            hgcTimeLineDerechoImage9.Attributes.Add("class", "img-wraping");
            hgcTimeLineDerechoImage10.Attributes.Add("href", "#");

            hgcTimeLineDerechoImage11.Attributes.Add("src", strImagen);
            hgcTimeLineDerechoImage11.Attributes.Add("class", "img-responsive");
            hgcTimeLineDerechoImage11.Attributes.Add("alt", "user-image");

            hgcTimeLineDerechoImage12.Attributes.Add("class", "righting-wrap");
            hgcTimeLineDerechoImage14.Attributes.Add("href", "#");
            hgcTimeLineDerechoImage14.Attributes.Add("class", "importo");
            hgcTimeLineDerechoImage14.InnerText = strNombre;

            hgcTimeLineDerechoImage16.Attributes.Add("class", "causale");
            hgcTimeLineDerechoImage16.Attributes.Add("style", "color:#000; font-weight: 600;");
            hgcTimeLineDerechoImage16.InnerText = strEstado;

            hgcTimeLineDerechoImage18.Attributes.Add("class", "causale");
            hgcTimeLineDerechoImage18.InnerText = strDescripcion;

            hgcTimeLineDerechoImage21.Attributes.Add("class", "text-muted");
            hgcTimeLineDerechoImage21.InnerText = strFecha;

            hgcTimeLineDerechoImage22.Attributes.Add("class", "glyphicon glyphicon-time");
            hgcTimeLineDerechoImage23.Attributes.Add("class", "clear");

            timeline.Controls.Add(hgcTimeLineDerechoImage1);
            hgcTimeLineDerechoImage1.Controls.Add(hgcTimeLineDerechoImage2);
            hgcTimeLineDerechoImage1.Controls.Add(hgcTimeLineDerechoImage3);
            hgcTimeLineDerechoImage3.Controls.Add(hgcTimeLineDerechoImage4);
            hgcTimeLineDerechoImage4.Controls.Add(hgcTimeLineDerechoImage5);
            hgcTimeLineDerechoImage5.Controls.Add(hgcTimeLineDerechoImage6);
            hgcTimeLineDerechoImage6.Controls.Add(hgcTimeLineDerechoImage7);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage8);
            hgcTimeLineDerechoImage8.Controls.Add(hgcTimeLineDerechoImage9);
            hgcTimeLineDerechoImage9.Controls.Add(hgcTimeLineDerechoImage10);
            hgcTimeLineDerechoImage10.Controls.Add(hgcTimeLineDerechoImage11);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage12);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage13);
            hgcTimeLineDerechoImage13.Controls.Add(hgcTimeLineDerechoImage14);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage15);
            hgcTimeLineDerechoImage15.Controls.Add(hgcTimeLineDerechoImage16);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage17);
            hgcTimeLineDerechoImage17.Controls.Add(hgcTimeLineDerechoImage18);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage19);
            hgcTimeLineDerechoImage19.Controls.Add(hgcTimeLineDerechoImage20);
            hgcTimeLineDerechoImage20.Controls.Add(hgcTimeLineDerechoImage21);
            hgcTimeLineDerechoImage21.Controls.Add(hgcTimeLineDerechoImage22);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage23);
        }

        /// <summary>
        /// Genera el evento del lado derecho con fotografía
        /// </summary>
        /// <param name="strNombre"></param>
        /// <param name="strEstado"></param>
        /// <param name="strDescripcion"></param>
        /// <param name="strFecha"></param>
        /// <param name="strImagen"></param>
        private void GeneraEventoDerechoAgrupado(string strNombre, string strEstado, string strDescripcion, string strFecha, string strImagen, List<ImagenAvanceProyecto> lImagenAvanceProyecto)
        {
            HtmlGenericControl hgcTimeLineDerechoImage1 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage2 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage3 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage4 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage5 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage6 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage7 = new HtmlGenericControl("ul");
            HtmlGenericControl hgcTimeLineDerechoImage8 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage9 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage10 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineDerechoImage11 = new HtmlGenericControl("img");
            HtmlGenericControl hgcTimeLineDerechoImage12 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage13 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage14 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineDerechoImage15 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage16 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineDerechoImage17 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage18 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineDerechoImage19 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage20 = new HtmlGenericControl("p");
            HtmlGenericControl hgcTimeLineDerechoImage21 = new HtmlGenericControl("small");
            HtmlGenericControl hgcTimeLineDerechoImage22 = new HtmlGenericControl("i");
            HtmlGenericControl hgcTimeLineDerechoImage23 = new HtmlGenericControl("div");

            //Generar las imagenes en contenedor
            HtmlGenericControl hgcTimeLineDerechoImage24 = new HtmlGenericControl("div");

            hgcTimeLineDerechoImage1.Attributes.Add("class", "row timeline-movement");
            hgcTimeLineDerechoImage1.Attributes.Add("style", "margin-bottom: 0px;");
            hgcTimeLineDerechoImage2.Attributes.Add("class", "timeline-badge center-right");
            hgcTimeLineDerechoImage3.Attributes.Add("class", "offset-sm-6 col-sm-6  timeline-item");
            hgcTimeLineDerechoImage4.Attributes.Add("class", "row");
            hgcTimeLineDerechoImage5.Attributes.Add("class", "offset-sm-1 col-sm-11");
            hgcTimeLineDerechoImage6.Attributes.Add("class", "timeline-panel debits  anim animate  fadeInRight");
            hgcTimeLineDerechoImage7.Attributes.Add("class", "timeline-panel-ul");
            hgcTimeLineDerechoImage8.Attributes.Add("class", "lefting-wrap");
            hgcTimeLineDerechoImage9.Attributes.Add("class", "img-wraping");
            hgcTimeLineDerechoImage10.Attributes.Add("href", strImagen);
            hgcTimeLineDerechoImage10.Attributes.Add("data-fancybox", "images-preview-" + strEstado);
            hgcTimeLineDerechoImage10.Attributes.Add("data-thumbs", "{'autoStart':true}");

            hgcTimeLineDerechoImage11.Attributes.Add("src", strImagen);
            hgcTimeLineDerechoImage11.Attributes.Add("class", "img-responsive");
            hgcTimeLineDerechoImage11.Attributes.Add("alt", "user-image");

            hgcTimeLineDerechoImage12.Attributes.Add("class", "righting-wrap");
            hgcTimeLineDerechoImage14.Attributes.Add("href", "#");
            hgcTimeLineDerechoImage14.Attributes.Add("class", "importo");
            hgcTimeLineDerechoImage14.InnerText = strNombre;

            hgcTimeLineDerechoImage16.Attributes.Add("class", "causale");
            hgcTimeLineDerechoImage16.Attributes.Add("style", "color:#000; font-weight: 600;");
            hgcTimeLineDerechoImage16.InnerText = strEstado;

            hgcTimeLineDerechoImage18.Attributes.Add("class", "causale");
            hgcTimeLineDerechoImage18.InnerText = strDescripcion;

            hgcTimeLineDerechoImage21.Attributes.Add("class", "text-muted");
            hgcTimeLineDerechoImage21.InnerText = strFecha;

            hgcTimeLineDerechoImage22.Attributes.Add("class", "glyphicon glyphicon-time");
            hgcTimeLineDerechoImage23.Attributes.Add("class", "clear");

            hgcTimeLineDerechoImage24.Attributes.Add("style", "display: none;");

            timeline.Controls.Add(hgcTimeLineDerechoImage1);
            hgcTimeLineDerechoImage1.Controls.Add(hgcTimeLineDerechoImage2);
            hgcTimeLineDerechoImage1.Controls.Add(hgcTimeLineDerechoImage3);
            hgcTimeLineDerechoImage1.Controls.Add(hgcTimeLineDerechoImage24);
            hgcTimeLineDerechoImage3.Controls.Add(hgcTimeLineDerechoImage4);
            hgcTimeLineDerechoImage4.Controls.Add(hgcTimeLineDerechoImage5);
            hgcTimeLineDerechoImage5.Controls.Add(hgcTimeLineDerechoImage6);
            hgcTimeLineDerechoImage6.Controls.Add(hgcTimeLineDerechoImage7);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage8);
            hgcTimeLineDerechoImage8.Controls.Add(hgcTimeLineDerechoImage9);
            hgcTimeLineDerechoImage9.Controls.Add(hgcTimeLineDerechoImage10);
            hgcTimeLineDerechoImage10.Controls.Add(hgcTimeLineDerechoImage11);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage12);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage13);
            hgcTimeLineDerechoImage13.Controls.Add(hgcTimeLineDerechoImage14);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage15);
            hgcTimeLineDerechoImage15.Controls.Add(hgcTimeLineDerechoImage16);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage17);
            hgcTimeLineDerechoImage17.Controls.Add(hgcTimeLineDerechoImage18);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage19);
            hgcTimeLineDerechoImage19.Controls.Add(hgcTimeLineDerechoImage20);
            hgcTimeLineDerechoImage20.Controls.Add(hgcTimeLineDerechoImage21);
            hgcTimeLineDerechoImage21.Controls.Add(hgcTimeLineDerechoImage22);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage23);

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

                    hgcTimeLineDerechoImage24.Controls.Add(hgcTimeLineImageFancyBox);
                }
                else
                    bPrimerImagen = true;
            }
        }

        /// <summary>
        /// Genera el evento del lado derecho con fotografía
        /// </summary>
        /// <param name="strNombre"></param>
        /// <param name="strEstado"></param>
        /// <param name="strDescripcion"></param>
        /// <param name="strFecha"></param>
        /// <param name="strImagen"></param>
        private void GeneraEventoDerechoAgrupadoNombre(string strNombre, string strEstado, string strDescripcion, string strFecha, string strImagen, List<ImagenAvanceProyecto> lImagenAvanceProyecto)
        {
            HtmlGenericControl hgcTimeLineDerechoImage1 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage2 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage3 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage4 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage5 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage6 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage7 = new HtmlGenericControl("ul");
            HtmlGenericControl hgcTimeLineDerechoImage8 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage9 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage10 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineDerechoImage11 = new HtmlGenericControl("img");
            HtmlGenericControl hgcTimeLineDerechoImage12 = new HtmlGenericControl("div");
            HtmlGenericControl hgcTimeLineDerechoImage13 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage14 = new HtmlGenericControl("a");
            HtmlGenericControl hgcTimeLineDerechoImage15 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage16 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineDerechoImage17 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage18 = new HtmlGenericControl("span");
            HtmlGenericControl hgcTimeLineDerechoImage19 = new HtmlGenericControl("li");
            HtmlGenericControl hgcTimeLineDerechoImage20 = new HtmlGenericControl("p");
            HtmlGenericControl hgcTimeLineDerechoImage21 = new HtmlGenericControl("small");
            HtmlGenericControl hgcTimeLineDerechoImage22 = new HtmlGenericControl("i");
            HtmlGenericControl hgcTimeLineDerechoImage23 = new HtmlGenericControl("div");

            //Generar las imagenes en contenedor
            HtmlGenericControl hgcTimeLineDerechoImage24 = new HtmlGenericControl("div");

            hgcTimeLineDerechoImage1.Attributes.Add("class", "row timeline-movement");
            hgcTimeLineDerechoImage1.Attributes.Add("style", "margin-bottom: 0px;");
            hgcTimeLineDerechoImage2.Attributes.Add("class", "timeline-badge center-right");
            hgcTimeLineDerechoImage3.Attributes.Add("class", "offset-sm-6 col-sm-6  timeline-item");
            hgcTimeLineDerechoImage4.Attributes.Add("class", "row");
            hgcTimeLineDerechoImage5.Attributes.Add("class", "offset-sm-1 col-sm-11");
            hgcTimeLineDerechoImage6.Attributes.Add("class", "timeline-panel debits  anim animate  fadeInRight");
            hgcTimeLineDerechoImage7.Attributes.Add("class", "timeline-panel-ul");
            hgcTimeLineDerechoImage8.Attributes.Add("class", "lefting-wrap");
            hgcTimeLineDerechoImage9.Attributes.Add("class", "img-wraping");
            hgcTimeLineDerechoImage10.Attributes.Add("href", strImagen);
            hgcTimeLineDerechoImage10.Attributes.Add("data-fancybox", "images-preview-" + strEstado + "-" + strNombre);
            hgcTimeLineDerechoImage10.Attributes.Add("data-thumbs", "{'autoStart':true}");

            hgcTimeLineDerechoImage11.Attributes.Add("src", strImagen);
            hgcTimeLineDerechoImage11.Attributes.Add("class", "img-responsive");
            hgcTimeLineDerechoImage11.Attributes.Add("alt", "user-image");

            hgcTimeLineDerechoImage12.Attributes.Add("class", "righting-wrap");
            hgcTimeLineDerechoImage14.Attributes.Add("href", "#");
            hgcTimeLineDerechoImage14.Attributes.Add("class", "importo");
            hgcTimeLineDerechoImage14.InnerText = strNombre;

            hgcTimeLineDerechoImage16.Attributes.Add("class", "causale");
            hgcTimeLineDerechoImage16.Attributes.Add("style", "color:#000; font-weight: 600;");
            hgcTimeLineDerechoImage16.InnerText = strEstado;

            hgcTimeLineDerechoImage18.Attributes.Add("class", "causale");
            hgcTimeLineDerechoImage18.InnerText = strDescripcion;

            hgcTimeLineDerechoImage21.Attributes.Add("class", "text-muted");
            hgcTimeLineDerechoImage21.InnerText = strFecha;

            hgcTimeLineDerechoImage22.Attributes.Add("class", "glyphicon glyphicon-time");
            hgcTimeLineDerechoImage23.Attributes.Add("class", "clear");

            hgcTimeLineDerechoImage24.Attributes.Add("style", "display: none;");

            timeline.Controls.Add(hgcTimeLineDerechoImage1);
            hgcTimeLineDerechoImage1.Controls.Add(hgcTimeLineDerechoImage2);
            hgcTimeLineDerechoImage1.Controls.Add(hgcTimeLineDerechoImage3);
            hgcTimeLineDerechoImage1.Controls.Add(hgcTimeLineDerechoImage24);
            hgcTimeLineDerechoImage3.Controls.Add(hgcTimeLineDerechoImage4);
            hgcTimeLineDerechoImage4.Controls.Add(hgcTimeLineDerechoImage5);
            hgcTimeLineDerechoImage5.Controls.Add(hgcTimeLineDerechoImage6);
            hgcTimeLineDerechoImage6.Controls.Add(hgcTimeLineDerechoImage7);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage8);
            hgcTimeLineDerechoImage8.Controls.Add(hgcTimeLineDerechoImage9);
            hgcTimeLineDerechoImage9.Controls.Add(hgcTimeLineDerechoImage10);
            hgcTimeLineDerechoImage10.Controls.Add(hgcTimeLineDerechoImage11);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage12);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage13);
            hgcTimeLineDerechoImage13.Controls.Add(hgcTimeLineDerechoImage14);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage15);
            hgcTimeLineDerechoImage15.Controls.Add(hgcTimeLineDerechoImage16);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage17);
            hgcTimeLineDerechoImage17.Controls.Add(hgcTimeLineDerechoImage18);
            hgcTimeLineDerechoImage12.Controls.Add(hgcTimeLineDerechoImage19);
            hgcTimeLineDerechoImage19.Controls.Add(hgcTimeLineDerechoImage20);
            hgcTimeLineDerechoImage20.Controls.Add(hgcTimeLineDerechoImage21);
            hgcTimeLineDerechoImage21.Controls.Add(hgcTimeLineDerechoImage22);
            hgcTimeLineDerechoImage7.Controls.Add(hgcTimeLineDerechoImage23);

            //Generar tantos <a> como sean de fotografias
            bool bPrimerImagen = false;
            foreach (ImagenAvanceProyecto sd in lImagenAvanceProyecto)
            {
                if (bPrimerImagen)
                {
                    HtmlGenericControl hgcTimeLineImageFancyBox = new HtmlGenericControl("a");

                    hgcTimeLineImageFancyBox.Attributes.Add("href", "..//admin" + sd.Direccion);
                    hgcTimeLineImageFancyBox.Attributes.Add("data-fancybox", "images-preview-" + strEstado + "-" + strNombre);
                    hgcTimeLineImageFancyBox.Attributes.Add("data-thumb", "..//admin" + sd.Direccion);

                    hgcTimeLineDerechoImage24.Controls.Add(hgcTimeLineImageFancyBox);
                }
                else
                    bPrimerImagen = true;
            }
        }
    }
}