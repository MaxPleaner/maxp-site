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
//= require jquery.turbolinks
//= require jquery_ujs
//= require ansi_up
//= require bootstrap
//= require turbolinks
//= require_tree .

console.log("oh, hello")

$(function(){

  // Fix a bug with the navbar starting open
  for (var i = 0; i < 2; i++) {
    window.setTimeout(function(){
      $("body > div > nav > div > div.navbar-header > button").trigger("click")
    }, 500 * (i + 1))
  }

    var shiftWindow = function() { scrollBy(0, -85) };
    window.addEventListener("hashchange", shiftWindow);
    function load() { if (window.location.hash) shiftWindow(); }

//   $("a.fragment-link").each(function(){
//     $($(this).attr("href")).css("padding-top", "40px").prev().css("margin-bottom", "-40px");
// });
})
