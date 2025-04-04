<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="/WEB-INF/views/include/head.jsp"%>
</head>
<body>

<%@include file="/WEB-INF/views/include/header.jsp"%>

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

<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>