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



    <link href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.css" rel="stylesheet" />


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

        #Testimonios::-webkit-scrollbar {
            width: 15px; /* width of the entire scrollbar */
        }

        #Testimonios::-webkit-scrollbar-track {
            background: #dfb781; /* color of the tracking area */
        }

        #Testimonios::-webkit-scrollbar-thumb {
            background-color: #0d334e; /* color of the scroll thumb */
            border-radius: 10px; /* roundness of the scroll thumb */
            border: 3px solid #dfb781; /* creates padding around scroll thumb */
        }

        #Testimonios p.text-secondary {
            font-weight: bolder;
            font-size: 23px;
            padding-top: 20px;
            padding-bottom: 20px;
        }

        .avatar {
            border-radius: 60%;
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

    <style>
        #mSlide .modal-body {
            padding: 0rem;
        }

        #mSlide .modal-content {
            background: #ffffff94;
            border: 0px solid rgba(0,0,0,.2);
            border-radius: 1.2rem;
        }

        #mSlide .modal {
            background: rgba(11, 11, 11, 0.47) none repeat scroll 0 0 !important;
        }

        #mSlide .modal-dialog .modal-content {
            -webkit-box-shadow: 0 5px 11px 0 rgba(0,0,0,0.18), 0 4px 15px 0 rgba(0,0,0,0.15);
            box-shadow: 0 5px 25px 0 rgb(0 0 0 / 62%), 0 4px 25px 0 rgb(0 0 0 / 65%);
        }

            #mSlide .modal-dialog .modal-content .close {
                color: #273c75;
                background-color: #fff;
                font-size: 28px;
                text-shadow: none;
                line-height: 33px;
                height: 33px;
                width: 33px;
                opacity: 1;
                border-radius: 50%;
                box-shadow: 0 0 5px #555;
                position: absolute;
                left: auto;
                right: -5px;
                top: -5px;
                z-index: 1;
                transition: all 0.3s;
            }

                #mSlide .modal-dialog .modal-content .close:hover {
                    color: #fff;
                    background-color: #0d334e;
                }

            #mSlide .modal-dialog .modal-content .modal-body .icon {
                color: #fff;
                background: #00BFE3;
                font-size: 60px;
                text-align: center;
                text-shadow: 0 0 10px#555 inset;
                line-height: 130px;
                width: 130px;
                height: 130px;
                margin: -25px auto 30px;
                border-radius: 100px;
                box-shadow: 0 0 0 5px #fff inset, 0 0 0 10px #273c75 inset, 7px 7px 2px rgba(144, 144, 144,0.8);
                display: block;
            }



            #mSlide .modal-dialog .modal-content .modal-body .subscribe {
                color: #fff;
                font-size: 18px;
                font-weight: 700;
                text-transform: uppercase;
                padding: 10px 38px;
                margin: 0 auto;
                border: none;
                border-radius: 50px;
                display: block;
                background: linear-gradient(40deg,#2b688e,#061b29) !important;
                border: none !important;
                box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.7);
                transition: all 0.3s ease 0s;
            }

                #mSlide .modal-dialog .modal-content .modal-body .subscribe:hover {
                    background: #dfb781;
                    letter-spacing: 1px;
                    -webkit-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
                    -moz-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
                    box-shadow: 5px 40px -10px rgba(0,0,0,0.57);
                    transition: all 0.4s ease 0s;
                }
    </style>


    <!-- Modal -->
    <div class="modal fade" id="mSlide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <div class="modal-body">

                    <img src="assets/img/logo/logo_aprendeyhaznegocios.jpg" class="img-fluid " alt="Responsive image" />
                    <div class="row m-2">
                        <div class="col text-center">
                            <a href="https://aprendeyhaznegociosenestadosunidos.com/" style="color: inherit" target="_blank">
                                <button type="button" class="subscribe">Visitar página</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <%--Galerias--%>
    <section class="finance-project-area section_t_100 section_b_70">
    
    <%--Proyectos--%>
    <div class="container">
        <div class="finance-section-title-center">
            <h3>Proyectos Finalizados</h3>
            <div class="title-line"></div>
            <p>(Últimos <strong>12</strong> proyectos finalizados , de los <strong>342</strong> en los que hemos participado en conjunto con nuestros socios)</p>
            <p>En estos <strong>33</strong> años de hacer este tipo de negocios inmobiliarios en Estados Unidos</p>
        </div>
    </div>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvalvaradostreetpomonaca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(14,'rvalvaradostreetpomonaca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Alvarado Street, Pomona CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvbullardavenueclovisca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(12,'rvbullardavenueclovisca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Bullard Avenue, Clovis CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvfergusonavenuevisaliaca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(8,'rvfergusonavenuevisaliaca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Ferguson Avenue, Visalia CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvlaverneavenuepomonaca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(45,'rvlaverneavenuepomonaca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>La Verne Avenue, Pomona CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvpauladriveclovisca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(29,'rvpauladriveclovisca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Paula Drive, Clovis CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvfineavenueclovisca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(22,'rvfineavenueclovisca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Fine Avenue, Clovis CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvsimpsonavenuefresnoca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(24,'rvsimpsonavenuefresnoca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Simpson Avenue, Fresno CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvsanbernardinoavenuepomonaca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(12,'rvsanbernardinoavenuepomonaca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>San Bernardino Avenue, Pomona CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvbarstowavenueclovisca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(23,'rvbarstowavenueclovisca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Barstow Avenue, Clovis CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvardendrivefresnoca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(12,'rvardendrivefresnoca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Arden Drive, Fresno CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvmonteverdeavenuepomonaca/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(11,'rvmonteverdeavenuepomonaca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Monte Verde Avenue, Pomona CA</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvakersstreetvisaliaca/1.jpg" style="height: 110px !important" />
                        <div class="product-overlay" onclick="onCargarGaleria(22,'rvakersstreetvisaliaca')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Akers Street, Visalia , CA</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="finance-section-title-center">
            <h3>Proyectos Abiertos</h3>
            <div class="title-line"></div>
            <p>Conoce los proyectos que tenemos abiertos, para que puedas asociarte con nosotros e invertir en ellos y obtener atractivas ganancias.</p>
            <p>Para saber más, acerca de estos proyectos que tenemos disponibles en este momento, comunícate 
                <a target="_blank" href="https://api.whatsapp.com/send?phone=5215615889726&text=¡Hola!,%20Quiero%20invertir%20en%20Bienes%20Raíces.%20Capital%20Financiera" style="color:#00bb2d; font-weight:bolder;"> <strong>aquí</strong></a></p>
     

         </div>
    </div>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvproyectoabiertolavendersthoustontx/1.jpg" />
                        <div class="product-overlay" onclick="onCargarGaleria(5,'rvproyectoabiertolavendersthoustontx')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Proyecto Abierto: Lavender St, Houston TX</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvproyectoabiertohammerlyblvdhoustontx/1.jpg" style="height: 110px !important" />
                        <div class="product-overlay" onclick="onCargarGaleria(8,'rvproyectoabiertohammerlyblvdhoustontx')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Proyecto Abierto: Hammerly Blvd, Houston TX</h4>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/proyectoseua/rvproyectoabiertomallardstgalvestontx/1.jpg" style="height: 110px !important" />
                        <div class="product-overlay" onclick="onCargarGaleria(5,'rvproyectoabiertomallardstgalvestontx')">
                            <i class="fa fa-search"></i>
                        </div>
                    </div>
                    <div class="product-text">
                        <h4>Proyecto Abierto: Mallard St, Galveston TX</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
    <%--Fin Galerias--%>

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
                   <p>¿Sabías que con <b>Capital Financiera</b> puedes acceder a tener Rentas Mensuales durante años sin necesidad de preocuparte por inquilinos, administración ni mantenimiento?</p><br />
                            <p>En <b>Capital Financiera</b> contamos con estrategias probadas para que puedas invertir en Bienes Raíces que te generan Ingresos seguros por Renta cada mes desde 25,000 dólares.</p>
                            
                    <br />
                    <b>¡Vive de tus rentas! </b> ¿Quieres conocer más sobre estas
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

    <!-- Testimonials Start -->
    <div class="container">
        <div class="finance-section-title-center">
            <h3>Lo que nuestros socios inversionistas dicen:</h3>
            <div class="title-line"></div>
        </div>
    </div>
    <div class="container overflow-auto" style="height: 500px !important;" id="Testimonios">
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Orlando T.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>• ¿Cómo se enteraron del fondo de inversión?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Un amigo me platico que él conoció a uno de los socios en un evento de inversionistas en Los Ángeles. Me dio mucha confianza porque me enseñó lo que le estaban depositando cada mes como renta de varias propiedades en Estados Unidos. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Agustín F.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>• ¿Qué problemas o necesidades tenían en ese momento?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>

                        </p>
                        <div class="clearfix"></div>
                        <p>Siempre he sido una persona que ahorra y economiza en los gastos, pero no encontraba la forma de que el dinero trabajara para mí. Ya estaba cansado de ganar tan poco en mi cuenta bancaria, así que tomé la decisión gracias a que el papá de una amiga del trabajo ya había tenido una experiencia positiva.  </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Diego S.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    Cuando se enteraron del fondo de inversión ¿qué expectativas tenían?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Al principio tenía dudas de todo. Pero al ver los proyectos que ya han realizado, nos dio a mí y a mi esposa esa confianza. Al hacer la firma de contrato digital y hacer las transferencias por medio del banco, me dio la confianza de que tenía respaldo de que había invertido con ellos.</p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Francisco D.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Hubo alguna razón por la que estuvieron a punto de NO ingresar?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Sí, le comenté a mi esposa, y el jefe de ella había tenido un problema al comprar un remate bancario en el Estado de México. Cuando le comentó que queríamos invertir en Bienes Raíces en Estados Unidos, le dijo que checáramos muy bien todo. Que no quería que perdiéramos dinero como él había perdido el suyo. Al final, el ver que los Bienes Raíces estaban en Estados Unidos y no en México nos dio mucha tranquilidad. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Julio César B.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué fue lo que les gustó o sorprendió una vez dentro?  </strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Algunos proyectos son de rehabilitar las propiedades, lo que nos sorprendió es ver los cambios tan drásticos en varias de esas propiedades. Y el diseño de colores que manejan en los interiores. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Luis Ángel A.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué tan probable es que recomienden la inversión a un amigo o un familiar que quiere invertir?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Hemos recomendado a mi suegro, pero él quiere Ganancias de Capital, recibir la ganancia toda junta. Nosotros nos gusta más estar recibiendo en nuestra cuenta de banco cada mes, la ganancia.</p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Margarita O.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Cómo se enteraron del fondo de inversión?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Nos apareció un anuncio en Facebook, sobre un taller gratuito sobre cómo encontrar oportunidades de inversión en Estados Unidos. Nos registramos y nos llegó el link. Después de finalizar el taller online, tenía mis dudas, pero me dio pena preguntar. A los dos días me marcaron del equipo de asesores de Capital Financiera y la Srita. Verónica me resolvió todas las dudas. Muy atenta. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Roberto Z.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué problemas o necesidades tenían en ese momento?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>El principal problema que tenía radicaba en que mi esposa y yo nos dimos cuenta que a pesar de tener buenos ingresos combinados y no tener hijos, no estábamos haciendo nada para el futuro. Siempre pensábamos en el presente. Yo tengo 38 años y la realidad es que veo que el mercado laboral para ella y para mí se puede poner difícil en pocos años. Así que comenzamos a controlar nuestros gastos y con lo que nos ahorramos, iniciamos nuestro primer proyecto en Ganancias de Capital. Hemos recibido en tiempo y el porcentaje pactado y ahora vamos por el tercer proyecto continuo. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">María Elena G.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    Cuando se enteraron del fondo de inversión ¿qué expectativas tenían?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Al mi papá vender un terreno que no le estaba dando nada de ganancias y él a sus 66 años invertir en Renta Mensual, me di cuenta que él había visto algo que yo y mis hermanas no. Las expectativas fueron altas y veíamos que a mi papá le depositaban cada mes. A él le ayuda para sus gastos de medicinas de cada mes y a nosotros darnos cuenta que sí eran confiables.</p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Rosa María O.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Hubo alguna razón por la que estuvieron a punto de NO ingresar?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Sí, ya casi por decidirnos, nos dimos cuenta que había un comentario negativo en un anuncio sobre la empresa que no les habían aprobado un crédito. Antes de invertir, contactamos por Messenger al perfil para ver si no era fraude esta empresa. Afortunadamente, la persona que hizo el comentario se confundió de empresa. Ella vivía en Honduras y quería un crédito personal y el equipo de Capital Financiera nos comentó que sólo hace inversiones y negocios de bienes raíces en Estados Unidos. Tenemos 6 meses recibiendo nuestros pagos mensuales y todo bien.</p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Alicia T.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué fue lo que les gustó o sorprendió una vez dentro? </strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Nos gustó la actitud que tiene el equipo. Me atendió Héctor al momento de darme la información y dudas y luego María al momento de la firma digital. En todo momento se siente la vibra de profesionalismo. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Patricia L.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Cómo se enteraron del fondo de inversión?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Compré el libro de Alejandro en un Sanborns aquí en Guadalajara. Cuando lo estaba leyendo, le comenté a mi hermano que fuera a conocer los proyectos y que viera si existían las casas que estaban reparando o que habían vendido. Él vive en Sanger, California, muy cerca dónde han comprado y vendido varias propiedades. Me dijo que sí, que se veían personas reparando las casas y las que se habían vendido recientemente se veían renovadas en pintura y jardín. Fue ese comentario de mi hermano lo que me dio confianza de que mi dinero iba a estar seguro. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Víctor Manuel R.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué problemas o necesidades tenían en ese momento?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Anteriormente había tenido dos malas experiencias al comprar remates bancarios en Puebla, México. Uno fue porque estaba ocupada la propiedad por un paracaidista y la otra la reparamos y al querer venderla, un día antes nos robaron todo lo del baño y el cobre de las tuberías de la azotea. Aún no recupero el dinero de ninguna de las dos propiedades. Al inicio creí que iba a ser igual con estas inversiones, pero al yo no tener que involucrarme y que me dan un rendimiento fijo. Me animé. Hoy estoy muy tranquilo y sé que mi dinero está trabajando para mí. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Óscar R.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    Cuando se enteraron del fondo de inversión ¿qué expectativas tenían?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Desde que nos dimos cuenta que era una gran oportunidad de inversión con muy buen rendimiento y sobre todo seguro, me entusiasmó que mi dinero a parte de darme buenas ganancias, cambiaban las propiedades para otras familias. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Ana María F.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Hubo alguna razón por la que estuvieron a punto de NO ingresar?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Uno de mis hijos que es abogado, me dijo que no me metiera porque las leyes son distintas en México y Estados Unidos. Una de las asesoras me dijo que podía firmar con la empresa mexicana para darme más seguridad. Lo hicimos todo ante Notario Público y mi hijo se calmó. Hoy, él sacó una parte de sus ahorros del banco y tiene 30 mil dólares de inversión en Flujo de Efectivo recibiendo dinero cada mes.  </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Guillermo S.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué fue lo que les gustó o sorprendió una vez dentro? </strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>De que en los 15 meses que tengo, siempre han depositado mi mensualidad a tiempo.  </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">M. del Rosario M.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué tan probable es que recomienden la inversión a un amigo o un familiar que quiere invertir?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Muy probable, sólo que mis vecinas no son mucho de inversiones. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Gabriel V.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Cómo se enteraron del fondo de inversión?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Googlé sobre negocios en Estados Unidos y uno de los primeros resultados fue el libro Aprende y Haz Negocios en Estados Unidos. Lo busqué y lo pedí a Librerías Gandhi y me llegó a mi casa. Desde que lo leí cambió para bien la forma en que veía a los bienes y raíces. Yo siempre creí que tenías que comprar una casa y no sabía cómo hacer negocios con ellos. Me comuniqué con ellos al sitio web que viene en el libro y después compré un curso digital. Fue allí con todos los videos y lecciones que me di cuenta que sí sabían de lo que hablaban. Allí fue cuando me animé a invertir el monto mínimo de 20 mil dólares y después hice otros dos contratos digitales. Sí recomiendo esas inversiones. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Araceli L.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué problemas o necesidades tenían en ese momento?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Siempre veía videos en YouTube sobre cómo hacer negocios e inversiones. Mi familia me educó a que sólo tenía que casarme con un doctor o contador con buenos ingresos y que tenía mi vida resuelta. Nunca he emprendido nada y me daba miedo comenzar a hacerlo, por el temor a perder el dinero de mi esposo y mis hijos. En uno de esos videos, Alejandro explicaba cómo él había perdido dinero con Bienes Raíces en México y cómo eso en lugar de rendirse, buscó hacerlo en Estados Unidos. Vi además una entrevista que le hicieron en la Televisión y eso me dio la seguridad de que no era fraude.  </p>
                        <br />
                        <p>Actualmente tengo casi 2 años con ellos y todo bien. Yo checo en la plataforma cómo mi dinero se va moviendo.  Tenemos planes para que mi esposo tenga también su propio contrato, pero él quiere con Interés Compuesto. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">José de Jesús C.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    Cuando se enteraron del fondo de inversión ¿qué expectativas tenían? </strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Primero revisamos a profundidad el contrato, para ver todas las cláusulas. Nos dimos cuenta que no había una que nos pudiera perjudicar y que todas protegían tanto a Capital Financiera como a nosotros. Una vez que vimos que podíamos firmar tanto con Notario como Digital, optamos por digital ya que nosotros vivimos en Tuxtla Gutiérrez. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Irma S.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Hubo alguna razón por la que estuvieron a punto de NO ingresar?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>No, pero primero me informé y chequé todo. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Jaime P.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué fue lo que les gustó o sorprendió una vez dentro?   </strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Me decidí a invertir en Capital Financiera, porque me gustó el atractivo rendimiento que nos ofrece a los inversionistas y que con el capital invertido se compren propiedades baratas que se renuevan. También me gustó el hecho de que como inversionistas no tenemos que decidir en qué propiedad o propiedades invertimos; ellos lo hacen por nosotros. Buen modelo de inversión con atractivos rendimientos, sin cobro de comisiones ocultas ni nada. Sólo una cosa, no había visto que depositaban en días hábiles y llamé y servicio muy bien. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Jorge R.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué tan probable es que recomienden la inversión a un amigo o un familiar que quiere invertir?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Les dije a mis papás, pero ellos están acostumbrados a la antigua. Así que Capital Financiera les ayudó con todos los trámites y compraron una propiedad dúplex en Houston a su nombre. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Andrés S.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Cómo se enteraron del fondo de inversión?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Fui a un taller sobre Visas y Residencias para Estados Unidos en Ciudad de México y allí uno de los ponentes era Alejandro de la Cruz. Nos dio ejemplos prácticos y un proceso para comenzar a ganar dinero con Bienes Raíces en Estados Unidos y a mediano plazo solicitar la Visa de Inversionista. Como no tenía aún el capital necesario para esa Visa, su equipo me hizo un plan de acción para comenzar poco a poco y capitalizarme y en unos años, poder llevarme a mi esposa e hijos a Estados Unidos. Las ganancias que tienen en esta empresa son muy buenas y lo mejor es que son más seguras que comenzar algún negocio o prestarle tu dinero a alguna empresa nueva que podría fracasar.</p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Lucía H.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué problemas o necesidades tenían en ese momento? </strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Me gusta la iniciativa de poder ayudar a nosotros los mexicanos a poder invertir en estos nuevos instrumentos de inversión de Bienes Raíces en Estados Unidos. Hice la maestría en Canadá y he viajado a Estados Unidos y es una gran diferencia la forma en que trabajan las personas que hacen Bienes Raíces en esos países. Mi problema es que antes tenía que comprar la propiedad completa y con estos esquemas que trabajan, me gusta porque mi inversión de 150 mil dólares está repartida en varias propiedades y tengo diversificado mi dinero.  </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Pablo M.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Hubo alguna razón por la que estuvieron a punto de NO ingresar?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Sí, quería saber quiénes los respaldaban. Yo había tenido experiencias en plataformas Fintech de préstamos a personas y empresas y perdí algo de dinero porque entraban en mora y ponía fondeo automático. Me di cuenta a la mala que, muchas personas y empresas mienten para que les prestes dinero en las plataformas Fintech. Al darme cuenta que con esta empresa el respaldo y garantía eran Bienes Raíces en un país como Estados Unidos y que son los que respaldan la inversión, me dio seguridad. Aquí los montos de inversión son mayores porque no van a todas las personas. Vi también que como son propiedades, era más exclusivo y sí eran oportunidades reales. Yo tengo invertido con ellos 230 mil dólares y creciendo.</p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Carmen P.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué fue lo que les gustó o sorprendió una vez dentro? </strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Excelente trato del personal. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Guadalupe L.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué tan probable es que recomienden la inversión a un amigo o un familiar que quiere invertir?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Llevo 7 meses, hasta el momento todo bien. Cuando cumpla el año, es muy probable que comience a recomendarles a mis amigos que inviertan su dinero. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Yolanda S.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué problemas o necesidades tenían en ese momento?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>La principal, es que cada día que pasaba no me estaba haciendo más joven y que llegaría el día que ya no podría cambiar mi tiempo por un sueldo. Mi esposo, al inicio no me apoyó al querer invertir en estos negocios de Bienes Raíces, pero luego al ver que sí cumplían cambió su idea que tenía. </p>
                        <br />
                        <p>
                            Quiero dejar el dinero que se multiplique por un par de años para ver cuántos son los proyectos que se hacen en ese tiempo. 
      
                       
                       
                       
                        </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Armando O.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    Cuando se enteraron del fondo de inversión ¿qué expectativas tenían?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Teníamos dudas, como todos. Pero estas fueron resueltas por una srita muy atenta y servicial. Me gusta y agradezco que cada vez que me despierto y me voy al trabajo, tengo un dinero que está trabajando para mí y mi futuro. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Luisa M.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Hubo alguna razón por la que estuvieron a punto de NO ingresar?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Sí. Mi esposo me desanimó. Pero cuando los dos fuimos con un abogado amigo de él y vio el contrato y todos los papeles, cambió de opinión. Aun así, no invertimos luego, luego. Me esperé y seguí investigando. Ya con la información, nos decidimos a invertir. Hoy él aún tiene sus dudas, pero yo le he demostrado que hasta el momento han cumplido y hemos hecho una buena inversión. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Javier O.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué fue lo que les gustó o sorprendió una vez dentro?   </strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Estoy iniciando a invertir con ellos y hasta el momento, va todo muy bien, el trámite es rápido. Lo hicimos en la computadora y vimos que todo es legal. Siempre muy atentos en resolver dudas. A los días de comenzar, perdí mi contraseña de la plataforma y me asignaron otra. </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%--Testimonio--%>
        <div class="card mb-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2" align="center">
                        <img src="assets/img/logo/logo_testimonio.jpg" class="avatar " width="100px" />
                        <p class="text-secondary text-center">Martín S.</p>
                    </div>
                    <div class="col-md-10">
                        <p>
                            <a class="float-left" href="#"><strong>•    ¿Qué tan probable es que recomienden la inversión a un amigo o un familiar que quiere invertir?</strong></a>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        </p>
                        <div class="clearfix"></div>
                        <p>Probable. Muy puntuales en los pagos de los rendimientos, no tienes que estar detrás de ellos para ver sí ya te depositaron o no. Hasta ahorita todo bien, si los recomiendo! Ojalá sigan así siempre! </p>
                        <p>
                            <a class="float-right btn btn-outline-primary ml-2"><i class="fa fa-share"></i>&nbsp;Compartir</a>
                            <a class="float-right btn text-white btn-danger"><i class="fa fa-heart"></i>&nbsp;Me Gusta</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonials End -->

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


              <div class="row">
                <div class="col-md-12">
                    <div class="finance-section-title-center">
                        <h3>Edúcate financieramente con estos videos y <strong>#HazQueElDineroTrabajeParaTi</strong></h3>
                        <div class="title-line"></div>
                    </div>
                </div>
            </div>

             <div class="row">
                <div class="col-md-12">
                    <div class="finance-section-title-center">
                        Visita nuestro canal en
                          <a href="https://www.youtube.com/channel/UCm3fuyZssLWtgVXCgDW-gsQ/"  target="_blank" class="text-danger">
                               Youtube
                            </a>
                    </div>
                </div>
            </div>

            <div class="row justify-content-md-center">
                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-3">
                        <iframe class="latestVideoEmbed" vnum='0' cid="UCm3fuyZssLWtgVXCgDW-gsQ" width="100%" height="300"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                 <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-3">
                        <iframe class="latestVideoEmbed" vnum='1' cid="UCm3fuyZssLWtgVXCgDW-gsQ" width="100%" height="300"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                <div class="w-100 my-2"></div>
                 <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-3">
                        <iframe class="latestVideoEmbed" vnum='2' cid="UCm3fuyZssLWtgVXCgDW-gsQ" width="100%" height="300"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-3">
                        <iframe class="latestVideoEmbed" vnum='3' cid="UCm3fuyZssLWtgVXCgDW-gsQ" width="100%"  height="300" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                <div class="w-100 my-2"></div>
                 <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-3">
                        <iframe class="latestVideoEmbed" vnum='4' cid="UCm3fuyZssLWtgVXCgDW-gsQ" width="100%" height="300"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-3">
                        <iframe class="latestVideoEmbed" vnum='5' cid="UCm3fuyZssLWtgVXCgDW-gsQ" width="100%"  height="300" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
             

        </div>

        
    <%--Medios--%>
    <div class="container">
        <div class="finance-section-title-center">
            <h3>Medios de comunicación en los que hemos aparecido:</h3>
            <div class="title-line"></div>
        </div>
    </div>

     <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/1.png" />
                    </div>
                </div>
            </div>
                 <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/2.png" />
                    </div>
                </div>
            </div>
                 <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/3.png" style="height: 80px ;"/>
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/4.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/5.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/6.png" style="height: 80px ;"/>
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/7.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/8.png" style="height: 80px ;" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/9.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/10.png" style="height: 80px ;"/>
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/11.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/12.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/13.png" style="height: 80px ;"/>
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/14.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/15.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/16.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/17.png" />
                    </div>
                </div>
            </div>
             <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/18.png" />
                    </div>
                </div>
            </div>
                <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/19.png" />
                    </div>
                </div>
            </div>
                <div class="col-4 col-sm-4 col-md-3 col-lg-2">
                <div class="single-product">
                    <div class="single-product-img">
                        <img src="assets/img/logos_medios/20.png" />
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
                            <button type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Modal End -->



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


    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.js"></script>


    <script type="text/javascript">
        $(window).on('load', function () {

            setTimeout(function () {
                $('#mSlide').modal('show');
            }, 600000);



        });


        function onCargarGaleria(items, folder) {
            var imagenes = [];
            for (var i = 1; i <= items; i++) {
                var path = 'assets/img/proyectoseua/' + folder + '/' + i + '.jpg';
                imagenes.push({
                    src: path,
                    opts: {
                        thumb: path
                    }
                });

            }
            $.fancybox.open(imagenes, {
                keyboard: true,
                loop: false,
                thumbs: {
                    autoStart: true, //Miniaturas
                }
            });
        }



        var reqURL = "https://api.rss2json.com/v1/api.json?rss_url=" + encodeURIComponent("https://www.youtube.com/feeds/videos.xml?channel_id=");
        function loadVideo(iframe) {
            $.getJSON(reqURL + iframe.getAttribute('cid'),
                function (data) {
                    var videoNumber = (iframe.getAttribute('vnum') ? Number(iframe.getAttribute('vnum')) : 0);
                    console.log(videoNumber);
                    var link = data.items[videoNumber].link;
                    id = link.substr(link.indexOf("=") + 1);
                    iframe.setAttribute("src", "https://youtube.com/embed/" + id + "?controls=0&autoplay=1");
                }
            );
        }
        var iframes = document.getElementsByClassName('latestVideoEmbed');
        for (var i = 0, len = iframes.length; i < len; i++) {
            loadVideo(iframes[i]);
        }
    </script>

</body>
</html>
