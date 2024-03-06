<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*,ex01.ex02.*"
    pageEncoding="UTF-8"
%>
<%@ include file="main.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
	OrderDAO orderDAO = new OrderDAO();
    int num = Integer.parseInt(request.getParameter("num")); // 글 번호 파라미터 받기
    System.out.println(num);
    orderBean ob = orderDAO.getlistOrder(num); // 해당 글 번호로 글 조회
    // 조회된 글이 없을 경우 에러 메시지 출력
    if (ob == null) {
        out.println("<script>alert('해당 글을 찾을 수 없습니다.');history.back();</script>");
    }


%>


<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    
	    <title>글 상세보기</title>
	    <style>
	    body{
	    	background-image: url('image/게시판.jpg');
			  background-repeat: no-repeat;
			  background-size: cover;
	    }
	    .board {
	        
	        width: 50%;
	        margin: 0 auto;
	        padding: 20px;
	        margin-top:100px; 
	        
	    }
	    
	    table {
	    	border:1px solid #fff;
	        color: #fff;
	        width: 100%;
	        text-align: center;
	         font-family: Arial, sans-serif;
	    }
	    table tr{
	    	border:1px solid #fff;
	    	
	    }
	    talbe th, table td{
	    	border:1px solid #fff; 
	    }
	    .board-content { 
	        width: 100%;
	        display: flex;
	        flex-direction: column;
	        align-items: center;
	        justify-content: center;
	    }
	    
	    .board-content textarea{
	        font-size: 16px;
	        padding: 10px;	
	        resize: none; 
	    }
	    
	    .board-content > * {
	        flex: 1;
	        box-sizing: border-box; /* 추가된 부분 */
	    }
	    		footer {
				width: 100%;
				height: 110px;
				bottom: -40px;
				position: absolute;
				color:#fff;
				font-size: 10px;
				text-align:center;
		}
	    
	    .btn{
			width:50%;
			margin:0 auto;
		}
		.btn a{
			padding: 10px;
			float:right;
		}
	    </style>
	</head>
	<body>
	    
	    <div class="board">
	    <table>
	    	<tr align="center">
					<td width="1%">글 번호</td>
					<td width="7%">글 제목</td>
					<td width="1%">아이디</td>
					<td width="1%">작성일</td>
			</tr>
	        <tr>
	            <td width="1%"><%= ob.getNum() %></td>
	            <td width="7%"><%= ob.getTitle() %></td>
	            <td width="1%"><%= ob.getId() %></td>
	            <td width="1%"><%= ob.getJoinDate() %></td>
	        </tr>
	    </table>
	    <div class="board-content">
	            <textarea rows="10" cols="50" readonly style="width: 100%; height: 350px; color:#3c64a1;border:1px solid #fff; 	"><%= ob.getContent() %></textarea>
	    </div>
		</div>
		<br>
		<div class="btn">
			<a href="listform.jsp">목록으로 돌아가기</a>
			<a href="delete.jsp?num=<%= ob.getNum() %> ">삭제</a>
		</div>
	</body>
</html>
