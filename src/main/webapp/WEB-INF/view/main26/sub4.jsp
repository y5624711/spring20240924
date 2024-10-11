<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: large;
        }

        tr th {
            border: 1px solid black;
            background-color: aqua;
        }

        tr td {
            border: 1px solid black;
        }

    </style>
</head>
<body>
<h3>상품조회</h3>
<form action="">
    <input type="text" placeholder="찾을 상품" name="keyword" value="${param.keyword}">
    <button>검색</button>
</form>
<table>
    <thead>
    <tr>
        <th>번호</th>
        <th>상품명</th>
        <th>상품번호</th>
        <th>카테고리</th>
        <th>규격</th>
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
