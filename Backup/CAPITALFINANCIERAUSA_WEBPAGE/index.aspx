<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-MX">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Capital Financiera USA</title>

    <!-- Basic HTML Meta Tags -->
    <meta name="robots" content="INDEX,NOFOLLOW" />
    <meta name="description" content="Empresa financiera especializada en inversiones en el mercado de Bienes Raíces de Estados Unidos con presencia en las principales ciudades de la República Mexicana y la Unión Americana." />
    <meta name="author" content="Ing. Rodrigo Josafat Osorno Colin - 525.Marketing" />
    <meta name="keywords" content="financiera, financiamiento, inversion, inversiones, interes, capital, intereses, rendimiento, ahorro, dinero, inflación" />
    <meta name="google-site-verification" content="JLCwnoMEEMJtvxkQFTSst7vY3_9qsCVzdLQqx2u-1JE" />

    <!-- Open Graph data -->
    <meta name="og:title" content="CapitalfinancieraUSA" />
    <meta name="og:type" content="Inversion, Propiedades, Capital, Financiera, Bienes raices" />
    <meta name="og:url" content=" http://capitalfinancierausa.com/" />
    <meta name="og:image" content=" http://capitalfinancierausa.com/img_cap.jpg" />
    <meta name="og:description" content="Empresa financiera especializada en inversiones en el mercado de Bienes Raíces de Estados Unidos con presencia en las principales ciudades de la República Mexicana y la Unión Americana." />

    <link rel="icon" type="image/png" href="assets/img/logo/favicon.png" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />

    <!-- Font awesome CSS -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/css/animate.min.css" />

    <!-- OwlCarousel CSS -->
    <link rel="stylesheet" href="assets/css/owl.carousel.css" />

    <!-- OwlCarousel CSS -->
    <link rel="stylesheet" href="assets/css/slicknav.min.css" />

    <!-- Magnific popup CSS -->
    <link rel="stylesheet" href="assets/css/magnific-popup.css" />

    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/style.css" />

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="assets/css/responsive.css" />
    <link rel="stylesheet" type="text/css" href="mail/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/custom.css" />

    <!--load all styles -->
    <link href="css/all.min.css" rel="stylesheet" />

    <!-- Our project just needs Font Awesome Solid + Brands -->
    <link href="css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/brands.min.css" rel="stylesheet" />
    <link href="css/solid.min.css" rel="stylesheet" />

    <style type="text/css">
        .whatsapp {
            position:fixed;
            width:60px;
            height:60px;
            bottom:20px;
            right:80px;
            background-color:#25d366;
            color:#FFF;
            border-radius:50px;
            text-align:center;
            font-size:30px;
            z-index:10000;
        }

        .whatsapp-icon {
          margin-top:13px;
        }        
    </style>
</head>
<body>
    <a target="_blank" href="https://api.whatsapp.com/send?phone=5215615889726&text=¡Hola!,%20Quiero%20invertir%20en%20Bienes%20Raíces.%20Capital%20Financiera" class="whatsapp"><i class="fab fa-whatsapp whatsapp-icon"></i></a>

    <!--Site Preloader Start-->
    <div class="finance-site-preloader" id="preloader">
        <div class="sk-cube-grid">
            <div class="sk-cube sk-cube1"></div>
            <div class="sk-cube sk-cube2"></div>
            <div class="sk-cube sk-cube3"></div>
            <div class="sk-cube sk-cube4"></div>
            <div class="sk-cube sk-cube5"></div>
            <div class="sk-cube sk-cube6"></div>
            <div class="sk-cube sk-cube7"></div>
            <div class="sk-cube sk-cube8"></div>
            <div class="sk-cube sk-cube9"></div>
        </div>
    </div>
    <!--Site Preloader End-->

    <!-- Header Top Area Start -->
    <div id="dHeader" runat="server" class="finance-header-top-area section_15">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-xs-12">
                    <div class="header-top-right">
                        <div class="single-top-right">
                            <i class="fab fa-whatsapp"></i>
                            <p>521 561 588 97 26</p>
                        </div>
                        <div class="single-top-right">
                            <i class="far fa-envelope"></i>
                            <p> contacto@capitalfinancierausa.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <header class="finance-main-header-area sticky">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="finance-logo">
                        <a href="index.aspx">
                            <img src="assets/img/logo/logo.png" alt="Capital Financiera USA logo" />
                        </a>
                    </div>
                    <!-- Responsive Menu Start -->
                    <div class="finance-responsive-menu"></div>
                    <!-- Responsive Menu End -->
                </div>
                <div class="col-md-9" >
                    <div class="finance-mainmenu">
                        <nav>
                            <ul id="finance_navigation">
                                <li id="liFinance_Navigation_Index" runat="server">
                                    <a href="index.aspx">
                                        Inicio
                                    </a>
                                </li>
                                <li id="liFinance_Navigation_QuienesSomos" runat="server">
                                    <a href="quienes-somos.aspx">Nosotros</a>
                                </li>
                                <li id="liFinance_Navigation_Servicios" runat="server">
                                    <a>
                                        Servicios
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul>
                                        <li id="liFinance_Navigation_GananciasCapital" runat="server">
                                            <a href="ganancias-de-capital.aspx">Ganancias de capital</a>
                                        </li>
                                        <li id="liFinance_Navigation_FlujoEfectivo" runat="server">
                                            <a href="flujo-de-efectivo.aspx">Flujo de efectivo</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="liFinance_Navigation_Testimonios" runat="server">
                                    <a href="testimonios.aspx">Nuestros clientes hablan</a>
                                </li>
                                <li id="liFinance_Navigation_Faqs" runat="server">
                                    <a href="faqs.aspx">FAQ's</a>
                                </li>
                                <li id="liFinance_Navigation_Contacto" runat="server">
                                    <a href="contacto.aspx">Contacto</a>
                                </li>
                                <li id="liFinance_Navigation_Login" runat="server">
                                    <a href="login.aspx">Ingresar</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- Slider Area Start -->
    <section class="finance-slider-area">
        <div class="finance-slide">
            <div class="finance-main-slide slide-item-1">
                <div class="finance-main-caption">
                    <div class="finance-caption-cell">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4>Invierte en Bienes Raíces</h4>
                                    <h2>de forma segura y confiable desde 20 mil dólares</h2>
                                    <p>Aquí te decimos cómo</p>
                                    <a href="contacto.aspx" class="finance-btn">Contáctanos</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="finance-main-slide slide-item-2">
                <div class="finance-main-caption">
                    <div class="finance-caption-cell">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4>Compra propiedades en Estados Unidos</h4>
                                    <h2>Al 30% de su valor y vive de tus rentas</h2>
                                    <p>Sin importar que vivas en México o Latinoamérica</p>
                                    <a href="contacto.aspx" class="finance-btn">Contáctanos</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="finance-main-slide slide-item-3">
                <div class="finance-main-caption">
                    <div class="finance-caption-cell">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <h4>Más de 320 proyectos exitosos en Ganancias de Capital</h4>
                                    <h2>Más de 30 años de experiencia<br /> </h2>
                                    <p>Administramos la renta de más de 160 propiedades</p>
                                    <a href="contacto.aspx" class="finance-btn">Contáctanos</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Slider Area End -->

    <!-- Slider Bottom Area Start -->
    <section class="finance-service-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="service-box">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="service-left">
                                    <h3>¿Cuáles son los beneficios de invertir?</h3>
                                    <p>Invierte en el mercado de Bienes Raíces de Estados Unidos; el mercado más grande, seguro y confiable a nivel mundial.</p>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="service-right">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6">
                                            <div class="single-service">
                                                <img src="assets/img/inicio/check.png" alt="expertt" />
                                                <div class="service-text">
                                                    <h3>Expertos financieros</h3>
                                                    <p>Más de 30 años en el mercado respaldan nuestra experiencia.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                            <div class="single-service">
                                                <img src="assets/img/inicio/check.png" alt="expertt" />
                                                <div class="service-text">
                                                    <h3>Solución de negocios</h3>
                                                    <p>Pon a trabajar tu dinero ahorrado y genera mayores ingresos.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6">
                                            <div class="single-service">
                                                <img src="assets/img/inicio/check.png" alt="expertt" />
                                                <div class="service-text">
                                                    <h3>Atractivos esquemas</h3>
                                                    <p>Obtén un mayor rendimiento por tu inversión en corto plazo.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                            <div class="single-service">
                                                <img src="assets/img/inicio/check.png" alt="expertt" />
                                                <div class="service-text">
                                                    <h3>Atención integral</h3>
                                                    <p>Te ofrecemos asesoría completa durante todo el proceso.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Slider Bottom Area End -->

    <!-- About Area Start -->
    <section class="finance-About-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="about-left">
                        <div class="finance-section-title">
                            <h3>Acerca del mercado</h3>
                            <div class="title-line"></div>
                            <img src="assets/img/light-logo.png" alt="light logo" />
                        </div>
                        <h3>Invertir en Bienes Raíces es la mejor forma de protegerse ante los cambios económicos en México y el mundo</h3>
                        <p>En <b>Capital Financiera</b> estamos conscientes de que actualmente en el mercado mexicano, no existen instrumentos financieros que ofrezcan atractivos rendimientos en pocos meses y que además generen confianza garantizada por una propiedad inmobiliaria.</p><br />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about-right">
                        <a >
                            <img src="assets/img/inicio/invertir.jpg" alt="invertir" />
                            <div class="about-right-overlay"></div>
                        </a>
                    </div>
                </div>
                <div class="col-md-12">
                    <p><b>Solución:</b></p>
                    <p>Capital Financiera tiene acceso a remates bancarios (propiedades de oportunidad a menor costo de su valor comercial) en Estados Unidos, mismos que se adquieren, se restauran y se ofrecen al mercado a precio comercial.</p><br />
                    <p></p>
                    <p></p>
                    <br /><br />
                    <div class="finance-section-title">
                        <h3>Ganancias de capital del 10% al 15%</h3>
                        <div class="title-line"></div>
                    </div>
                    <b>Capital Financiera</b> le ofrece a los inversionistas que radican tanto en México como Estados Unidos inversiones en Bienes Raíces en la Unión Americana con ganancias que van del 10% al 15% de su inversión en un corto plazo, 
                        con la confianza que su dinero está respaldado y garantizado por activos reales y tangibles; en el mayor mercado inmobiliario del mundo y con la seguridad que ofrecen las instituciones gubernamentales y de justicia de Estados Unidos
                        tanto para el inversionista como para <b>Capital Financiera</b>. ¿Quieres conocer más sobre estas inversiones? Da clic <a href="ganancias-de-capital.aspx" class="mlink"><b>aquí</b></a> para ir a <a href="ganancias-de-capital.aspx" class="mlink"><b>Ganancias de capital</b></a>
                    <div class="finance-section-title">
                        <table align="center"  border="0" cellspacing="6" cellpadding="2">
                            <tbody>
                            <tr>
                                <th scope="col"><center> <div class="title-line"></div></center></th>
                            </tr>
                            </tbody>
                        </table>
                        <br /><br />
                        <h3>Flujo de efectivo</h3>
                        <div class="title-line"></div>
                    </div>
                    De igual manera tenemos inversionistas mexicanos viviendo en México o indocumentados en
                    Estados Unidos, quienes con nosotros pueden <b>comprar propiedades inmobiliarias al 30% de su
                    valor</b> en la Unión Americana y tener ingresos mensuales por concepto de renta. Este flujo de
                    efectivo positivo es de por vida y heredable. <b>¡Vive de tus rentas!</b> ¿Quieres conocer más sobre estas
                    inversiones? Da clic <a href="flujo-de-efectivo.aspx" class="mlink"><b>aquí</b></a> para ir a <a href="flujo-de-efectivo.aspx" class="mlink"><b>Flujo de Efectivo.</b></a>
                </div>
                <p></p><p></p>
                <table align="center"  border="0" cellspacing="6" cellpadding="2">
                    <tbody>
                    <tr>
                        <th scope="col"><center> <div class="title-line"></div></center></th>
                    </tr>
                    </tbody>
                </table>
                <p></p><p></p><p></p>                
                <div class="col-md-12 text-center" style="margin-top: 20px;">
                    <h2 style="padding: 20px 0;">                    
                    ¡Con nuestro tabulador de inversiones ingresa las cantidades deseadas a invertir y conoce el monto de tu rendimiento en ganancias de capital! </h2>
                    <a href="interescompuesto/Default.aspx" target="_blank" class="finance-btn fadeInDown animated" style="background-color:#0d334e !important;">Calcular Inversión</a>
                </div>
            </div>
        </div>
    </section>
    <!-- About Area End -->

    <!-- Project Area Start -->
    <section class="finance-project-area section_t_100 section_b_70">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-section-title-center">
                        <h3>Características</h3>
                        <div class="title-line"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-project-slide">
                        <div class="single-project-slide">
                            <img src="assets/img/inicio/invierte-USA.jpg" alt="invierte-USA" />
                            <div class="project-text">
                                <h3>Invierte en USA</h3>
                                <h5>Bienes Raíces</h5>
                                <p>Te ayudamos a invertir y multiplicar tu patrimonio en el mercado inmobiliario más seguro y rentable del mundo</p>
                            </div>
                        </div>
                        <div class="single-project-slide">
                            <img src="assets/img/inicio/invierte-mexico.jpg" alt="invierte-mexico" />
                            <div class="project-text">
                                <h3>Mayores beneficios</h3>
                                <h5>Satisfacción garantizada</h5>
                                <p>Rendimiento superior al del cualquier tipo de inversión en México, seguridad en el mercado debido al sólido estado de derecho.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Project Area End -->

    <!-- Quotes Area Start -->
    <section class="finance-quotes-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-quotes-text">
                        <h2>Más de 30 años de experiencia nos respaldan</h2>
                        <p>Estamos para ayudarte a generar mayores ganancias. Haz que el dinero trabaje para ti, sin descuidar tu trabajo o negocio actual.</p>
                        <div class="quotes-button">
                            <a href="contacto.aspx" class="finance-white-btn">Contacto</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Quotes Area End -->

    <!-- Footer Area Start -->
    <footer class="finance-footer-area">
        <div class="finance-footer-top-area section_50">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="single-footer ">
                            <a href="http://capitalfinancierausa.com/">
                                <img src="assets/img/logo/logo.png" alt="footer logo" />
                            </a>
                            <p>Empresa financiera especializada en inversiones en el mercado de Bienes Raíces de Estados Unidos con presencia en las principales ciudades de la República Mexicana y la Unión Americana.</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-footer ">
                            <h3>Servicios</h3>
                            <ul class="footer-widget">
                                <li>
                                    <a href="ganancias-de-capital.aspx">
                                        <i class="fa fa-angle-right"></i>
                                        Ganancias de capital
                                    </a>
                                </li>
                                <li>
                                    <a href="flujo-de-efectivo.aspx">
                                        <i class="fa fa-angle-right"></i>
                                        Flujo de Efectivo
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-footer ">
                            <h3>Datos de contacto</h3>
                            <p class="contact-details"><i class="fa fa-star"></i> Av. Las Américas 601 5to piso. Fracc. La Fuente, C.P. 20239, Aguascalientes, México</p>
                            <p class="contact-details">
                                <i class="fab fa-whatsapp"></i>
                                521 561 588 97 26
                            </p>
                            <p class="contact-details"><i class="fa fa-star"></i> Fresno California: 7600 N Ingram STE 201 Fresno CA 93711</p>
                            <p class="contact-details">
                                <i class="far fa-envelope"></i>
                                contacto@capitalfinancierausa.com
                            </p>
                             <p class="contact-details">
                                <i class="fa fa-star"></i>
                                Conoce las demás sucursales<b> <a href="contacto.aspx">aquí </a></b>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-footer">
                            <h3>¡Invierte en el mercado más seguro y confiable!</h3>
                            <div class="single-footer-insta">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="assets/img/inicio/b1.jpg" alt="b1" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="assets/img/inicio/b2.jpg" alt="b2" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="assets/img/inicio/b3.jpg" alt="b3" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="assets/img/inicio/b4.jpg" alt="b4" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="assets/img/inicio/b5.jpg" alt="b5" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="assets/img/inicio/b6.jpg" alt="b6" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="finance-footer-bottom-area section_15">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright-left">
                            <p class="text-center">Copyright &copy;<script type="text/javascript">var d = new Date(); document.write(d.getFullYear());</script> Todos los derechos reservados por <a href="mailto:hello@525.marketing"><span class="c-font-grey-3">@525.marketing</span></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->

    <!-- Search Modal Start -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-close"></i></span></button>
				</div>
				<div class="modal-body">
					<div class="search_box_container">
						<form action="#">
                            <input type="text" placeholder="Search Here..">
                            <button  type="submit">
                                <i class="fa fa-search"></i>
                            </button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- Search Modal End -->

    <div class="modal" tabindex="-1" role="dialog" id="mSlide">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-body">
                    <img src="assets/img/logo/logo_aprendeyhaznegocios.jpg" class="img-fluid" alt="Responsive image" />
                </div>
                <div class="modal-footer">
                    <a href="https://aprendeyhaznegociosenestadosunidos.com/" style="color:inherit">
                    <button type="button" class="btn btn-primary btn-lg btn-block" style=" background-color:rgb(13, 51, 78);">Visitar página
                    </button>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    
    <!-- Bootstrap JS -->
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    
    <!-- Magnific Popup JS -->
    <script type="text/javascript" src="assets/js/jquery.magnific-popup.min.js"></script>
    
    <!-- OwlCarousel JS -->
    <script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
    
    <!-- Slicknav JS -->
    <script type="text/javascript" src="assets/js/jquery.slicknav.min.js"></script>
    
    <!-- isotop JS -->
    <script type="text/javascript" src="assets/js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="assets/js/custom-isotop.js"></script>
    
    <!-- Chart JS -->
    <script type="text/javascript" src="assets/js/chart.js"></script>
    
    <!-- Active JS -->
    <script type="text/javascript" src="assets/js/active.js"></script>

    <script type="text/javascript">
        $(window).on('load', function () {
            $('#mSlide').modal('show');
        });
    </script>

</body>
</html>
