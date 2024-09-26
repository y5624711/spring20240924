<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--emmet--%>

<%--엘레멘트명 + 탭 = ex) h+Tabkey--%>
<h1></h1>
<p></p>
<div></div>

<%-- p+div 형제 셀렉터 + Tab--%>
<p></p>
<div></div>

<%--h1+p--%>
<h1></h1>
<p></p>

<h1></h1>
<h2></h2>
<h3></h3>

<%--자식 셀렉터 div>p--%>
<div>
    <p></p>
</div>

<h1>
    <span></span>
</h1>

<%--# id셀렉터--%>

<h1 id="head1"></h1>

<%--h1#head2>p#para1--%>
<h1 id="head2">
    <p id="para1"></p>
</h1>

<%--h1#head3+h2#sub1--%>
<h1 id="head3"></h1>
<h2 id="sub1"></h2>

<%--div#box1--%>
<div id="box1"></div>

<%--클래스 셀렉터--%>
<%--  .  --%>
<h1 class="head"></h1>
<%--h1.head.note--%>
<h1 class="head note"></h1>
<%--h1#head01.error.note--%>
<h1 id="head01" class="error note"></h1>

<%-- attribute 셀렉터--%>
<%--[]--%>
<%--h1[title]--%>
<h1 title=""></h1>

<%--h1[title="my head"]--%>
<h1 title="my head"></h1>

<%--input[value="hello"][name="message"][title="input"]--%>
<input type="text" value="hello" name="message" title="input">

<%--여러개 만들기 *--%>
<%--p*3--%>
<p></p>
<p></p>
<p></p>

<%--tr*2--%>
<tr></tr>
<tr></tr>

<%--table>tr*3>td*4--%>
<table>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>

<%-- ^ --%>
<%--한 칸 위로--%>
<%--div>h1>span^p   <-h1옆에 p 만들어 보기--%>
<div>
    <h1>
        <span></span>
    </h1>
    <p></p>
</div>

<%--table>thead>tr>th*4^^tbody>tr*3>td*4--%>
<table>
    <thead>
    <tr>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>


<%--lorem 아무글씨--%>
<%--lorem3 --%>
Lorem ipsum dolor.
<%--1--%>
Lorem.

<%--table>thead>tr>th*4>lorem1^^^tbody>tr*3>th*4>lorem1--%>
<table>
    <thead>
    <tr>
        <th>Lorem.</th>
        <th>Quas!</th>
        <th>Ad.</th>
        <th>Commodi.</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>At?</th>
        <th>Officiis.</th>
        <th>Dolores.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Eum.</th>
        <th>Distinctio.</th>
        <th>Ad?</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Dicta.</th>
        <th>Ducimus.</th>
        <th>Error.</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Eum.</th>
        <th>Mollitia.</th>
        <th>Sed!</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Facere.</th>
        <th>Veniam!</th>
        <th>Facere?</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Dicta.</th>
        <th>Dolor.</th>
        <th>Explicabo?</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Impedit.</th>
        <th>Quam.</th>
        <th>Similique.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Magnam.</th>
        <th>Adipisci.</th>
        <th>Iste!</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Sequi.</th>
        <th>Explicabo?</th>
        <th>Voluptas?</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Repellendus?</th>
        <th>Eaque!</th>
        <th>Voluptatum.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Rem?</th>
        <th>Incidunt?</th>
        <th>Iusto?</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Recusandae.</th>
        <th>Porro.</th>
        <th>Architecto.</th>
    </tr>
    </tbody>
</table>


<%--h1#header$*3   $ 중복되는 아이디 생성 방지--%>
<h1 id="header1"></h1>
<h1 id="header2"></h1>
<h1 id="header3"></h1>

<%--h1.note$*4--%>
<h1 class="note1"></h1>
<h1 class="note2"></h1>
<h1 class="note3"></h1>
<h1 class="note4"></h1>

<%--{}--%>
<%--h1{hello world}--%>
<h1>hello world</h1>

<%--div{$}*5--%>
<div>1</div>
<div>2</div>
<div>3</div>
<div>4</div>
<div>5</div>


<%--그룹--%>
<%--() --%>
<%--(h1>p)*3--%>
<h1>
    <p></p>
</h1>
<h1>
    <p></p>
</h1>
<h1>
    <p></p>
</h1>

<%--link--%>
<link rel="stylesheet" href="">

</body>
</html>
