var $ = require('jquery');

$(document).ready(function() {
  $('.js-accordion-trigger').bind('click', function(e){
    $(this).parent().find('.submenu').slideToggle('fast');  // apply the toggle to the ul
    $(this).parent().toggleClass('is-expanded');
    $(this).parent().find('.fa-li').toggleClass('fa-minus-square-o');
    $(this).parent().find('.fa-li').toggleClass('fa-plus-square-o');
    e.preventDefault();
  });
});
