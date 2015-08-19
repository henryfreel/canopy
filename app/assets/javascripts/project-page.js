$(function() {

	$('.like-project').on('click', function() {

		var $likeButton = $('.like-project').find('span')
		console.log($likeButton)

		if ($likeButton.hasClass('glyphicon-heart-empty')) {

			$('.like-project-text').text('Unlike')
			liked = true;
			var $heart = $(this).find('.glyphicon');
			$heart.removeClass('glyphicon-heart-empty').addClass('glyphicon-heart');

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
			$heart.removeClass('glyphicon-heart').addClass('glyphicon-heart-empty');

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

});