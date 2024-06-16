<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="aB.Model.MemberDTO"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Post</title>
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
        .form-container {
            max-width: 800px;
            margin: 150px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group textarea {
            height: 200px;
            resize: vertical;
        }
        .save-button {
            background-color: #000;
            color: white;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-transform: uppercase;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        .save-button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <header class="header">
        <div>
            <img src="/Team3MiniProject/Images/bannerLogo.png" alt="Logo">
        </div>
        <div>
           <a href="/Team3MiniProject/ABView/mainCombined.jsp" style="text-decoration-line: none;">Home</a>&nbsp;&nbsp;&nbsp;
            <a href="/Team3MiniProject/ABView/updateMember.jsp"style="text-decoration-line: none;">MyPage</a>&nbsp;&nbsp;&nbsp;
            <a href="/Team3MiniProject/controller/member/logout" style="text-decoration-line: none;">Logout</a>&nbsp;&nbsp;&nbsp;
        </div>
    </header>
    <div class="form-container">
        <form action="/Team3MiniProject/controller/savePost" method="post">
            <div class="form-group">
                <input type="text" id="title" name="title" placeholder="제목" required>
            </div>
            <div class="form-group">
                <textarea id="content" name="content" placeholder="여기에 작성해주세요" required></textarea>
            </div>
            <button type="submit" class="save-button">Save</button>
        </form>
    </div>
</body>
</html>
