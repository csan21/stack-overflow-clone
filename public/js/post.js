$(document).ready(function() {

  $(document).on('submit', 'form #upvote-post', function(event) {
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

  $(document).on('submit', 'form #downvote-post', function(event) {
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
      $("h4").replaceWith(response);

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
      $("h4").replaceWith(response);

    });

	});



});
