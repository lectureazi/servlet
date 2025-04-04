<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>JSP - Hello World</title>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<div class="container" style="min-height: 85vh">
	<h4>성적입력</h4>
	<form class="col s12" action="/el/result" method="post">
		<div class="row">
			<div class="input-field col s7 ">
				<i class="material-icons prefix">account_circle</i>
				<input id="name" name="name" type="text" placeholder="name"
					   class="validate">
			</div>
			<div class="input-field col s7 ">
				<i class="material-icons prefix">mode_edit</i>
				<input id="kor" name="kor" type="number" placeholder="kor"
					   class="validate">
			</div>
			<div class="input-field col s7 ">
				<i class="material-icons prefix">mode_edit</i>
				<input id="eng" name="eng" type="number" placeholder="eng"
					   class="validate">
			</div>
			<div class="input-field col s7 ">
				<i class="material-icons prefix">mode_edit</i>
				<input id="math" name="math" type="number" placeholder="math"
					   class="validate">
			</div>
			<div class="input-field col s7 ">
				<i class="material-icons prefix">mode_edit</i>
				<input id="develop" name="develop" type="number" placeholder="develop"
					   class="validate">
			</div>
		</div>
		<button class="btn waves-effect waves-light offset-s1" type="submit" name="action">
			Submit
			<i class="material-icons right">send</i>
		</button>
	</form>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>


</body>
</html>