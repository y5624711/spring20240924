<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main21/sub9" method="post">
    <input type="text" name="userName" value="son">
    <br>
    <input type="number" name="age" value="33">
    <br>
    <input type="checkbox" name="foodList" value="pizza">
    피자
    <br>
    <input type="checkbox" name="foodList" value="burger">
    버거
    <br>
    <input type="checkbox" name="foodList" value="coffee">
    커피
    <br>
    <input type="date" name="startDate">
    <br>
    <input type="datetime-local" name="endDateTime">
    <br>
    <input type="checkbox" name="expired" value="true">
    유효여부
    <br>
    <input type="number" name="score" value="3.14" step="0.01">
    <br>
    <button>전송</button>
</form>
</body>
</html>
