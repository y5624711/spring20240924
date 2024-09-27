<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${products[0]}</p>
<p>${products[1]}</p>
<p>${products[2]}</p>
<hr>

<c:forEach begin="0" end="2" var="i">
    <p>${products[i]}</p>
</c:forEach>
<hr>
<c:forEach begin="0" end="${products.size()-1}" var="i">
    <p>${products[i]}</p>
</c:forEach>
<hr>
<%--items: 반복할 attribute--%>
<%--var : 각 아이템이 들어갈 attribute 명--%>
<c:forEach items="${products}" var="prodcut">
    <p>${prodcut}</p>
</c:forEach>

<hr>
<%--<p>오타니</p>--%>
<%--<p>흥민</p>--%>
<%--<p>범근</p>--%>
<%--<p>케인</p>--%>
<%--<p>지성</p>--%>
<c:forEach items="${players}" var="player">
    <p>${player}</p>
</c:forEach>

<hr>

<c:forEach items="${cityList}" var="city">
    <ul>
        <li>${city}</li>
    </ul>
</c:forEach>
</body>
</html>
