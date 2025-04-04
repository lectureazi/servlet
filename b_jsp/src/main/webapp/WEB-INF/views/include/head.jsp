<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="principal" value="${sessionScope.principal}"/>
<c:set var="context" value="${pageContext.request.contextPath}"/>

<head>
    <link href="/assets/css/materialize.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        .container{
          min-height: 85vh !important;
        }
    </style>
</head>

