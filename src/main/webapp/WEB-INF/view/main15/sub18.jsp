<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="attr1" value="value1" scope="page"/>
<c:set var="attr2" value="value2" scope="request"/>
<c:set var="attr3" value="value3" scope="session"/>
<c:set var="attr4" value="value4" scope="application"/>
<%--꺼내는 방법은 같다--%>
<p>${attr1}</p>
<p>${attr2}</p>
<p>${attr3}</p>
<p>${attr4}</p>

<hr>

<c:set var="attr5" value="value5 page" scope="page"/>
<c:set var="attr5" value="value5 request" scope="request"/>
<c:set var="attr5" value="value5 session" scope="session"/>
<c:set var="attr5" value="value5 application" scope="application"/>
<p>${attr5}</p><%--이름이 같으면 가장 좁은 영역에 있는 attribute가 출력 된다.--%>

<hr>

<c:set var="attr6" value="value6 request" scope="request"/>
<c:set var="attr6" value="value6 session" scope="session"/>
<c:set var="attr6" value="value6 application" scope="application"/>
<p>${attr6}</p>

<hr>

<c:set var="attr7" value="value7 session" scope="session"/>
<c:set var="attr7" value="value7 application" scope="application"/>
<p>${attr7}</p>

<hr>
<c:set var="attr8" value="value8 application" scope="application"/>
<p>${attr8}</p>
<br>
<hr>
<br>
<%-- [el implicit objects]
pageScope, requestScope,sessionScope, applicationScope
   : 특정 영역에 있는 attribute를 저장하고 있는 map 객체이다.--%>

<p>${attr5}</p>
<p>${pageScope.attr5}</p>
<p>${pageScope["attr5"]}</p>
<p>${requestScope.attr5}</p>
<p>${requestScope["attr5"]}</p>
<p>${sessionScope.attr5}</p>
<p>${sessionScope["attr5"]}</p>
<p>${applicationScope.attr5}</p>
<p>${applicationScope["attr5"]}</p>

</body>
</html>
