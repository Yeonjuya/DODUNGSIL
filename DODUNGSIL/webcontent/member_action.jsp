<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, sec01.ex01.*"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<!-- 포매팅 태그 라이브러리를 사용하기 위해 반드시 선언 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:useBean id="m" class="sec01.ex01.MemberBean" />
<jsp:setProperty name="m" property="*" />
<%  request.setCharacterEncoding("utf-8");  %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	if( id.equals("")){
		out.println("<script>alert('아이디는 필수입니다.'); setTimeout(function() { window.location.href = 'memberForm.jsp'; }, 1000);</script>");
	} else if(pwd.equals("")) {
		out.println("<script>alert('비밀번호는 필수입니다.'); setTimeout(function() { window.location.href = 'memberForm.jsp'; }, 1000);</script>");
	} else if(name.equals("")) {
		out.println("<script>alert('이름은 필수입니다.'); setTimeout(function() { window.location.href = 'memberForm.jsp'; }, 1000);</script>");
	} else if(addr.equals("")) {
		out.println("<script>alert('주소는 필수입니다.'); setTimeout(function() { window.location.href = 'memberForm.jsp'; }, 1000);</script>");
	} else {
		MemberDAO memDAO = new MemberDAO();
		// 회원 정보를 추가.
		memDAO.addMember(m);
		out.println("<script> setTimeout(function() { window.location.href = 'login.jsp'; }, 1000);</script>");
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 액션창</title>
	</head>
	<body>
	</body>
</html>