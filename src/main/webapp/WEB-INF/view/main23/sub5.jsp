<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>국가명</h3>

<c:forEach items="${Country}" var="c">
    <li>${c}</li>
</c:forEach>
</body>
</html>
