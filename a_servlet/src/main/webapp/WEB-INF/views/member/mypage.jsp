<%@ page import="com.grepp.servlet.app.auth.Principal" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP - Hello World</title>
    <link href="/assets/css/materialize.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>

<% Principal principal = (Principal) session.getAttribute("principal"); %>

<header class="header">
    <nav class="navbar white">
        <div class="nav-wrapper ">
            <a href="/" class="brand-logo grey-text">Grepp</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down grey-text">
                <li><a href="/member/logout" class="grey-text">logout</a></li>
            </ul>
        </div>
    </nav>
</header>

<div class="container" style="min-height: 85vh">
    <h4>C_Redirect</h4>
    <table>
        <thead>
        <tr>
            <th>name</th>
            <th>value</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>userId</td>
            <td><%= principal.userId() %></td>
        </tr>
        <tr>
            <td>grant</td>
            <td><%= principal.grade() %></td>
        </tr>
        <tr>
            <td>login time</td>
            <td><%= principal.loginTime() %></td>
        </tr>
        </tbody>
    </table>
</div>
<footer class="page-footer footer-copyright">
    <div class="center">
        copyright©2025. hmd All rights reserved
    </div>
</footer>
<script src="/assets/js/materialize.js"></script>


</body>
</html>
