<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*, ex01.ex02.*"
    pageEncoding="UTF-8"
%>
<%
    request.setCharacterEncoding("UTF-8");
	OrderDAO orderDAO = new OrderDAO(); //orderDAO 셍성
 	// 삭제할 게시물 번호 가져오기
 	System.out.println(request.getParameter("num"));
    int num = Integer.parseInt(request.getParameter("num")); 
    String id = (String)session.getAttribute("login.id");
    // 로그인한 사용자의 아이디 가져오기
	 orderBean ob = orderDAO.getlistOrder(num); // 해당 글 번호로 글 조회
	 String user_id = ob.getId(); 
    // 사용자가 게시물을 삭제할 권한이 있는지 확인
    if (id == user_id ||  (id.equals("admin"))) {
        // 게시물 삭제
        orderDAO.deleteOrder(num);
        response.sendRedirect("listform.jsp"); // 삭제 후 글목록창으로 이동
    } else {
        out.println("<script>alert('삭제할 수 있는 권한이 없습니다.');history.back();</script>");
    }
%>
