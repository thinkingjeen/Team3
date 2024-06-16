<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="/Team3MiniProject/CSS/navSideBar.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<title>Title</title>
	<style>
	#pageTitle{
	position:absolute;
	top: 5%;
	left: 5%;
	}
	#rightUp{
	position:absolute;
	top : 5%;
	right : 85px;
	display: flex;
	}
	#side{
	position:absolute;
	top : 35%;
	left: 5%;
	}
	</style>
</head>
<body>
<div id ="pageTitle" class=jua-regular style="font-size: 30px;"><H1>AIaaS_8<br>TEAM 3<br>
<span style="font-size:80px; color: #00c6ff;">Address Book</span></H1>
</div>
<div id ="rightUp">

<div id ="myPageButton">
<a href="/Team3MiniProject/ABView/updateMember.jsp">
<input type="image" id="myPageButton-no" style="width:150px; height:75px;" src="/Team3MiniProject/Images/button_MyPage.png" onclick="">
<input type="image" id="myPageButton-hover" style="width:150px; height:75px;" src="/Team3MiniProject/Images/button_MyPage_hover.png" onclick="">
</a>
</div>
<div id ="logoutButton">
<a href ="/Team3MiniProject/controller/member/logout">
<input type="image" id="logoutButton-no" style="width:150px; height:75px;" src="/Team3MiniProject/Images/button_Logout.png">
<input type="image" id="logoutButton-hover" style="width:150px; height:75px;" src="/Team3MiniProject/Images/button_Logout_hover.png">
</a>
</div>
</div>
<div id ="side" class=jua-regular>  <ul>
      <li><a class="active" href="/Team3MiniProject/ABView/main.jsp">주소록 메인</a></li>
      <li><a href="/Team3MiniProject/ABView/insertAddress.jsp">주소록 추가</a></li>
      <li><a href="/Team3MiniProject/ABView/updateMain.jsp">주소록 수정</a></li>
      <li><a href="/Team3MiniProject/ABView/deleteMain.jsp">주소록 삭제</a></li>
    </ul></div>
</body>
</html>