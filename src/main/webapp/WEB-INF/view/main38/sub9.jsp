<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 정보 입력</h3>
<c:if test="${empty employee}">
    <h5>입력 먼저 하시오</h5>
</c:if>

<c:if test="${not empty employee}">
    <form action="/main38/sub10" method="post">
        <div>
            직원번호
            <input type="text" name="id" value="${employee.id}" readonly>
        </div>
        <div>
            이름
            <input type="text" name="lastName" value="${employee.lastName}">
        </div>
        <div>
            성
            <input type="text" name="firstName" value="${employee.firstName}">
        </div>
        <div>
            생일
            <input type="text" name="birthDate" value="${employee.birthDate}">
        </div>
        <div>
            사진
            <input type="text" name="photo" value="${employee.photo}">
        </div>
        <div>
            메모
            <input type="text" name="notes" value="${employee.notes}">
        </div>

        <div>
            <button>저장</button>
        </div>
    </form>
</c:if>

</body>
</html>
