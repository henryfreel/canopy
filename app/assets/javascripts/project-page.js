$(function() {

	$('.like-project').on('click', function() {

		var $likeButton = $('.like-project').find('span')
		console.log($likeButton)

		if ($likeButton.hasClass('heart-unselected')) {

			liked = true;
			var $heart = $(this).find('.glyphicon');
			$heart.addClass('heart-selected').removeClass('heart-unselected');

			$('.like-project-text').text("Unlike");

			var likeCount = $('#like-counter').text();
			likeCount = Number(likeCount);
			likeCount += 1;

			if (likeCount > 1) {
				$('#like-counter-text').text('Likes');
			} else {
				$('#like-counter-text').text('Like');
			}

			likeCount = likeCount.toString();
			$('#like-counter').text(likeCount);

			$.post('/likes', {
				like: { project_id: $(this).attr('data-id') }
			},
			function (data) {
				console.log(data)
			});

		} else {

			$('.like-project-text').text('Like')
			liked = false;
			var $heart = $(this).find('.glyphicon');
			$heart.addClass('heart-unselected').removeClass('heart-selected');

			var likeCount = $('#like-counter').text();
			likeCount = Number(likeCount);
			likeCount -= 1;

			if (likeCount < 1) {
				$('#like-counter-text').text('Likes');
			} else {
				$('#like-counter-text').text('Like');
			}

			likeCount = likeCount.toString();
			$('#like-counter').text(likeCount);

			$.ajax({
			  type: 'DELETE',
			  url: '/likes/' + $(this).attr('data-id'),
			  success: function (data) {
						console.log(data)
						},
				dataType: 'json'
			});

		}

	});

	$('#most-popular').on('click', function() {
		$('#projects-by-recent').css('display', 'none');
		$('#projects-by-likes').css('display', 'block');
		$('#sort-by-text').text('Most Popular');
	});

	$('#most-recent').on('click', function() {
		$('#projects-by-recent').css('display', 'block');
		$('#projects-by-likes').css('display', 'none');
		$('#sort-by-text').text('Most Recent');
	});


}); //end of function