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
    <h4>C_Redirect</h4>
    <div class="row">
        <form class="col s12" action="/member/login" method="post">
            <div class="row">
                <div class="input-field col s7 ">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="username" name="username" type="text" placeholder="username"
                           class="validate">
                </div>
                <div class="input-field col s7 ">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="password" name="password" type="password" placeholder="password"
                           class="validate">
                </div>
            </div>
            <button class="btn waves-effect waves-light offset-s1" type="submit" name="action">
                Submit
                <i class="material-icons right">send</i>
            </button>
        </form>
    </div>
</div>
<footer class="page-footer footer-copyright">
    <div class="center">
        copyright©2025. hmd All rights reserved
    </div>
</footer>
<script src="/assets/js/materialize.js"></script>

</body>
</html>