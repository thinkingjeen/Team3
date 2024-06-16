<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
	<script language="JavaScript" src="/Team3MiniProject/JS/validation.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('/Team3MiniProject/Images/backGround1.jpg') no-repeat /* center center fixed */;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }
        .jua-regular {
 	 		font-family: "Jua", sans-serif;
  			font-weight: 400;
  			font-style: normal;
		}
        .container {
        position:relative;
        right:160px;
        	align-self: center;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
            justify-content: center;
        }
        h1 {
            margin-bottom: 20px;
            color: #333;
        }
        h2 {
 	 		font-family: "Jua", sans-serif;
  			font-weight: 400;
  			font-style: normal;
            color: #00c6ff;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            text-align: left;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="image"] {
            margin-top: 5px;
            cursor: pointer;
        }
        .form-buttons {
            justify-content: space-between;
            margin-top: 20px;
        }
        #button_cancle{
       	position:relative;
        right:190px;
        bottom:410px;
        }
    </style>
</head>
<body>
<jsp:include page="/ABView/title.jsp" flush="true"></jsp:include>
    <div class="container">
      	 <h1>Manage your Address Book <span style="color: #00c6ff;">Online</span>.</h1>
        <h2>Create your account today!</h2>
        <form action="/Team3MiniProject/controller/member/signUp" method="post" name ="signUp_frm" onsubmit="return infoConfirm()">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" placeholder="Type a valid id..." required>

            <label for="pw">PW:</label>
            <input type="password" id="pw" name="pw" placeholder="Type a strong password..." required>

            <label for="confirmPw">Confirm PW:</label>
            <input type="password" id="confirmPw" name="confirmPw" placeholder="Type a strong password..." required>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Type your name..." required>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" placeholder="Type your phone number..." required>

            <label for="email">E-Mail:</label>
            <input type="email" id="email" name="email" placeholder="Type your email..." required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" placeholder="Type your address..." required>

            <div class="form-buttons">
                <input type="image" src="/Team3MiniProject/Images/button_SignUp.png" style="width:200px; height:50px;" alt="Sign Up" >
            </div>
        </form>
    </div>
    <a href ="/Team3MiniProject/ABView/signIn.jsp"><input type="image" id="button_cancle" src="/Team3MiniProject/Images/button_Cancle.png" style="width:50px; height:50px;" alt="Cancle"></a>
</body>
</html>
