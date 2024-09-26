<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${students[0]}</p>
<p>${students[1]}</p>
<p>${students[2]}</p>
<hr>
<p>${num}</p>
<p>${index}</p>
<p>${point}</p>
<hr>
<p>${students[num]}</p> <%--${students[0]}--%>
<p>${students[index]}</p><%--<p>${students["1"]}</p>--%>
<p>${students[point]}</p><%--<p>${students["2"]}</p>--%>
</body>
</html>
