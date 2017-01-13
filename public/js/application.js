$(document).ready(function() {
  $(document).on("click",".container .dropdown .dropdown-menu li a", function(event){
    event.preventDefault();
    var id = $(this).attr("href");
    var lang = $(this).text();
    $.ajax({
      method: "post",
      url: "/categories",
      data: {id: id, language: lang}
    })
    .done(function(response){
      $(".container").replaceWith(response)
    });
  })
});
