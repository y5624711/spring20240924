<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:forEach items="${countryList}" var="list">
    <li>${list}</li>
</c:forEach>

</body>
</html>
