<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.negocios.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <meta name="og:url" content=" https://capitalfinancierausa.com/" />
    <meta name="og:image" content=" https://capitalfinancierausa.com/img_cap.jpg" />
    <meta name="og:description" content="Empresa financiera especializada en inversiones en el mercado de Bienes Raíces de Estados Unidos con presencia en las principales ciudades de la República Mexicana y la Unión Americana." />

    <link rel="icon" type="image/png" href="../assets/img/logo/favicon.png" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />

    <!-- Font awesome CSS -->
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css" />

    <!-- Animate CSS -->
    <link rel="stylesheet" href="../assets/css/animate.min.css" />

    <!-- OwlCarousel CSS -->
    <link rel="stylesheet" href="../assets/css/owl.carousel.css" />

    <!-- OwlCarousel CSS -->
    <link rel="stylesheet" href="../assets/css/slicknav.min.css" />

    <!-- Magnific popup CSS -->
    <link rel="stylesheet" href="../assets/css/magnific-popup.css" />

    <!-- Main CSS -->
    <link rel="stylesheet" href="../assets/css/style.css" />

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="../assets/css/responsive.css" />
    <link rel="stylesheet" type="text/css" href="../mail/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/custom.css" />

    <!--load all styles -->
    <link href="../css/all.min.css" rel="stylesheet" />

    <!-- Our project just needs Font Awesome Solid + Brands -->
    <link href="../css/fontawesome.min.css" rel="stylesheet" />
    <link href="../css/brands.min.css" rel="stylesheet" />
    <link href="../css/solid.min.css" rel="stylesheet" />

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

    <%--<script type="text/javascript">
        document.oncontextmenu = function () { return false; };
    </script>--%>
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
                            <img src="../assets/img/logo/logo.png" alt="Capital Financiera USA logo" />
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
                                    <a href="../index.aspx">
                                        Inicio
                                    </a>
                                </li>
                                <li id="liFinance_Navigation_QuienesSomos" runat="server">
                                    <a href="../quienes-somos.aspx">Nosotros</a>
                                </li>
                                <li id="liFinance_Navigation_Servicios" runat="server">
                                    <a>
                                        Servicios
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul>
                                        <li id="liFinance_Navigation_GananciasCapital" runat="server">
                                            <a href="../ganancias-de-capital.aspx">Ganancias de capital</a>
                                        </li>
                                        <li id="liFinance_Navigation_FlujoEfectivo" runat="server">
                                            <a href="../flujo-de-efectivo.aspx">Flujo de efectivo</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="liFinance_Navigation_Testimonios" runat="server">
                                    <a href="../testimonios.aspx">Nuestros clientes hablan</a>
                                </li>
                                <li id="liFinance_Navigation_Faqs" runat="server">
                                    <a href="../faqs.aspx">FAQ's</a>
                                </li>
                                <li id="liFinance_Navigation_Contacto" runat="server">
                                    <a href="../contacto.aspx">Contacto</a>
                                </li>
                                <%--<li id="liFinance_Navigation_Login" runat="server">
                                    <a href="../login.aspx">Ingresar</a>
                                </li>--%>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- Faq Area Start -->
    <section class="finance-faq-area section_100">
        <div class="bg-overlay"></div>
        <div class="skew-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-faqs-left">
                        <h3>EXPERIENCIA DE PROYECTOS INMOBILIARIOS</h3>
                        <p style="color:White;">Capital Financiera es una empresa con socios de México y Estados Unidos. Con más de 33 años de experiencia en los Socios Norteamericanos, se ha brindado el servicio de compra-venta de propiedades, de inversión en Ganancias de Capital y de Flujo de Efectivo.</p>
                        <div class="panel-group accordion"  id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse02" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            1. LISTADO DE CLIENTES OFICINA CALIFORNIA
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse02">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento01.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse03" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            2. HAMMERBURG, GLEN3512 ELOWEAVE 12-30-10
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse03">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento02.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse04" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            3. OLIVAREZ, MICHAEL & OFELIA 1513N. VALENCIA CT11-17-09
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse04">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento03.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse05" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            4. HERNANDEZ, ROBERT 1524 EAST VASSAR 11-2-09
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse05">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento04.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="https://aprendeyhaznegociosenestadosunidos.com/blog/" target="_blank" class="finance-btn fadeInDown animated text-center" style="background-color:#0d334e !important;">EDUCATE FINANCIERAMENTE, CONOCE MAS DE CAPITAL FINANCIERA</a>
                    <a href="https://aprendeyhaznegociosenestadosunidos.com" target="_blank" class="finance-btn fadeInDown animated text-center" style="background-color:#0d334e !important;">Aprende y Haz Negocios Pasivos</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Faq Area End -->

    <!-- Faq Area Start -->
    <section class="finance-faq-area section_100">
        <div class="bg-overlay"></div>
        <div class="skew-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-faqs-left">
                        <h3>CAPITAL FINANCIERA</h3>
                        <p style="color:White;">Capital Financiera empresa creada para brindar oportunidad a los Latinoamericanos, para que tengan Éxito Económico y/o Libertad Financiera haciendo Negocios e Inversiones con Bienes Raíces en el Primer Mundo. Constitución de la Empresa LLC:</p>
                        <div class="panel-group accordion"  id="Div1">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse22" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            1. FINANZAS CAPITAL USA LLC
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse22">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw; height: 100vh;position: relative;" src="documento05.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse23" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            2. ESTADO DE CUENTA FINANZAS CAPITAL USA LLC
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse23">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento06.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="https://aprendeyhaznegociosenestadosunidos.com/blog/" target="_blank" class="finance-btn fadeInDown animated text-center" style="background-color:#0d334e !important;">EDUCATE FINANCIERAMENTE, CONOCE MAS DE CAPITAL FINANCIERA</a>
                    <a href="https://aprendeyhaznegociosenestadosunidos.com" target="_blank" class="finance-btn fadeInDown animated text-center" style="background-color:#0d334e !important;">Aprende y Haz Negocios Pasivos</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Faq Area End -->

    <!-- Faq Area Start -->
    <section class="finance-faq-area section_100">
        <div class="bg-overlay"></div>
        <div class="skew-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-faqs-left">
                        <h3>FIRMA SOCIOS CALIFORNIA</h3>
                        <p style="color:White;">Pacific Mortgage and Realty es uno de los socios en California con más de 33 años de experiencia en Bienes Raíces en Estados Unidos, generando más de 700 proyectos Inmobiliarios.</p>
                        <div class="panel-group accordion"  id="Div2">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse32" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            1. SOCIOS CAPITAL FINANCIERA
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse32">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw; height: 100vh;position: relative;" src="documento07.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse33" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            2. SOCIOS CAPITAL FINANCIERA USA
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse33">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento08.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse34" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            3. LICENCIA DE BROKER REAL ESTATE SOCIO
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse34">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento09.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse35" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            4. PODER SOCIOS CALIFORNIA USA
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse35">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento10.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse36" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            5. PODER SOCIOS CALIFORNIA USA
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse36">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <iframe style="width: 100vw;height: 100vh;position: relative;" src="documento11.html" title="Documento 1" frameborder="0" allowfullscreen></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="https://aprendeyhaznegociosenestadosunidos.com/blog/" target="_blank" class="finance-btn fadeInDown animated text-center" style="background-color:#0d334e !important;">EDUCATE FINANCIERAMENTE, CONOCE MAS DE CAPITAL FINANCIERA</a>
                    <a href="https://aprendeyhaznegociosenestadosunidos.com" target="_blank" class="finance-btn fadeInDown animated text-center" style="background-color:#0d334e !important;">Aprende y Haz Negocios Pasivos</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Faq Area End -->

    <!-- Faq Area Start -->
    <section class="finance-faq-area section_100">
        <div class="bg-overlay"></div>
        <div class="skew-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-faqs-left">
                        <h3>CONVENIO CON SOCIO INVERSIONISTA</h3>
                        <p style="color:White;">Este convenio se puede firmar en México, Estados Unidos o en cualquier país; o bien, de forma digital con misma validez oficial ante Notario Público. Señala el monto a Invertir, el modelo de Negocio, la ganancia pactada y la duración del mismo.</p>
                        <p style="color:White;">De igual manera indica la persona beneficiaria en caso de emergencia o muerte del Inversionista. Sin letras pequeñas CAPITAL FINANCIERA brinda a sus SOCIOS INVERSIONISTAS la transparencia con la que se trabaja cumpliendo las Leyes Norteamericanas.</p>                        <div class="panel-group accordion"  id="Div4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse42" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            1. JOINT VENTURE GANANCIAS DE CAPITAL
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse42">
                                    <div class="panel-body">
                                        <%--<div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">--%>
                                                <div class="embed-responsive embed-responsive-1by1">
                                                    <iframe class="embed-responsive-item" src="documento12.html" title="Documento 1" allowfullscreen></iframe>
                                                </div>
                                            <%--</div>
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="https://aprendeyhaznegociosenestadosunidos.com/blog/" target="_blank" class="finance-btn fadeInDown animated text-center" style="background-color:#0d334e !important;">EDUCATE FINANCIERAMENTE, CONOCE MAS DE CAPITAL FINANCIERA</a>
                    <a href="https://aprendeyhaznegociosenestadosunidos.com" target="_blank" class="finance-btn fadeInDown animated text-center" style="background-color:#0d334e !important;">Aprende y Haz Negocios Pasivos</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Faq Area End -->

    <section class="finance-faq-area section_100">
        <div class="bg-overlay"></div>
        <div class="skew-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="finance-faqs-left">
                        <h3>Equipo de Poder de Capital Financiera, con más de 33 años de experiencia.</h3>
                        <iframe src="https://player.vimeo.com/video/405062164?title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
                        <p style="color:White;"><a href="https://vimeo.com/405062164">Parte del Equipo de Poder comparten su experiencia en Bienes Raíces en Estados Unidos de América.</a> Oportunidad de negocios en el Primer Mundo - <a href="https://vimeo.com/user108485664">Capital Financiera</a> en <a href="https://vimeo.com">Vimeo</a>.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Area Start -->
    <footer class="finance-footer-area">
        <div class="finance-footer-top-area section_50">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="single-footer ">
                            <a href="http://capitalfinancierausa.com/">
                                <img src="../assets/img/logo/logo.png" alt="footer logo" />
                            </a>
                            <p>Empresa financiera especializada en inversiones en el mercado de Bienes Raíces de Estados Unidos con presencia en las principales ciudades de la República Mexicana y la Unión Americana.</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-footer ">
                            <h3>Servicios</h3>
                            <ul class="footer-widget">
                                <li>
                                    <a href="../ganancias-de-capital.aspx">
                                        <i class="fa fa-angle-right"></i>
                                        Ganancias de capital
                                    </a>
                                </li>
                                <li>
                                    <a href="../flujo-de-efectivo.aspx">
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
                                Conoce las demás sucursales<b> <a href="../contacto.aspx">aquí </a></b>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-footer">
                            <h3>¡Invierte en el mercado más seguro y confiable!</h3>
                            <div class="single-footer-insta">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="../assets/img/inicio/b1.jpg" alt="b1" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="../assets/img/inicio/b2.jpg" alt="b2" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="../assets/img/inicio/b3.jpg" alt="b3" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="../assets/img/inicio/b4.jpg" alt="b4" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="../assets/img/inicio/b5.jpg" alt="b5" />
                                        <div class="overlay-insta"></div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-4">
                                            <img src="../assets/img/inicio/b6.jpg" alt="b6" />
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

    <!-- jQuery -->
    <script type="text/javascript" src="../assets/js/jquery.min.js"></script>
    
    <!-- Bootstrap JS -->
    <script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>
    
    <!-- Magnific Popup JS -->
    <script type="text/javascript" src="../assets/js/jquery.magnific-popup.min.js"></script>
    
    <!-- OwlCarousel JS -->
    <script type="text/javascript" src="../assets/js/owl.carousel.min.js"></script>
    
    <!-- Slicknav JS -->
    <script type="text/javascript" src="../assets/js/jquery.slicknav.min.js"></script>
    
    <!-- isotop JS -->
    <script type="text/javascript" src="../assets/js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="../assets/js/custom-isotop.js"></script>
    
    <!-- Chart JS -->
    <script type="text/javascript" src="../assets/js/chart.js"></script>
    
    <!-- Active JS -->
    <script type="text/javascript" src="../assets/js/active.js"></script>

</body>
</html>
