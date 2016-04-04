var $ = require("jquery");

(function ($) {
  $.mark = {
    jump: function (options) {
      var defaults = {
        selector: "a.scroll-on-page-link"
      };
      if (typeof options == "string") {
        defaults.selector = options;
      }

      options = $.extend(defaults, options);
      return $(options.selector).click(function (e) {
        var jumpobj = $(this);
        var target = jumpobj.attr("href");
        var thespeed = 500;
        var offset = $(target).offset().top;
        $("html,body").animate({
          scrollTop: offset
        }, thespeed, "swing");
        e.preventDefault();
      });
    }
  };
})($);


$(function(){
  $.mark.jump();
});
