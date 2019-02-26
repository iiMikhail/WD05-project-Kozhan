$(document).ready(function() {
	$('#fmail').hide();

	checkLogin = (function(){
		var init = function() {
			_setUpListeners();
		}
		var _setUpListeners = function() {
			$('#buttonreg').on('click', function(event) {
				validateForm(event);
			});
		}
		var validateForm = function(event) {
			var patern = /^[a-z0-9_-]+@[a-z0-9-]+\.([a-z]{1,6}\.)?[a-z]{2,6}$/i;
			if ( patern.test( $('#input-reg-email').val()) == true ){
				$('#fmail').hide();
				event.submit();
				console.log("submit");
			} else {
				$('#fmail').show();
				event.preventDefault();
				console.log("preventDefault");
			}
		}
		return {
			init
		}
	}());
checkLogin.init();
});