<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: 오전 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/bootstrap.bundle.min.js"></script>
    <title>Title</title>
</head>
<body>

<h2>list.jsp</h2>
<table class="table table-dark table-hover">
    <tr>
        <th>id</th>
        <th>제목</th>
<%--        <th>출판사</th>--%>
<%--        <th>저자</th>--%>
<%--        <th>정가</th>--%>
        <th>조회</th>
    </tr>

    <c:forEach items="${bookDTOList}" var="book">
    <tr>
        <td> ${book.id}</td>
        <td> ${book.bookName} </td>
<%--        <td> ${book.bookPublisher} </td>--%>
<%--        <td>${book.bookAuthor}</td>--%>
<%--        <td>${book.bookPrice}</td>--%>
        <td>
<%--            상세조회를 위한 요청주소: deatail
                 같이 보내줘야 하는 값 : id
                 detail 요청을 처리하는 컨트롤러 메서드를 만들고
                 조회결과를 datail.jsp에 출력하자
                 BookRepository에서는 sql.selectOne() 을 사용하고
                 mapper 에서는 parameterType="Long"으로 주고
                 resulType="book"으로 하면 됩니다.--%>

            <a href="/detail?id=${book.id}">조회</a>
        </td>
    </tr>
    </c:forEach>

</body>
</html>
