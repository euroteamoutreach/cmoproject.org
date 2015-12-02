$(document).ready(function() {
  $('.js-accordion-trigger').bind('click', function(e){
    jQuery(this).parent().find('.submenu').slideToggle('fast');  // apply the toggle to the ul
    jQuery(this).parent().toggleClass('is-expanded');
    jQuery(this).find('.fa').toggleClass('fa-minus-square-o');
    jQuery(this).find('.fa').toggleClass('fa-plus-square-o');
    e.preventDefault();
  });
});
