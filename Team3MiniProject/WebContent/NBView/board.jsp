<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="nB.Model.PostDTO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Board</title>
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

        .board-container {
            max-width: 800px;
            margin: 150px auto;
            padding: 20px;
            text-align: left;
        }
        .new-post-button-container {
            text-align: right;
            margin-right: 50px;
        }
        .new-post-button {
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
        .new-post-button:hover {
            background-color: #333;
        }
        .posts {
            margin-top: 20px;
        }
        .post {
            border: 1px solid #ccc;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
       /*  .post h2 {
            margin: 0 0 10px;
            font-size: 24px;
        }
        .post h2 a {
            color: black;
            text-decoration: none;
        }
        .post h2 a:visited {
            color: black;
        }
        .post h2 a:hover, .post h2 a:active {
            color: black;
        } */
        .post pre {
            margin: 0;
            font-size: 16px;
            white-space: pre-wrap;
        }
        #postTitle{
        /* 기존에 글 제목 클릭하면 열람페이지로 넘어가던것이 h2와 href로 처리되어 있었는데 input으로 수정함. 디자인도 기존 h2에 맞게 수정. */
        /* db가 작동이 되면 직접 보면서 수정할텐데 안되서 일단 기존 css코드 그대로 집어넣음. 폰트 크기가 실제로 어느정도 될지 모르겠음.*/
        	margin: 0 0 10px;
            font-size: 24px;
            color: black;
            text-decoration: none;
            font-family: Times New Roman, sans-serif;
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
    <div class="board-container">
    <!-- newPost작성 이용을 위해 form태그 추가 -->
        <div class="new-post-button-container">
        <a href="/Team3MiniProject/NBView/newPost.jsp" class="new-post-button">New Post</a>
        </div>
        <h1>Board</h1>
        <div class="posts">
            <%
            	List<PostDTO> posts = (List<PostDTO>)request.getAttribute("posts");
                            if (posts != null && !posts.isEmpty()) {
                                for (PostDTO post : posts) {
            %>          
                        <div class="post">
                        <form action ="/Team3MiniProject/frontcontroller/controller/viewPost" method="post">
                        <input type="hidden" name="postId" value="<%post.getId();%>">
                        <input type="button" id="postTitle" value="<%= post.getTitle() %>" onclick="submit()">
                            <pre><%= post.getContent() %></pre>
                          </form>
                        </div>
            <%
                    }
                } else {
            %>
                    <p>No posts available.</p>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
