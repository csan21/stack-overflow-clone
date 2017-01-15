$(document).ready(function() {

  $(document).on('submit', '#upvote-post', function(event) {
    event.preventDefault();
    var action = $(this).attr('action');
    var method = $(this).attr('method');
    var form_data = $(this).serialize();

    $.ajax({
      method: method,
      url: action,
      data: form_data
    })

    .done(function(response) {
      $("#vote-count-post").replaceWith(response);
      console.log(response)
    });

	});

  $(document).on('submit', '#downvote-post', function(event) {
    event.preventDefault();
    var action = $(this).attr('action');
    var method = $(this).attr('method');
    var form_data = $(this).serialize();

    $.ajax({
      method: method,
      url: action,
      data: form_data
    })

    .done(function(response) {
      $("#vote-count-post").replaceWith(response);
    });

	});

  $(document).on('submit', '#upvote-comment',function(event) {
    event.preventDefault();
    var action = $(this).attr('action');
    var method = $(this).attr('method');
    var form_data = $(this).serialize();

    $.ajax({
      method: method,
      url: action,
      data: form_data
    })

    .done(function(response) {
      $("#comment-" + response.id ).replaceWith(response.response);
      console.log(response.response)
    });

	});

  $(document).on('click', '#downvote-comment',function(event) {
    event.preventDefault();
    var action = $(this).attr('action');
    var method = $(this).attr('method');
    var form_data = $(this).serialize();

    $.ajax({
      method: method,
      url: action,
      data: form_data
    })

    .done(function(response) {
      $("#comment-" + response.id ).replaceWith(response.response);
      console.log(response.response)
    });

	});



});
