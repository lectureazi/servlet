<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang='ko'>
<head>
    <title>Title</title>
    <%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="container">
    <h3>JSTL</h3>
    <pre>
	JSP 에서 사용하는 스크립틀릿의 복잡함을 해결하기 위해 등장한 사용자정의 태그
	변수 생성, 출력, 조건문, 반복문, formatting 등을 지원해준다.
    </pre>
    <c:set var="kor" value="100"/>
    <c:set var="math" value="200"/>
    <c:set var="html" value="<a href='https://www.naver.com'>naver로 이동</a>"/>

    <h4>1. out </h4>
    <div>kor : <c:out value="${kor}"/></div>
    <div>math : ${math}</div>

    <div>out html : <c:out value="${html}"/></div>
    <div>el html : ${html}</div>

    <div>out xss : <c:out value="${xss}"/></div>
    <div>el xss : ${xss}</div>

    <div class="divider"></div>

    <h4>2. 배열</h4>
    <c:set var="colors">
        red,blue,yellow,pink,green
    </c:set>
    <span>jstlArr : <c:out value="${colors}"/></span>

    <div class="divider"></div>

    <h4>3. jstl 조건문</h4>
    <h5>if</h5>
    <c:if test="${kor < math}">
        <span>국어를 더 잘하시는 군요?</span>
    </c:if>
    <c:if test="${kor >= math}">
        <span>수학을 더 잘하시는 군요?</span>
    </c:if>

    <h5>choose when otherwise</h5>
    <c:choose>
        <c:when test="${kor ge 90 }">
            <span>당신의 학점은 A 입니다.</span>
        </c:when>
        <c:when test="${kor ge 80 }">
            <span>당신의 학점은 B 입니다.</span>
        </c:when>
        <c:when test="${kor ge 70 }">
            <span>당신의 학점은 C 입니다.</span>
        </c:when>
        <c:when test="${kor ge 60 }">
            <span>당신의 학점은 D 입니다.</span>
        </c:when>
        <c:otherwise>
            <span>당신의 학점은 F 입니다.</span>
        </c:otherwise>
    </c:choose>

    <div class="divider"></div>

    <h4>4. jstl 반복문</h4>
    <h5>for</h5>
    <pre>
	var : i
	begin : 시작값
	end : 끝값
	step : 증가하는 크기
    </pre>
    <span>
	<c:forEach var="i" begin="0" end="10" step="1">
        ${i}
    </c:forEach>
    </span>

    <div class="divider"></div>

    <h5>forEach</h5>
    <pre>
    var : element
    items : collection
    varStatus : 회차 정보
    </pre>

    <table border="1">
        <tr>
            <th>index</th>
            <th>count</th>
            <th>value</th>
        </tr>
        <c:forEach var="color" items="${colors}" varStatus="status">
            <tr>
                <td><span>${status.index}</span></td>
                <td><span>${status.count}</span></td>
                <td><span>${color}</span></td>
            </tr>
        </c:forEach>
    </table>

    <div class="divider"></div>

    <h4>5. forTokens</h4>
    <pre>
	var     : token
	items   : 문자열
	delims  : 구분자
    </pre>
    <ul>
        <c:forTokens var='lang' items="java html css javascript oracle servlet" delims=" ">
            <li>
                    ${lang}
            </li>
        </c:forTokens>
    </ul>

    <div class="divider"></div>

    <h4>6. fmt</h4>
    <fmt:formatNumber value="123456.7891" pattern="#,###.##"/>
    <hr>
    <fmt:formatNumber value="12" pattern="#,#00.##"/>
    <hr>
    <fmt:formatNumber value="1" pattern="#,#00.0#"/>
    <hr>
    <fmt:formatNumber value="1234567891234.123456789" pattern="#,#00.##"/>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>
