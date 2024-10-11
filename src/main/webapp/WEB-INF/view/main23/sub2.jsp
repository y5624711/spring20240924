<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객이름</h3>
<c:forEach items="${nameList}" var="list">
    <li>${list}</li>
</c:forEach>

</body>
</html>
