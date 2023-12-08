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
   #quote{
      border: 10px solid #b1ddab;
      position: fixed;
      right: 10px;
      bottom: 20px;
   }
   
ul.special{
margin : -3em -3em;
} 
#main{
padding: 3em 0 3em 0;
}
#banner{
padding : 0;
   }
#banner.content {
    padding: 2em 0 2em 0;
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
            <video src="assets/css/images/forest_-_9796(1080p).mp4" type="video/mp4" muted autoplay loop>   
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
                      </section>
               </div>
         </section>
   
  <div id="quote"></div>
   <script>
       const quotes = [
           "아무것도 하지 않으면서 무언가를 하고 있다고 믿는 건 담배로 인해 겪게 되는 첫번째 환상입니다. <랄프 왈도 에머슨>",
           "담배는 사랑의 무덤입니다. <벤저민 디즈레일리>",
           "흡연은 스트레스나 근심, 우울, 분노, 좌절, 외로움, 지루함 같은 부정적인 현상에 대처할 때 취하는 부정적인 반응이지. 말하자면, 흡연은 가장 확실하고 가장 명예로운 자살 행위야. < 커트 보네거트>",
           "나는 흡연이 인명을 살상시킨다는 명백한 증거를 남기며 죽어가고 있소! <웨인 맥라렌(말보로 모델)>",
           "흡연자는 자신을 현인이나 자선가처럼 착각하고 행동한다 <에드워드 조지 벌워리튼>",
           "담배는 악마로부터 나온 더러운 잡초, 당신의 지갑을 비게하고, 옷을 태운다. 코를 굴뚝으로 만들고 생명을 태운다 <벤저민 워터하우스>",
           "많은 사람들이 담배가 스트레스를 해소하고 신경질을 덜 부리게 한다고 믿는다. 그러나 사실은 흡연이 스트레스의 원인이다 <서홍관(금연운동협회장)>",
           "나는 이제 간다. 당부하는데 무슨 일이 있어도 절대 흡연하지 말라. <율 브리너>",
           "담배 그거 맛있습니까? 담배는 '독약'입니다. <이주일>",
           "금연은 마라톤과도 같다. 죽을 때까지 참아야 한다. <어느 흡연가>",
           "세상 가장 작고 가는 살인자 담배. <어느 흡연가>",
           "흡연은 저승길이오 지름길이오. <어느 흡연가>",
           "이 연기처럼 내 가족의 기억속에 나는 사라진다. <어느 흡연가>",
       ];

       const quote = quotes[Math.floor(Math.random() * quotes.length)];

       document.getElementById("quote").innerHTML = quote;
  
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