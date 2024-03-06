<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,ex01.ex02.*"%>
<%@ include file="main.jsp" %>
<%
	String user_id = (String)session.getAttribute("login.id");
%>
<%-- 세션 객체에서 login.id 속성 값을 가져와 'user-id' 변수에 저장하여 로그인된 사용자의 id를 얻을 수 있음 --%>
<html>
<head>
    <title>게시판 - 글쓰기</title>
    
    <style type="text/css">
        #title{
            height : 16;
            font-family :'돋움';
            font-size : 12;
            text-align :center;
        }
        body {
			  background-image: url('image/게시판.jpg');
			  background-repeat: no-repeat;
			  background-size: cover;
			}
		table{
    	   border-collapse: collapse;
    	   border-spacing: 0;
 		   background-color: none;
  		   border: 1px solid #ccc;
		   font-family: Arial, sans-serif;
		   color: #ffffff;
 		   font-size: 14px;
 		   margin: 0 auto;
 		   text-align:center;
 		   height : 80px;
 		   margin-top:20px;
		}
		.btn{
			border:none;
			width:70px;
			 height:20px;
			 background: #fff;
			 border-radius: 30px;
			 color: #3c64a1;
			 font-size: 10px;
		}
    </style>
    
</head>
<body>
    <form method="post" action="write_action.jsp" name="boardForm" "> <!-- write_daction.jsp 제출 -->
    <table width="700" border="3" bordercolor="lightgray" align="center">
        <tr>
            <td>ID</td>
            <td><%=user_id%></td>
        </tr>
            <tr>
            <td>
                TITLE
            </td>
            <td>
                <input name="title" type="text" size="70" maxlength="100" value="" style="width:98%"/>
            </td>        
        </tr>
        <tr>
            <td>
                CONTENT
            </td>
            <td>
                <textarea name="content" cols="72" rows="20" style="width:98%"></textarea>            
            </td>        
        </tr>
        <tr align="center" valign="middle">
            <td colspan="5">
                <input class="btn" type="reset" value="작성취소" >
                <input class="btn" type="submit" value="등록" >
               <a href="listform.jsp"><input class="btn" type="button" value="목록" ></a>     
            </td>
        </tr>
    </table>    
    </form>
    
</body>
</html>
