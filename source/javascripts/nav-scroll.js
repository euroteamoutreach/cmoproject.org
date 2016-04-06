var $ = require("jquery");

$(document).ready(function() {
  if ($("body").hasClass("index")) {
    $("header").addClass("transition");
  }
});

$(window).scroll(function(){

  var scroll = $(window).scrollTop();

  if ($("body").hasClass("index")) {
    if (scroll > 300 ) {
      $("header").addClass("is-visible");
    }

    if (scroll <= 300 ) {
      $("header").removeClass("is-visible");
    }
  }
});
