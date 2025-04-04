<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>JSP - Hello World</title>
    <%@include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@include file="/WEB-INF/views/include/header.jsp"%>

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
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
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