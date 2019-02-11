$(document).ready(function() {
	$('#nomail').hide();
	$('#nopas').hide();
	$('#fmail').hide();
	// $('#noacc').hide();

	checkLogin = (function(){
		// var UserMail = 'mail@mail.ru';
		var init = function() {
			_setUpListeners();
		}
		var _setUpListeners = function() {
			$('.button').on('click', function(event) {
				validateForm(event);
			});
			$('#mail').on('click', function(event) {
				$('#nomail').hide();
				$('#fmail').hide();
				// $('#noacc').hide();
			});
			$('#password').on('click', function(event) {
				$('#nopas').hide();
				// $('#noacc').hide();
			});
		}
		var validateForm = function(event) {
			event.preventDefault();
			//  validate e-mail
			if( $('#input-reg-email').val().trim() == '' ) {
				$('#nomail').show();
			} else {
				$('#nomail').hide();
			}
			var patern = /^[a-z0-9_-]+@[a-z0-9-]+\.([a-z]{1,6}\.)?[a-z]{2,6}$/i;
			if ( $('#input-reg-email').val() !== '' ) {
				if ( patern.test( $('#input-reg-email').val() ) ){
					$('#fmail').hide();
				} else {
					$('#fmail').show();
				}
			}
			// validate password
			if( $('#input-reg-password').val().trim() == '' ) {
				$('#nopas').show();
			} else {
				$('#nopas').hide();
			}
			// end validate password

			// validate accaunt
			// if ( ( $('#input-reg-email').val() !== '' ) && ( $('#input-reg-password').val() !== '' ) && ( patern.test( $('#mail').val() ) ) ) {
			// 	if( ( $('#input-reg-email').val() === UserMail ) ) {
			// 	$('#noacc').show();
			// 	}	else {
			// 	$('#noacc').hide();
			// 	// window.open('success.html');
			// 	}
			// }
			// end validate account
		}
		return {
			init
		}
	}());
checkLogin.init();
});