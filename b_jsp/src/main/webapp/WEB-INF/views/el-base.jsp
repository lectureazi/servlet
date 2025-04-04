<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>

<body>
<%--
    ${}  ==  <%= %>
    el표기법 : 자바 bean 객체의 값들을 편하게 사용하기 위해 제공되는 표기법
    자바 bean 규약을 따르는 객체 자바 bean객체라고 한다.
    자바 bean 규약 : 기본 생성자, 캡슐화, getter/setter
    request.setAttribute/getAttribute, session, servletContext

    ${} : 객체 프로퍼티에서 값을 꺼낼 때 주로 사용
    #{} : 객체 프로퍼티에 값을 넣을 때 주로 사용 (x)
 --%>
<div class="container">
	<h4>EL 리터럴 표현식</h4>
	<span>문자열 : ${"문자열 테스트"}</span>
	<span>정수 : ${20}</span>
	<span>실수 : ${20.5}</span>
	<span>boolean : ${true}</span>
	<%-- null이 담길 경우 공백으로 출력 --%>
	<span>null : ${null}</span>

	<h4>EL 연산자</h4>
	<pre>산술연산자, 논리연산자, 비교연산자, 삼항연산자, empty 연산자</pre>
	<h4>산술연산자 (+ - * / %)</h4>
	<span> 1 + 1 : ${1 + 1}</span>
	<span> 1 - 1 : ${1 - 1}</span>
	<span> 2 * 3 : ${2 * 3}</span>
	<span> 2 / 3 : ${2 / 3}</span>
	<span> 2 % 3 : ${2 mod 3}</span>

	<h4>논리연산자</h4>
	<span> true && false : ${true && false}</span>
	<span> true || false : ${true || false}</span>
	<span> !false : ${!false}</span>
	<span> true and false : ${true and false}</span>
	<span> true or false : ${true or false}</span>
	<span> not false : ${not false}</span>

	<h4>비교연산자</h4>
	<pre>
	크다 : > gt
	작다 : &lt  lt
	크거나 같다 : >= ge
	작거나 같다 : &lt= le
	</pre>
		<span> 1 == 2 : ${1 == 2}</span>
		<span> 1 != 2 : ${1 != 2}</span>
		<span> 1 > 2 : ${1 gt 2}</span>
		<span> 1 lt 2 : ${1 < 2}</span>
		<span> 1 >= 2 : ${1 ge 2}</span>
		<span> 1 le 2 : ${1 <= 2}</span>

		<h4>삼항연산자</h4>
		<span>1 > 2? "크다" : "작다"  >>>  결과: ${1 > 2?"크다":"작다"}</span>

		<h4>empty 연산자</h4>
		<pre>
		값이 null 이면 true
		문자, 배열, collection 의 length 가 0이면 true
		이외에는 false
	</pre>
		<span>
		empty null : ${empty null}
	</span>
		<span>
		empty sessionScope.name : ${empty sessionScope.name}
	</span>
</div>
</body>
</html>