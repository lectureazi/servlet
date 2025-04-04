<%@ page import="com.grepp.servlet.app.auth.Principal" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>

<%@include file="/WEB-INF/views/include/header.jsp" %>

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
            <td><c:out value="${principal.userId()}"/></td>
        </tr>
        <tr>
            <td>grant</td>
            <td><c:out value="${principal.grade()}"/></td>
        </tr>
        <tr>
            <td>login time</td>
            <td><c:out value="${principal.loginTime()}"/></td>
        </tr>
        </tbody>
    </table>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>
