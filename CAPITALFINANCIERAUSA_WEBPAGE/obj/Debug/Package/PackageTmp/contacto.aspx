<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.contacto" %>

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
            position: fixed;
            width: 60px;
            height: 60px;
            bottom: 20px;
            right: 80px;
            background-color: #25d366;
            color: #FFF;
            border-radius: 50px;
            text-align: center;
            font-size: 30px;
            z-index: 10000;
        }

        .whatsapp-icon {
            margin-top: 13px;
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
                            <p>contacto@capitalfinancierausa.com</p>
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

    <!-- Breadcromb Area Start -->
    <section class="finance-breadcromb-area section_50 mihead">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="breadcromb-left">
                        <h3>Contáctanos</h3>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="breadcromb-right">
                        <ul>
                            <li><a href="index.aspx"><i class="fa fa-home"></i>Inicio</a></li>
                            <li>/</li>
                            <li>Contacto</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcromb Area End -->

    <!-- Contact Page Area Start -->
    <section class="finance-contact-page-area section_100 ">
        <div class="container">
            <div class="row">
                <div class="col-md-10">
                    <div class="finance-contact-desc">
                        <h3>Mantente en contacto con nosotros</h3>
                        <p>Toma las riendas de tu futuro, déjanos un mensaje y comienza a generar más dinero con inversiones pequeñas en el mercado más grande y rentable de bienes raíces. Estamos para servirte.</p>
                    </div>
                </div>
            </div>
            <div class="contact-form-left">
                <div class="single-contact-left">
                    <div class="contact-icon">
                        <i class="fa fa-envelope text-center"></i>
                    </div>
                    <div class="contact-text">
                        <h4>Correo</h4>
                        <span style="font-size: 13px;">contacto@capitalfinancierausa.com</span><br /><br />
                    </div>
                </div>
                <br /><br /><br />
                <div class="single-contact-left">
                    <div class="contact-icon">
                        <i class="fa fa-home text-center"></i>
                    </div>                              
                    <div class="contact-text">
                        <h4>Matriz México</h4>
                        <span>Av. Las Américas 601 5to piso. Fracc. La Fuente, C.P. 20239, Aguascalientes, México</span>
                    </div>
                    <div class="contact-text">
                        <i class="fa fa-whatsapp"></i>
                        044 449 253 56 36
                    </div>
                </div>
                <br /><br />
                <div class="single-contact-left">
                    <div class="contact-icon">
                        <i class="fa fa-home text-center"></i>
                    </div>                                
                    <div class="contact-text">
                        <h4>Sucursal CDMX</h4>
                        <span>Av. Nuevo León 276, 6to piso La Condesa, Ciudad de México C.P. 06100</span>
                    </div>                                
                </div>
                <br /><br /><br /><br />
                <div class="single-contact-left">
                    <div class="contact-icon">
                        <i class="fa fa-home text-center"></i>
                    </div>                                 
                    <div class="contact-text">
                        <h4>Matriz EUA</h4>
                        <span>Fresno California: 7600 N Ingram STE 201 y 202 Fresno CA 93711</span><br />
                    </div>
                </div>                                
            </div>
         </div> 
    </section>
    <!-- Contact Page Area End -->

    <div class="finance-contact-form-bottom">
        <div class="finance-contact-form-right">
            <form id="my_form" onsubmit="submitForm(); return false;">
                <div class="row">
                    <h3>Formulario de contacto</h3>
                    <p>Por favor llene el formulario y nosotros nos pondremos en contacto con usted.</p>
                    <div class="col-md-6">
                        <p>
                            <input id="n" type="text" placeholder="Nombre" class="name" required="required" />
                        </p>
                    </div>
                    <div class="col-md-6">
                        <p>
                            <input id="e" type="email" placeholder="Correo Electrónico" class="email" required="required" />
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <p>
                            <input id="a" type="text" placeholder="Asunto" required="required" />
                        </p>
                    </div>
                    <div class="col-md-6">
                        <p>
                            <input id="t" type="tel" placeholder="Teléfono" />
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p>
                            <textarea id="m" placeholder="Escribe aquí tu mensaje" class="msg" required></textarea>
                        </p>
                        <p>
                            <button id="mybtn" type="submit">Envía tu mensaje</button><span id="status"></span>
                        </p>
                    </div>
                </div>
                <p id="mailrequest" style="display: none;"></p>
            </form>
        </div>
    </div>

    <!-- Footer Area Start -->
    <footer class="finance-footer-area">
        <div class="finance-footer-bottom-area section_15">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright-left">
                            <p class="text-center">Copyright &copy;<script type="text/javascript">var d = new Date(); document.write(d.getFullYear());</script> Todos los derechos reservados por <a href="mailto:hello@525.marketing"><span class="c-font-grey-3">@525.marketing</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->

    <script type="text/javascript" src="mail/send.js"></script>

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

</body>
</html>
