﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-MX">

<head id="Head1" runat="server">
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

    <style type="text/css">
        .cajita {
	        background:#0d334e;
	        margin: 0 auto 0 auto;
	        border: 1px solid #000;
	        width: Auto;
	        height: auto;
        }
        
        .widthfull-control { width:100% !important; }
    </style>

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
    <form id="form1" runat="server">

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

    <!-- Breadcromb Area Start -->
    <section class="finance-breadcromb-area section_50">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="breadcromb-left">
                        <h3>Ingresar</h3>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="breadcromb-right">
                        <ul>
                            <li><a href="https://capitalfinancierausa.com"><i class="fa fa-home"></i>Inicio</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcromb Area End -->

    <!-- About Area Start -->
    <!-- About Area End -->
    

    <!-- Graph Section Start -->

    <section class="finance-graph-area section_100">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header2" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Acceso a usuarios </h4>
          <div class="cajita"><img src="https://capitalfinancierausa.com/assets/img/logo/logo.png"></div>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <asp:Login
                ID="lLogin"
                runat="server"
                CssClass="widthfull-control"
                OnAuthenticate="lLogin_Authenticate"
                DestinationPageUrl="~/inversionista/Inversiones.aspx">
                <LayoutTemplate>
                    <div class="form-group">
                      <label for="UserName"><span class="glyphicon glyphicon-user"></span> Usuario </label>
                      <asp:TextBox ID="UserName" runat="server" CssClass="widthfull-control form-control" placeholder="Usuario"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="Password"><span class="glyphicon glyphicon-eye-open"></span> Contraseña </label>
                      <asp:TextBox
                        ID="Password"
                        runat="server"
                        CssClass="widthfull-control form-control"
                        placeholder="Contraseña"
                        TextMode="Password">
                      </asp:TextBox>
                    </div>
                    <div class="checkbox">
                      <label><input type="checkbox" value="" checked>Recordar </label>
                    </div>
                    <asp:Button
                        ID="btnInicioSesion"
                        Runat="server"
                        CssClass="glyphicon glyphicon-off"
                        Text="Ingresar"
                        Height="30"
                        Width="100"
                        Font-Size="12"
                        Font-Names="Montserrat, sans-serif"
                        CommandName="Login" />
                </LayoutTemplate>
            </asp:Login>
        </div>

        <div class="modal-footer">
          <button type="submit"  data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancelar</button>
          <p>Usuario nuevo? <a href="#"> Registrar </a></p>
          <p>Lo olvidé <a href="#"> Recuperar contraseña </a></p>
        </div>
      </div>
  </div>
</div>
 </div>
<script>
    $(document).ready(function () {
        $("#myBtn").click(function () {
            $("#myModal").modal();
        });
    });
</script>

    <!-- Footer Area Start -->
    <footer class="finance-footer-area">
        <div class="finance-footer-top-area section_50">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="single-footer ">
                            <a href="https://capitalfinancierausa.com/">
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

<%--    <script type="text/javascript">

      var ctx = document.getElementById('aboutpagebar').getContext('2d');

        var chart = new Chart(ctx, {

            type: 'bar',

             data: {

                labels: ["2011", "2012", "2013", "2014", "2015", "2016", "2017"],

                datasets: [{

                    label: "Company dataset",

                    backgroundColor: "rgba(255,99,132,0.2)",

                    borderColor: "rgba(255,99,132,1)",

                    borderWidth: 1,

                    hoverBackgroundColor: "rgba(255,99,132,0.4)",

                    hoverBorderColor: "rgba(255,99,132,1)",

                    data: [65, 59, 80, 81, 56, 55, 20],

                }]

            },

            options: {

                scales: {

                    yAxes: [{

                        ticks: {

                            beginAtZero: true

                        }

                    }]

                }

            }

        });

    </script>--%>
    </form>
</body>
</html>
