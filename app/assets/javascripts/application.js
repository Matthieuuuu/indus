//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-slider
//= require bootstrap-datepicker
//= require chosen-jquery
  //= require_tree .

$(document).ready(function() {


  $(".chosen-select").chosen();


  $("#ex2").slider({
  });


  $(document).scroll(function(){
      if($(this).scrollTop() > 150) {
          $('#navbar').css({"background":"rgba(0,0,0,0.8)"});
      } else {
          $('#navbar').css({"background":"none"});
      }
  });

});
