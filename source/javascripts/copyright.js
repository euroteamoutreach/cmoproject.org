var $ = require('jquery');
var moment = require('moment');

$(function() {
  var year = moment().format('YYYY');
  $('.year').append(year);
});
