$(document).ready(function() {
  var menuToggle = $('#js-mobile-menu-opa').unbind();
  $('#js-navigation-menu-opa').removeClass("show");

  menuToggle.on('click', function(e) {
    e.preventDefault();
    $('#js-navigation-menu-opa').slideToggle(function(){
      if($('#js-navigation-menu-opa').is(':hidden')) {
        $('#js-navigation-menu-opa').removeAttr('style');
      }
    });
  });
});

