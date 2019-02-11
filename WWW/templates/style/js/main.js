$(document).ready(function() {
	
	$(".left-panel").customScrollbar({preventDefaultScroll: true});

	setTimeout(function(){
		$('#notify-created').slideUp(500)
	}, 400),
	setTimeout(function(){
		$('#notify-updaded').slideUp(500)
	}, 400)
});