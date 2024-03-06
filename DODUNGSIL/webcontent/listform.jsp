<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,ex01.ex02.*" pageEncoding="UTF-8" %>
	<%@ include file="main.jsp" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
				<% request.setCharacterEncoding("UTF-8"); OrderDAO orderDAO=new OrderDAO(); List
					orderList=orderDAO.listOrder(); %>

					<jsp:useBean id="b" class="ex01.ex02.orderBean" scope="page" />
					<jsp:setProperty name="b" property="*" />
					<!DOCTYPE html>
					<html>

					<head>
						<meta charset="UTF-8">
						<title>글쓰기</title>
						<style>
							body {
								background-image: url('image/게시판.jpg');
								background-repeat: no-repeat;
								background-size: cover;
							}

							.custom-table {
								border-collapse: collapse;
								border-spacing: 0;
								background-color: none;
								border: 1px solid #ccc;
								font-family: Arial, sans-serif;
								color: #ffffff;
								font-size: 14px;
								margin: 0 auto;
								text-align: center;
								height: 80px;
								margin-top: 20px;
							}

							.btn1 {
								text-align: right;
								margin-top: 100px;
								width: 100%;
								vertical-align: middle;
							}

							.btn {
								border: none;
								margin-top: -30px;
								width: 120px;
								height: 40px;
								background: #fff;
								border-radius: 30px;
								color: #3c64a1;
								font-size: 18px;
								margin-right: 390px;
							}

							.btn:hover {
								padding: 5px 10px;
								background-color: #3c64a1;
								color: #fff;
								border-radius: 30px;
								transition: all 0.8s;
								font-size: 18px;
							}
						</style>
					</head>

					<body>
						<div class="btn1">
							<input type="submit" value="Order" class="btn" onclick="location.href='writeform.jsp'">
						</div>
						<table border="1" class="custom-table">
							<tr>
								<td width="10%">No.</td>
								<td width="70%">TITLE</td>
								<td width="10%">ID</td>
								<td width="10%">DATA</td>
							</tr>

							<c:forEach var="board" items=" %= orderList %>">
								<tr>
									<td>${board.num}</td>
									<td><a href="veiw.jsp?num=${board.num}">${board.title}</a></td>
									<td>${board.id}</td>
									<td>${board.joinDate}</td>
								</tr>
							</c:forEach>

						</table>

					</body>

					</html>