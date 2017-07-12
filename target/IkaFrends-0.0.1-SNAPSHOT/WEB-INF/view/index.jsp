<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<meta charset="utf-8">
	<!-- css -->
	<link href="<c:url value = "/resources/css/spectre.css" />" rel="stylesheet">
	<link href="<c:url value = "/resources/css/slidemenu.css" />" rel="stylesheet">
	<link href="<c:url value = "/resources/css/arrow/left-arrow.css" />" rel="stylesheet">
	<link href="<c:url value = "/resources/css/main.css" />" rel="stylesheet">
	<!-- Font Awsome -->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
			rel="stylesheet"
			integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
			crossorigin="anonymous">
			
	<!-- javascript -->	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src='<c:url value="resources/js/slidemenu.js"/>'></script>
	<script type="text/javascript" src='<c:url value="resources/js/main.js"/>'></script>
	
	<!-- viewport 必須 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>イカフレンズ</title>
</head> 
<body>
<!-- 動的データ表示用コピペコード -->


<!-- トップメニュー -->
<div id = "top-menu">
	<!-- font awsome	参考URL:http://univ.peraichi.com/39 -->
	<!-- <a href="twitter/signin"><i class="fa fa-twitter fa-2x fa-white twitter" aria-hidden="true"></i></a>  -->
	<c:if test = "${ empty Account }">
		<button class = "accountLogin ikamodoki">アカウントでログイン</button>
	</c:if>
	
</div>

<!-- サイドメニュー -->
<c:if test = "${ not empty Account }">
<div class="overlay" id="js__overlay"></div>

<nav class="side-menu">
	<div class="card">
		<div class="card-image">
			<!-- プロフィール背景画像 -->
			<img class="img-responsive" src="resources/img/splatoon2.jpg">
		</div>
		<div id = "profile">
			<div class="card-header">
				<!-- アイコン -->
				<div class = "icon"><img src="resources/img/smchrIcon.jpg" alt="icon"></div>

        		<h2 class="card-title">ユーザーネーム : <c:out value = "${ Account.user_name }"/></h2>
      		</div>
      	
      		<div class="profile-body">
      			<!-- ゲーム内情報を載せる -->
      			<span class = "wepon">メインブキ : チャージャー</span><br />
      			<span class = "udemae">ウデマエ : S+(画像を用意)</span>
      			<!-- チームアイコンの表示 -->
      			<div class = "teamIcon">
      				<img src="resources/img/team-icon.png" alt="team">
      				<p>cerisier</p>
      			</div>
      			<!-- アカウント情報を載せる -->
        		<blockquote>
					<cite>NNID : <c:out value = "${ Account.NNID }"/><br />
					Twitter : <c:out value = "${ Account.twitter_id }"/></cite>
				</blockquote>
      		</div>
      	</div>
	</div>
	<div id = "otherInfo">
		<!-- 自己紹介 -->
		<div class = "introduction">
      		<h2>プロフィール</h2>
      		<p>気軽にフォローしてくださいっ。<br />
      		最近大会はあまり出てませんが、レギュマガチマはよくやってます。<br />
      		夜間の活動活発です。</p>
    	</div>
    	
    	<!-- トロフィー -->
    	<div class = "Trophy">
    		<h2>トロフィー</h2>
    		<div class = "columns">
    			<!-- 矢印 ボタン -->
    			<div class = "column hide-xs hide-sm col-2">
    				<button class = "left-arrow"></button>
    			</div>
    			<!-- トロフィー1 -->
    			<div class = "column col-xs-6 col-sm-6 col-5">
    				<div class="trophy-card">
						<div class="trophy-image">
							<!-- トロフィー画像 -->
							<i class="fa fa-trophy fa-2x silver" aria-hidden="true"></i>
						</div>
						<div class="card-header">
        					<p class="trophy-title">インク杯</p>
      					</div>
      					<div class = "card-body">
      						<p class = "ranking">2位</p>
      					</div>
					</div>
    			</div>
    			<!-- トロフィー2 -->
    			<div class = "column col-xs-6 col-sm-6 col-5">
    				<div class="trophy-card">
						<div class="trophy-image">
							<!-- トロフィー画像 -->
							<i class="fa fa-trophy fa-2x gold" aria-hidden="true"></i>
						</div>
						<div class="card-header">
        					<p class="trophy-title">シャプマ杯</p>
      					</div>
      					<div class = "card-body">
      						<p class = "ranking">優勝</p>
      					</div>
					</div>
    			</div>
    		</div>
    	</div>
    	
    </div>
</nav>


<!-- 開閉用ボタン -->
<div class="side-menu-btn" id="js__sideMenuBtn">
	<div class = "ellipsis-v">
		<span class = "point top"></span>
		<span class = "point mid"></span>
		<span class = "point bot"></span>
	</div>
</div>
</c:if>
<!-- END/サイドメニュー -->

<div id = "container">
	<div class = "loginForm">	
		<f:form modelAttribute = "loginForm" action = "login" method = "post">
			<p>ユーザーネーム</p>
			<f:input path = "user_name"/>
			<p>パスワード</p>
			<f:input type = "password" path = "password"/>
			
			<div class = "submit">
				<input type = "submit" value = "ログイン">
			</div>
		</f:form>
	</div>
	
	<!-- ヘッダー -->
	<div id = "head">
		
	</div>
	<!-- END/ヘッダー -->
	
	<!-- 大会広告 -->
	<div id = "Tornament">
		<h2 class = "ikamodoki">トーナメント</h2>
		<div class = "columns">
			<div class = "column col-xs-12 col-sm-12 col-4">
				<div class="card">
					<div class="card-image">
					<img class="img-responsive" src="resources/img/splatoon2.jpg">
					</div>
					<div class="card-header">
        				<h2 class="card-title">シューター杯</h2>
        				<p class="card-meta">View 23519<br />
        				Date 2017-08-11</p>
      				</div>
      				<div class="card-body">
        				<p>シューター限定のシューター杯！<br />
        				優勝者には○○直筆オリジナルTwitterアイコンをプレゼント！<br />
        				優勝時にイカフレンズトロフィー(Slv.Lv)付与あります！<br />
        				Read More!!(リンクにする)</p>
      				</div>
				</div>
			</div>
			<div class = "column col-xs-12 col-sm-12 col-4">
				<div class="card">
					<div class="card-image">
					<img class="img-responsive" src="resources/img/chager.jpg">
					</div>
					<div class="card-header">
        				<h2 class="card-title">チャージャー杯</h2>
        				<p class="card-meta">View 354</p>
      				</div>
      				<div class="card-body">
        				<p>チャージャー限定大会開催！<br />
        				潜伏・キル・また潜伏・・・<br />
        				頭脳を使って生き残れ！！<br />
        				Read More!!(リンクにする)</p>
      				</div>
				</div>
			</div>
			<div class = "column col-xs-12 col-sm-12 col-4">
				<div class="col-content">col-4</div>
			</div>
		</div>
	</div>
	<!-- END/大会広告 -->
</div>
</body>
</html>
