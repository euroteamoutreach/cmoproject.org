var $ = require("jquery");

$(document).ready(function() {
  var scrollTop = $(window).scrollTop();

  if ($("body").hasClass("index")) {
    $(".back-to-top").on("click", function (e) {
      e.preventDefault();
      $("html,body").animate({
        scrollTop: 0
      }, 700);
    });
  }
});
