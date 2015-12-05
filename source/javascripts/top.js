$(document).ready(function() {
  var scrollTop = $(window).scrollTop();

  $(".back-to-top").on("click", function (e) {
    e.preventDefault();
    $("html,body").animate({
      scrollTop: 0
    }, 700);
  });
});
