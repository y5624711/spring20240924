<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>가격으로 상품 검색</h3>
<form>
    <input type="number" name="min" step="0.01" value="${param.num1}" placeholder="부터">
    ~
    <input type="number" name="max" step="0.01" value="${param.num2}" placeholder="까지">
    <br>
    <button>검색</button>
</form>
<table>
    <thead>
    <tr>
        <th>번호</th>
        <th>상품명</th>
        <th>제품번호</th>
        <th>품종</th>
        <th>단위</th>
        <th>가격</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.supplierId}</td>
            <td>${product.categoryId}</td>
            <td>${product.unit}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
