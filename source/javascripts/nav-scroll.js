$(document).ready(function() {
  $('header').addClass('transition');
});

$(window).scroll(function(){

  var scroll = $(window).scrollTop();

  if (scroll > 300 ) {
    $('header').addClass('is-visible');
  }

  if (scroll <= 300 ) {
    $('header').removeClass('is-visible');
  }
});

