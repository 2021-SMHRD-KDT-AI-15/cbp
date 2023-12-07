<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
   <%@page import="java.util.ArrayList"%>
    <%@page import="com.smhrd.model.WiseDTO"%>
    <%@ page import="com.smhrd.model.MemberDTO" %>

<!DOCTYPE HTML>
<!--
   TXT by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
   <title>금연 여행</title>
   <meta charset="utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
   <link rel="stylesheet" href="assets/css/main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
   #wise{
      border: 50px solid #b1ddab;
      position: fixed;
      right: 10px;
      bottom: 20px;
   }
</style>
</head>

<body class="homepage is-preload">
<%MemberDTO info = (MemberDTO) session.getAttribute("info");%>
   <div id="page-wrapper">
   
      <!-- Nav -->
      <nav id="nav">
         <ul>
            <li class="current"><a href="./Main.jsp">홈</a></li>
            <li>
               <a href="./Sguide.jsp">금연 정보</a>
               <ul>
                  <li><a href="./Sguide.jsp">금연 가이드</a></li>
                  <li><a href="./Snews.jsp">금연 뉴스</a></li>
                  <li><a href="./Schatbot.jsp">가이드와의 대화</a></li>
            </li>

         </ul>
         </li>
         <li><a href="./Shospital.jsp">금연 도움 기관</a>
         <ul>
                  <li><a href="./Shospital.jsp">금연 관련기관</a></li>
            </li>

         </ul>
         </li>
         
         
                           <% if(info != null) { %>
                           <li><a href="./Mypage.jsp">나의 건강정보</a>
           <ul>
            <li><a href="./Mypage.jsp">마이페이지</a></li>
                  <li><a href="./Scalendar.jsp">금연일정관리</a></li>
            <li><a href="./BodyChange.jsp">나의 신체변화</a></li>
         <% } else { %>
         <li><a href="./Login.jsp">나의 건강정보</a>
           
           <ul>
            <li><a href="./Login.jsp">마이페이지</a></li>
                  <li><a href="./Login.jsp">금연일정관리</a></li>
            <li><a href="./BodyChange.jsp">나의 신체변화</a></li>
         <% } %>
               </ul>
            </li>

         <li>
         				
         <% if(info != null) { %>
            <a href="LogoutService">로그아웃</a>
         <% } else { %>
            <a href="./Login.jsp">로그인</a>
         <% } %>
         </li>


         </ul>
      </nav>

      <!-- Banner -->
      <section id="banner">
         <div class="content">
            <video src="./forest_-_9796(1080p).mp4" type="video/mp4" muted autoplay loop>   
            
         </div>
      </section>

      <!-- Main -->
      <section id="main">
         <div class="container">
                  <!-- Highlight -->
                  <section class="box feature">
                     <ul class="special">
                        <li><a href="#" class="icon solid fa-calendar-alt"><span
                                 class="label">Calendar</span></a></li>
                        <p></p>
                        
                        <h2><a href="#">40일 목표로!</a></h2>
                        <p>
                           40일을 목표로 삼아 당신의 일정 관리를 도와드립니다!
                        </p>
                        
                        <li><a href="#" class="icon solid fa-smoking-ban"><span
                                 class="label">Smokingban</span></a></li>
                        <p></p>
                        <h2><a href="#">금연을 통해!</a></h2>
                        <p>
                           일정관리로 금연 성공을 이뤄보세요!
                        </p>
                        
                        <li><a href="#" class="icon solid fa-heartbeat"><span class="label">Heartbeat</span></a>
                        </li>
                        <p></p>
                        <h2><a href="#">더 건강하게!</a></h2>
                        <p>
                           저희 서비스와 함께 더 건강해진 자신을 체험해보세요!
                        </p>
                     </ul>
                     <header>

               </div>
         
         </div>
      </section>

   </div>


   <script>
$(document).ready(function(){
    $.ajax({
        url: 'WiseService',
        dataType: 'json',
        type: 'GET',
        success: function(data) {
            var i = 0;
            setInterval(function(){
                if(i >= data.length) i = 0;
                $("#wise").text(data[i].WISE); // 수정: 'WISE' 필드를 text로 설정합니다.
                i++;
            }, 60000);
        }
    });

    // 담배 아이콘 클릭 이벤트 핸들러
    $("#cigarette-icon").click(function() {
        // 서버로 클릭 이벤트 전송
        $.ajax({
            url: 'CigaretteCounter', // 서버에서 처리할 URL을 지정
            type: 'POST', // 클릭 이벤트를 서버로 전송할 때는 POST 메서드 사용
            success: function(response) {
                console.log("Cigarette count increased");
            },
            error: function(error) {
                console.error("Error increasing cigarette count", error);
            }
        });
    });
});
</script>

<div id="wise"></div>
<!-- 추가: 담배 모양 아이콘 -->


 <div id="cigarette-icon" style="position: fixed; font-size: 30px; right: 70px; bottom: 20px; cursor: pointer;" >
    <!-- 담배 아이콘 이미지를 사용하거나 다른 시각적인 디자인을 원하면 해당 부분을 수정 -->
    🚬 
</div> 
<script>
document.getElementById("cigarette-icon").addEventListener('click', function() {
    fetch('CigaretteCounter', {
        method: 'POST'
    }); 
});
</script>
   <!-- Footer -->
   <footer id="footer">
      <div class="container">
         <div class="row gtr-200">
            <div class="col-12">

               <!-- About -->
               <section>
                  <h3 class="major"><span>About Us</span></h3>
                  <p>
                     인공지능 융합서비스 개발자과정(NCS) 15회차 TEAM 돌아와조<br>
                     광주광역시 남구 송암로 60 스마트인재개발원
                  </p>
               </section>

            </div>
            <div class="col-12">



            </div>
         </div>

         <!-- Copyright -->
         <div id="copyright">
            <ul class="menu">
               <li>&copy; Untitled. All rights reserved</li>
               <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
            </ul>
         </div>

      </div>
   </footer>

   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.dropotron.min.js"></script>
   <script src="assets/js/jquery.scrolly.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

</body>

</html>