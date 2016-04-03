var $ = require("jquery");

$(document).ready(function() {
  var menuToggle = $("#js-mobile-menu-tra").unbind();
  $("#js-navigation-menu-tra").removeClass("show");

  menuToggle.on("click", function(e) {
    e.preventDefault();
    $("#js-navigation-menu-tra").slideToggle(function(){
      if($("#js-navigation-menu-tra").is(":hidden")) {
        $("#js-navigation-menu-tra").removeAttr("style");
      }
    });
  });
});

