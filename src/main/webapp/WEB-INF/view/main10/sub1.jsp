<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--javaBean의 get 메소드 사용시
get 빼고 앞글자를 소문자, () 제거 : property(속성)는 주로 필드명과 같다.
--%>
<p>${student.id}</p>
<p>${student.name}</p>
<p>${student.email}</p>

<hr>

<p>${student["id"]}</p>
<p>${student["name"]}</p>
<p>${student["email"]}</p>

<hr>

<p>${student.getId()}</p>
<p>${student.getName()}</p>
<p>${student.getEmail()}</p>
</body>
</html>
