<%@ page import="com.grepp.servlet.app.code.Grade" %>
<%@ page import="com.grepp.servlet.app.auth.Principal" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@include file="/WEB-INF/views/include/header.jsp"%>
<div class="container" style="min-height: 85vh">
    <ul class="collection with-header">
        <li class="collection-header"><h4>Welcome Servlet</h4></li>
        <li class="collection-item">
            <div>GET<a href="/request/get?subject=servlet" class="secondary-content"><i
                    class="material-icons">send</i></a></div>
        </li>
        <li class="collection-item">
            <div>POST
                <form action="/request/post" class="secondary-content">
                    <input type="hidden" name="subject" value="servlet" >
                    <button id="postSubmit" style="display:none"></button>
                </form>
                <label class="secondary-content" for="postSubmit"><i
                        class="material-icons">send</i></label>
            </div>
        </li>
        <li class="collection-item">
            <div>Forward<a href="/forward/servlet?name=anna&subject=servlet" class="secondary-content"><i
                    class="material-icons">send</i></a></div>
        </li>
        <li class="collection-item">
            <div>Redirect<a href="/redirect/page" class="secondary-content"><i
                    class="material-icons">send</i></a></div>
        </li>
        <li class="collection-item">
            <div>Cookie<a href="/cookie/page" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>Session<a href="/session/page" class="secondary-content"><i
                    class="material-icons">send</i></a></div>
        </li>
        <li class="collection-item">
            <div>Cache<a href="/cache" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>Filter<a href="/filter/error" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>Listener<a href="/listener/user" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>el-base<a href="/el/base" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>el-exam<a href="/el/exam" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
        <li class="collection-item">
            <div>jstl-base<a href="/jstl/page" class="secondary-content"><i class="material-icons">send</i></a>
            </div>
        </li>
    </ul>
</div>
<footer class="page-footer footer-copyright">
    <div class="center">
        copyright © 2025. hmd All rights reserved
    </div>
</footer>
<script src="/resources/js/materialize.js"></script>

</body>
</html>