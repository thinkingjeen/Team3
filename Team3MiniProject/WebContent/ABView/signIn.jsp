<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign In</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <style>
        #pageTitle{
        	position: relative;
        	bottom : 200px;
        	right : 200px;
        }
        body {
            font-family: Arial, sans-serif;
            background: url('/Team3MiniProject/Images/backGround1.jpg') no-repeat /* center center fixed */;
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
        #testDiv{
        	position: relative;
        	top : 100px;
        	left : 200px;
        	background: url('/Team3MiniProject/Images/window.png') no-repeat;
        	width: 600px;
        	height: 480px;
        	background-size : contain;
            text-align: center;
        }
        #innerData{
        	position: relative;
        	top : 20px;
        	right : 50px;
        }
        h1 {
            margin-bottom: 20px;
            color: #333;
        }
        h2 {
            color: #333;
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
<div id ="pageTitle" class=jua-regular style="font-size: 60px;"><H1>AIaaS_8<br>TEAM 3<br>
<span style="font-size:150px; color: #00c6ff;">Address Book</span>
</H1></div>
    <div id = "testDiv">
    <div id="innerData">
    <h2 style="font-size: 50px;" class="jua-regular"><span style="color: #00c6ff;">Address</span> Book</h2>
        <form action="/Team3MiniProject/controller/member/signIn" method="post">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" placeholder="Type your ID">

            <label for="pw">PW:</label>
            <input type="password" id="pw" name="pw" placeholder="Type your Password">

            <div class="form-buttons">
                <input type="image" src="/Team3MiniProject/Images/button_SignIn.png" style="width:200px; height:50px;" alt="Sign In" onclick= "submit();">
            </div>
        </form>
        <div class="jua-regular">아직 회원이 아니신가요? <a href="/Team3MiniProject/ABView/signUp.jsp"> 회원가입하기 </a></div>
        </div>
    </div>
</body>
</html>
