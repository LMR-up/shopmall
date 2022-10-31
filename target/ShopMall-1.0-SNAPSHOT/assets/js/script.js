jQuery(function ($) {

    'use strict';

    // Mean menu
    jQuery('.mean-menu').meanmenu({
        meanScreenWidth: "1199"
    });

    // Sticky navbar
    $(window).on('scroll', function() {
        if ($(this).scrollTop() > 50) {
            $('.navbar-area').addClass('is-sticky');
            $(".fixed-top").addClass("non-fixed");
        } else {
            $('.navbar-area').removeClass('is-sticky');
            $(".fixed-top").removeClass("non-fixed");
        }
    });

    // Preloader
    $("body").addClass("pre-loaded");

    // Scrolltop
    $(window).on('scroll', function() {
        if( $(this).scrollTop() > 300 ) {
            $("#scrolltop").addClass("scrolltopactive");
        }
        else {
            $("#scrolltop").removeClass("scrolltopactive");
        }
    });
    $("#scrolltop").on('click', function () {
        $("html").animate({
            scrollTop: 0
        }, 2000);
        return false;
    });

    // Language-switcher
    $(".language-option").each(function() {
        var each = $(this)
        each.find(".lang-name").html(each.find(".language-dropdown-menu a:nth-child(1)").text());
        var allOptions = $(".language-dropdown-menu").children('a');
        each.find(".language-dropdown-menu").on("click", "a", function() {
             allOptions.removeClass('selected');
             $(this).addClass('selected');
             $(this).closest(".language-option").find(".lang-name").html($(this).text());
        });
    })

    // Partner
    $('.partner-carousel').owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        items: 5,
        smartSpeed: 1500,
        autoplay: true,
        autoplayHoverPause: true,
        responsive:{
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    })

    // Daily counter
    function dailyCounter1() {
        var countDate = new Date("15 October 2022 9:56:00");
        var sec = 1000;
        var min = sec * 60;
        var hr = min * 60;
        var day = hr * 24;
        var today = new Date();
        var distance = countDate - today;
        var days = Math.floor(distance / day);
        var hours = Math.floor((distance % day) / hr);
        var mins = Math.floor((distance % hr) / min);
        var secs = Math.floor((distance % min) / sec);
        $(".day1").html(days + "<span>days</span>")
        $(".hour1").html(hours + "<span>hrs</span>")
        $(".min1").html(mins + "<span>mins</span>")
        $(".sec1").html(secs + "<span>sec</span>")
        if(distance < 0) {
            clearInterval(dealCounter1);
            $(".daily-counter-1").html("Session Expired");
        }
    }
    setInterval(function() {
        dailyCounter1();
    }, 1000);

    function dailyCounter2() {
        var countDate = new Date("14 November 2022 10:56:00");
        var sec = 1000;
        var min = sec * 60;
        var hr = min * 60;
        var day = hr * 24;
        var today = new Date();
        var distance = countDate - today;
        var days = Math.floor(distance / day);
        var hours = Math.floor((distance % day) / hr);
        var mins = Math.floor((distance % hr) / min);
        var secs = Math.floor((distance % min) / sec);
        $(".day2").html(days + "<span>days</span>")
        $(".hour2").html(hours + "<span>hrs</span>")
        $(".min2").html(mins + "<span>mins</span>")
        $(".sec2").html(secs + "<span>sec</span>")
        if(distance < 0) {
            clearInterval(dealCounter1);
            $(".daily-counter-2").html("Session Expired");
        }
    }
    setInterval(function() {
        dailyCounter2();
    }, 1000);

    // Featured-product
    $(".feature-product-filter-list li").on("click", function() {
        var tab_modal = $(this).attr("data-feature-filter-list");
        $(this).addClass("active").siblings().removeClass("active");
        $(".feature-product-filter-item[data-feature-filter-item=" +tab_modal+ "]").addClass("active").siblings().removeClass("active");
    })

    // Header carousel
    $('.header-carousel').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        navText: [
            '<i class="flaticon-back"></i>',
            '<i class="flaticon-next"></i>'
        ],
        animateOut: 'fadeOut',
        dots: false,
        items: 1,
        smartSpeed: 1500,
        autoplay: true,
        autoplayHoverPause: true,
    })

    // Quick-view
    $('.quick-view-product-carousel').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        navText: [
            '<i class="flaticon-back"></i>',
            '<i class="flaticon-next"></i>'
        ],
        dots: false,
        items: 1,
        smartSpeed: 1500,
    })

    // Quick view trigger
    $(".quick-view-trigger").on("click", function(e) {
        e.preventDefault();
        $(".quick-view-wrapper").addClass("active");
    })
    $(".quick-view-close").on("click", function() {
        $(".quick-view-wrapper").removeClass("active");
    })

    // Cart modal
    $(".cartbtn").on("click", function(e) {
        e.preventDefault();
        $(this).siblings(".cart-modal").addClass("active");
        // $("body").addClass("overlay-layer")
    })
    $(".cart-close-btn").on("click", function(e) {
        e.preventDefault();
        $(".cart-modal").removeClass("active");
    })
    $("body").on('click',function(e){
        if(!$(".cart-option-dropdown").is(e.target) && $(".cart-option-dropdown").has(e.target).length===0 && $("active").has(e.target).length===0){
            $(".cart-modal").removeClass("active");
        }
    })

    // Range-slider
    $( "#range-slider").slider({
        range: true,
        min: 40,
        max: 400,
        values: [40, 400],
        slide: function( event, ui ) {
            $( "#price-amount" ).val( "$" + ui.values[ 0 ] + " ― $" + ui.values[ 1 ] );
        }
    });
    $( "#price-amount" ).val( "$" + $( "#range-slider" ).slider( "values", 0 ) +
    " - $" + $( "#range-slider" ).slider( "values", 1 ));

    // Filter-button
    $(".filter-button").on("click", function() {
        $(".filter-popup-wrapper").addClass("active");
    })
    
    $(".filter-popup-modal-close").on("click", function() {
        $(".filter-popup-wrapper").removeClass("active");
    })

    // Testimonial
    $('.testimonial-carousel').owlCarousel({
        loop: true,
        margin: 15,
        nav: false,
        dots: true,
        items: 1,
        smartSpeed: 1500,
    })

    // Testimonial 3
    $('.testimonial-carousel-3').owlCarousel({
        loop: true,
        margin: 30,
        nav: false,
        dots: true,
        items: 3,
        smartSpeed: 1500,
        responsive:{
            0: {
                items: 1
            },
            992: {
                items: 3
            }
        }
    })

    // Testimonial 2
    $('.testimonial-carousel-2').on("initialized.owl.carousel changed.owl.carousel", function(e) {
        if (!e.namespace)  {
            return;
        }
        var carousel = e.relatedTarget;
        var currentCarousel = carousel.relative(carousel.current())+1;
        $(".testimonial-carousel-counter").html("<span>" + currentCarousel + "</span>"  + '/' + carousel.items().length);
    }).owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        navText: [
            '<i class="flaticon-back"></i>',
            '<i class="flaticon-next"></i>'
        ],
        dots: true,
        items: 1,
        smartSpeed: 1500,
    })

    // Product carousel
    var productCarousel = $(".product-carousel");
    productCarousel.owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        dots: false,
        items: 4,
        smartSpeed: 1500,
        responsive:{
            0: {
                items: 1
            },
            576: {
                items: 2
            },
            992: {
                items: 4
            }
        }
    });
    $(".product-control-left").on("click", function () {
        productCarousel.trigger('prev.owl.carousel', [1500]);
    })
    $(".product-control-right").on("click", function () {
        productCarousel.trigger('next.owl.carousel', [1500]);
    })

    // Best seller carousel
    var bestProductCarousel = $(".best-seller-carousel");
    bestProductCarousel.owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        dots: false,
        items: 1,
        smartSpeed: 1500,
        autoplay: true,
        autoplayHoverPause: true,
    });
    $(".bestseller-control-left").on("click", function () {
        bestProductCarousel.trigger('prev.owl.carousel', [1500]);
    })
    $(".bestseller-control-right").on("click", function () {
        bestProductCarousel.trigger('next.owl.carousel', [1500]);
    })

    // Daily sale carousel
    var dailySalesCarousel = $(".daily-sales-carousel");
    dailySalesCarousel.owlCarousel({
        loop: true,
        margin: 10,
        nav: false,
        dots: false,
        items: 3,
        smartSpeed: 1500,
        autoplay: true,
        autoplayHoverPause: true,
        responsive:{
            0: {
                items: 1
            },
            576: {
                items: 1
            },
            768: {
                items: 2
            },
            992: {
                items: 3
            }
        }
    });
    $(".dailysale-control-left").on("click", function () {
        dailySalesCarousel.trigger('prev.owl.carousel', [1500]);
    })
    $(".dailysale-control-right").on("click", function () {
        dailySalesCarousel.trigger('next.owl.carousel', [1500]);
    })

    // Init isotope
    var $grid = $(".product-tab-gallery").isotope({
        itemSelector: '.element-item',
        layoutMode: 'fitRows',
    });
    // Bind filter button click
    $(".product-selection-tab").on('click', 'li', function() {
        var filterValue = $( this ).attr('data-filter');
        $grid.isotope({ filter: filterValue });
    });
    // Change is-checked class on buttons
    $(".product-selection-tab li").on('click', function( ) {
        $(this).addClass("active").siblings().removeClass("active")
    });

    // Recent-product-item
    $(".recent-product-item").slice(0, 4).show();
    $(".product-all-item").slice(0, 12).show();
    $(".load-more-btn").on("click", function(e) {
        e.preventDefault();
        $(this).parent(".load-more").siblings(".recent-arrival-gallery").find(".recent-product-item:hidden").slice(0, 4).slideDown();
        $(this).parent(".load-more").siblings(".product-all-gallery").find(".product-all-item:hidden").slice(0, 4).slideDown();
    })

    // Navbar category
    $(".navbar-category button").on("click", function() {
        $(this).siblings(".navbar-category-dropdown").slideToggle().toggleClass("active");
    })
    $(".mobile-nav-category-btn").on("click", function(e) {
        e.preventDefault()
        $(this).siblings(".navbar-category").toggleClass("active");
    })
    
    // Mobile-option-dot
    $(".mobile-option-dot").on("click", function() {
        $(this).siblings(".mobile-option-dropdown").toggleClass("show");
    })
    $("body").on('click',function(e){
        if(!$(".mobile-option-dot").is(e.target) && $(".mobile-option-dot").has(e.target).length===0 && $('.show').has(e.target).length===0){
            $(".mobile-option-dropdown").removeClass('show');
        }
    })

    // Product-details-carousel
    var productSync1 = $(".product-slider-for");
    var productSync2 = $(".product-slider-nav");
    var flag = false;
    productSync1.owlCarousel({
        items: 1,
        smartSpeed : 1500,
        nav: false,
        dots: false,
        responsiveRefreshRate : 200,
    }).on("changed.owl.carousel", function(e) 
    {
        if (!flag) {
            flag = true;
            productSync2
            .find(".owl-item")
            .removeClass("synced")
            .eq(e.item.index)
            .addClass("synced");
            if (
            productSync2
                .find(".owl-item")
                .eq(e.item.index)
                .hasClass("active")
            ) {
            } else {
            productSync2.trigger("to.owl.carousel", [e.item.index, true]);
            }
            flag = false;
        }
    });
    productSync2.on("initialized.owl.carousel", function() {
        productSync2.find(".owl-item")
        .eq(0)
        .addClass("synced");
    }).owlCarousel({
        margin: 30,
        nav: false,
        dots: false,
        responsiveRefreshRate : 100,
        responsive: {
            0: {
                items: 2,
            },
            576: {
                items: 3,
            },
            992: {
                items: 3
            }
        }
    }).on("click", ".owl-item", function(e){
        e.preventDefault();
        var number = $(this).index();
        productSync1.trigger("to.owl.carousel", number);
    });

    // Billing-address-input
    $(".billing-title p").on("click", function() {
        $(".billing-address").addClass("none");
        $(".billing-address-input").addClass("active");
    })

    // Nice select
    $(".product-color").niceSelect();
    $(".product-sort").niceSelect();

    // Product-details-carousel

    // Product-tab-list
    $(".product-tab-list li").on("click", function() {
        var tab_modal = $(this).attr("data-product-tab");
        $(this).addClass("active").siblings().removeClass("active");
        $(".product-tab-information-item[data-product-details-tab=" +tab_modal+ "]").addClass("active").siblings().removeClass("active");
    })

    // Product +/- button
    $(".qu-btn").on("click", function(e) {
        var btn = $(this),
        inp = btn.siblings(".qu-input").val();
        if(btn.hasClass("inc")){
            var i = parseFloat(inp) + 1;
        }
        else {
            if (inp > 1) (i = parseFloat(inp) - 1) < 2 && $(".dec").addClass("deact");
            else i = 1;
        }
        btn.addClass("deact").siblings("input").val(i)
    })

    // Popup-gallery
    $('.gallery-grid').magnificPopup({
        delegate: 'a',
        type: 'image',
        tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
        gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0,1]
        },
        image: {
            tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
        }
    });

    // Coming-soon counter
    function newCounter() {
        var countDate = new Date("15 October 2022 9:56:00");
        var sec = 1000;
        var min = sec * 60;
        var hr = min * 60;
        var day = hr * 24;
        var today = new Date();
        var distance = countDate - today;
        var days = Math.floor(distance / day);
        var hours = Math.floor((distance % day) / hr);
        var mins = Math.floor((distance % hr) / min);
        var secs = Math.floor((distance % min) / sec);
        $(".day3").html(days + "<span>Days</span>")
        $(".hr3").html(hours + "<span>Hrs</span>")
        $(".min3").html(mins + "<span>Mins</span>")
        $(".sec3").html(secs + "<span>Sec</span>")
        if(distance < 0) {
            clearInterval(dealCounter1);
            $(".new-counter").html("Session Expired");
        }
    }
    setInterval(function() {
        newCounter();
    }, 1000);

    // Newsletter modal
    $(window).on('load',function(){
        setTimeout(function(){ 
            $(".newsletter-popup-wrapepr").addClass("active")
        }, 3000); 
    });
    $(".newsletter-modal-close").on("click", function() {
        $(".newsletter-popup-wrapepr").removeClass("active")
    })

    // Coupon modal
    $(".coupon-btn").on("click", function(e) {
        e.preventDefault;
        $(".coupon-popup-wrapepr").addClass("active")
    });
    $(".newsletter-modal-close").on("click", function() {
        $(".coupon-popup-wrapepr").removeClass("active")
    })

    // Subscribe form
    $("#contactForm, .newsletter-form").validator().on("submit", function(event) {
        if (event.isDefaultPrevented()) {
            // handle the invalid form...
            formErrorSub();
            submitMSGSub(false, "Please enter your email correctly.");
        } else {
            // everything looks good!
            event.preventDefault();
        }
    });
    function callbackFunction(resp) {
        if (resp.result === "success") {
            formSuccessSub();
        } else {
            formErrorSub();
        }
    }
    function formSuccessSub() {
        $(".newsletter-form")[0].reset();
        submitMSGSub(true, "Thank you for subscribing!");
        setTimeout(function() {
            $("#validator-newsletter").addClass('hide');
        }, 4000)
    }
    function formErrorSub() {
        $(".newsletter-form").addClass("animate__animated animate__shakeX");
        setTimeout(function() {
            $(".newsletter-form").removeClass("animate__animated animate__shakeX");
        }, 1000)
    }
    function submitMSGSub(valid, msg) {
        if (valid) {
            var msgClasses = "validation-success submit-post-info";
        } else {
            var msgClasses = "validation-danger submit-post-info";
        }
        $("#validator-newsletter").removeClass().addClass(msgClasses).text(msg);
    }

    // ajax mailchimp
    $(".newsletter-form").ajaxChimp({
    url: "https://hibootstrap.us20.list-manage.com/subscribe/post?u=60e1ffe2e8a68ce1204cd39a5&amp;id=42d6d188d9", // Your url MailChimp
    callback: callbackFunction
});
});

$("#div_add").click(function() {
    $('#adduse').show();
})

$("#cancle").click(function() {
    $('#adduse').hide();
})
$("#save").click(function() {
    $('#adduse').hide();
})

/* 删除 */
function delRow(obj) {
    $(obj).parent().remove();
    alert("删除成功")

}