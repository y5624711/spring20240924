<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:forEach items="${people}" var="person">
    <p>${person.getKey()} : ${person.getValue()}</p>
</c:forEach>


<c:forEach items="${people}" var="person">
    <p>${person.key} : ${person.value}</p>
</c:forEach>
<hr>
<c:forEach items="${players}" var="player">
    <div style="margin: 30px">
        <p>이름 : ${player.key}</p>
        <p>소속 : ${player.value}</p>
    </div>
</c:forEach>
<hr>
<c:forEach items="${food}" var="f">
    <div style="margin: 30px;">
        <p>종류 : ${f.key}</p>
        <p>상품 : ${f.value}</p>
    </div>
</c:forEach>
</body>
</html>