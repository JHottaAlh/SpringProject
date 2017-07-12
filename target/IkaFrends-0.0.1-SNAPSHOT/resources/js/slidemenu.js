/**
 * 
 */

var able = function(){
	$("#js__overlay").css("pointer-events", "auto");
}

$(function () {
	var $body = $('body');
	//サイドメニューボタンが押されたら
	$('#js__sideMenuBtn').on('click', function () {
		
		//css内の.side-openが実行(指定要素を左に450pxずらす)＋サイドメニューを表示(初期は非表示状態)
		$body.toggleClass('side-open');
		$body.toggleClass('side-display');
		});
	//オーバーレイがクリックされたらサイドメニューを閉じる＋サイドメニューをまた非表示に
	$('#js__overlay').on('click', function () {
		$("#js__overlay").css("pointer-events", "none");
		setTimeout(able, 1000);
		$body.removeClass('side-open');
		$body.toggleClass('side-display');
	});
	
});