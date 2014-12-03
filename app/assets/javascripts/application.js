//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-slider
  //= require_tree .

$(document).ready(function() {

  $("#ex2").slider({
  });


  $(document).scroll(function(){
      if($(this).scrollTop() > 150) {
        console.log("haut");
          $('#navbar').css({"background":"rgba(0,0,0,0.8)"});
      } else {
        console.log("bsa");
          $('#navbar').css({"background":"rgba(255,255,255,0)"});
      }
  });

});
