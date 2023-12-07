<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <title>Forty by HTML5 UP</title>
      <meta charset="UTF-8" />
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="assets/css/main.css" />
      <style>
      #Update > ul.actions {
         margin-top:10%;
      }
      
      #hello {
      font-size:100px; text-align: center;
      }
      #hello1{
      font-size:80px; text-align: center;
      }
      
   </style>
   </head>
   <body style="text-align: center;">

      <!-- Wrapper -->
         <div id="wrapper">
            <!-- Menu -->
               <nav id="Update">   
                  <ul class="actions vertical">
                     <h1 id= hello > ${info.nick}님! 환영합니다!</h1>
                     
                     <li id= hello1>금연 여행을 시작합니다.</li>
                     <!-- Q2. 회원가입 한 회원정보 중 이메일을 출력하시오.(request영역 활용) -->
                     
                     
                     <br><br><br><br>
                     <li><button onclick='location.href="Mypage.jsp"'>시작하기</button></li>
                  </ul>
               </nav>         
         </div>
      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/skel.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
   </body>
</html>
