<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<% request.setCharacterEncoding("UTF-8"); String username=(String)session.getAttribute("login.id"); boolean
		isLoggedIn=(username !=null); // 로그인 상태인지 확인 boolean isAdminIn=(isLoggedIn && username.equals("Admin")); // 관리자
		상태인지 확인 %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>DODUNGSIL</title>

			<head>
				<style type="text/css">
					.container {
						width: 100%;
					}

					.left {
						float: left;
						width: 25%;
					}

					.left a {
						float: left;
						margin-left: 30px;
						margin-top: 15px;
					}

					.right {
						float: right;
						width: 25%;
					}

					.right a {
						float: right;
						margin-right: 30px;
						margin-top: -20px;
						margin-left: -15px;

					}

					.center {
						margin: 0 auto;
						width: 50%;
						margin-top: 30px;

					}

					img {}

					body {
						background-image: url('image/main1.jpg');
						background-repeat: no-repeat;
						background-size: cover;

					}

					body {
						font-family: "Roboto";
					}

					a {
						color: #ffffff;
						text-decoration: none;
					}

					section {
						text-align: center;

					}

					section>div {
						word-spacing: 3px;
						display: inline-block;
						border-radius: 30px;
					}

					section>div>nav {
						display: inline-block;
					}

					.center {
						display: ;
						font-size: 20px;
					}

					footer {
						width: 100%;
						height: 110px;
						bottom: -40px;
						position: absolute;
						color: #fff;
						font-size: 10px;
						text-align: center;
					}

					nav a:hover {
						padding: 5px 10px;
						background-color: #ffffff;
						color: #1b74ba;
						border-radius: 30px;
						transition: all 0.8s;
					}
				</style>
			</head>

		<body>
			<section>
				<div class=container>
					<div class=left>
						<a href="http://localhost:8081/Final_project/main.jsp"><img src="image/로고.png"
								style="width:50px; height:45px;"></a>
					</div>
					<div class=center>
						<nav>
							<% if (isLoggedIn) { // 로그인 상태인 경우 %>
								<a href="http://localhost:8081/Final_project/listform.jsp">Let's do dungsil</a>
								<% } %>
						</nav>
					</div>
					<% if (isLoggedIn) { // 로그인 상태인 경우 %>
						<div class=right>
							<a href="http://localhost:8081/Final_project/logout.jsp"><img src="image/로아.png"
									style="width:20px;height:20px;"></a>
							<a href="http://localhost:8081/Final_project/logout.jsp"><img src="image/user.png"
									style="width:20px;height:20px;"></a>
						</div>
						<% } else { // 로그인 상태가 아닌 경우 %>
							<div class=right>
								<a href="http://localhost:8081/Final_project/login.jsp"><img src="image/로아.png"
										style="width:20px;height:20px;"></a>
								<a href="http://localhost:8081/Final_project/login.jsp"><img src="image/user.png"
										style="width:20px;height:20px;"></a>
							</div>
							<% } %>




				</div>
			</section>
			<footer>
				<nav>
					<a href="https://github.com/Yeonjuya" target='_blank'>Github</a>
				</nav>
				<p>
					<span>대표: JUNG YEONJU</span>
					<span>이메일: duswn2928@naver.com</span><br>
					<span>Addr: silla.university</span>
			</footer>
		</body>

		</html>