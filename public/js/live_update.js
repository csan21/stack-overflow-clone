function getRandomColor() {
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}



var startLive = window.setInterval(
     function(){
       $.ajax({
         method: "POST",
         url: "/"
       })
       .done(function(response){
         $("#questions-homepage").replaceWith(response);
       });

      //  $(document).css("background-color","black");
     },
     10000  /* 10000 ms = 10 sec */
);
