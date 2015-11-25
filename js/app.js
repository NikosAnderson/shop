$(function() {

	if ($('form.search #price').length > 0) {
		$('form.search #price').slider({});
	}

	if ($('.products').length > 0) {
		$('.products').isotope({
			itemSelector : '.product'
		});
	}

});