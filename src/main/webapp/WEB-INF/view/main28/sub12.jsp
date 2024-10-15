<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: aqua">${message}</h5>
</c:if>
<h3>직원 조회 후 수정</h3>
<form>
    직원 번호
    <input type="number" name="id" value="${param.id}">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty suppliers}">
    <h5>조회 결과가 없습니다.</h5>
</c:if>

<c:if test="${not empty suppliers}">
    <form action="/main28/sub11" method="post">
        <div>
            <input type="number" name="id" readonly value="${suppliers.id}">
        </div>
        <div>
            <input type="text" name="name" value="${suppliers.name}">
        </div>
        <div>
            <input type="text" name="contactName" value="${suppliers.contactName}">
        </div>
        <div>
            <input type="text" name="address" value="${suppliers.address}">
        </div>
        <div>
            <input type="text" name="postalCode" value="${suppliers.postalCode}">
        </div>
        <div>
            <input type="text" name="country" value="${suppliers.country}">
        </div>
        <div>
            <input type="text" name="phone" value="${suppliers.phone}">
        </div>
        <div>
            <button>저장</button>
        </div>
    </form>
</c:if>
</body>
</html>
