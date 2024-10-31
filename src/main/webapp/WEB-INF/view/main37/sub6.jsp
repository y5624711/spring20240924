<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h4 style="background-color: aqua">
            ${message}
    </h4>
</c:if>
<h3>상품 등록</h3>
<form method="post">
    <div>
        Name
        <input type="text" name="name" placeholder="이름">
    </div>
    <div>
        Unit
        <input type="text" name="unit" placeholder="규격">
    </div>
    <div>
        Price
        <input type="number" name="price" min="0" step="0.1" placeholder="가격">
    </div>
    <div>
        <button>저장</button>
    </div>
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>번호</th>
        <th>이름</th>
        <th>규격</th>
        <th>가격</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.unit}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
