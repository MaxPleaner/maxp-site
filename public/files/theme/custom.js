jQuery(function($) {
  $(document).ready(function() {
    
    $("body").addClass("postload");
    
    // Mobile Menu
    
    $(".hamburger").click(function(){
      $("body").toggleClass("menu-open");
    });
    
    // General styling

    $('blockquote').each(function(){
      var contents = $(this).html();
      $(this).html('<span>'+contents+'</span>');
    });

        
    // Nav color on scroll

    $(document).scroll(function() {
      if ($(document).scrollTop() > $("#navigation").height()) {
        $("#navigation, #wsite-mini-cart").addClass("bodynav");
        $("#wsite-menus").addClass("dropnav");
      }
      else {
        $("#navigation, #wsite-mini-cart").removeClass("bodynav");
        $("#wsite-menus").removeClass("dropnav");
      }
    });
    
    if ($(window).width() > 991) {
      $('#navigation').waypoint('sticky');    
    }
    else {
      $('.trigger-wrap').waypoint('sticky');
      var login = $("#member-login");
      login.detach().appendTo("#navmobile .wsite-menu-default");
    }
    
    var timeout;
    var width = $(window).width();

    $(window).on('resize', function(e) {

      clearTimeout(timeout);
      timeout = setTimeout(function() {
        if($(window).width() != width){
          $('.stuck').waypoint('unsticky');
          if ($(window).width() > 991) {
            $('#navigation').waypoint('sticky');    
          }
          else {
            $('.trigger-wrap').waypoint('sticky');
          }
          width = $(window).width();
        }
      }, 300);

    });
    
    // Add fullwidth class to gallery thumbs if less than 6

    $('.imageGallery').each(function(){
      if ($(this).children('div').length <= 6) {
        $(this).children('div').addClass('fullwidth-mobile');
      }
    });
    
    // Swipe gallery function

    var swipeGallery = function(){
      setTimeout(function(){
          var touchGallery = document.getElementsByClassName("fancybox-wrap")[0];
          var mc = new Hammer(touchGallery);
          mc.on("panleft panright", function(ev) {
            if (ev.type == "panleft") {
              $("a.fancybox-next").trigger("click");
          }
          else if (ev.type == "panright") {
              $("a.fancybox-prev").trigger("click");
          }
          swipeGallery();
      });
      }, 500);
    }

    // Initiate Swipe function on touch devices

    if ('ontouchstart' in window) {
      $("body").on( "click", "a.w-fancybox", function() {
        swipeGallery();
      });
    }

    // Cart mobile

    function cartdisplay() {
      var cartnum = $("span#wsite-nav-cart-num").text();
      if (cartnum && cartnum != "-") {
        $('#wsite-mini-cart .wsite-cart-bottom').fadeIn(100);
        $(".wsite-button-chevron").text(cartnum);
      }
    }

    setTimeout(function() { cartdisplay(); }, 800);

    $('.wsite-product-button, #wsite-com-product-add-to-cart, .wsite-product-item .wsite-remove-button').on('click', function(){
      setTimeout(function() {
        cartdisplay();
      }, 800);
    });


    // Find top level blog comments

    $(".blogCommentLevel1").each(function(){
        if ($(this).parent().prev("div").children("div").hasClass("blogCommentLevel0")) {
            $(this).addClass("first");
        }
    });
    
    $(".blogCommentLevel2").each(function(){
        if ($(this).parent().prev("div").children("div").hasClass("blogCommentLevel1")) {
            $(this).addClass("first");
        }
    });

    // Storefront category list tablet

    var sidebar = $('.wsite-com-sidebar'),
        categories =  $("#wsite-com-hierarchy");

    sidebar.click(function(){
      sidebar.hasClass('sidebar-expanded') ? null : sidebar.addClass('sidebar-expanded');
    });

    categories.prepend('<a id="close" href="#">CLOSE</a>');
    $('#close').click(function(e){
      e.preventDefault();
      setTimeout(function() {sidebar.removeClass('sidebar-expanded');}, 50);
    });


    // Format Store markup

    $("#wsite-com-product-images-strip a:first-child").addClass("current-thumb");
    
    $("#wsite-com-product-images-strip a").click(function(){
        $(".current-thumb").removeClass("current-thumb");
        $(this).addClass("current-thumb");
    });
        
  });
});