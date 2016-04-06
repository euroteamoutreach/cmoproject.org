var $ = require("jquery");

$(document).ready(function() {

  if ($("body").hasClass("index")) {
    var scrollTop = $(window).scrollTop();
    $(".back-to-top").on("click", function (e) {
      e.preventDefault();
      $("html,body").animate({
        scrollTop: 0
      }, 700);
    });
  }
});
