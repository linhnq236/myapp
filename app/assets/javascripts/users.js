$( document ).on('turbolinks:load', function() {
  var bg = ["blue", "pink", "yellow","orange", "red", "#ccc"];
  var tx = ["white", "red", "blue","blue", "white","red"];
  color = Math.floor((Math.random() * 4) + 1);
  $(".login").css({"background": bg[color], "color": tx[color]});

})
