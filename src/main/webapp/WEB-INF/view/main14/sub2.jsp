<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        table, td, th {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
    <title>Title</title>
</head>
<body>
<p>이름:${actor.name}</p>
<p>소속사:${actor.agency}</p>
<p>생일:${actor.birth}</p>
<p>mbti:${actor.mbti}</p>
<p>
    작품
<ul>
    <c:forEach items="${actor.works}" var="work">
        <li>${work}</li>
    </c:forEach>
</ul>
</p>

<hr>
<table>
    <thead>
    <tr>
        <th>이름</th>
        <th>소속사</th>
        <th>mbti</th>
        <th>생일</th>
        <th>작품목록</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${actorList}" var="actor">
        <tr>

            <td>${actor.name}</td>
            <td>${actor.agency}</td>
            <td>${actor.mbti}</td>
            <td>${actor.birth}</td>
            <td>
                <ul>
                    <c:forEach items="${actor.works}" var="work">
                        <li>${work}</li>
                    </c:forEach>
                </ul>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<h1>${actor.name}</h1>
</body>
</html>