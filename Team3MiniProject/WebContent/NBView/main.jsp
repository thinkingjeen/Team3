<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team3Main</title>
    <style>
        #logo {
            margin-left: 0px;
            margin-top: 10px;
            margin-bottom: 5px;
            position: relative;
            left: 26%;
        }
        
        #naviLinks {
            text-decoration-line: none;
            font-size: 18px;
            font-family: Times New Roman, sans-serif;
            text-align: right;
            position: fixed;
            right: 26%;
        }
    
        a:link {
            color: #000000;
        }
        
        a:visited {
            color: #000000; /* 방문한 링크 색상도 기본 링크 색상과 동일하게 설정 */
        }
        
        body {
            font-family: Times New Roman, sans-serif;
        }
        
        .header a {
            text-decoration: none;
        }
        
        .header {
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }

        .carousel {
            position: relative;
            width: 800px;
            height: 500px;
            margin: auto;        
            overflow: hidden;
        }
        .slides {
            display: flex;
            transition: transform 1.7s ease-in-out;
        }
        .slides img {
            width: 100%;
            height: 100%;
            border: 0;
        }
        .box {
            display: flex;
            justify-content: center;
            align-items: center;
            border: none; 
            position: relative;
            overflow: hidden;
        }
        .box img {
            max-width: 100%;
            max-height: 100%;
            transition: opacity 0.3s ease-in-out; /* 이미지 전환 효과 추가 */
        }
        .box:hover img {
            opacity: 0.7; /* 마우스 오버 시 불투명도 변경 */
        }
        .small-box {
            width: 800px;
            height: 500px;
        }
        .large-box {
            width: 400px;
            height: 1010px;
        }
        .container {
            flex-wrap: wrap;
            margin-top:-20px;
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .left-column {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        
        .text-overlay1 {
            position: absolute; /* 절대 위치 */
            top: 10%; 
            left: 17%; 
            transform: translate(-50%, -50%); /* 텍스트를 중앙*/
            color: white; 
            font-size: 70px; 
            font-family: Times New Roman, sans-serif; 
            padding: 10px 20px; 
        }
        
         .text-overlay2 {
            position: absolute; /* 절대 위치 */
            top: 50%; 
            left: 25%; 
            transform: translate(-50%, -50%); /* 텍스트를 중앙*/
            color: white; 
            font-size: 70px; 
            font-family: Times New Roman, sans-serif; 
            padding: 10px 20px; 
        }
        
        footer {
            font-family:Times New Roman, sans-serif;
            position: relative;
            left: 26%;
            margin-top:2px;
            margin-left:8px;
        }
        .footerLine1 {
            font-size:30px;
        }
        
        .footerLine2 {
            font-size: 17px;
            margin-top:-3px;
        }

        /* 팝업창 스타일 */
      /*   .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border: 1px solid #ccc;
            padding: 20px;
            background: white;
            z-index: 1000;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .popup-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
        }
        .popup input {
            display: block;
            margin-bottom: 10px;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
        }
        .popup button {
            margin-right: 10px;
        } */
    </style>
</head>
<body>
    <header class="header">
        <div id="logo">
            <a href="/Team3MiniProject/NBView/main.jsp"> 
                <img src="/Team3MiniProject/Images/bannerLogo.png" alt="Team3">
            </a>
        </div>
        <p id="naviLinks">
            <!-- <a href="/Team3MiniProject/join.jsp" style="text-decoration-line: none;">join</a>&nbsp;&nbsp;&nbsp;
            <a href="#" id="loginLink" style="text-decoration-line: none;">login</a>&nbsp;&nbsp;&nbsp; -->
            <!-- 아래 세줄로 위 주석처리된 두줄 대체. 클라이언트 화면 우상단 작은 텍스트 링크들 작동하도록 변경 -->
            <a href="/Team3MiniProject/ABView/mainCombined.jsp" style="text-decoration-line: none;">Home</a>&nbsp;&nbsp;&nbsp;
            <a href="/Team3MiniProject/ABView/updateMember.jsp"style="text-decoration-line: none;">MyPage</a>&nbsp;&nbsp;&nbsp;
            <a href="/Team3MiniProject/controller/member/logout" style="text-decoration-line: none;">Logout</a>&nbsp;&nbsp;&nbsp;
        </p>
    </header>
    
    <div class="container">
        <div class="left-column">
            <div class="box small-box carousel">
                <div class="slides">
                    <img src="/Team3MiniProject/Images/pink3.jpeg" alt="Pink">          
                    <img src="/Team3MiniProject/Images/wave.jpeg" alt="Wave">
                    <img src="/Team3MiniProject/Images/doggy3.jpeg" alt="Doggy">
                </div>
            </div>
            <div class="box small-box" onclick=""> 
                <img src="/Team3MiniProject/Images/cloud4.jpg" alt="회원관리">
                <div class="text-overlay1">Member</div>
            </div>
        </div>
        <div class="box large-box">
        <form action ="/Team3MiniProject/frontcontroller/controller/listPosts" method="post">
        <input type="image" src="/Team3MiniProject/Images/wave2.jpg" alt="게시판">
        <div class="text-overlay2">Board</div>
        </form>
        </div>
    </div>

    <footer>
        <div class="footerLine1">Team3 Notice Board Service</div>
        <div class="footerLine2">Click the image to experience our service.</div>
    </footer>


<%--     <!-- 팝업창 오버레이 -->
    <div class="popup-overlay" id="popupOverlay"></div>

    <!-- 팝업창 --> 
     <div class="popup" id="loginPopup">  
        <form action="loginOk.jsp" method="post">
            <input type="text" name="id" placeholder="ID" value="<% if(session.getAttribute("id")!= null) out.println(session.getAttribute("id")); %>" required>
            <input type="password" name="pwd" placeholder="Password" required>
            <button type="submit">로그인</button>
            <button type="reset">다시입력</button>      
            <button type="button" onclick="javascript:window.location='join.jsp'">회원가입</button>
            <button type="button" id="closePopup">창닫기</button>          
        </form>    
    </div> 

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const loginLink = document.getElementById('loginLink');
            const loginPopup = document.getElementById('loginPopup');
            const popupOverlay = document.getElementById('popupOverlay');
            const closePopup = document.getElementById('closePopup');

            loginLink.addEventListener('click', (e) => {
                e.preventDefault();
                popupOverlay.style.display = 'block';
                loginPopup.style.display = 'block';
            });

            closePopup.addEventListener('click', () => {
                popupOverlay.style.display = 'none';
                loginPopup.style.display = 'none';
            });

            popupOverlay.addEventListener('click', () => {
                popupOverlay.style.display = 'none';
                loginPopup.style.display = 'none';
            });

            let currentIndex = 0;

            function showSlide(index) {
                const slides = document.querySelector('.slides');
                const totalSlides = slides.children.length;
                if (index >= totalSlides) {
                    currentIndex = 0;
                } else if (index < 0) {
                    currentIndex = totalSlides - 1;
                } else {
                    currentIndex = index;
                }
                const newTransform = -currentIndex * 100 + '%';
                slides.style.transform = 'translateX(' + newTransform + ')';
            }

            function moveSlide(direction) {
                showSlide(currentIndex + direction);
            }

            setInterval(() => {
                moveSlide(1);
            }, 3000);

            showSlide(currentIndex);
        });
    </script> --%>
</body>
</html>
