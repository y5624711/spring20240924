<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--el 에서 사용가능한 연산자--%>
<%--산술 연산자 +, -, *, /, % --%>
<p>${3+3}</p>
<p>${5-2}</p>
<p>${4 *3}</p>
<p>${3 / 2}</p>
<p>${5 div 3}</p> <%--나눗셈--%>
<p>${10 % 3}</p> <%--나머지--%>
<p>${14 mod 5}</p><%--나머지--%>

<hr>
<p>${"3" + "3"}</p>
<%--<p>${"3" + "one"}</p> 안됨--%>

<hr>

<p>${num1 - num2}</p>
<p>${num1 / num3}</p>

<hr>

<%--비교 연산자 ==, !=, <. > , <= , >= --%>
<p>${5 == 5}</p>
<p>${5 eq 5}</p>

<p>${5 != 3}</p>
<p>${5 ne 3}</p>

<p>${3 < 5}</p>
<p>${3 lt 5}</p>

<p>${3 > 5}</p>
<p>${3 gt 5}</p>

<p>${7 <= 6}</p>
<p>${7 le 6}</p>

<p>${9 >= 10}</p>
<p>${9 ge 10}</p>
<hr>

<%--비교연산 주의 사항 : 다른 타입끼리의 연산시 수료 변환 후 비교--%>
<p>${"12" < "6"}</p> <%--나중에 나온 문자열이 더 크다고 인식--%>
<p>${12 < 6}</p>
<p>${"12" < 6}</p> <%--수로 변환 후 비교--%>

<hr>

<%--논리연산자--%>

<p>${true && true}</p>
<p>${false || false}</p>
<p>${!true}</p>

<hr>
<%--empt 연산자--%>
<%--"" , 길이가 0인 콜렉션(List,Set,Map), null 이면 true--%>
<p>${empty ""}</p> <%--true--%>
<p>${empty attr1}</p> <%--true--%>
<p>${empty attr2}</p> <%--true--%>
<p>${empty attr3}</p> <%--true--%>
<p>${empty attr4}</p> <%--true--%>
<p>${empty attr5}</p> <%--true--%>
<p>${empty attr6}</p> <%--true--%>

<hr>

<%--빈 문자열이 아닌지 체크하고 싶을때 not empty--%>
<p>${not empty ""}</p> <%--true--%>
<p>${not empty attr1}</p> <%--true--%>
<p>${not empty attr2}</p> <%--true--%>
<p>${not empty attr3}</p> <%--true--%>
<p>${not empty attr4}</p> <%--true--%>
<p>${not empty attr5}</p> <%--true--%>
<p>${not empty attr6}</p> <%--true--%>

<hr>

<%--삼항연산자  a?b:c --%>
<p>${true?"hello":"world"}</p>
<p>${false?"hello":"world"}</p>


</body>
</html>
