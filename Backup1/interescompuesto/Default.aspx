<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.interescompuesto.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-MX">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

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

    <link rel="icon" type="image/png" href="../assets/img/logo/favicon.png" />

    <meta name="author" content="Ing. Orlando Salvador Esparza Felix - Osef Technology" />
    <meta name="keywords" content="financiera, financiamiento, inversion, inversiones, interes, capital, intereses, rendimiento, ahorro, dinero, inflación" />
    <meta name="description" content="Empresa financiera especializada en inversiones sobre el mercado de bienes raíces en Estados Unidos con presencia en la ciudad de Aguascalientes, Cd. de México y Guadalajara y en el extranjero en Fresno y Los Ángeles California." />

    
    <link rel="stylesheet" href="../inversionista/css/all.css" />

    <%--<link type="text/css" href="../assets/css/bootstrap.min.css" rel="stylesheet" />--%>
    <link type="text/css" href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/mdb.min.css" />

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

    <meta name="google-site-verification" content="JLCwnoMEEMJtvxkQFTSst7vY3_9qsCVzdLQqx2u-1JE" />
</head>
<body>
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
                        <%--<div class="single-top-right">
                            <i class="fa fa-phone"></i>
                            <p> 01 449 915 43 47</p>
                        </div>--%>
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
            </div>
        </div>
    </div>

    <!-- Header Top Area End -->
    <header class="finance-main-header-area sticky">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="finance-logo">
                        <a href="../index.aspx">
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
                                    <%--<?php if($link == "capitalfinancierausa.com/quienes-somos"){ echo "class='current-page-item'"; }else{ echo "class=''";}?>--%>
                                    <a href="../quienes-somos.aspx">Nosotros</a>
                                </li>
                                <li id="liFinance_Navigation_Servicios" runat="server">
                                    <%--<?php if($link == "capitalfinancierausa.com/inversiones-corto-plazo" || $link == "capitalfinancierausa.com/inversiones-largo-plazo"){ echo "class='current-page-item'"; }else{ echo "class=''";}?>--%>
                                    <a>
                                        Servicios
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul>
                                        <li id="liFinance_Navigation_GananciasCapital" runat="server">
                                            <%--<?php if($link == "capitalfinancierausa.com/ganancias-de-capital"){ echo "class='current-page-item'"; } else{ echo "class=''";}?>--%>
                                            <a href="../ganancias-de-capital.aspx">Ganancias de capital</a>
                                        </li>
                                        <li id="liFinance_Navigation_FlujoEfectivo" runat="server">
                                            <%--<?php if($link == "capitalfinancierausa.com/flujo-de-efectivo"){ echo "class='current-page-item'"; }else{ echo "class=''";}?>--%>
                                            <a href="../flujo-de-efectivo.aspx">Flujo de efectivo</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="liFinance_Navigation_Testimonios" runat="server">
                                    <%--<?php if($link == "capitalfinancierausa.com/proyectos"){ echo "class='current-page-item'"; }else{ echo "class=''";}?>--%>
                                    <a href="../testimonios.aspx">Nuestros clientes hablan</a>
                                </li>
                                <li id="liFinance_Navigation_Faqs" runat="server">
                                    <%--<?php if($link == "capitalfinancierausa.com/faqs"){ echo "class='current-page-item'"; }else{ echo "class=''";}?>--%>
                                    <a href="../faqs.aspx">FAQ's</a>
                                </li>
                                <li id="liFinance_Navigation_Contacto" runat="server">
                                    <%--<?php if($link == "capitalfinancierausa.com/contacto"){ echo "class='current-page-item'"; }else{ echo "class=''";}?>--%>
                                    <a href="../contacto.aspx">Contacto</a>
                                </li>
                                <li id="liFinance_Navigation_Login" runat="server">
                                    <%--<?php if($link == "capitalfinancierausa.com/login.php"){ echo "class='current-page-item'"; }else{ echo "class=''";}?>--%>
                                    <a href="../login.aspx">Ingresar</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <div class="container">
        <div style="margin-bottom:50px;" class="row">
            <div class="col-md-12">
                <blockquote class="blockquote text-justify">
                  <h1 class="mb-0 text-center">Calculadora de interés compuesto</h1>
                  <footer class="blockquote-footer">El <b>INTERÉS COMPUESTO</b> es la acumulación de intereses que se han generado en un período determinado por un capital inicial; de modo que los intereses que se obtienen al final de cada período de inversión no se retiran, sino que se reinvierten, es decir, se capitalizan. Por lo que el <b>INTERÉS COMPUESTO</b> se calcula sobre el capital inicial más la ganancia anterior y así sucesivamente; el interés genera interés.</footer>
                  <footer class="blockquote-footer">El <b>INTERÉS COMPUESTO</b> es como una bola de nieve que va bajando por una montaña; esto quiere decir que va incrementando su tamaño. ¿Por qué? Porque en lugar de “comerte” la nieve, permites que esta siga creciendo. En vez de “comer” tus ganancias, las reinviertes.</footer>
                  <footer class="blockquote-footer">Tú mismo calcula las ganancias que puedes obtener. Llena espacios para calcular las GANANCIAS. Llena los datos del MONTO A INVERTIR, % DE UTILIDAD y NÚMERO DE PROYECTOS INMOBILIARIOS en los que deseas invertir.</footer>
                </blockquote>
                <%--<h1 class="text-center">Calculadora de interés compuesto</h1>
                <p class="text-justify">El <b>INTERÉS COMPUESTO</b> es la acumulación de intereses que se han generado en un período determinado por un capital inicial; de modo que los intereses que se obtienen al final de cada período de inversión no se retiran, sino que se reinvierten o añaden al capital inicial, es decir, se capitalizan. Por lo que el <b>INTERÉS COMPUESTO</b> se calcula sobre el capital inicial más la ganancia anterior y así sucesivamente; el interés genera interés.</p>
                <p class="text-justify">El <b>INTERÉS COMPUESTO</b> es como una bola de nieve que va bajando por una montaña; esto quiere decir que va incrementando su tamaño. ¿Por qué? Porque en lugar de “comerte” la nieve, permites que esta siga creciendo. En vez de “comer” tus ganancias, las reinviertes.</p>
                <p class="text-justify">Tú mismo calcula las ganancias que podrás obtener. Llenando los datos MONTO, %DE GANANCIA Y número de proyectos inmobiliarios en los que deseas invertir.</p>--%>
                <p>Nota: El monto a invertir puede estar en dólares o en la moneda de tu país.</p>
                <p>Solo ve la tasa de rendimiento que ganas en dólares para que pongas ese mismo rendimiento. (Ejemplo si quieres invertir 2,000,000 pesos mexicanos (tomando la tasa de cambio a 20 pesos por 1 dólar), es equivalente a 100,000 dólares; obtiene utilidad del 15% por proyecto).</p>
                <br />
                <p>A continuación, se describen los montos y el porcentaje de ganancias por proyecto.</p>

                <table class="table table-hover table-bordered">
                    <thead class="thead-inverse table-bordered">
                        <tr class="bg-primary">
                            <th colspan="2" class="text-center" style="color: White;">INVERSIÓN EN DOLARES</th>
                            <th class="text-center" style="color: White;">% DE UTILIDAD</th>
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
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <form>
                  <div class="form-group">
                    <label for="txtInversionInicial">Inversión Inicial:</label>
                    <input type="text" class="form-control" id="txtInversionInicial"/>
                  </div>
                  <div class="form-group">
                    <label for="txtPorcentajeGanancia">Porcentaje ganancia por proyecto, %:</label>
                    <input type="text" class="form-control" id="txtPorcentajeGanancia" />
                  </div>
                  <div class="form-group">
                    <label for="txtNumeroMeses">Número de proyectos:</label>
                    <input type="text" class="form-control" id="txtNumeroMeses" />
                  </div>
                  <button style="margin-bottom:50px; margin-left:-1px;" class="btn btn-primary btn-block" type="button" onclick="graficar();">Calcular</button>
                </form>
            </div>
            <div class="col-md-8">
                <canvas id="lineChart"></canvas>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" id="div_table">
            </div>
            <%--<table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Anterior</th>
                        <th scope="col">%</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>$ 100.00</td>
                        <td>+5%</td>
                        <td>$ 105.00</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>$ 105.00</td>
                        <td>+5%</td>
                        <td>$ 110.25</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>$ 110.25</td>
                        <td>+5%</td>
                        <td>$115.76</td>
                    </tr>
                </tbody>
            </table>--%>
        </div>
    </div>

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
                            <!-- <div class="footer-social-icon">
                                <h3>Síguenos</h3>
                                <ul class="footer-social">
                                    <li>
                                        <a href="#" class="fb">
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="twitter">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="gp">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="linkedin">
                                            <i class="fa fa-linkedin"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>-->
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
                            <%--<p class="contact-details">
                                <i class="fa fa-phone"></i>
                                01 449 915 43 47
                            </p>--%>
                            <p class="contact-details">
                                <i class="fa fa-whatsapp"></i>
                                044 449 253 56 36
                            </p>
                            <p class="contact-details"><i class="fa fa-star"></i> Fresno California: 7600 N Ingram STE 201 Fresno CA 93711</p>
                            <%--<p class="contact-details">
                                <i class="fa fa-whatsapp"></i>
                                +1 (562) 387 5062
                            </p>--%>
                            <p class="contact-details">
                                <i class="fa fa-envelope-o"></i>
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
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                        <img src="../assets/img/inicio/b1.jpg" alt="b1" />
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                        <img src="../assets/img/inicio/b2.jpg" alt="b2" />
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                        <img src="../assets/img/inicio/b3.jpg" alt="b3" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                        <img src="../assets/img/inicio/b4.jpg" alt="b4" />
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                        <img src="../assets/img/inicio/b5.jpg" alt="b5" />
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                        <img src="../assets/img/inicio/b6.jpg" alt="b6" />
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
                            <p class="text-center">Copyright &copy;<script type="text/javascript">var d = new Date(); document.write(d.getFullYear());</script> Todos los derechos reservados por <a href="mailto:contacto@osef.com.mx"><span class="c-font-grey-3">@osef.com.mx</span></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->

    <%--<script type="text/javascript" src="../inversionista/js/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <%--<script type="text/javascript" src="../assets/js/jquery.min.js"></script>--%>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>

    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>

    <script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>

      <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>

    <!-- Magnific Popup JS -->
    <script type="text/javascript" src="../assets/js/jquery.magnific-popup.min.js"></script>
    
    <!-- OwlCarousel JS -->
    <script type="text/javascript" src="../assets/js/owl.carousel.min.js"></script>
    
    <!-- Slicknav JS -->
    <script type="text/javascript" src="../assets/js/jquery.slicknav.min.js"></script>
    
    <!-- isotop JS -->
    <script type="text/javascript" src="../assets/js/isotope.pkgd.min.js"></script>
    <%--<script type="text/javascript" src="../assets/js/custom-isotop.js"></script>--%>
    
    <!-- Chart JS -->
    <%--<script type="text/javascript" src="../assets/js/chart.js"></script>--%>
    
    <!-- Active JS -->
    <script type="text/javascript" src="../assets/js/active.js"></script>

    <script type="text/javascript">
        function graficar() {
            var numero = parseInt(document.getElementById("txtNumeroMeses").value, 10);
            var porcentaje = parseInt(document.getElementById("txtPorcentajeGanancia").value, 10);
            var inversion = parseInt(document.getElementById("txtInversionInicial").value, 10);
            var total = inversion + (inversion * (porcentaje / 100));
            var puntos = [];
            var etiquetas = [];
            var datos = [];

            //Comenzar el conteo desde cero
            etiquetas.push(0);
            datos.push(inversion);
            puntos.push({ x: 10, y: 20 });
            puntos.push({ x: 30, y: 40 });
            puntos.push({ x: 50, y: 60 });

            var tabla_int = document.getElementById("tbl_compuesto");
            if (tabla_int) tabla_int.parentNode.removeChild(tabla_int);

            // Obtener el div sobre el cual se va a crear la tabla
            var body = document.getElementById("div_table");

            // Crear el elemento <table>, <tbody> y <thead>
            var tbl = document.createElement("table");

            tbl.setAttribute("id", "tbl_compuesto");
            //tbl.setAttribute("class", "table");
            //tbl.setAttribute("class", "table-hover");
            //tbl.setAttribute("class", "table-bordered");

            var tblHead = document.createElement("thead");

            //tblHead.setAttribute("class", "thead-inverse");
            //tblHead.setAttribute("class", "table-bordered");

            var tblBody = document.createElement("tbody");

            //Crear la fila para el encabezado
            var rowHead = document.createElement("tr");

            //rowHead.setAttribute("class", "bg-primary");

            //Crear las 4 columnas del encabezado
            for (var i = 0; i < 4; i++) {
                var cellHead = document.createElement("th");

                //cellHead.setAttribute("class", "text-center");

                if (i == 0)
                    var cellHeadText = document.createTextNode("#");
                else if (i == 1)
                    var cellHeadText = document.createTextNode("Capital");
                else if (i === 2)
                    var cellHeadText = document.createTextNode("%");
                else if (i == 3)
                    var cellHeadText = document.createTextNode("Total");

                cellHead.setAttribute("scope", "col");

                cellHead.appendChild(cellHeadText);
                rowHead.appendChild(cellHead);
            }

            //Agregar la fila del encabezado al encabezado
            tblHead.appendChild(rowHead);

            //Crear todas las filas de la tabla
            for (var i = 0; i < numero; i++) {
                //Crear la fila
                var row = document.createElement("tr");

                //row.setAttribute("class", "text-center");
                //row.setAttribute("class", "table-bordered");

                //Crear las columnas de la tabla
                for (var j = 0; j < 4; j++) {
                    // Create a <td> element and a text node, make the text
                    // node the contents of the <td>, and put the <td> at
                    // the end of the table row

                    if (j == 0) {
                        var cell = document.createElement("th");
                        cell.setAttribute("scope", "row");
                    }
                    else
                        var cell = document.createElement("td");

                    if (j == 0)
                        var cellText = document.createTextNode(i + 1);
                    else if (j == 1)
                        var cellText = document.createTextNode("$" + inversion.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'));
                    else if (j == 2)
                        var cellText = document.createTextNode("+" + porcentaje + "%");
                    else
                        var cellText = document.createTextNode("$" + total.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'));

                    cell.appendChild(cellText);
                    row.appendChild(cell);
                }

                etiquetas.push(i + 1);
                datos.push(total);

                inversion = total;
                total = (inversion * (porcentaje / 100)) + inversion;

                // add the row to the end of the table body
                tblBody.appendChild(row);
            }

            // put the <tbody> in the <table>
            tbl.appendChild(tblHead);
            tbl.appendChild(tblBody);

            // appends <table> into <body>
            body.appendChild(tbl);

            // Asignar la clase table de bootstrap
            tbl.setAttribute("class", "table");
            //tbl.setAttribute("class", "table-hover");
            //tbl.setAttribute("class", "table-bordered");

            //Gráfica de línea
            var ctxL = document.getElementById("lineChart").getContext('2d');
            var myLineChart = new Chart(ctxL, {
                type: 'line',
                data: {
                    labels: etiquetas,
                    //labels: puntos,
                    datasets: [{
                        label: "CAPITAL + UTILIDAD",
                        data: datos,
                        //data: puntos,
                        backgroundColor: ['rgba(66, 133, 244, .2)', ],
                        borderColor: ['rgba(66, 133, 244, .7)', ],
                        borderWidth: 2
                    }]
                },
                options: {
                    responsive: true,
                    scales: {
                        yAxes: [{
                            ticks: {
                                // Include a dollar sign in the ticks
                                callback: function (value, index, values) {
                                    return '$' + value.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
                                }
                            }
                        }]
                    },
                    tooltips: {
                        callbacks: {
                            label: function (tooltipItem, data) {
                                return "$" + tooltipItem.yLabel.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
                            }
                        }
                    }
                }
            });
        }
    </script>

</body>
</html>
