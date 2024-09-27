<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- forEach : 반복문 --%>
<%-- for(int i= 1; i<=3; i++) --%>
<c:forEach begin="1" end="3">
    <p>반복해야하는 컨텐츠</p>
</c:forEach>

<c:forEach begin="0" end="4">
    <p>다섯번</p>
</c:forEach>


<%--반복할때마다 begin값을 var값에 넣는다.--%>
<c:forEach begin="1" end="5" var="idx">
    <p>${idx}번</p>
</c:forEach>

<%-- begin보다 end 값이 커야함--%>
<%--begin은 음수가 될 수 없다.--%>

<hr>

<c:forEach begin="11" end="15" var="idx">
    <p>${idx}</p>
</c:forEach>

<hr>
<%--구구단 5단 출력 --%>
<c:forEach begin="1" end="9" var="idx">
    <p>5 X ${idx} = ${idx * 5}</p>
</c:forEach>

<hr>

<%--request parameter 'dan'--%>
<%--?dan = 5 : 단 출력
    ?dan = 7 : 단 출력--%>

<c:if test="${param.dan > 1 && param.dan < 10}" var="validDan">
    <c:forEach begin="1" end="9" var="num">
        <p>${param.dan} X ${num} = ${param.dan * num}</p>
    </c:forEach>
</c:if>

<c:if test="${not validDan}">
    <p>유효한 단 수를 입력해 주세요</p>
</c:if>

<hr>

<%--이중 forEach를 활용해서 2단부터 9단까지 출력--%>
<c:forEach begin="2" end="9" var="dan">
    <c:forEach begin="1" end="9" var="num">
        <p>${dan} X ${num} = ${dan * num}</p>
    </c:forEach>
</c:forEach>

</body>
</html>
