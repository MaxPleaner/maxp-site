// This is a manifest file that'll be compiled into application.js, which will include all the files
//
// listed below.
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
// compiled file.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require ansi_up
//= require turbolinks
//= require_tree .

pageReady = function (){

  //  a warning message will display if this doesn't work
  $('.js-test-hidden').hide();

  //  hide all togglable sections
  //  use JS instead of CSS for graceful degredation / progressive enhancement
  $('.skills, .skill-details, .experience, .links').hide()

  // event listeners for primary links
  // cache reference to clone to prevent virtual reference duplication
  // no need to prevent default - using fragment links + ids
  window.$sectionClone = undefined;
  $(".primary-links .clickable").click(function(e){
    $el = $(e.currentTarget)
    !!$sectionClone && $sectionClone.remove();
    window.location.hash = $el.attr("href");
    $target = $(("." + $el.attr("data-target")));
    $sectionClone = $target.clone(true, true);
    $('.focus-area-1').empty().append($sectionClone)
    $('.focus-area-2').empty()
    $sectionClone.fadeIn();
    $("*").removeClass("selected")
    $el.addClass("selected")
  });

  // event Listeners for Skills sections
  // cache reference to clone to prevent virtual reference duplication
  // no need to prevent default - using fragment links + ids
  window.$skillsClone = undefined;
  $('.skills .clickable').click(function(e){
    !!$skillsClone && $skillsClone.remove();
    $el = $(e.currentTarget);
    window.location.hash = $el.attr("href");
    $target = $(("." + $el.attr("data-target")));
    $skillsClone = $target.clone(true, true);
    $(".focus-area-2").empty().append($skillsClone)
    $skillsClone.fadeIn();
    $("*").removeClass("selected")
  })

  // Routing
  var route = window.location.hash
  var routeParts = route.slice(1).split("/")
  routeParts.forEach(function(part){
    $((".clickable" + "[data-target='" + part + "']")).trigger("click")
  });

  // ANSI Up (https://github.com/drudru/ansi_up)
  var $ansi_text = $('.ansi')
  $ansi_text.each(function(index, el){
    $(el).html(ansi_up.ansi_to_html(el.innerHTML))
  });

}

$(function () { pageReady() })
