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
<h3>고객 조회 후 수정</h3>
<form>
    고객 번호
    <input type="number" name="id" value="${param.id}">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty customer}">
    <h5>조회 결과가 없습니다.</h5>
</c:if>
<c:if test="${not empty customer}">
    <form action="/main28/sub9" method="post">


        <div>
            <input type="number" name="id" readonly value="${customer.id}">
        </div>
        <div>
            <input type="text" name="name" value="${customer.name}">
        </div>
        <div>
            <input type="text" name="contactName" value="${customer.contactName}">
        </div>
        <div>
            <input type="text" name="address" value="${customer.address}">
        </div>
        <div>
            <input type="text" name="postalCode" value="${customer.postalCode}">
        </div>
        <div>
            <input type="text" name="city" value="${customer.city}">
        </div>
        <div>
            <input type="text" name="country" value="${customer.country}">
        </div>
        <div>
            <button>저장</button>
        </div>
    </form>
</c:if>
</body>
</html>
