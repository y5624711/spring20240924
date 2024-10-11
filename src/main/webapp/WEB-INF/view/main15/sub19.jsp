<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--attribute 추가 코드 작성--%>
<c:set var="car" value="테슬라" scope="page"/>
<c:set var="car" value="기아" scope="request"/>
<c:set var="car" value="현대" scope="session"/>
<c:set var="car" value="삼성" scope="application"/>

<hr>
<p>${car}</p> <%--테슬라--%>
<p>${pageScope.car}</p>
<p>${requestScope.car}</p> <%--기아--%>
<p>${sessionScope.car}</p> <%--현대--%>
<p>${applicationScope.car}</p> <%--삼성--%>

<hr>
<c:set var="model" value="아반떼"/>
<c:set var="model" value="제네시스" scope="request"/>
<c:set var="model" value="모하비" scope="session"/>
<c:set var="model" value="소렌토" scope="application"/>

<c:set var="food" value="피자" scope="request"/>
<c:set var="food" value="버거" scope="session"/>
<c:set var="food" value="돈까스" scope="application"/>

<p>${model}</p>
<p>${requestScope.model}</p>
<p>${sessionScope.model}</p>
<p>${applicationScope.model}</p>
<p>${food}</p>
<p>${sessionScope.food}</p>
<p>${applicationScope.food}</p>
<hr>

<%--var값이 page영역에 저장된다.--%>
<c:if test="true" var="someTest"></c:if>

<c:if test="${someTest}"></c:if>

<%--<c:import url="/WEB-INF/view/main15/sub15.jsp" var="sub19output" scope="page"/>--%>
</body>
</html>
