<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        #some-id {
            background-color: black;
            color: white;
        }

        .some-class {
            background-color: yellow;
            color: gray;
        }

    </style>
    <title>Title</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
</head>
<body>
<%--css review--%>
<div id="some-id">
    lorem ipsum color
</div>
<%--div.some-class*2>lorem3--%>
<div class="some-class">Lorem ipsum dolor.</div>
<div class="some-class">Aut, totam, ut?</div>

<%--table>thead>tr>th*5>lorem1--%>
<table>
    <thead>
    <tr>
        <th>Lorem.</th>
        <th>Facilis.</th>
        <th>Soluta.</th>
        <th>Eius.</th>
        <th>Fugit!</th>
    </tr>
    </thead>
    <%--          tbody>tr*5>td*5>lorem1--%>
    <tbody>
    <tr>
        <td>Lorem.</td>
        <td>Similique.</td>
        <td>Commodi?</td>
        <td>Provident.</td>
        <td>Cum.</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Fugiat!</td>
        <td>Eaque.</td>
        <td>Officiis.</td>
        <td>Ut.</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Dicta.</td>
        <td>Totam.</td>
        <td>Aliquid.</td>
        <td>Obcaecati.</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Saepe?</td>
        <td>Ipsam?</td>
        <td>Odit.</td>
        <td>Itaque!</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Quas?</td>
        <td>Consequatur.</td>
        <td>Repudiandae.</td>
        <td>Libero?</td>
    </tr>
    </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"

        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"

        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>

</body>
</html>
