<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="nB.Model.PostDTO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Post</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Times New Roman, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .header {
            display: flex;
            justify-content: space-evenly;
            padding: 10px;
            background-color: #FFFFFF;
        }
       
        .header a {
            text-decoration: none; /* 밑줄 제거 */
            margin: 0 10px; /* 링크 사이의 여백 */
            color: black; /* 기본 링크 색상 */
            font-family: Times New Roman, sans-serif;
        }
        .header a:visited {
            color: black; /* 방문한 링크 색상 유지 */
        }
        .header a:hover, .header a:active {
            color: black; /* 클릭 및 호버 시 색상 유지 */
        }
        .form-container {
            max-width: 1000px; /* 폼 컨테이너의 최대 너비를 늘림 */
            margin: 50px auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group input {
            width: 100%;
            padding: 15px; /* 입력 필드의 높이를 늘림 */
            border: none;
            border-bottom: 2px solid #000; /* 검은색 선 */
            font-size: 24px; /* 폰트 크기를 늘림 */
        }
        .form-group textarea {
            width: 100%;
            padding: 15px; /* 텍스트 영역의 높이를 늘림 */
            border: none;
            font-size: 24px; /* 폰트 크기를 늘림 */
            resize: none;
            height: 600px; /* 텍스트 영역의 높이를 늘림 */
            font-family: Times New Roman, sans-serif;
        }
        .form-group input:focus, .form-group textarea:focus {
            outline: none;
            border-bottom-color: #000; /* 검은색 선 */
        }
        .save-button {
            position: relative;
            left: 1710px;
            bottom: 20px;
            padding: 12px 20px; /*버튼크기 가로세로*/
            background-color: #000000;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
            font-family: Times New Roman, sans-serif;
        }
        .save-button:hover {
           background-color: #333;
        }
    </style>
</head>
<body>
<!-- request에 묶여있는 attribute 객체 째로 열어서 안에 내용 value값으로 적어두기-->
<% PostDTO dto = (PostDTO)request.getAttribute("editPost"); %>
<!-- MoveEditPostController로부터 온 속성. Post DTO가 담겨 있다. -->
    <header class="header">
        <div>
            <img src="/Team3MiniProject/Images/bannerLogo.png" alt="Team3">
        </div>
        <div>
            <a href="/Team3MiniProject/ABView/mainCombined.jsp" style="text-decoration-line: none;">Home</a>&nbsp;&nbsp;&nbsp;
            <a href="/Team3MiniProject/ABView/updateMember.jsp"style="text-decoration-line: none;">MyPage</a>&nbsp;&nbsp;&nbsp;
            <a href="/Team3MiniProject/controller/member/logout" style="text-decoration-line: none;">Logout</a>&nbsp;&nbsp;&nbsp;
        </div>
    </header>
    <div class="form-container">
        <form id="postForm" action="/Team3MiniProject/frontcontroller/controller/editPost" method="post">
            <input type="hidden" name="postNumber" value="<%=dto.getPostNumber()%>">
            <div class="form-group">
                <input type="text" id="title" name="title" placeholder="제목" value="<%=dto.getTitle()%>">
            </div>
            <div class="form-group">
                <textarea id="content" name="content" placeholder="여기에 작성해주세요"><%=dto.getContent()%></textarea>
            </div>
        </form>
    </div>
    <button class="save-button" onclick="document.getElementById('postForm').submit();">Save</button>
</body>
</html>
