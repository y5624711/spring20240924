<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--var 속성의 이름으로 test 연산 결과가 el 객체(attribute)에 저장됨--%>
<c:if test="${param.age < 20}" var="forKids">
    <p>어린이용 컨텐츠1</p>
</c:if>
<c:if test="${param.age >= 20}" var="forAdults">
    <p>성인용 컨텐츠1</p>
</c:if>

<hr>

<%--<c:if test="${param.age < 20}">--%>
<c:if test="${forKids}">
    <p>어린이용 컨텐츠2</p>
</c:if>
<%--<c:if test="${param.age >= 20}">--%>
<c:if test="${forAdults}">
    <p>성인용 컨텐츠2</p>
</c:if>

<hr>
<%--loc요청 파라미터가 kr이면 한국컨텐츠, us면 미국컨텐츠--%>
<c:if test="${param.loc eq 'kr'}" var="krContents">
    <p>한국컨텐츠1</p>
</c:if>

<c:if test="${param.loc eq 'us'}" var="usContents">
    <p>미국컨텐츠1</p>
</c:if>
<p>여러 코드들....</p>
<c:if test="${krContents}">
    <p>한국컨텐츠2</p>
</c:if>
<c:if test="${usContents}">
    <p>미국컨텐츠2</p>
</c:if>


</body>
</html>
