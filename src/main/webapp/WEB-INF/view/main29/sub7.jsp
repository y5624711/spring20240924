<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: aqua">새 책이 저장되었습니다.</h5>
</c:if>

<h3>책 정보 저장</h3>
<form action="/main29/sub8" method="post">
    <div>
        <span>ISBN</span>
        <br>
        <input type="text" name="isbn">
    </div>
    <br>
    <div>
        <span>BookName</span>
        <br>
        <input type="text" name="name">
    </div>
    <br>
    <div>
        <span>author</span>
        <br>
        <input type="text" name="author">
    </div>
    <br>
    <div>
        <span>price</span>
        <br>
        <input type="number" name="price" step="100.0" min="0">
    </div>
    <br>
    <div>
        <span>published</span>
        <br>
        <input type="date" name="published">
    </div>
    <div>
        <button>저장</button>
    </div>
</form>
<hr>
<form action="">
    <h3>저장된 책 정보</h3>
    <input type="text" name="isbn" placeholder="ISBN번호">
    <button>검색</button>
</form>
<table>
    <c:if test="${not empty book}">
        <div>
            <span>책번호</span>
            <br>
            <input type="text" readonly="" value="${book.isbn}">
        </div>
        <div>
            <span>책 이름</span>
            <br>
            <input type="text" readonly="" value="${book.name}">
        </div>
        <div>
            <span>작가</span>
            <br>
            <input type="text" readonly="" value="${book.author}">
        </div>
        <div>
            <span>가격</span>
            <br>
            <input type="text" readonly="" value="${book.price}">
        </div>
        <div>
            <span>발간일</span>
            <br>
            <input type="date" readonly="" value="${book.published}">
        </div>
    </c:if>
</table>
</body>
</html>
