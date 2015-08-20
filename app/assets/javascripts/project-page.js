$(function() {

	$('.like-project').on('click', function() {

		var $likeButton = $('.like-project').find('span')
		console.log($likeButton)

		if ($likeButton.hasClass('unselected')) {

			$('.like-project-text').text('Unlike')
			liked = true;
			var $heart = $(this).find('.glyphicon');
			$heart.addClass('selected').removeClass('unselected');

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
			$heart.addClass('unselected').removeClass('selected');

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