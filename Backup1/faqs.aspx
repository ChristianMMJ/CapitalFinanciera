<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faqs.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.faqs" %>

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

    <!-- Faq Area Start -->
    <section class="finance-faq-area section_100">
        <div class="bg-overlay"></div>
        <div class="skew-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="finance-faqs-left">
                        <h3>INVERSIÓN EN BIENES RAÍCES EN EUA (GANANCIAS DE CAPITAL)</h3>
                        <div class="panel-group accordion"  id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse02" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            1. ¿QUÉ ES CAPITAL FINANCIERA Y CÓMO FUNCIONA INVERTIR EN PROYECTOS INMOBILIARIOS EN EUA?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse02">
                                    <div class="panel-body"><b>Capital Financiera</b> es una empresa con presencia y oficinas tanto en México como en Estados Unidos, que reúne a inversionistas para fondear proyectos inmobiliarios probados y exitosos. Estos proyectos inmobiliarios son remates bancarios en Estados Unidos (a precios de oportunidad), que compramos con el fondeo de los inversionistas y recursos propios, restauramos y vendemos a precio comercial en el mercado inmobiliario más grande, con clientes con buen nivel adquisitivo, en la mayor economía del mundo.<br> <br>
                                    La atractiva ganancia del 10% al 15% que ofrece <b> Capital Financiera</b> a los inversionistas por proyecto inmobiliario, reside entre la diferencia de la venta a precio de mercado y el precio de compra más gastos de restauración y permisos. <br> <br>
                                    Contamos con expertos valuadores, fiscalistas, abogados, financieros, brókers y arquitectos, quienes son los encargados de filtrar y seleccionar las mejores propiedades que por su ubicación y precio, representan una oportunidad para generar estos márgenes de ganancias para los inversionistas y la empresa.</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse03" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            2. ¿CÓMO TENGO LA SEGURIDAD DE QUE MI DINERO ESTÁ INVERTIDO EN BIENES RAÍCES EN EUA?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse03">
                                    <div class="panel-body">Firmamos un contrato entre tú como inversionista y <b>Capital Financiera</b>, ante Notario Público en México o en Estados Unidos. En ese contrato se especifica el monto de tu inversión, la propiedad que se fondeará y en qué momento se te entregará tu ganancia junto con tu inversión inicial. La relación de confianza que tenemos con los inversionistas que ya han invertido su dinero con nosotros, habla de una empresa comprometida en cuidar este modelo atractivo de negocio. Además en todo momento, tú como inversionista conoces el estatus que tiene la propiedad fondeada. Recuerda que en cualquier momento el staff de <b>Capital Financiera</b> estará disponible para resolver cualquier duda que pudieras llegar a tener (cualquier duda por favor escríbenos <a href="mailto:contacto@capitalfinancierausa.com" style="color:blue !important;">contacto@capitalfinancierausa.com</a>).</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse04" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            3. ¿ES VERDAD QUE AUNQUE NO TENGA VISA, NO SEPA INGLÉS O SEA INDOCUMENTADO PUEDO OBTENER ESTAS GANANCIAS DE CAPITAL SEGURAS Y CONFIABLES EN ESTADOS UNIDOS?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse04">
                                    <div class="panel-body">Sí. No importa tu nacionalidad, ni si tienes visa o si eres indocumentado en Estados Unidos. Con <b>Capital Financiera</b> puedes invertir de forma segura y confiable en el mayor mercado inmobiliario del mundo desde 20,000 dólares y recibir mayores rendimientos que los que ofrecen los bancos o fondos de inversión. En Bienes Raíces de Estados Unidos, mayor rendimiento no significa mayor riesgo, como en otras inversiones, toda vez que aquí son activos reales y tangibles que respaldan tu inversión.</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse05" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            4. ¿CÓMO INVIERTO MI DINERO?, ¿CUÁL ES EL PROCESO A SEGUIR?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse05">
                                    <div class="panel-body">Una vez que un inversionista decide invertir en uno de los proyectos previamente seleccionados por nuestros expertos se firma contrato ante Notario Público, se hace una transferencia a la cuenta bancaria concentradora de <b>Capital Financiera</b> en México Estados Unidos. Una vez recaudado el monto se transfiere a la <b>Compañía de Títulos en Estados Unidos</b>. Con el dinero del fondeo, se compra la propiedad al banco, se paga la restauración, se contratan seguros y permisos de construcción gubernamentales, entre otros. Al realizarse la venta de la propiedad fondeada y restaurada, se transfiere la utilidad generada más el capital inicial invertido al inversionista. ¡Así de simple!</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse06" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            5. ¿QUÉ ES LA COMPAÑÍA DE TÍTULOS EN ESTADOS UNIDOS?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse06">
                                    <div class="panel-body">En Estados Unidos, la compra y venta de propiedades se hace en su gran mayoría a través de lo que se le denomina como <b>Compañía de Títulos</b> (Title Company). La <b>Compañía de Títulos</b> cumple varias funciones durante la transacción, que le garantiza título limpio a la parte compradora (en México se le conoce como propiedad con escritura libre de gravamen) y así nosotros y los inversionistas tenemos la seguridad de que la inversión en la propiedad que estamos comprando está asegurada y es confiable. Las tres funciones principales de una <b>Compañía de Títulos</b> son:<br><br>
                                    <ol>
                                        <li>1.- La búsqueda y análisis del título de propiedad para emitir un compromiso de <b>seguro de título de propiedad</b>. Con este paso, estas compañías hacen su investigación del historial de la tenencia de esta propiedad y así deciden si quieren emitir un seguro de título de propiedad. Es como comprar un seguro de gastos médicos, la compañía hace su evaluación del candidato antes de otorgarlo.</li>
                                        <li style="margin:10px 0;">2.- <b>Llevar a cabo el cierre de la transacción</b>, y particularmente, manejar todos los documentos necesarios para llevar a cabo la transacción y hacer los pagos necesarios haciendo la función de <b>agente fiduciario</b>. Esto le brinda <b>mucha transparencia a la transacción.</b></li>
                                        <li>3.- Finalmente <b>emite un seguro de título de propiedad al comprador</b> y también a la institución financiera que garantiza el título de propiedad en la transacción. La Compañía de Títulos nos emite <b>el seguro de título de propiedad</b> a nosotros como compradores.</li>
                                    </ol>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse07" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            6. ¿ES WWW.CAPITALFINANCIERAUSA.COM UN SITIO SEGURO?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse07">
                                    <div class="panel-body">En <b>Capital Financiera</b> protegemos tus datos personales y tu privacidad, para que en todo momento tu identidad esté protegida y no se haga mal uso de tu información personal. Cumplimos con la Ley Federal de Protección de Datos Personales en Posesión de Particulares y contamos con nuestro Aviso de Privacidad.</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse08" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            7. ¿QUIÉN PUEDE INVERTIR EN ESTOS PROYECTOS INMOBILIARIOS EN EUA?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse08">
                                    <div class="panel-body">Los inversionistas que fondean estos proyectos inmobiliarios pueden ser personas físicas o morales, tanto de México, América Latina o Estados Unidos cuya inversión mínima son 20,000 dólares. Es importante mencionar que los recursos deben provenir en todo momento de actividades lícitas.</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse008" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            8. ¿QUÉ BENEFICIOS TENGO DE INVERTIR EN BIENES RAÍCES EN EUA?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse008">
                                    <div class="panel-body"><b>Capital Financiera</b> da acceso a excelentes oportunidades de inversión en bienes raíces en el mayor mercado inmobiliario del mundo desde 20,000 dólares con ganancias que van del 10% al 15% por proyecto inmobiliario. Estas oportunidades estaban reservadas única y exclusivamente para grandes instituciones e inversionistas con alto poder adquisitivo. <br /><br />
                                    <b>Capital Financiera</b> te permite diversificar tu portafolio de inversión y acceder a un abanico de proyectos inmobiliarios, sin descuidar tu trabajo o negocio actual; y sin la carga de tratar con bancos norteamericanos, brókers, contratistas, notarios, autoridades, y un largo etcétera.</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse09" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            9. ¿EN PROMEDIO EN CUÁNTO TIEMPO TENDRÉ MI DINERO DE REGRESO MÁS MI GANANCIA?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse09">
                                    <div class="panel-body">El proceso en promedio desde la adquisición de la propiedad inmobiliaria hasta la venta de la misma, un lapso aproximado de seis a ocho meses. Por ese motivo, las ganancias del 10% al 15% están expresadas en ese lapso de tiempo.</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse10" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            10. ¿ESTÁN GARANTIZADAS LAS INVERSIONES?
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse10">
                                    <div class="panel-body">Al invertir en proyectos inmobiliarios en Estados Unidos, estás invirtiendo en activos tangibles en un país con un verdadero Estado de Derecho. Tu inversión es una propiedad fondeada que puedes visitar a diferencia de una inversión en la Bolsa de Valores o en otros instrumentos financieros.<br><br>
                                    Es importante mencionar que el mercado inmobiliario tiene ciclos y es imposible saber cómo y cuándo la economía se va a comportar diferente a lo esperado, pero en todo momento existe un activo tangible por lo que las inversiones están protegidas y garantizadas.<br /><br />
                                    ¿Qué esperas? Haz que tu dinero trabaje para ti con la seguridad de activos reales y tangibles en el mayor mercado inmobiliario del mundo. Invierte inteligentemente. Puedes ponerte en contacto por whatsapp a través del siguiente enlace <a href="https://chat.whatsapp.com/I5Pu0g9eILDHWpa78oQZXW"><strong>https://chat.whatsapp.com/I5Pu0g9eILDHWpa78oQZXW</strong></a> o dirígete a la sección de <strong><a href="http://capitalfinancierausa.com/contacto">Contacto</a></strong>.</div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                <div class="col-md-12">
                    <div class="finance-faqs-left">
                        <h3>INVERSIÓN EN BIENES RAÍCES EN EUA (FLUJO DE EFECTIVO)</h3>
                        <div class="panel-group accordion"  id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            1. ¿CÓMO PUEDO COMPRAR PROPIEDADES EN ESTADOS UNIDOS AL 30% Y VIVIR DE MIS RENTAS?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse11">
                                    <div class="panel-body"><b>Capital Financiera</b> te permite comprar propiedades en Estados Unidos al 30% de su valor, rentarlas y que tengas un flujo de efectivo positivo cada mes. En números simples una propiedad de 100,000 dólares, (con nuestras estrategias empresariales probadas cientos de veces) puedes pagarla a sólo 30,000 dólares y el resto será financiado. Los 70,000 dólares restantes con sus intereses serán pagados por tu inquilino cada mes.<br><br>
                                    ¿Interesante? Aún hay más: No sólo compras una propiedad al 30% de su valor en el mayor mercado inmobiliario del mundo, sino que mes tras mes recibes una renta de esa propiedad (flujo de efectivo positivo). Vives de tus rentas con inquilinos que tienen mejores salarios que en México, por lo que tu inversión está segura.</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            2. ¿ES VERDAD QUE AUNQUE NO VIVA EN EUA, NO TENGA VISA O NO SEPA INGLÉS PUEDO COMPRAR ESTAS PROPIEDADES AL 30% Y VIVIR DE MIS RENTAS?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse12">
                                    <div class="panel-body">Así es. El proceso en todo momento es transparente y un familiar o amigo de tu entera confianza, que viva o pueda viajar a Estados Unidos, te puede representar, visitar la propiedad y firmar todos los documentos por ti.</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title finance-panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse13" aria-expanded="false">
                                            <i class="switch fa fa-plus"></i>
                                            3. ¿Y QUÉ PASA CON EL FLUJO DE EFECTIVO MENSUAL SI ME LLEGASE A MORIR?
                                        </a>
                                    </h4>
                                </div>
                                <div class="panel-collapse collapse" id="collapse13">
                                    <div class="panel-body">Si eso llegara a ocurrir, el flujo de efectivo es heredable a la persona que haya quedado como beneficiario en el testamento.<br />
                                       ¿Qué esperas? Haz que tu dinero trabaje para ti con la seguridad de activos reales y tangibles en el mayor mercado inmobiliario del mundo. Invierte inteligentemente. Puedes ponerte en contacto por whatsapp a través del siguiente enlace <a href="https://chat.whatsapp.com/I5Pu0g9eILDHWpa78oQZXW"><strong>https://chat.whatsapp.com/I5Pu0g9eILDHWpa78oQZXW</strong></a> o dirígete a la sección de <strong><a href="http://capitalfinancierausa.com/contacto">Contacto</a></strong>. </div>
                                </div>
                            </div>
                        </div>
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
