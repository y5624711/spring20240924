<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>/main13/sub1.jsp</p>
<p>${attr1}</p>

<%--EL implicit object--%>
<%--총 11개--%>

<%-- 자주쓰는 것들
param, paramValues, pageScope, requestScope,
 sessionScope, applicationScope--%>


<%--param : request parameter 를 map으로 담은 객체
request parameter)) ?param = value&name = son&age=3
--%>
<%--?name=흥민&age=33--%>
<p>${param.name}</p>
<p>${param.age}</p>


<%--?address=seoul&city=jeju--%>
<p>${param["address"]}</p>
<p>${param.city}</p>

<%--쿼리스트링 작성 요청 보내기--%>
<%--?email=google.com&hobby=축구&score=99&location=seoul--%>
<p>${param.email}</p>
<p>${param.hobby}</p>
<p>${param.score}</p>
<p>${param.location}</p>


<h5>paramValues</h5>
<%--param Values : request parameter의 값들을 배열로 map에 넣은 객체--%>
<%--?email=gmail&city=seoul--%>
<p>${paramValues.email[0]}</p>
<p>${paramValues.city[0]}</p>


<%--?hobby=축구&hobby=야구&hobby=농구&score=9.9&score=8.8--%>
<p>${paramValues.hobby[0]}</p>
<p>${paramValues.hobby[1]}</p>
<p>${paramValues.hobby[2]}</p>
<p>${paramValues.score[0]}</p>
<p>${paramValues.score[1]}</p>
<p>${param.hobby}</p><%--0번 인덱스만 표시--%>
<p>${param.score}</p><%--0번 인데스만 표시--

<%--쿼리 스트링 작성 후 요청 보내기--%>
<p>${paramValues.player[0]}</p>
<p>${paramValues.player[1]}</p>
<p>${paramValues.player[2]}</p>
<p>${paramValues.teams[0]}</p>
<p>${paramValues.teams[1]}</p>

</body>
</html>
