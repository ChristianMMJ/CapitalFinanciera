 <!DOCTYPE html>
<html>
 
 <link rel="Stylesheet" href="css/bootstrap.min.css" />
    <link rel="Stylesheet" href="css/font-awesome.min.css" />
    <link rel="Stylesheet" href="css/bootstrap-slider.min.css" />
    <link rel="Stylesheet" href="css/full-slider.css" />
    <link rel="Stylesheet" href="css/financiera.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myModal2").modal('show');
            $('#testimoniosCarousel').carousel({ pause: true, interval: 20000 });
        });
    </script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            /* Get iframe src attribute value i.e. YouTube video url
            and store it in a variable */
            var url = $("#cartoonVideo").attr('src');

            /* Assign the initially stored url back to the iframe src
            attribute when modal is displayed */
            $("#myModal2").on('shown.bs.modal', function () {
                $("#cartoonVideo").attr('src', url);
            });

            /* Assign empty url value to the iframe src attribute when
            modal hide, which stop the video playing */
            $("#myModal2").on('hide.bs.modal', function () {
                $("#cartoonVideo").attr('src', '');
            });
        });
    </script>
</head>
<body>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $(".lb-container").click(function () { window.location = "http://pinembajadores.biialab.org" })

            setTimeout(function () { $("#HelloViceCity").click(); }, 3000);
        });
    </script>
    <style type="text/css">
        .lb-outerContainer{
                cursor:pointer;
        }
        .text-g-finan {
            min-height: 550px;
        }
    </style>

    
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="text-align:center; margin:30px 0;">
                    <h1>PROYECTOS DE INVERSIÓN EN ESTADOS UNIDOS</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4" style="text-align:center; margin:30px 0;">
                    <a data-toggle="modal" style="cursor:pointer;" data-target="#InvCasa1"><img alt="casa01" src="galeria_casas/portada- darden.jpg" /></a>
                </div>
                <div class="col-md-4" style="text-align:center; margin:30px 0;">
                    <a data-toggle="modal" style="cursor:pointer;" data-target="#InvCasa2"><img alt="casa02" src="galeria_casas/portada_carol.jpg" /></a>
                </div>
                <div class="col-md-4" style="text-align:center; margin:30px 0;">
			        <img alt="casa03" src="galeria_casas/portada-gran-lac- ave.jpg" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="text-align:center; margin:30px 0;">
                    <h1>CONOCE ESTOS PROYECTOS E INVIERTE EN ELLOS</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4" style="text-align:center; margin:30px 0;">
                    <a data-toggle="modal" style="cursor:pointer;" data-target="#InvFondear1"><img alt="casa01" src="img/proyectosmexico/casa01.jpeg" /></a>
                </div>
                <div class="col-md-4" style="text-align:center; margin:30px 0;">
                    <a data-toggle="modal" style="cursor:pointer;" data-target="#InvFondear2"><img alt="casa01" src="img/proyectosmexico/casa02.jpeg" /></a>
                </div>
                <div class="col-md-4" style="text-align:center; margin:30px 0;">
                    <a data-toggle="modal" style="cursor:pointer;" data-target="#InvFondear3"><img alt="casa01" src="img/proyectosmexico/casa03.jpeg" /></a>
                </div>
            </div>
            
             
            
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
                                <li data-target="#InvCasa1Carousel" data-slide-to="0" class=""></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="1" class=""></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="2" class=""></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="3" class="active"></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="4" class=""></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="5" class=""></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="6" class=""></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="7" class=""></li>
                                <li data-target="#InvCasa1Carousel" data-slide-to="8" class=""></li>
                               
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item">
                                    <img src="galeria_casas/galeria1/1.jpg" alt="...">
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/galeria1/2.jpg" alt="..." >
                                </div>
                                <div class="item active left">
                                    <img src="galeria_casas/galeria1/3.jpg" alt="..." >
                                </div>
                                <div class="item next left">
                                    <img src="galeria_casas/galeria1/4.jpg" alt="..." >
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/galeria1/5.jpg" alt="..." >
                                </div>
                                <div class="item">
                                    <img src="galeria_casas/galeria1/6.jpg" alt="...">
                                </div>
                                  <div class="item">
                                    <img src="galeria_casas/galeria1/7.jpg" alt="...">
                                </div>
                                  <div class="item">
                                    <img src="galeria_casas/galeria1/8.jpg" alt="..." >
                                </div>
                                  <div class="item">
                                    <img src="galeria_casas/galeria1/9.jpg" alt="...">
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
    