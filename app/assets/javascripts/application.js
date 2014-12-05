//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-slider
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap-datepicker/locales/bootstrap-datepicker.fr.js
//= require chosen-jquery
//= require underscore
//= require gmaps/google
//= require twitter/typeahead


$().ready(function() {


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


