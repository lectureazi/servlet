<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.grepp.servlet.app.code.Grade" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<header class="header">
    <nav class="navbar white">
        <div class="nav-wrapper ">
            <a href="/" class="brand-logo grey-text">Grepp</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down grey-text">
                <c:choose>
                    <c:when test="${empty principal || principal.grade().equals(Grade.ANONYMOUS)}">
                        <li><a href="/member/login" class="grey-text">sign in</a></li>
                        <li><a href="badges.html" class="grey-text">sign up</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/member/logout" class="grey-text">logout</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
</header>