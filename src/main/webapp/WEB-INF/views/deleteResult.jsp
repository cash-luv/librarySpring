<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-25
  Time: PM 5:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        const result = '${delete}';

           if(confirm("신규 도서 삭제 성공! ")){
               location.href = "/list";
           }else{
               location.href = "/list";
           }






    </script>
</head>
<body>

</body>
</html>
