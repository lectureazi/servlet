<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>JSP - Hello World</title>
	<link href="/assets/css/materialize.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<header class="header">
	<nav class="navbar white">
		<div class="nav-wrapper ">
			<a href="/" class="brand-logo grey-text">Grepp</a>
			<ul id="nav-mobile" class="right hide-on-med-and-down grey-text">
				<li><a href="sass.html" class="grey-text">sign in</a></li>
				<li><a href="badges.html" class="grey-text">sign up</a></li>
			</ul>
		</div>
	</nav>
</header>
<div class="container" style="min-height: 85vh">
	<h4>Listener</h4>
	<h5><%= application.getAttribute("sessionCnt") %> 명 접속 중입니다.</h5>
</div>

<footer class="page-footer footer-copyright">
	<div class="center">
		copyright©2025. hmd All rights reserved
	</div>
</footer>
<script src="/assets/js/materialize.js"></script>
</body>
</html>