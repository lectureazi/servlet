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
                <li><a href="sass.html" class="grey-text">sign in</a></li>
                <li><a href="badges.html" class="grey-text">sign up</a></li>
            </ul>
        </div>
    </nav>
</header>

<div class="container" style="min-height: 85vh">
    <h4>B_Forward</h4>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>subject</th>
            <th>score</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%= request.getParameter("name")%></td>
            <td><%= request.getParameter("subject")%></td>
            <td><%= request.getAttribute("score")%></td>
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