<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>국가</h1>
<p>${countries[0]}</p>
<p>${countries[1]}</p>
<p>${countries[2]}</p>
<hr>
<h1>섬</h1>
<p>${islands[0]}</p>
<p>${islands[1]}</p>
<p>${islands[2]}</p>
<hr>
<h1>점수</h1>
<p>${points[0]}</p>
<p>${points[1]}</p>
<p>${points[2]}</p>
<hr>
<!-- html 주석 응답 포함됨-->
<%--  jsp 주석 : 응답 포함 안됨--%>
<p>${countries['0']}</p> <%--배열 인덱스로 문자열 사용가능--%>
<p>${countries["1"]}</p>
<p>${countries[2]}</p>
</body>
</html>
