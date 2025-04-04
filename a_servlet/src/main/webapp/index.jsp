<%@ page import="com.grepp.servlet.app.auth.Principal" %>
<%@ page import="com.grepp.servlet.app.code.Grade" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
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
                <% Principal principal = (Principal) session.getAttribute("principal");
                    if(principal == null || principal.grade().equals(Grade.ANONYMOUS)) {
                %>
                <li><a href="/member/login" class="grey-text">sign in</a></li>
                <li><a href="badges.html" class="grey-text">sign up</a></li>
                <%
                } else {
                %>
                <li><a href="/member/logout" class="grey-text">logout</a></li>
                <%
                    }
                %>
            </ul>
        </div>
    </nav>
</header>

<div class="container" style="min-height: 85vh">
    <ul class="collection with-header">

        <% if(principal == null || principal.grade().equals(Grade.ANONYMOUS)) {
        %>
        <li class="collection-header"><h4>Welcome Servlet</h4></li>
        <%
            } else {
        %>
        <li class="collection-header"><h4>Welcome <%= principal.userId() %></h4></li>
        <%
            }
        %>

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
    </ul>
</div>
<footer class="page-footer footer-copyright">
    <div class="center">
        copyright©2025. hmd All rights reserved
    </div>
</footer>

</body>
</html>