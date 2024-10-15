<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: aqua;">${message}</h5>
</c:if>
<h3>상품조회</h3>
<form>
    <input type="number" name="id" value="${param.id}" placeholder="상품번호">
    <button>조회</button>
</form>
<hr>
<c:if test="${not empty product}">
    <div>
        <span>번호</span>
        <input type="text" readonly="" value="${product.id}">
    </div>
    <div>
        <span>이름</span>
        <input type="text" readonly="" value="${product.name}">
    </div>
    <div>
        <span>공급자번호</span>
        <input type="text" readonly="" value="${product.supplierId}">
    </div>
    <div>
        <span>카테고리번호</span>
        <input type="text" readonly="" value="${product.categoryId}">
    </div>
    <div>
        <span>규격</span>
        <input type="text" readonly="" value="${product.unit}">
    </div>
    <div>
        <span>가격</span>
        <input type="text" readonly="" value="${product.price}">
    </div>

    <%--삭제버튼--%>
    <div>
        <form action="/main28/sub8" method="post">
            <input type="hidden" name="id" value="${product.id}">
            <button style="background-color: red;color: white">삭제</button>
        </form>
    </div>
</c:if>

<c:if test="${empty product}" var="emptyProduct">
    <h3>해당 번호 상품이 없습니다.</h3>
</c:if>
</body>
</html>
