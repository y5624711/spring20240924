<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        td, th {
            border: 1px solid black;
            text-align: center;
        }
    </style>
</head>
<body>
<table style="border-collapse: collapse; width:100%">
    <thead>
    <tr>
        <th>이름</th>
        <th>성</th>
        <th>생일</th>

    </tr>
    </thead>

    <tbody>
    <c:forEach items="${employList}" var="emp">
        <tr>
            <td>${emp.lastName}</td>
            <td>${emp.firstName}</td>
            <td>${emp.birthDate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
