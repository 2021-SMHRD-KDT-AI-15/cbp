<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
   <%@page import="java.util.ArrayList"%>
    <%@page import="com.smhrd.model.WiseDTO"%>

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
<style>
   #wise{
      border: 10px solid #b1ddab;
      position: fixed;
      right: 0px;
      bottom: 0px;
   }
</style>
</head>

<body class="homepage is-preload">
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
            </li>

         </ul>
         </li>
         <li><a href="./Shospital.jsp">금연 도움 기관</a></li>
         <li><a href="./Mypage.jsp">나의 건강정보</a>
           <ul>
                  <li><a href="./Mypage.jsp">마이페이지</a></li>
                  <li><a href="./Scalendar.jsp">금연일정관리</a></li>
            <li><a href="./BodyChange.jsp">나의 신체변화</a></li>
               </ul>
            </li>

         <li><a href="./Login.jsp">로그인</a></li>


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

<% 
    ArrayList<WiseDTO> quotes = (ArrayList<WiseDTO>)request.getAttribute("list");
    int i = 0;
%>
<script>
$(document).ready(function(){
    $.ajax({
        url: 'WiseService',
        dataType: 'json', // 추가: 서버에서 받아오는 데이터 형식을 JSON으로 설정합니다.
        type: 'GET',
        success: function(data) {
            var i = 0;
            setInterval(function(){
                if(i >= data.length) i = 0; // 수정: 'data'가 JSON 배열이므로 바로 사용합니다.
                $("#wise").text(data[i].WISE); // 수정: 'WISE' 필드를 text로 설정합니다.
                i++;
            }, 60000);
        }
    });
});
</script>
<div>
   <p id="wise">${wise.wise}</p>
</div>
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

   </div>

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