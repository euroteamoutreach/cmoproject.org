$(window).scroll(function(){

  var scroll = $(window).scrollTop();

  if (scroll > 500 ) {
    $('#opaque-nav').addClass('is-visible');
  }

  if (scroll <= 500 ) {
    $('#opaque-nav').removeClass('is-visible');
 }

});

