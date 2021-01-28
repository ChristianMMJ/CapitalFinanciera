<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inversiones_.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.inversionista.Inversiones" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link type="text/css" href="css/bootstrap.min.css" rel="stylesheet" />
    <link type="text/css" href="css/jquery.fancybox.min.css" rel="stylesheet" />
    <link type="text/css" href="css/animate.css" rel="stylesheet" />
    <link type="text/css" href="css/principal.css" rel="stylesheet" />

    <title>Capital Financiera USA</title>

    <meta name="robots" content="INDEX,NOFOLLOW" />
    <meta name="description" content="Empresa financiera especializada en inversiones en el mercado de Bienes Raíces de Estados Unidos con presencia en las principales ciudades de la República Mexicana y la Unión Americana." />

    <!-- Open Graph data -->
    <meta property="og:title" content="CapitalfinancieraUSA" />
    <meta property="og:type" content="Inversion, Propiedades, Capital, Financiera, Bienes raices" />
    <meta property="og:url" content=" http://capitalfinancierausa.com/" />
    <meta property="og:image" content=" http://capitalfinancierausa.com/img_cap.jpg" />
    <meta property="og:description" content="Empresa financiera especializada en inversiones en el mercado de Bienes Raíces de Estados Unidos con presencia en las principales ciudades de la República Mexicana y la Unión Americana." />

    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="CapitalfinancieraUSA" />
    <meta itemprop="description" content="Empresa financiera especializada en inversiones en el mercado de Bienes Raíces de Estados Unidos con presencia en las principales ciudades de la República Mexicana y la Unión Americana." />
    <meta itemprop="image" content="  http://capitalfinancierausa.com/img_cap.jpg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="icon" type="image/png" href="../assets/img/logo/favicon.png" />

    <meta name="author" content="Ing. Orlando Salvador Esparza Felix - Osef Technology" />
    <meta name="keywords" content="financiera, financiamiento, inversion, inversiones, interes, capital, intereses, redimiento, ahorro, dinero, inflación" />
    <meta name="description" content="Empresa financiera especializada en inversiones sobre el mercado de bienes raíces en Estados Unidos con presencia en la ciudad de Aguascalientes, Cd. de México y Guadalajara y en el extranjero en Fresno y Los Ángeles California." />

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

    <style>
        .progress-title{
            font-size: 16px;
            font-weight: 700;
            color: #011627;
            margin: 0 0 20px;
        }
        .progress{
            height: 10px;
            background: #cbcbcb;
            border-radius: 0;
            box-shadow: none;
            margin-bottom: 30px;
            overflow: visible;
        }
        .progress .progress-bar{
            box-shadow: none;
            position: relative;
            -webkit-animation: animate-positive 2s;
            animation: animate-positive 2s;
        }
        .progress .progress-bar:after{
            content: "";
            display: block;
            border: 15px solid transparent;
            border-bottom: 21px solid transparent;
            position: absolute;
            top: -26px;
            right: -12px;
        }
        .progress .progress-value{
            font-size: 15px;
            font-weight: bold;
            color: #000;
            position: absolute;
            top: -40px;
            right: 0;
        }
        .progress.pink .progress-bar:after{
            border-bottom-color: #ff4b7d;
        }
        .progress.green .progress-bar:after{
            border-bottom-color: #5fad56;
        }
        .progress.yellow .progress-bar:after{
            border-bottom-color: #e8d324;
        }
        .progress.blue .progress-bar:after{
            border-bottom-color: #3485ef;
        }
        @-webkit-keyframes animate-positive{
            0% { width: 0; }
        }
        @keyframes animate-positive{
            0% { width: 0; }
        }
    </style>

    <meta name="google-site-verification" content="JLCwnoMEEMJtvxkQFTSst7vY3_9qsCVzdLQqx2u-1JE" />
</head>
<body>

    <!--Site Preloader Start-->
    <%--<div class="finance-site-preloader" id="preloader">
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
    </div>--%>
    <!--Site Preloader End-->

    <form id="form1" runat="server">

        <!-- Header Top Area Start -->
        <div id="dHeader" runat="server" class="finance-header-top-area section_15">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="header-top-right">
                            <div class="single-top-right">
                                <i class="fa fa-whatsapp"></i>
                                <p> 044 449 253 5636</p>
                            </div>
                            <div class="single-top-right">
                                <i class="fa fa-envelope-o"></i>
                                <p> contacto@capitalfinancierausa.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 text-center">
                        <asp:LoginName ID="lnNombre" runat="server" />
                        <asp:LoginStatus ID="lsEstatus" runat="server" BackColor="#D334E" ForeColor="White" BorderColor="#D334E" CssClass="cerrar_sesion" OnLoggedOut="lsIfahto_OnLoggedOut" OnLoggingOut="lsIfahto_OnLoggingOut" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Header Top Area End -->
        <header class="finance-main-header-area sticky">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="finance-logo">
                            <a href="Inversiones.aspx">
                                <img src="../assets/img/logo/logo.png" alt="Capital Financiera USA logo" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-2" >
                    </div>
                    <div class="col-md-7" >
                        <div class="form-group" style="text-align:center;">
                            <h3>Proyecto</h3>
                            <asp:DropDownList
                                ID="ddlProyecto"
                                runat="server"
                                AutoPostBack="true"
                                CssClass="widthfull-control form-control"
                                Height="45"
                                Font-Size="12"
                                DataTextField="Nombre"
                                DataValueField="ID"
                                OnSelectedIndexChanged="ddlProyecto_OnSelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header Area End -->

        <div class="container-fluid">
            <%--<div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <p id="pUtilidad" runat="server" class="bg-info" style="color: White;"></p>
                </div>
                <div class="col-md-4">
                </div>
            </div>--%>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <h3 id="h3Inversion" runat="server" class="progress-title" style="text-align:center;"></h3>
                    <br />
                    <div class="progress blue">
                        <div id="dValorPorcentajeBarra" runat="server" class="progress-bar" style="background:#D334E;">
                            <div id="dValorPorcentaje" runat="server" class="progress-value"></div>
                        </div>
                    </div>
                    <h3 id="h3Utilidad" runat="server" class="progress-title" style="text-align:center;"></h3>
                </div>
                <div class="col-md-3">
                </div>
            </div>
	        <div class="row">
	            <div id="timeline" runat="server">
		        </div>
	        </div>
        </div>

        <!-- Footer Area Start -->
        <footer class="finance-footer-area">
            <div class="finance-footer-bottom-area section_15">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="copyright-left">
                                <p class="text-center">Copyright &copy;<script type="text/javascript">var d = new Date(); document.write(d.getFullYear());</script> Todos los derechos reservados por <a href="mailto:contacto@osef.com.mx"><span class="c-font-grey-3">@osef.com.mx</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Area End -->
    </form>

    <script type="text/javascript" src="js/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox.min.js"></script>

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

    <script type="text/javascript">
        /**********************Scroll Animation "START"************************************/
        $(document).ready(function () {
            var $animation_elements = $('.anim');
            var $window = $(window);

            function check_if_in_view() {
                var window_height = $window.height();
                var window_top_position = $window.scrollTop();
                var window_bottom_position = (window_top_position + window_height);

                $.each($animation_elements, function () {
                    var $element = $(this);
                    var element_height = $element.outerHeight();
                    var element_top_position = $element.offset().top;
                    var element_bottom_position = (element_top_position + element_height);

                    //check to see if this current container is within viewport
                    if ((element_bottom_position >= window_top_position) && (element_top_position <= window_bottom_position)) {
                        $element.addClass('animated');
                    } else {
                        $element.removeClass('animated');
                    }
                });
            }

            $window.on('scroll resize', check_if_in_view);
            $window.trigger('scroll');
        });
        /**********************Scroll Animation "END"************************************/

        /**********************Change color of center aligned animated content small Circle  "START"************************************/
        $(document).ready(function () {
            $(" .debits").hover(function () {
                $(" .center-right").css("background-color", "#4997cd");
            }, function () {
                $(" .center-right").css("background-color", "#fff");
            });
        });

        $(document).ready(function () {
            $(".credits").hover(function () {
                $(".center-left").css("background-color", "#4997cd");
            }, function () {
                $(".center-left").css("background-color", "#fff");
            });
        });
        /**********************Change color of center aligned animated content small Circle  "END"************************************/
    </script>
</body>
</html>
