<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>최신 주문순</h3>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>고객id</th>
        <th>직원id</th>
        <th>주문날짜</th>
        <th>업체id</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${ordersList}" var="order">
        <tr>
            <td>${order.id}</td>
            <td>${order.customerId}</td>
            <td>${order.employeeId}</td>
            <td>${order.orderDate}</td>
            <td>${order.shipperId}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div>
    <%--맨 처음 버튼--%>
    <c:url value="/main99/sub1" var="link">
        <c:param name="page" value="1"/>
    </c:url>
    <a href="${link}">&lt; 맨 처음</a>

    <%--이전버튼--%>
    <c:if test="${not empty prevPageBtn}">
        <c:url value="/main99/sub1" var="link">
            <c:param name="page" value="${prevPageBtn}"/>
        </c:url>
        <a href="${link}">&lt; 이전</a>
    </c:if>


    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url value="/main99/sub1" var="link">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>

        <a href="${link}">${pageNumber}</a>

    </c:forEach>

    <c:if test="${not empty nextPageBtn}">
        <c:url value="/main99/sub1" var="link">
            <c:param name="page" value="${nextPageBtn}"/>
        </c:url>
        <a href="${link}">다음 &gt;</a>
    </c:if>

    <c:url var="/main99/sub1" value="link">
        <c:param name="page" value="${lastPageNumber}"/>
    </c:url>
    <a href="${link}">맨 끝 &gt;</a>
</div>

</body>
</html>
