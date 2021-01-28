<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />

<head>
	<title>fancyBox - Fancy jQuery Lightbox Alternative | Demonstration</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<?php include('../../head.php');?>
<body>

    
   

	<!-- Add jQuery library -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="../lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="../source/jquery.fancybox.js"></script>
	<link rel="stylesheet" type="text/css" href="../source/jquery.fancybox.css" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="../source/helpers/jquery.fancybox-buttons.css?v=2.0.3" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-buttons.js?v=2.0.3"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="../source/helpers/jquery.fancybox-thumbs.css?v=2.0.3" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-thumbs.js?v=2.0.3"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			/*
				Simple image gallery. Use default settings
			*/

			$('.fancybox').fancybox();

			/*
				Different effects
			*/

			// Change title type, overlay opening speed and opacity
			$(".fancybox-effects-a").fancybox({
				helpers: {
					title : {
						type : 'outside'
					},
					overlay : {
						speedIn : 500,
						opacity : 0.95
					}
				}
			});

			// Disable opening and closing animations, change title type
			$(".fancybox-effects-b").fancybox({
				openEffect  : 'none',
				closeEffect	: 'none',

				helpers : {
					title : {
						type : 'over'
					}
				}
			});

			// Set custom style, close if clicked, change title type and overlay color
			$(".fancybox-effects-c").fancybox({
				wrapCSS    : 'fancybox-custom',
				closeClick : true,

				helpers : {
					title : {
						type : 'inside'
					},
					overlay : {
						css : {
							'background-color' : '#eee'	
						}
					}
				}
			});

			// Remove padding, set opening and closing animations, close if clicked and disable overlay
			$(".fancybox-effects-d").fancybox({
				padding: 0,

				openEffect : 'elastic',
				openSpeed  : 150,

				closeEffect : 'elastic',
				closeSpeed  : 150,

				closeClick : true,

				helpers : {
					overlay : null
				}
			});

			/*
				Button helper. Disable animations, hide close button, change title type and content
			*/

			$('.fancybox-buttons').fancybox({
				openEffect  : 'none',
				closeEffect : 'none',

				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,

				helpers : {
					title : {
						type : 'inside'
					},
					buttons	: {}
				},

				afterLoad : function() {
					this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
				}
			});


			/*
				Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
			*/

			$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : false,
				nextClick : true,

				helpers : { 
					thumbs : {
						width  : 50,
						height : 50
					}
				}
			});

		});
	</script>
	<style type="text/css">
		.fancybox-custom .fancybox-outer {
			box-shadow: 0 0 50px #222;
		}
	</style>
</head>
<body>
 <!-- Header Top Area Start -->
    <?php include('../../header.php');?>
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
                            <li><a href="index"><i class="fa fa-home"></i>Inicio</a></li>
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
	<h1>&nbsp;</h1>


	
	

	

<h3>Ganancia de capital</h3>
	<p>
		<a class="fancybox-thumbs" data-fancybox-group="thumb" href="4_b.jpg"><img src="4_s.jpg" alt="" /></a>

		<a class="fancybox-thumbs" data-fancybox-group="thumb" href="3_b.jpg"><img src="3_s.jpg" alt="" /></a>

		<a class="fancybox-thumbs" data-fancybox-group="thumb" href="2_b.jpg"><img src="2_s.jpg" alt="" /></a>

		<a class="fancybox-thumbs" data-fancybox-group="thumb" href="1_b.jpg"><img src="1_s.jpg" alt="" /></a>
	</p>

	<p>
		Ajax example will not run from your local computer and requires a server to run.
	</p>

	<p>
		Photo Credit: Instagrammer @whitjohns
	</p>
    
     <!-- jQuery -->
    <script src="../../assets/js/jquery.min.js"></script>
    
    <!-- Bootstrap JS -->
    <script src="../../assets/js/bootstrap.min.js"></script>
    
    <!-- Magnific Popup JS -->
    <script src="../../assets/js/jquery.magnific-popup.min.js"></script>
    
    <!-- OwlCarousel JS -->
    <script src="../../assets/js/owl.carousel.min.js"></script>
    
    <!-- Slicknav JS -->
    <script src="assets/js/jquery.slicknav.min.js"></script>
    
    <!-- isotop JS -->
    <script src="../../assets/js/isotope.pkgd.min.js"></script>
    <script src="../../assets/js/custom-isotop.js"></script>
    
    <!-- Chart JS -->
    <script src="../../assets/js/chart.js"></script>
    
    <!-- Active JS -->
    <script src="../../assets/js/active.js"></script>
    
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
    <script type="text/javascript" src="../../js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../js/bootstrap-slider.min.js"></script>
   
    <script type="text/javascript">
        $(document).ready(function () {
            $('#testimoniosCarousel').carousel({ pause: true, interval: 20000 });
        });
    </script>
</body>
</html>