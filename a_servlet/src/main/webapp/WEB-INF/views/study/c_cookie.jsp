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
    <h4>Cookie</h4>


    <form action="/cookie/lang">
        <div class="input-field col s12">
            <select name="search">
                <option value="" disabled selected>Choose your option</option>
                <option value="java">java</option>
                <option value="html">html</option>
                <option value="css">css</option>
                <option value="js">js</option>
            </select>
            <label>Materialize Select</label>
        </div>
        <button>전송</button>
    </form>

    <div id='cookieNote' class='note'></div>
</div>
<footer class="page-footer footer-copyright">
    <div class="center">
        copyright©2025. hmd All rights reserved
    </div>
</footer>
<script src="/assets/js/materialize.js"></script>
<script type="text/javascript">
  document.cookie = 'js-cookie=자바스크립트가 추가한 쿠키입니다.; max-age=20';
  document.querySelector('.note').innerHTML += document.cookie;

  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems);
  });
</script>
</body>
</html>