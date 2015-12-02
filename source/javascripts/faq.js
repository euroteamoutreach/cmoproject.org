$(document).ready(function() {
  $('.js-accordion-trigger').bind('click', function(e){
    jQuery(this).parent().find('.submenu').slideToggle('fast');  // apply the toggle to the ul
    jQuery(this).parent().toggleClass('is-expanded');
    jQuery(this).parent().find('.fa-li').toggleClass('fa-minus-square-o');
    jQuery(this).parent().find('.fa-li').toggleClass('fa-plus-square-o');
    e.preventDefault();
  });
});
