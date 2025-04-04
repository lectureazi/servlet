<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>JSP - Hello World</title>
    <%@include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@include file="/WEB-INF/views/include/header.jsp"%>

<div class="container" style="min-height: 85vh">
    <h4>C_Redirect</h4>
    <div class="row">
        <form class="col s12" action="/session/login" method="post">
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
<%@ include file="/WEB-INF/views/include/footer.jsp"%>


</body>
</html>