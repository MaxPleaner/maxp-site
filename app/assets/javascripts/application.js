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
//= require jquery
//= require jquery_ujs
//= require tooltip
//= require ansi_up
//= require bootstrap
//= require_tree .

// $(function(){
//   $('.grid').masonry({
//     // options
//     itemSelector: '.grid-item',
//     columnWidth: 1,
//     gutter: 0
//   });
// })


$(function(){

  $skillLink = $("#skills-bullets .grid-item a")
  $skillLink.darkTooltip({
    opacity: 1.0,
    size: 'large',
    animation: "flipIn"
    // gravity: 'north'
  });

  $(".redbox-link").on("mouseenter", function(e){
    $(e.currentTarget).trigger("click")
    return false;
  })

})
