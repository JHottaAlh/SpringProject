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
	<link href="<c:url value = "/resources/css/main.css" />" rel="stylesheet">
		
	<!-- javascript -->	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src='<c:url value="resources/js/slidemenu.js"/>'></script>
	
	<title>イカフレンズ</title>
</head> 
<body>
<div class = "container">
	<!-- ヘッダー -->
	<div id = "head">
		
	</div>
	<!-- END/ヘッダー -->
	
	<!-- 大会広告 -->
	<div id = "Tornament">
		<h2>Tornament</h2>
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
