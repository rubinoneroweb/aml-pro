// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
// require jquery.turbolinks
//= require jquery_ujs
//= require foundation

//= require_tree .
$(function(){ $(document).foundation()});

// require turbolinks

function pad(n) {
    return (n < 10) ? ("0" + n) : n;
}
 

var stopTime;

stopTime = function() {
    var now = new Date($.now())
  $('#job_completed_at').val(new Date($.now()));
  $('#buttonstop').attr('disabled', true);
  h = now.getHours(); // 0-24 format
  m = now.getMinutes();
  $('#stopLabel').text(h + " : " + pad(m));
};


startTime = function() {
    var now = new Date($.now())
  $('#job_started_at').val(now);
  $('#buttonstart').attr('disabled', true);
 // $('#buttonstop').attr('disabled', false);
  h = now.getHours(); // 0-24 format
  m = now.getMinutes();
  $('#startLabel').text(h + " : " + pad(m));
};