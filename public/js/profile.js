$(document).ready(function(){
  $(document).on("click", "#profile-tab", function(event){
    event.preventDefault();
    var method = "get";
    var action = $(this).find("a").attr("href");
    $(this).attr("class", "active")
    $('#activity-tab').removeClass('active');
    $.ajax({
      method: method,
      url: action
    })
    .done(function(response){
      $(".container").replaceWith(response)
      $('#profile-tab').addClass('active');
    });
  });
  $(document).on("click", "#activity-tab", function(event){
    event.preventDefault();
    var method = "get";
    var action = $(this).find("a").attr("href");
    $.ajax({
      method: method,
      url: action
    })
    .done(function(response){
      $('#profile-tab').removeClass('active');
      $(".container").replaceWith(response)
      $('#activity-tab').addClass('active');
    });

  });
})
