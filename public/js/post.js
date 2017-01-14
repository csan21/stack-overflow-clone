$(document).ready(function() {

  $('#upvote-post').on('submit', function(event) {
    event.preventDefault();
    var action = $(this).attr('action');
    var method = $(this).attr('method');

    $.ajax({
      method: method,
      url: action
    })

    .done(function(response) {
      console.log($("#vote-post h3"));

    });

	});
});
