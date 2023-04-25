<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: 오전 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<html>
<head>
    <%--    상세조회를 위한 요청주소: deatail--%>
    <%--    같이 보내줘야 하는 값 : id--%>
    <%--    detail 요청을 처리하는 컨트롤러 메서드를 만들고--%>
    <%--    조회결과를 datail.jsp에 출력하자--%>
    <%--    BookRepository에서는 sql.selectOne() 을 사용하고--%>
    <%--    mapper 에서는 parameterType="Long"으로 주고--%>
    <%--    resulType="book"으로 하면 됩니다.&ndash;%&gt;--%>

    <title>Title</title>
</head>
<body>
<h2>조회결과</h2>
<table class="table table-dark table-hover">

    <tr>
        <th>id</th>
        <th>출판사</th>
        <th>저자</th>
        <th>정가</th>
        <th>삭제</th>
    </tr>


    <tr>
        <td>${id.id}</td>
        <td>${id.bookPublisher}</td>
        <td>${id.bookAuthor}</td>
        <td>${id.bookPrice}</td>
    <td><a href="/delete?id=${id.id}">삭제</a></td>
    </tr>
</table>
</body>
</html>
