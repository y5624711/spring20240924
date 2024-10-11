<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--method : 전송 방식(기본값 get)--%>
<%--get : 주소의 쿼리스트링(?~)으로 붙음, 주소란에 노출되고, 길이 제한이 있음--%>
<%--post : 요청 메시지 본문(body)에 붙는다, 주소란에 노출되지 않고 길이의 제한이 없다.--%>


<form action="/main20/sub2" method="post">
    <input type="text" name="name">
    <br>
    <%--주소창에 노출--%>
    <input type="password" name="pw">
    <br>
    <%--주소란에 작성될 수 있는 문자열의 길이는 제한되어 있다.--%>
    <textarea name="note" id="" cols="30" rows="10">
    매우 긴 글
  </textarea>
    <button>전송</button>
</form>
<hr>
<form action="/main20/sub3">
    <%--  select>option[value=val$][val$]*3--%>
    <select name="sel" id="">
        <option value="val1">val$="">val1</option>
        <option value="val2">val$="">val2</option>
        <option value="val3">val$="">val3</option>
    </select>
    <br>
    <input type="date" name="birth">
    <br>
    <input type="number" name="age" value="30">
    <br>
    <button>전송</button>
</form>

</body>
</html>
