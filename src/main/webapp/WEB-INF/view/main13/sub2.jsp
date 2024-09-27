<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>/main13/sub2</h2>
<%--
JSTL : JSP Standard Tage Library (표준 태그 목록)
맨 위에 taglib 추가
반복된 코드 실행
출력 여부--%>

<%--
if
--%>
<h2> -- if -- </h2>
<c:if test="true">
    <p>출력</p>
</c:if>

<c:if test="${param.g == '남자'}">
    <p>남자입니다.</p>
</c:if>

<c:if test="${param.g =='여자'}">
    <p>여자 입니다.</p>
</c:if>

<c:if test="${param.age<13}">
    <p>어린이이용 콘텐츠</p>
</c:if>
<c:if test="${13 <= param.age && param.age<20}">
    <p>청소년용 컨텐츠</p>
</c:if>

<c:if test="${param.age >= 20}">
    <p>성인용 컨텐츠</p>
</c:if>

<hr>

<%--request parameter 'country'의 값에 따라 다른 요소 출력--%>

<%--country가 uk이면--%>
<c:if test="${param.country == 'uk'}">
    <p>해리케인</p>
</c:if>


<%--country가 jp이면--%>
<c:if test="${param.country == 'jp'}">
    <p>오타니</p>
</c:if>


<%--country가 kr이면--%>
<c:if test="${param.country == 'kr'}">
    <p>손흥민</p>
</c:if>

<hr>
</body>
</html>
