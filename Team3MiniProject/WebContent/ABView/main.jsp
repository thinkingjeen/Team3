<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="aB.Model.MemberDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main</title>
    <link rel="stylesheet" href="/Team3MiniProject/CSS/mainTable.css">
    <!-- CSS/mainTable.css =>> 그 디렉토리 어떻게 찍히냐면 /miniProject/controller/member/Css/mainTable.css --> 
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
<%=user.getName()%>님의 주소록 </div>
<div id="mainTable">
    <table>
        <thead>
            <tr>
                <th>이름</th>
                <th>전화번호</th>
                <th>이메일</th>
                <th>주소</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="dto" items="${sessionScope.ab}">
                    <tr>
                        <td>${dto.name}</td>
                        <td>${dto.phoneNumber}</td>
                        <td>${dto.eMail}</td>
                        <td>${dto.address}</td>
                    </tr>
                </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
