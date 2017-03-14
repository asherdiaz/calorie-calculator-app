$(document).ready(function() {
	$("#calorieCounter").validate({
		rules: {
			weight: {
				required: true,
				maxlength: 3,
				digits: true
			},
			minutesActive: {
				required: true,
				maxLength: 3,
				digits: true
			},
			activity: {
				required: true
			}
		}
	});
});