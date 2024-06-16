<%@ page language="java" contentType="text/html; charset=UTF-8"
		 import="aB.Model.MemberDTO"  
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>통합 메인화면</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <style>
        #pageTitle{
        	position: relative;
        	bottom : 600px;
        	right : 100px;
        }
        body {
            font-family: Arial, sans-serif;
            background: url('/miniProject/Images/backGround1.jpg') no-repeat /* center center fixed */;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        .jua-regular {
 	 		font-family: "Jua", sans-serif;
  			font-weight: 400;
  			font-style: normal;
		}
        .testDiv{
        	position: relative;
        	top : 50px;
        	right : 800px;
        	background: url('/miniProject/Images/window.png') no-repeat;
        	width: 600px;
        	height: 480px;
        	background-size : contain;
            text-align: center;
        }
        .innerData{
        	position: relative;
        	top : 130px;
        	right : 45px;
        	justify-content: center; /* 좌우 중앙 정렬 */
            align-items: center; /* 상하 중앙 정렬 */
        }
        h1 {
            margin-bottom: 20px;
            color: #333;
        }
        h2 {
            color: #333;
            cursor: pointer;
            
            display: inline-block;
            transition transform 0.2s;
        }
		h2:hover {
            transform: translateY(-5px);
        }
        label {
        	position :relative;
        	left : 150px;
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            text-align: left;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(50% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="image"] {
        	margin : 25px;
            cursor: pointer;
        }
        .form-buttons {
            justify-content: space-between;
        }
    </style>
</head>
<body>
<div id ="pageTitle" class=jua-regular style="font-size: 30px;"><H1>AIaaS_8<br>TEAM 3<br>
<span style="font-size:150px; color: #00c6ff;">Mini Project</span>
</H1></div>

<div id="userInfo" class=jua-regular style="font-size: 90px; position:relative; bottom:350px; right:900px;"> 
<% MemberDTO user = (MemberDTO)session.getAttribute("user"); %>
환영합니다! <span style="font-size:90px; color: #00c6ff;"><%=user.getName()%>님</span></div>
<!-- user속성에는 AddressBookDAO의 getMember()메서드에서 반환한 MemberDTO객체가 들어가 있다. 
		내장객체 session을 이용하며 session의 user는 그 자체로 사용자 개개인 객체이다. -->
    <div class = "testDiv">
    <div class ="innerData">
        <h2 onclick = "navigateToABhome()"
        style="font-size: 50px;" class="jua-regular"><span style="color: #00c6ff;">주소록 관리</span><br> 페이지로 이동</h2>
        </div>
        
    </div>
        <div class = "testDiv">
    <div class ="innerData">
        <h2 onclick = "navigateToNBHome()"
        style="font-size: 50px;" class="jua-regular"><span style="color: #00c6ff;">게시판 관리</span><br> 페이지로 이동</h2>
        </div>
     <script>
     function navigateToABhome(){
    	 window.location.href='http://localhost:8181/Team3MiniProject/ABView/main.jsp'; // 주소록 메인으로
     }
     function navigateToNBhome(){
    	 window.location.href='http://localhost:8181/Team3MiniProject/NBView/main.jsp'; //게시판 메인으로
     }
     </script>
        
    </div>
</body>
</html>