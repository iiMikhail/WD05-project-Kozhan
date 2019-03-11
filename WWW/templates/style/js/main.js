$(document).ready(function() {

	$('#nocomment').hide(); 
	checkComment = (function(){
	var init = function() {
		_setUpListeners();
	}
	var _setUpListeners = function() {
		$('#button-comment-send').on('click', function(event) {
			validateForm(event);
		});
	}
	var validateForm = function(event) {
		if( $('#addCommentUser').val().trim() == '' ) {
			$('#nocomment').show();
			event.preventDefault();
		} else {
			$('#nocomment').hide(); 
			event.submit();
		}
	}
	return {
		init
	}
	}());
	checkComment.init();



	setTimeout(function(){
		$('#notify-created').slideUp(500)
	}, 400),
	setTimeout(function(){
		$('#notify-updaded').slideUp(500)
	}, 400),
	setTimeout(function(){
		$('#notify-sended').slideUp(500)
	}, 400)

});