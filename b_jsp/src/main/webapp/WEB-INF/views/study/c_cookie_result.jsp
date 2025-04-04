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
    <div class="row">
        <div class="col s4">
            <div class="card">
                <div class="card-image">
                    <img src="<%= request.getAttribute("filePath") %>">
                    <span class="card-title"></span>
                </div>
                <div class="card-content">
                    <p><%= request.getAttribute("desc") %></p>
                </div>
                <div class="card-action">
                    <a href="/cookie/lang?search=<%=request.getAttribute("lastSearch")%>">
                        <%= request.getAttribute("lastSearch") %></a>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>