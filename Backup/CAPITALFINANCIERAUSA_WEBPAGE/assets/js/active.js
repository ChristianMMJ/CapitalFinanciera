/*------------------------------------------------------------------------------------
    
JS INDEX
=============

01 - Main Slider
02 - Language Menu
03 - Project Slide
04 - Accordian Icon
05 - Testimonial Slider
06 - Project Gallery
07 - Responsive Menu
08 - Back To Top
09 - Sticky Header
10 - Site Preloader
11 - Video Popup


-------------------------------------------------------------------------------------*/


(function ($) {
	"use strict";
    
    jQuery(document).ready(function($){
        
        /* 
        =================================================================
        01 - Main Slider
        =================================================================	
        */
        $(".finance-slide").owlCarousel({
            animateOut: 'fadeOut',
            animateIn: 'fadeIn',
            items: 1,
            nav: true,
            dots: false,
            autoplay: true,
            loop: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            mouseDrag: false,
            touchDrag: false
        });
        
        $(".finance-slide").on("translate.owl.carousel", function(){
            $(".finance-main-slide h2, .finance-main-slide p").removeClass("animated fadeInUp").css("opacity", "0");
            $(".finance-main-slide .finance-btn").removeClass("animated fadeInDown").css("opacity", "0");
        });
        $(".finance-slide").on("translated.owl.carousel", function(){
            $(".finance-main-slide h2, .finance-main-slide p").addClass("animated fadeInUp").css("opacity", "1");
            $(".finance-main-slide .finance-btn").addClass("animated fadeInDown").css("opacity", "1");
        });
        
        $(".finance-slide").on("translate.owl.carousel", function(){
            $(".finance-main-slide h4").removeClass("animated slideInDown").css("opacity", "0");
        });
        $(".finance-slide").on("translated.owl.carousel", function(){
            $(".finance-main-slide h4").addClass("animated slideInDown").css("opacity", "1");
        });
        
        
        /* 
        =================================================================
        02 - Language Menu
        =================================================================	
        */
          if ($(".dropdown-menu li").length) {
            $(".dropdown-menu li").on('click', function(){
              $(this).parents(".dropdown").find('.btn-dropdown').html($(this).text() + ' <i class="fa fa-angle-down"></i>');
              $(this).parents(".dropdown").find('.btn-dropdown').val($(this).data('value'));
            });  
          };


        if ($(".dropdown-menu li").length) {
            $(".dropdown-menu li").on('click', function(){
              $(this).parents(".dropdown").find('.call-dropdown').html($(this).text() + ' <i class="fa fa-angle-down"></i>');
              $(this).parents(".dropdown").find('.call-dropdown').val($(this).data('value'));
            });  
          };

        
        /* 
        =================================================================
        03 - Project Slide
        =================================================================	
        */
        $(".finance-project-slide").owlCarousel({
            animateOut: 'fadeOut',
            animateIn: 'fadeIn',
            items: 1,
            nav: true,
            dots: false,
            autoplay: true,
            loop: true,
            navText: ["<i class='fa fa-hand-o-left'></i>", "<i class='fa fa-hand-o-right'></i>"],
            mouseDrag: false,
            touchDrag: false
        });
        
        $(".finance-project-slide").on("translate.owl.carousel", function(){
            $(".project-text").removeClass("animated fadeInUp").css("opacity", "0");
        });
        $(".finance-project-slide").on("translated.owl.carousel", function(){
            $(".project-text").addClass("animated fadeInUp").css("opacity", "1");
        });
        
        /* 
        =================================================================
        04 - Accordian Icon
        =================================================================	
        */
        $('.accordion').on('shown.bs.collapse', function (e) {
            $(e.target).parent().addClass('active_acc');
            $(e.target).prev().find('.switch').removeClass('fa-plus');
            $(e.target).prev().find('.switch').addClass('fa-minus');
        });
        $('.accordion').on('hidden.bs.collapse', function (e) {
            $(e.target).parent().removeClass('active_acc');
            $(e.target).prev().find('.switch').addClass('fa-plus');
            $(e.target).prev().find('.switch').removeClass('fa-minus');
        });

        /* 
        =================================================================
        05 - Testimonial Slider
        =================================================================	
        */
        $('.finance-testimonial').owlCarousel({
            items:1,
            autoplay:true,
            loop:true,
            margin:20,
            touchDrag:false,
            mouseDrag:false,
            nav: false,
            dots: true,
            autoplayTimeout: 6000,
            autoplaySpeed: 1200,
            autoplayHoverPause:true
        });

        /* 
        =================================================================
        06 - Project Gallery
        =================================================================	
        */
        $(".gallery-lightbox").magnificPopup({
            type: 'image',
            gallery: {
                enabled: true
            },
             zoom: {
                    enabled: true, 
                    duration: 300, 
                    easing: 'ease-in-out',
                    opener: function (openerElement) {
                        
                        return openerElement.is('img') ? openerElement : openerElement.find('img');
                    }
                }
        });

        
        /* 
        =================================================================
        07 - Responsive Menu
        =================================================================	
        */
        $("ul#finance_navigation").slicknav({
            prependTo: ".finance-responsive-menu"
        });
        
        
        /* 
        =================================================================
        08 - Back To Top
        =================================================================	
        */
        if ($("body").length) {
            var btnUp = $('<div/>', {
                'class': 'btntoTop'
            });
            btnUp.appendTo('body');
            $(document).on('click', '.btntoTop', function() {
                $('html, body').animate({
                    scrollTop: 0
                }, 700);
            });
            $(window).on('scroll', function() {
                if ($(this).scrollTop() > 200) $('.btntoTop').addClass('active');
                else $('.btntoTop').removeClass('active');
            });
        }
        
        /* 
        =================================================================
        09 - Sticky Header
        =================================================================	
        */
        if ($(".sticky").length) {
            var stickyTop = $(".sticky").offset().top;
            jQuery(window).scroll(function() {
                var windowTop = jQuery(window).scrollTop();
                if (windowTop > stickyTop) {
                    jQuery(".sticky").addClass("stuck fadeInDown animated");
                } else {
                    jQuery(".sticky").removeClass("stuck fadeInDown animated");
                }
            });
        }
        
        /* 
        =================================================================
        10 - Site Preloader
        =================================================================	
        */
        
        if ($("#preloader").length) {
            (function() {
                var myDiv = document.getElementById("preloader"),
                    show = function() {
                        myDiv.style.opacity = "1";
                        setTimeout(hide, 3000); // 3 seconds
                    },
                    hide = function() {
                        jQuery(".finance-site-preloader").fadeOut(1000);
                    };
                show();
            })();
        }

        
    });
    
    
}(jQuery));	
