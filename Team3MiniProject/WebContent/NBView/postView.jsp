<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="nB.Model.PostDTO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post View</title>
    <style>
        body {
            font-family: Times New Roman, sans-serif;
            margin: 0;
            padding: 20px;
            box-sizing: border-box;
        }
        .header {
            display: flex;
            justify-content: space-evenly;
            padding: 20px;
            background-color: #FFFFFF;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }
        .header img {
            height: 30px;
            position: relative;
            right: 120px;
            top: 20px;
        }
        .header a {
            position: relative;
            top: 20px;
            left: 85px;
            text-decoration: none;
            margin: 0 10px;
            color: black;
        }
        .header a:visited {
            color: black;
        }
        .header a:hover, .header a:active {
            color: black;
        }
        .post-container {
            max-width: 800px;
            margin: 150px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .post h2 {
            margin-top: 0;
        }
        .edit-button {
            display: block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #000;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }
        .edit-button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
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
    <div class="post-container">
        <%
            PostDTO post = (PostDTO) request.getAttribute("post");
            if (post != null) {
        %>
            <h2><%= post.getTitle() %></h2>
            <pre><%= post.getContent() %></pre>
            
            <form action="/Team3MiniProject/frontcontroller/controller/moveEditPost" method="post">
                <input type="hidden" name="postNumber" value="<%= post.getPostNumber() %>">
                <input type="button" value="Edit" onclick="submit()">
            </form>
            
            <form action="/Team3MiniProject/frontcontroller/controller/postDelete" method="post" onsubmit="return confirm('게시글을 삭제하시겠습니까?');">
            <!-- 브라우저 제공 기본 js함수 confirm이용. 경고창 팝업. yes or no 선택가능 -->
                <input type="hidden" name="postNumber" value="<%= post.getPostNumber() %>">
                <!-- 어느 글을 삭제할지 식별하기 위해 글 번호 받아감 -->
                <input type="submit" value="Delete">
            </form>
        <%
            } else {
        %>
            <p>Post not found!</p>
        <%
            }
        %>
    </div>
</body>
</html>
