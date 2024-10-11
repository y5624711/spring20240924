<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .active {
            background-color: yellow;
        }
    </style>
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
    <c:forEach items="${orderList}" var="order">
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
<div style="margin: 10px">
    <c:if test="${currentPageNumber > 1}">
        <c:url value="/main27/sub6" var="link">
            <c:param name="page" value="1"/>
        </c:url>
        <a href="${link}">&lt; 맨 처음</a>
    </c:if>


    <c:if test="${not empty prevPageNumber}">
        <c:url value="/main27/sub6" var="link">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <a href="${link}">&lt; 이전</a>
    </c:if>


    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url value="/main27/sub6" var="link">
            <c:param name="page" value="${pageNumber}"></c:param>
        </c:url>
        <span class="${currentPageNumber == pageNumber ? 'active' : ''}">
            <a href="${link}">${pageNumber}</a>
        </span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <c:url value="/main27/sub6" var="link">
            <c:param name="page" value="${nextPageNumber}"/>
        </c:url>
        <a href="${link}">다음 &gt;</a>
    </c:if>

    <c:if test="${currentPageNumber < lastPageNumber}">
        <c:url value="/main27/sub6" var="link">
            <c:param name="page" value="${lastPageNumber}"/>
        </c:url>
        <a href="${link}">맨 끝 &gt;</a>
    </c:if>
</div>
</body>
</html>
