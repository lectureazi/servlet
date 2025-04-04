
<%@ page isErrorPage="true" %>
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

<%--
    web.xml 에 CommonException을 처리하기 위한 error-page 등록
    error.jsp 에 isErrorPage="true" 등록
    Servlet에서 예외 던지고 확인하기
--%>

<div class="container" style="min-height: 85vh">
    <h4><%= exception.getMessage() %></h4>
</div>
<footer class="page-footer footer-copyright">
    <div class="center">
        copyright©2025. hmd All rights reserved
    </div>
</footer>
<script src="/assets/js/materialize.js"></script>

</body>
</html>