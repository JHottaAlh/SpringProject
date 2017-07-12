/**
 *jsが適用できているかのチェックでアラートを使う 
 */
//alert("こんにちは"); 

$(function () {
	var $login = $('#container');
	$('.accountLogin').on('click', function () {
		$login.toggleClass('login-display');
		
		
	});
});