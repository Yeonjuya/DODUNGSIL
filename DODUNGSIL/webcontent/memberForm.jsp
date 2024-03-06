<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<style type="text/css">
			@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap');

			* {
				margin: 0px;
				padding: 0px;
				text-decoration: none;
				font-family: Rovoto, Nanum+Gothic;
				'

			}

			body {
				background-image: none;
				background-repeat: no-repeat;
				background-size: cover;
			}

			.joinForm {
				position: absolute;
				width: 400px;
				height: 400px;
				padding: 30px, 20px;
				background-color: #FFFFFF;
				text-align: center;
				top: 40%;
				left: 50%;
				transform: translate(-50%, -50%);
				border-radius: 15px;
			}

			.joinForm h1 {
				text-align: center;
				margin: 30px;
			}

			.a {
				margin: 10px;
			}

			.textForm {
				margin-bottom: 30px;
			}

			.id {
				width: 100%;
				border: none;
				outline: none;
				color: #6A9EE7;
				font-size: 16px;
				height: 25px;
				background: none;
				border-bottom: 2px solid #6A9EE7;
				margin: 0 auto;
				padding: 10px 30px;
				width: 50%;
			}

			.pw {
				width: 100%;
				border: none;
				outline: none;
				color: #6A9EE7;
				font-size: 16px;
				height: 25px;
				background: none;
				border-bottom: 2px solid #6A9EE7;
				margin: 0 auto;
				padding: 10px 30px;
				width: 50%;
			}

			.name {
				width: 100%;
				border: none;
				outline: none;
				color: #6A9EE7;
				font-size: 16px;
				height: 25px;
				background: none;
				border-bottom: 2px solid #6A9EE7;
				margin: 0 auto;
				padding: 10px 30px;
				width: 50%;
			}


			.addr {
				width: 100%;
				border: none;
				outline: none;
				color: #6A9EE7;
				font-size: 16px;
				height: 25px;
				background: none;
				border-bottom: 2px solid #6A9EE7;
				margin: 0 auto;
				padding: 10px 30px;
				width: 50%;
			}

			.btn {
				border: none;
				margin: 0 auto;
				margin-top: 10px;
				width: 120px;
				height: 40px;
				background: #6A9EE7s;
				border-radius: 30px;
				color: #ffffff;
				border: 2px solid #6A9EE7;
			}

			.btn:hover {
				padding: 5px 10px;

				background-color: #ffffff;
				color: #6A9EE7;
				border-radius: 30px;
				transition: all 0.8s;
			}
		</style>
	</head>

	<body>
		<form method="post" name="frmMember" action="member_action.jsp" class="joinForm">
			<div class="a"><a href="http://localhost:8081/Final_project/main.jsp"><img src="image/두둥실로고.png"
						style="width:250px;height:160px;"></a>
			</div>
			<div class="textForm">
				<input name="id" type="text" class="id" placeholder="아이디"><br>
				<input name="pwd" type="password" class="pw" placeholder="비밀번호"><br>
				<input name="name" type="text" class="name" placeholder="이름"><br>
				<input name="addr" type="text" class="addr" placeholder="주소">
			</div>
			<div class="c">
				<input type="submit" value="가입하기" class="btn"><br>
				<input type="reset" value="다시입력" class="btn">
			</div>
		</form>
	</body>

	</html>