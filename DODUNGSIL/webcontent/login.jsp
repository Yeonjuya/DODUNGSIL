<%@ page language="java" contentType="text/html; charset=UTF-8"  
   pageEncoding="UTF-8"
   isELIgnored="false"  %>
   
<!DOCTYPE html>
<html>
   <head>
     <meta charset="UTF-8">
     <title>로그인창</title>
         <script type="text/javascript">
         function logincheck() {
            var checkValue = document.checkValue;
            var user_id = checkValue.user_id.value;
            var user_pw = checkValue.user_pw.value;
            if(user_id=="") {
            alert("아이디를 입력하세요");
            document.getElementById("user_id").focus();
            return false;
            }
            else if(user_pw=="") {
            alert("비밀번호를 입력하세요");
            document.getElementById("user_pw").focus();
            return false;
            }
         }
   </script>
   </head>
   <style type="text/css">
   
      img{
         
      }
      body{
         width:100%;
         background-image: url('image/로그인.png');
         background-repeat: no-repeat;
         background-size: cover;
      }
      .left{
         float:left;
         width:50%;
      }
      a{
         left:40%
      }
      .right{
         float:right;
         width:50%;
      }
      
      .border{
      
         box-sizing: border-box;
         width: 450px; 
         height: 470px;
         margin: 20px;
         margin-top:140px;
         margin-right:60px;
         background-color: white;
         border-radius: 50px;
         
      }
   
      form {
         margin-top:115px;
      }
   
      #section_a {
         display:flex;
         margin-left:105px;
      }
   
      #section_a p {
         font-size:14px;
         color:#6A9EE7;
      }
      
      .user_id, .user_pw {
         padding : 8px;
         margin-top:10px;
         border: solid 1px #6A9EE7;
         border-radius: 25px;
      }
      
      .btn {
            border:none;
            margin: 0 auto;
              margin-top: 10px;
              width:120px;
              height:40px;
              background: #6A9EE7;
              border-radius: 30px;
              color: #ffffff;
            border:2px solid #6A9EE7;
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
      
      
      
      .btn:hover{
              padding: 5px 10px;    
            background-color: #ffffff;
              color:#6A9EE7;
              border-radius: 30px;
               transition: all 0.8s;
         }
   </style>
   <body>
   <div class=left>
               <a href="http://localhost:8081/Final_project/main.jsp"><img src="image/두둥실로고흰.png" style="width:440px; height:290px;margin:200px;"></a>
   </div>
   <div class="right">
      <div class= "border">
         <div id = "section_a">
            <form action= login name= "checkValue">
                  <p> 아이디 : <br><input type="text" class = "user_id" name="user_id" size=30 /><br></p>
                  <p>비밀번호: <br><input  type="password" class = "user_pw"  name="user_pw" size=30 /><br> </p>
                  <input type="submit" value="로그인" class="btn" onclick="return logincheck();">
                  <a href="${pageContext.request.contextPath}/memberForm.jsp"> <button type ="button"  class = "btn" >회원가입</button></a>
            
            </form> 
         </div>
      </div>   
   </div>
   </body>
</html>