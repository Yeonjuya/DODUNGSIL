<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*,sec01.ex01.*"
    pageEncoding="UTF-8"
    isELIgnored="false" %>

<%
    // 세션 초기화
    session.invalidate();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>로그아웃</title>
    </head>
    <body>
        <script>
            alert("로그아웃되었습니다.");
            window.location.href = "main.jsp";
        </script>
    </body>
</html>