<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
	<title>JSP - Hello World</title>
	<%@include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@include file="/WEB-INF/views/include/header.jsp"%>
<div class="container" style="min-height: 85vh">
	<h4>Listener</h4>
	<h5><%= application.getAttribute("sessionCnt") %> 명 접속 중입니다.</h5>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>