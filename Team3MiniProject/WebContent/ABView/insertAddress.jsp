<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>주소록 추가</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
	<style>
		.myButton {
			box-shadow:inset 0px -3px 7px 0px #29bbff;
			background:linear-gradient(to bottom, #2dabf9 5%, #0688fa 80%);
			background-color:#2dabf9;
			border-radius:2px;
			display:inline-block;
			cursor:pointer;
			color:#ffffff;
			font-family:"Jua", sans-serif;
			font-size:12px;
			padding:10px 35px;
			text-decoration: none;
			text-shadow:0px 1px 0px #263666;
			border:none;
			margin:5px
		}
		.myButton:hover {
			background:linear-gradient(to bottom, #0688fa 5%, #2dabf9 100%);
			background-color:#0688fa;
		}
		.myButton:active {
			position:relative;
			top:1px;
		}
	</style>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('../Images/backGround1.jpg') no-repeat /* center center fixed */;
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
        #button_cancle{
       	position:relative;
        right:190px;
        bottom:410px;
        }
    </style>
</head>
<body>
<jsp:include page="/ABView/sideBar.jsp" flush="true"></jsp:include>
    <div class="container">
      	 <h1><span style="color: #00c6ff;">Add</span> your address book.</h1>
       
        <form action="/Team3MiniProject/controller/address/insert" method="post">

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Type your name..." required>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" placeholder="Type your phone number..." required>

            <label for="email">E-Mail:</label>
            <input type="email" id="email" name="email" placeholder="Type your email..." required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" placeholder="Type your address..." required>

            <div> 
                <input type=button class="myButton" value="추가하기" onclick="submit()"> 
                <input type="reset" class="myButton" value="다시작성">
                <a href="/Team3MiniProject/ABView/main.jsp" class="myButton">돌아가기</a>
            </div>
        </form>
    </div>

</body>
</html>