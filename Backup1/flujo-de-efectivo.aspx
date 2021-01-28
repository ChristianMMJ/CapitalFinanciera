<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flujo-de-efectivo.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.flujo_de_efectivo" %>

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

    <!-- Breadcromb Area Start -->
    <section class="finance-breadcromb-area section_50">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="breadcromb-left">
                        <h3>Inversiones</h3>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="breadcromb-right">
                        <ul>
                            <li><a href="index.aspx"><i class="fa fa-home"></i>Inicio</a></li>
                            <li>/</li>
                            <li>Servicios</li>
                            <li>/</li>
                            <li>Flujo de efectivo</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcromb Area End -->    

    <!-- Single Service Area Start -->
    <section class="finance-single-service-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="single-service-left">
                        <div class="single-service-widget">
                            <ul>
                                <li>
                                    <a href="ganancias-de-capital.aspx">
                                        Ganancias de capital
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="flujo-de-efectivo.aspx">
                                        Flujo de efectivo
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="single-service-right">
                        <div class="service-banner">
                            <img src="assets/img/servicios/largoplazo.jpg" alt="largo plazo" />
                        </div>
                        <div class="audit-text">
                            <h3>Flujo de efectivo</h3>
                            <p>¿Sabías que con <b>Capital Financiera</b> como mexicano viviendo en México o latino indocumentado en Estados Unidos puedes comprar propiedades en Estados Unidos al 30% de su valor y tener un ingreso mensual de por vida?</p>
                            <p>En <b>Capital Financiera</b> contamos con estrategias para que puedas adquirir una propiedad de 100 mil dólares (2 millones de pesos) en tan sólo 30 mil dólares equivalentes a 600 mil pesos y tener una renta mensual promedio de 450 dólares (9 mil pesos). Es decir, nosotros hacemos que el 70% restante sea financiado sin importar tu récord crediticio, quién eres o cuánto ganas y sea pagado por tu inquilino cada mes. Por lo que tu inquilino con la renta pagará la hipoteca de tu casa y además te dará flujo de efectivo mensual.</p>
                            <p>Por ejemplo con esta casa que compraste al 30%, cada mes tu inquilino pagará una renta de 1,300 dólares menos los 500 dólares de la hipoteca y 350 dólares de gastos administrativos e impuestos; quedándote un flujo de efectivo de 450 dólares al mes, de por vida y heredables. El día de mañana cuando tu inquilino termine de pagar tu hipoteca, aumentará tu flujo de efectivo.</p>
                            <p>En México si sacas un crédito hipotecario con las altas tasas de interés bancarias, NO PUEDES VIVIR DE TUS RENTAS, toda vez que tu pago mensual es muy superior a lo que te paga tu inquilino por la renta. Literalmente le estás pagando al banco para que otro viva en tu casa.</p>
                            <p>¿Qué prefieres con esos 600 mil pesos comprar un departamento en la Ciudad de México en una zona popular e insegura? ¿O invertir en un activo en Estados Unidos que te da ingresos mensuales, con la seguridad de inquilinos con mejores sueldos que en México?</p>
                            <p>Aprovecha esta gran oportunidad y ahora sí vive de tus rentas. <br>
                                <ul>
                                    <strong><li>Sin salir de tu País</li></strong>
                                    <strong><li>Sin ser ciudadano norteamericano</li></strong>
                                    <strong><li>Sin visa</li></strong>
                                    <strong><li>Sin saber inglés</li></strong>
                                    <strong><li>Sin dejar tu trabajo o negocio actual</li><li></li></strong>
                                </ul>
                            </p>
                            <p></p>
                            <p></p><p></p>

                            <!-- Shop Page Area Start -->
                            <div class="col-md-12">
                                <div class="audit-text">
                                    <h3>PROYECTOS DE INVERSIÓN EN ESTADOS UNIDOS</h3>
                                </div>
                            </div>
                            <div class="finance-section-title-center">
                                <div class="col-md-8">
                                    <div class="finance-shop-left">
                                        <table align="center"  border="0" cellspacing="6" cellpadding="2">
                                            <tbody>
                                                <tr>
                                                    <th scope="col"><center> <div class="title-line"></div></center></th>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="row">
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="assets/img/tavaresz.jpg" class="gallery-lightbox">
                                                            <img src="assets/img/tavaresz.jpg" alt="product 1" />
                                                            <div class="product-overlay">
                                                                <i class="fa fa-search"></i>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>Tavares, Florida </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="assets/img/mascottez.jpg" class="gallery-lightbox">
                                                            <img src="assets/img/mascottez.jpg" alt="product 1" />
                                                            <div class="product-overlay">
                                                                <i class="fa fa-search"></i>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>Mascotte, Florida</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="galeria_casas/kissime_florida.jpg" class="gallery-lightbox">
                                                            <img src="galeria_casas/kissime_florida.jpg" alt="product 1" />
                                                            <div class="product-overlay">
                                                                <i class="fa fa-search"></i>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>Kissimmee, Florida</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <table align="center"  border="0" cellspacing="6" cellpadding="2">
                                            <tbody>
                                                <tr>
                                                    <th scope="col">
                                                        <p></p>
                                                        <p></p><center><div class="title-line"></div></center><p></p>
                                                        <p></p>
                                                    </th>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <p></p>
                                        <p></p>
                                    </div>
                                </section>
                                <!-- Shop Page Area End -->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Single Service Area End -->

    <!-- Quotes Area Start -->
    <section class="finance-quotes-area section_100">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-quotes-text">
                        <h2>Pon a crecer tu dinero y aumenta tu bienestar</h2>
                        <p style="margin-bottom: 20px;">¿Tienes alguna duda?<br>Conoce nuestros beneficios y convéncete de generar mayores riquezas</p>
                        <!-- <iframe width="50%" height="315" src="https://www.youtube.com/embed/-3XsLjW_W40" frameborder="0" allowfullscreen></iframe> -->
                        <div class="quotes-button">.
                            <a href="contacto.aspx" class="finance-white-btn">Contáctanos</a>
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
                            <p class="text-center">Copyright &copy;<script type="text/javascript">                                                                       var d = new Date(); document.write(d.getFullYear());</script> Todos los derechos reservados por <a href="mailto:hello@525.marketing"><span class="c-font-grey-3">@525.marketing</span></a></p>
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

    <!-- Chart Script -->

    <script type="text/javascript">
        var ctx = document.getElementById('myChartone').getContext('2d');
        var chart = new Chart(ctx, {
            // The type of chart we want to create
            type: 'line',
            // The data for our dataset
            data: {

                labels: ["2011", "2012", "2013", "2014", "2015", "2016", "2017"],
                datasets: [{
                    label: "Strategy",
                    backgroundColor: 'rgba(30, 120, 225, 0.49)',
                    borderColor: 'rgba(23, 105, 201, 0.71)',
                    data: [3, 10, 5, 14, 13, 10, 14, 15],
                }]
            },
            // Configuration options go here
            options: {}
        });
    </script>

</body>
</html>
