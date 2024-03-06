<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*, ex01.ex02.*"
    pageEncoding="UTF-8"
%>
<%
    request.setCharacterEncoding("UTF-8");
%>    
<jsp:useBean id="o" class="ex01.ex02.orderBean" scope="page"/> <%--id="o": orderBean 클래스의 인스턴스를 생성하고, o라는 ID로 현재 페이지의 범위(scope)에 저장  --%>
<jsp:setProperty name="o" property="*"/> 

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
       <%
       String user_id = (String)session.getAttribute("login.id"); //  세션 객체에서 "login.id" 속성 값을 가져와 user_id 변수에 저장
       	orderBean orderBean = new orderBean(); //  orderBean 클래스의 인스턴스 생성
       	orderBean.setId(user_id); //orderBean 인스턴스의 ID속성을 'user_id' 변수 값 설정
       	System.out.println(user_id);
       	orderBean.setPrice(200000); 
       	orderBean.setTitle(request.getParameter("title"));
        orderBean.setContent(request.getParameter("content"));
       	if (orderBean.getTitle() == null || orderBean.getContent() == null){
       		out.println("<script>alert('입력이 안 된 사항이 있습니다!');history.back();</script>");
       // orderBean의 title, content 속성이 null인지 확인하고 null이면 경고창 출력 후 이전페이지       
       	
       	}else{
       		OrderDAO OD = new OrderDAO();
       		OD.write(orderBean);
    	    response.sendRedirect("listform.jsp");
       	} // 입력이 완료되면 orderDAO 객체를 생성하고 writte()메서드로 orderBean 객체를 데이터 베이스에 저장
		%>
    </body>
</html>