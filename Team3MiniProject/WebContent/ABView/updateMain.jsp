<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="aB.Model.MemberDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main</title>
    <link rel="stylesheet" href="/Team3MiniProject/CSS/mainTable.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <style>
        body {
            background: url('/Team3MiniProject/Images/backGround2.jpg') no-repeat;
            background-size: cover;
            /* display: flex; */
        }
        .jua-regular {
 	 		font-family: "Jua", sans-serif;
  			font-weight: 400;
  			font-style: normal;
		}
        #mainTable{
            position:absolute;
            top: 35%;
            left: 25%;
			width : 1600px;
			max-height:500px;
			overflow-y:auto;
        }#updateButton{
        	position:absolute;
        	top : 73%;
        	left: 83%;
        }
        .myButton {
            box-shadow:inset 0px -3px 7px 0px #29bbff;
            background:linear-gradient(to bottom, #5cacf2 5%, #00c6ff 100%);
            background-color:#2dabf9;
            border-radius:2px;
            display:inline-block;
            cursor:pointer;
            color:#ffffff;
            font-family:"Jua", sans-serif;
            font-size:15px;
            padding:5px 13px;
            text-decoration: none;
            text-shadow:0px 1px 0px #263666;
            border:none;
            margin:15px;
            text-align:center;
            line-height:25px;
        }
        .myButton:hover {
            background:linear-gradient(to bottom, #0688fa 5%, #2dabf9 100%);
            background-color:#0688fa;
        }
        .myButton:active {
            position:relative;
            top:1px;
        }
        #userInfo{
        	position:absolute;
        	top: 30%;
        	left: 25%;
        	font-size : 50px;
        }
    </style>
</head>
<body>
<jsp:include page="/ABView/sideBar.jsp" flush="true"></jsp:include>
<div id="userInfo" class=jua-regular> 
<% MemberDTO user = (MemberDTO)session.getAttribute("user"); %>
<%=user.getName()%>님의 주소록 : <span style="color: #00c6ff;">수정하기</span> </div>
<form action="/Team3MiniProject/controller/address/updateMain" method="post">
<div id="mainTable">
    <table>
        <thead>
            <tr>
            	<th style="width:5%;">선택</th>
                <th>이름</th>
                <th>전화번호</th>
                <th>이메일</th>
                <th>주소</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="dto" items="${sessionScope.ab}">
        	<tr>
        		<td><input type="radio" name="user_CheckBox" value="${dto.id}"></td>
           	 	<td>${dto.name}</td>
               	<td>${dto.phoneNumber}</td>
                <td>${dto.eMail}</td>
                <td>${dto.address}</td>
        	</tr>
       </c:forEach>
        </tbody>
    </table>
</div>
<div id="updateButton">
<input type="button" class="myButton" onclick="submit()" value="수정하기">
</div>
</form>
</body>
</html>