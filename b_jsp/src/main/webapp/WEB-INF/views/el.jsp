<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Insert title here</title>
    <meta charset="UTF-8">
    <%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="container">
    <h4>pageContext 객체 </h4>
    <span>pageContext : ${pageContext}</span>

    <h4>EL 사용하기</h4>
    <%-- <%= request.getParameter("name") %> --%>
    <span>이름 : ${param.name}</span>
    <%-- <%= request.getAttribute("sum") %> --%>
    <span>합계 : ${requestScope.sum}</span>
    <%-- 속성명만 작성하면 가까운 스코프부터 해당 속성명을 가진 값을 탐색
        pageContext > request > session > context
    --%>
    <span>평균 : ${avg}</span>

    <h4>1. dto에서 데이터 꺼내쓰기</h4>
    <span>이름 : ${requestScope.student.name}</span>
    <span>국어 : ${student.kor}</span>
    <span>수학 : ${requestScope.student.math}</span>
    <span>영어 : ${student.eng}</span>
    <span>코딩 : ${requestScope.student.develop}</span>
    <span>합계 : ${student.sum}</span>
    <span>평균 : ${requestScope.student.avg}</span>

    <h4>2. map에서 데이터 꺼내쓰기</h4>
    <span>이름 : ${requestScope.studentMap.name}</span>
    <span>국어 : ${studentMap.kor}</span>
    <span>수학 : ${requestScope.studentMap.math}</span>
    <span>영어 : ${studentMap.eng}</span>
    <span>코딩 : ${requestScope.studentMap.develop}</span>
    <span>합계 : ${studentMap.sum}</span>
    <span>평균 : ${requestScope.studentMap.avg}</span>

    <h4>3. array/list에서 데이터 꺼내쓰기</h4>
    <span>이름 : ${requestScope.studentList[0].name}</span>
    <span>국어 : ${studentList[0].kor}</span>
    <span>수학 : ${requestScope.studentList[0].math}</span>
    <span>영어 : ${studentList[0].eng}</span>
    <span>코딩 : ${requestScope.studentList[0].develop}</span>
    <span>합계 : ${studentList[0].sum}</span>
    <span>평균 : ${requestScope.studentList[0].avg}</span>

    <h4>cookie.name</h4>
    <span>JSESSION : ${cookie.JSESSIONID.value}</span>

    <h4>session 확인</h4>
    <span>${sessionScope.name} 님 반갑습니다.</span>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>