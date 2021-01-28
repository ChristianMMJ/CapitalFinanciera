<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ganancias-de-capital.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.ganancias_de_capital" %>

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
                            <li>Ganancias de capital</li>
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
                                <li class="active">
                                    <a href="ganancias-de-capital.aspx">
                                        Ganancias de capital
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </li>
                                <li>
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
                            <img src="assets/img/servicios/cortoplazo.jpg" alt="corto plazo" />
                        </div>
                        <div class="audit-text">
                            <h3>GANANCIAS DE CAPITAL:</h3>
                            <p>Con <b>Capital Financiera</b> tienes la oportunidad de invertir tu dinero de forma segura y confiable en Bienes Raíces de Estados Unidos, sin importar que vivas en México, Latinoamérica o aquí en Estados Unidos.</p>
                            <p>En <b>Ganancias de Capital</b>, desde 20 mil dólares formas parte de nuestro grupo de inversionistas, quienes dependiendo de la inversión ganan del 10% al 15% en pocos meses.</p>
                            <p>Anteriormente no podías acceder a estos increíbles rendimientos por tan poco dinero, sin embargo en la actualidad con <b>Capital Financiera</b> formando <b>Pools de Inversión</b>, los cuales son la suma de tu capital y el de más personas, esto es posible para todos y cada uno de los inversionistas.</p>
                            <p>Con estos <b>Pools de Inversión compramos, restauramos y vendemos</b> remates bancarios en <b>Estados Unidos.</b></p>
                            <p>¿Sabes cuánto estás ganando por tener tus ahorros ociosos en el banco? 1.29% al año.</p>
                            <p>Con nosotros de forma segura y confiable, puedes ganar el hasta el 15% en el mismo período.</p>
                            <p>¿Qué prefieres el <b>1.29%</b>? ¿O <b> del 10% al 15% garantizado por la propiedad, en el mayor mercado inmobiliario del mundo, ante Notario Público?</b></p>
                            <p>Además, puedes beneficiarte del Interés Compuesto. ¿Qué es y cómo funciona el Interés Compuesto? Muy simple. Es dejar tu inversión una y otra vez más las ganancias que se van acumulando; cada vez tu nueva ganancia se calcula sobre el capital más la ganancia anterior. Así, tenemos que tus 20 mil dólares (400 mil pesos mexicanos aproximadamente poniendo como ejemplo la tasa de cambio a 20 pesos el dólar) con el interés compuesto en un escenario conservador con un proyecto anual; en 5 años tendrás 33 mil 701 dólar 15 centavos, equivalente a 674 mil 23 pesos; y en 10 años 56 mil 788 dólares 37 centavos, equivalente a 1 millón 135 mil 767 pesos 54 centavos.</p>
                            <p>Todas estas ganancias con la confianza y respaldo de Bienes Raíces en Estados Unidos. No hay mejor y más segura inversión. Aprovecha esta gran oportunidad.<br /></p>
                            <ul>                                
                                <li><strong>Sin visa</strong></li>                                
                                <li><strong>Sin saber inglés</strong></li>
                                <li><strong>Sin dejar tu trabajo o negocio actual</strong></li>
                                <li></li>
                            </ul>
                            <p></p><p></p>
                            <table align="center"  border="0" cellspacing="6" cellpadding="2">
                                <tbody>
                                    <tr>
                                        <th scope="col">
                                            <table align="center" border="0" cellspacing="6" cellpadding="2">
                                                <tbody>
                                                    <tr>
                                                        <th scope="col"><center><div class="title-line"></div></center></th>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </th>
                                    </tr>
                                </tbody>
                            </table>
                            <p></p>
                            <p></p><p></p>
                            <div class="row" align="justify">
                                <div class="col-md-8">
                                    <div class="finance-shop-left">                      
                                        <div class="row">
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria1.aspx"><img alt="portadaa" src="galeria_casas/portadaa.jpg" width="200" height="360" /></a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>Fresno California</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria2.aspx"><img alt="portadaweb" src="galeria_casas/portadaweb.jpg" width="200" height="360" /></a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>Fresno California </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria3.aspx"><img alt="portada_carol" src="galeria_casas/portada_carol.jpg" width="200" height="360" /></a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>4425 Carolwood St. </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria4.aspx"><img alt="portada-gran-lac- ave" src="galeria_casas/portada-gran-lac- ave.jpg" width="200" height="360" /></a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>4921 Gran Lac Ave.</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria5.aspx"><img alt="portada- darden" src="galeria_casas/portada- darden.jpg" width="200" height="360" /></a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>5017 Darden Ave</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria9.aspx"><img alt="portada-5012-saint" src="galeria_casas/portada-5012-saint.jpg" width="512" height="748" /></a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>5012 Saint Germain</h4>                                       
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria6.aspx"><img alt="portada-jade-cir" src="galeria_casas/portada-jade-cir.jpg" width="200" height="360" /></a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>5343 Jade Cir</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria7.aspx"><img alt="portada-summer" src="galeria_casas/portada-summer.jpg" width="512" height="748" /></a>
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>4090 Summerwood Ave</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4">
                                                <div class="single-product">
                                                    <div class="single-product-img">
                                                        <a href="Galeria8.aspx"><img alt="portada-4044- carol" src="galeria_casas/portada-4044- carol.jpg" width="512" height="748" /></a>                                     
                                                    </div>
                                                    <div class="product-text">
                                                        <h4>4044 Carolwood St.</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                            A continuación describimos los montos (en dólares) y el porcentaje de ganancias por proyecto.
                            <table class="table table-hover table-bordered">
                                <thead class="thead-inverse table-bordered">
                                    <tr class="bg-primary">
                                        <th colspan="2" class="text-center">INVERSIÓN EN DOLARES</th>
                                        <th class="text-center">% DE UTILIDAD</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="text-center table-bordered">
                                        <td>$20,000</td>
                                        <td>$29,999</td>
                                        <td>10%</td>
                                    </tr>
                                    <tr class="text-center table-bordered">
                                        <td>$30,000</td>
                                        <td>$39,999</td>
                                        <td>11%</td>
                                    </tr>
                                    <tr class="text-center table-bordered">
                                        <td>$40,000</td>
                                        <td>$59,999</td>
                                        <td>12%</td>
                                    </tr>
                                    <tr class="text-center table-bordered">
                                        <td>$60,000</td>
                                        <td>$79,999</td>
                                        <td>13%</td>
                                    </tr>
                                    <tr class="text-center table-bordered">
                                        <td>$80,000</td>
                                        <td>$99,999</td>
                                        <td>14%</td>
                                    </tr>
                                    <tr class="text-center table-bordered">
                                        <td>$100,000</td>
                                        <td>MÁS</td>
                                        <td>15%</td>
                                    </tr>
                                </tbody>
                            </table>
                            <h3><i>Nota:</i></h3>
                            <p>El Inversionista declara y garantiza que los recursos económicos utilizados en relación con las actividades que se promueven en la empresa provienen y provendrán de fuentes lícitas y serán utilizados para actividades lícitas en todo momento, a sabiendas de que en caso contrario, la empresa procederá a realizar todas las acciones a que haya lugar, quedando además obligado el Inversionista a indemnizar y sacar en paz y a salvo a la empresa de cualquier daño, perjuicio, demanda y/o acción que dicho incumplimiento le provoque. Capital Financiera y sus empresas filiales está sujeto a la Ley Anti Lavado de Dinero de Estados Unidos y cumple con los requerimientos ordenados de participación e inversión. U.S. Economic Development Administration.</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
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
                        <h2>Los expertos detrás del triunfo</h2>
                        <p>¿Tienes alguna duda? Conoce nuestros beneficios y convéncete de generar mayores riquezas.</p>
                        <div class="quotes-button">
                            <a href="contacto.aspx" class="finance-white-btn">Contáctanos</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Modal Inversionistas Casa 1 -->
    <div class="modal fade" id="InvCasa1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Antes y después de la restauración</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="InvCasa1Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#InvCasa1Carousel" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="1"></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="2"></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="3"></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="4"></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="5"></li>
                                 <li data-target="#InvCasa1Carousel" data-slide-to="6"></li>
                                  <li data-target="#InvCasa1Carousel" data-slide-to="7"></li>
                                   <li data-target="#InvCasa1Carousel" data-slide-to="8"></li>
                                    
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                <img src="galeria_casas/casaa/1.jpg" width="653" height="489">
                                   
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casaa/2.jpg" alt="..." width="653" height="489"/>
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casaa/3.jpg" alt="..." width="653" height="489"/>
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casaa/4.jpg" alt="..." width="653" height="489" />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casaa/5.jpg" alt="..." width="653" height="489"/>
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casaa/6.jpg" alt="..." width="653" height="489"/>
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/casaa/7.jpg" alt="..." width="653" height="489"/>
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/casaa/8.jpg" alt="..." width="653" height="489"/>
                                     </div>
                                     <div class="item">
                                    <img src="galeria_casas/casaa/9.jpg" alt="..." width="653" height="489"/>
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
    
    
    
     <!-- Modal Inversionistas Casa 2 -->
    <div class="modal fade" id="InvCasa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Antes y después de la restauración</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="InvCasa2Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#InvCasa2Carousel" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#InvCasa2Carousel" data-slide-to="1"></li>
                                <li data-target="#InvCasa2Carousel" data-slide-to="2"></li>
                                <li data-target="#InvCasa2Carousel" data-slide-to="3"></li>
                                <li data-target="#InvCasa2Carousel" data-slide-to="4"></li>
                                <li data-target="#InvCasa2Carousel" data-slide-to="5"></li>
                                 <li data-target="#InvCasa2Carousel" data-slide-to="6"></li>
                                 
                                 
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="galeria_casas/casab/1.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casab/2.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casab/3.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casab/4.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casab/5.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/casab/6.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/casab/7.jpg" alt="..." />
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
    
    
    <!-- Modal Inversionistas Casa 3 -->
    <div class="modal fade" id="InvCasa3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Antes y después de la restauración</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="InvCasa3Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#InvCasa3Carousel" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#InvCasa3Carousel" data-slide-to="1"></li>
                                <li data-target="#InvCasa3Carousel" data-slide-to="2"></li>
                                <li data-target="#InvCasa3Carousel" data-slide-to="3"></li>
                                <li data-target="#InvCasa3Carousel" data-slide-to="4"></li>
                                <li data-target="#InvCasa3Carousel" data-slide-to="5"></li>
                                 <li data-target="#InvCasa3Carousel" data-slide-to="6"></li>
                                  <li data-target="#InvCasa3Carousel" data-slide-to="7"></li>
                                   <li data-target="#InvCasa3Carousel" data-slide-to="8"></li>
                                    <li data-target="#InvCasa3Carousel" data-slide-to="9"></li>
                                     <li data-target="#InvCasa3Carousel" data-slide-to="10"></li>
                                  <li data-target="#InvCasa3Carousel" data-slide-to="11"></li> 
                                  <li data-target="#InvCasa3Carousel" data-slide-to="12"></li>
                                   <li data-target="#InvCasa3Carousel" data-slide-to="13"></li>
                                     <li data-target="#InvCasa3Carousel" data-slide-to="14"></li>
                                  <li data-target="#InvCasa3Carousel" data-slide-to="15"></li> 
                                  <li data-target="#InvCasa3Carousel" data-slide-to="16"></li>
                                     <li data-target="#InvCasa3Carousel" data-slide-to="17"></li>
                                     <li data-target="#InvCasa3Carousel" data-slide-to="18"></li>
                                  <li data-target="#InvCasa3Carousel" data-slide-to="19"></li> 
                                  <li data-target="#InvCasa3Carousel" data-slide-to="20"></li>
                                   <li data-target="#InvCasa3Carousel" data-slide-to="21"></li>
                                    <li data-target="#InvCasa3Carousel" data-slide-to="22"></li>
                                     <li data-target="#InvCasa3Carousel" data-slide-to="23"></li>
                                      <li data-target="#InvCasa3Carousel" data-slide-to="24"></li>
                                       <li data-target="#InvCasa3Carousel" data-slide-to="25"></li>
                                       <li data-target="#InvCasa3Carousel" data-slide-to="26"></li>
                                    <li data-target="#InvCasa3Carousel" data-slide-to="27"></li>
                                     <li data-target="#InvCasa3Carousel" data-slide-to="28"></li>
                                      <li data-target="#InvCasa3Carousel" data-slide-to="29"></li>
                                       <li data-target="#InvCasa3Carousel" data-slide-to="30"></li>
                                        <li data-target="#InvCasa3Carousel" data-slide-to="31"></li>
                                         <li data-target="#InvCasa3Carousel" data-slide-to="32"></li>
                                          <li data-target="#InvCasa3Carousel" data-slide-to="33"></li>
                                           <li data-target="#InvCasa3Carousel" data-slide-to="34"></li>
                                         <li data-target="#InvCasa3Carousel" data-slide-to="35"></li>
                                          <li data-target="#InvCasa3Carousel" data-slide-to="36"></li>
                                           <li data-target="#InvCasa3Carousel" data-slide-to="37"></li>
                                         <li data-target="#InvCasa3Carousel" data-slide-to="38"></li>
                                          <li data-target="#InvCasa3Carousel" data-slide-to="39"></li>
                                          <li data-target="#InvCasa3Carousel" data-slide-to="40"></li>
                                          
                                  
                                 
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_1.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_2.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_3.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_4.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_5.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_6.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_7.jpg" alt="..." />
                                    </div>
                                    
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_8.jpg" alt="..." />
                                    </div>
                                    
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_9.jpg" alt="..." />
                                    </div>
                                    
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_10.jpg" alt="..." />
                                    </div>
                                    
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_11.jpg" alt="..." />
                                    </div>
                                    
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_12.jpg" alt="..." />
                                    </div>
                                   <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_13.jpg" alt="..." />
                                    </div>
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_14.jpg" alt="..." />
                                    </div>
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_15.jpg" alt="..." />
                                    </div>
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_16.jpg" alt="..." />
                                    </div>
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_17.jpg" alt="..." />
                                    </div>
                                    
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_18.jpg" alt="..." />
                                    </div>
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_19.jpg" alt="..." />
                                    </div>
                                    <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_20.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_21.jpg" alt="..." />
                                    </div>
                                    
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_22.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_23.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_24.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_25.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_26.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_27.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_28.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_29.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_30.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_31.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_32.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_33.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_34.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_35.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_36.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_37.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_38.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_39.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_40.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4425/carolwoodst_41.jpg" alt="..." />
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
    
    
    <!-- Modal Inversionistas Casa 1 -->
    <div class="modal fade" id="InvCasa6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Antes y después de la restauración</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="InvCasa6Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#InvCasa6Carousel" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#InvCasa6Carousel" data-slide-to="1"></li>
                                <li data-target="#InvCasa6Carousel" data-slide-to="2"></li>
                                <li data-target="#InvCasa6Carousel" data-slide-to="3"></li>
                                <li data-target="#InvCasa6Carousel" data-slide-to="4"></li>
                                <li data-target="#InvCasa6Carousel" data-slide-to="5"></li>
                                 <li data-target="#InvCasa6Carousel" data-slide-to="6"></li>
                                  <li data-target="#InvCasa6Carousel" data-slide-to="7"></li>
                                   <li data-target="#InvCasa6Carousel" data-slide-to="8"></li>
                                   <li data-target="#InvCasa6Carousel" data-slide-to="9"></li>
                                 <li data-target="#InvCasa6Carousel" data-slide-to="10"></li>
                                  <li data-target="#InvCasa6Carousel" data-slide-to="11"></li>
                                   <li data-target="#InvCasa6Carousel" data-slide-to="12"></li>
                                  
                                 <li data-target="#InvCasa6Carousel" data-slide-to="13"></li>
                                  <li data-target="#InvCasa6Carousel" data-slide-to="14"></li>
                                   <li data-target="#InvCasa6Carousel" data-slide-to="15"></li>
                                   <li data-target="#InvCasa6Carousel" data-slide-to="16"></li>
                                 <li data-target="#InvCasa6Carousel" data-slide-to="17"></li>
                                  <li data-target="#InvCasa6Carousel" data-slide-to="18"></li>
                                   <li data-target="#InvCasa6Carousel" data-slide-to="19"></li>
                                   <li data-target="#InvCasa6Carousel" data-slide-to="20"></li>
                                 <li data-target="#InvCasa6Carousel" data-slide-to="21"></li>
                                  <li data-target="#InvCasa6Carousel" data-slide-to="22"></li>
                                  
                                  
                                    
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="galeria_casas/jade/jade1.jpg" alt="..."  width="800" height="467"/>
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/jade/jade2.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/jade/jade3.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/jade/jade4.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/jade/jade5.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/jade/jade6.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/jade/jade7.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/jade/jade8.jpg" alt="..." />
                                     </div>
                                     <div class="item">
                                    <img src="galeria_casas/jade/jade9.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade10.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade11.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade12.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade13.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade14.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade15.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade16.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade17.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade18.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade19.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/jade/jade20.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/jade/jade21.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/jade/jade22.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/jade/jade23.jpg" alt="..." />
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
    
    
    
    <!-- Modal Inversionistas Casa 4 -->
    <div class="modal fade" id="InvCasa4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Antes y después de la restauración</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="InvCasa4Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#InvCasa4Carousel" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#InvCasa4Carousel" data-slide-to="1"></li>
                                <li data-target="#InvCasa4Carousel" data-slide-to="2"></li>
                                <li data-target="#InvCasa4Carousel" data-slide-to="3"></li>
                                <li data-target="#InvCasa4Carousel" data-slide-to="4"></li>
                                <li data-target="#InvCasa4Carousel" data-slide-to="5"></li>
                                 <li data-target="#InvCasa4Carousel" data-slide-to="6"></li>
                                  <li data-target="#InvCasa4Carousel" data-slide-to="7"></li>
                                   <li data-target="#InvCasa4Carousel" data-slide-to="8"></li>
                                   <li data-target="#InvCasa4Carousel" data-slide-to="9"></li>
                                  <li data-target="#InvCasa4Carousel" data-slide-to="10"></li>
                                   <li data-target="#InvCasa4Carousel" data-slide-to="11"></li>
                                   <li data-target="#InvCasa4Carousel" data-slide-to="12"></li>
                                    
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_1.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_2.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_3.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_4.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_5.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_6.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_7.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_8.jpg" alt="..." />
                                     </div>
                                     <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_9.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_10.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_11.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_12.jpg" alt="..." />
                                     </div>
                                        <div class="item">
                                    <img src="galeria_casas/Garden_lac_ave_4921/garden_lac_ave_13.jpg" alt="..." />
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
    
    <!-- Modal Inversionistas Casa 4 -->
    <div class="modal fade" id="InvCasa5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Antes y después de la restauración</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="InvCasa5Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#InvCasa5Carousel" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#InvCasa5Carousel" data-slide-to="1"></li>
                                <li data-target="#InvCasa5Carousel" data-slide-to="2"></li>
                                <li data-target="#InvCasa5Carousel" data-slide-to="3"></li>
                                <li data-target="#InvCasa5Carousel" data-slide-to="4"></li>
                                <li data-target="#InvCasa5Carousel" data-slide-to="5"></li>
                                 <li data-target="#InvCasa5Carousel" data-slide-to="6"></li>
                                  <li data-target="#InvCasa5Carousel" data-slide-to="7"></li>
                                   <li data-target="#InvCasa5Carousel" data-slide-to="8"></li>
                                   <li data-target="#InvCasa5Carousel" data-slide-to="9"></li>
                                  <li data-target="#InvCasa5Carousel" data-slide-to="10"></li>
                                   <li data-target="#InvCasa5Carousel" data-slide-to="11"></li>
                                   <li data-target="#InvCasa5Carousel" data-slide-to="12"></li>
                                   <li data-target="#InvCasa5Carousel" data-slide-to="13"></li>
                                   <li data-target="#InvCasa5Carousel" data-slide-to="14"></li>
                                   <li data-target="#InvCasa5Carousel" data-slide-to="15"></li>
                                   <li data-target="#InvCasa5Carousel" data-slide-to="16"></li>
                               
                                    
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="galeria_casas/Darden_Ave_5017/darden1.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden2.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden3.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden4.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden5.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden6.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden7.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden8.jpg" alt="..." />
                                     </div>
                                     <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden9.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden10.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden11.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden12.jpg" alt="..." />
                                     </div>
                                        <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden13.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden14.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden15.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden16.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Darden_Ave_5017/darden17.jpg" alt="..." />
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
    
    
   
     <!-- Modal Inversionistas Casa 7 -->
    <div class="modal fade" id="InvCasa7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Antes y después de la restauración</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="InvCasa7Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#InvCasa7Carousel" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#InvCasa7Carousel" data-slide-to="1"></li>
                                <li data-target="#InvCasa7Carousel" data-slide-to="2"></li>
                                <li data-target="#InvCasa7Carousel" data-slide-to="3"></li>
                                <li data-target="#InvCasa7Carousel" data-slide-to="4"></li>
                                <li data-target="#InvCasa7Carousel" data-slide-to="5"></li>
                                 <li data-target="#InvCasa7Carousel" data-slide-to="6"></li>
                                  <li data-target="#InvCasa7Carousel" data-slide-to="7"></li>
                                   <li data-target="#InvCasa7Carousel" data-slide-to="8"></li>
                                   <li data-target="#InvCasa7Carousel" data-slide-to="9"></li>
                                 <li data-target="#InvCasa7Carousel" data-slide-to="10"></li>
                                  <li data-target="#InvCasa7Carousel" data-slide-to="11"></li>
                                   <li data-target="#InvCasa7Carousel" data-slide-to="12"></li>
                                  
                                 <li data-target="#InvCasa7Carousel" data-slide-to="13"></li>
                                  <li data-target="#InvCasa7Carousel" data-slide-to="14"></li>
                                   <li data-target="#InvCasa7Carousel" data-slide-to="15"></li>
                                   <li data-target="#InvCasa7Carousel" data-slide-to="16"></li>
                                 <li data-target="#InvCasa7Carousel" data-slide-to="17"></li>
                                  <li data-target="#InvCasa7Carousel" data-slide-to="18"></li>
                                   <li data-target="#InvCasa7Carousel" data-slide-to="19"></li>
                                   <li data-target="#InvCasa7Carousel" data-slide-to="20"></li>
                                 <li data-target="#InvCasa7Carousel" data-slide-to="21"></li>
                                  <li data-target="#InvCasa7Carousel" data-slide-to="22"></li>
                                  <li data-target="#InvCasa7Carousel" data-slide-to="23"></li>
                                 <li data-target="#InvCasa7Carousel" data-slide-to="24"></li>
                                  <li data-target="#InvCasa7Carousel" data-slide-to="25"></li>
                                       <li data-target="#InvCasa7Carousel" data-slide-to="26"></li>
                                  
                                  
                                    
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="galeria_casas/Carolwood_St_4044/1.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/2.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/3.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/4.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/5.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/6.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/7.jpg" alt="..." />
                                    </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/8.jpg" alt="..." />
                                     </div>
                                     <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/9.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/10.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/11.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/12.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/13.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/14.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/15.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/16.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/17.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/18.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/19.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/20.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/21.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/22.jpg" alt="..." />
                                     </div>
                                       <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/23.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/24.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/25.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/26.jpg" alt="..." />
                                     </div>
                                      <div class="item">
                                    <img src="galeria_casas/Carolwood_St_4044/27.jpg" alt="..." />
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
    
    
    
    
    <!-- Modal Inversionistas Casa 1 -->
    <div class="modal fade" id="InvCasa8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="H1">Antes y después de la restauración</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="InvCasa8Carousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#InvCasa8Carousel" data-slide-to="0" class="active">
                                </li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="1"></li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="2"></li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="3"></li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="4"></li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="5"></li>
                                 <li data-target="#InvCasa8Carousel" data-slide-to="6"></li>
                                  <li data-target="#InvCasa8Carousel" data-slide-to="7"></li>
                                   <li data-target="#InvCasa8Carousel" data-slide-to="8"></li>
                                    <li data-target="#InvCasa8Carousel" data-slide-to="9"></li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="10"></li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="11"></li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="12"></li>
                                <li data-target="#InvCasa8Carousel" data-slide-to="13"></li>
                                 <li data-target="#InvCasa8Carousel" data-slide-to="14"></li>
                                  <li data-target="#InvCasa8Carousel" data-slide-to="15"></li>
                                   <li data-target="#InvCasa8Carousel" data-slide-to="16"></li>
                                      <li data-target="#InvCasa8Carousel" data-slide-to="17"></li>
                                  <li data-target="#InvCasa8Carousel" data-slide-to="18"></li>
                                   <li data-target="#InvCasa8Carousel" data-slide-to="19"></li>
                                      <li data-target="#InvCasa8Carousel" data-slide-to="20"></li>
                                      <li data-target="#InvCasa8Carousel" data-slide-to="21"></li>
                                  <li data-target="#InvCasa8Carousel" data-slide-to="22"></li>
                                   
                                    
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_1.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_2.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_3.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_4.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_5.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_6.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_7.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_8.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_9.jpg" alt="..." />
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_10.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_11.jpg" alt="..." />
                                </div>
                                
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_13.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_14.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_15.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_16.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_17.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_18.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_19.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_20.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_21.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_22.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_23.jpg" alt="..." />
                                </div>
                                 <div class="item">
                                    <img src="galeria_casas/summerwoodave_4090/summerwood_ave_24.jpg" alt="..." />
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
    
     <!-- Latest compiled and minified JavaScript -->
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-slider.min.js"></script>
   
    <script type="text/javascript">
        $(document).ready(function () {
            $('#testimoniosCarousel').carousel({ pause: true, interval: 20000 });
        });
    </script>

</body>
</html>
