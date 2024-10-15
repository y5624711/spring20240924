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

<h3>직원 조회</h3>
<form action="">
    직원번호
    <input type="number" name="id" value="${param.id}" placeholder="직원번호">
    <button>검색</button>
</form>

<hr>

<c:if test="${empty employees}">
    <h5>조회 결과가 없습니다.</h5>
</c:if>

<hr>

<c:if test="${not empty employees}">
    <form action="/main99/sub3" method="post">
        <div>
            <span>번호</span>
            <input type="text" name="id" readonly value="${employees.id}">
        </div>
        <div>
            <span>성</span>
            <input type="text" name="firstName" value="${employees.firstName}">
        </div>
        <div>
            <span>이름</span>
            <input type="text" name="lastName" value="${employees.lastName}">
        </div>
        <div>
            <span>생년월일</span>
            <input type="text" name="birthDate" value="${employees.birthDate}">
        </div>
        <div>
            <span>사진</span>
            <input type="text" name="photo" value="${employees.photo}">
        </div>
        <div>
            <span>노트</span>
            <textarea name="notes" id="" cols="30" rows="10"></textarea>
        </div>
        <div>
            <button>저장</button>
        </div>
    </form>
</c:if>

</body>
</html>
