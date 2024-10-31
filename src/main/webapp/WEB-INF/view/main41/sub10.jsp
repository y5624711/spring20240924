<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        span:nth-child(odd), div:nth-child(odd) {
            background-color: burlywood;
        }

        span:nth-child(even), div:nth-child(even) {
            background-color: cornflowerblue;
        }
    </style>
</head>
<body>
<%--요소 배치 : inline(span,a 태그), block(div,p,h1)--%>
<span class="m-3 p-3">Hic impedit, mollitia?</span>
<span class="m-3 p-3">Lorem ipsum dolor.</span>
<span class="m-3 p-3">Impedit, iure, nihil?</span>
<span class="m-3 p-3">Dolore, fugit voluptates!</span>
<hr>
<%--block : 가장 넓은 너비, 다음 줄 배치--%>
<div class="m-3 p-3">Lorem ipsum.</div>
<div class="m-3 p-3">Ipsa, voluptatum?</div>
<div class="m-3 p-3">Aliquam, non?</div>
<div class="m-3 p-3">Architecto, illo?</div>
<div class="m-3 p-3">Debitis, sequi.</div>
<hr>
<%--flexBox : 요소들을 한 줄로 배치--%>
<%--flex container--%>
<div style="display:flex; background-color: yellow; height: 300px">
    <%--flex items : 가장 높은 높이, 오른쪽(옆)에 배치--%>
    <div class="m-3 p-3">1</div>
    <div class="m-3 p-3">2</div>
    <div class="m-3 p-3">3</div>
</div>
<hr>
<div style="display: flex; background-color: gray; height: 200px;">
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
</div>
<hr>
<div style="display: flex; background-color: yellow; height: 200px;
     align-items: center; justify-content: space-around">
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
</div>
<hr>
<div style="display: flex; background-color: gray; height: 200px;
     gap:20px">
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
</div>
<hr>
<div style="display:flex; background-color: yellow; height: 300px">
    <%--flex items : 가장 높은 높이, 오른쪽(옆)에 배치--%>
    <%--flex-grow : 남은 공간을 어떻게 차지할 지--%>
    <%--flex : 남은 공간을 어떻게 차지할 지(기본공간, shrink 조건 적용)--%>
    <div style="flex-grow: 1">1</div>
    <div style="flex-grow: 2">2</div>
    <div style="flex-grow: 1">3</div>
    <div>4</div>
</div>
<hr>
<div style="display:flex; background-color: yellow; height: 300px">
    <%--flex items : 가장 높은 높이, 오른쪽(옆)에 배치--%>
    <%--flex-grow : 남은 공간을 어떻게 차지할 지--%>
    <%--flex : 남은 공간을 어떻게 차지할 지(기본공간, shrink 조건 적용)--%>
    <div style="flex: 1">1</div>
    <div style="flex: 2">2</div>
    <div style="flex: 1">3</div>
    <div>4</div>
</div>

<script src=" https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>
</body>
</html>
