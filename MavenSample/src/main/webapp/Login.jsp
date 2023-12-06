<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ page import="com.smhrd.model.MemberDTO" %>
<!DOCTYPE HTML>
<!--
	TXT by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
<title>금연 여행 :: 로그인</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style>
form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.form-group {
	width: 700px;
	margin-bottom: 10px;
}

button {
	margin-top: 10px;
}

button[name="btn2"] {
	margin-top: 10px;
	margin-left: auto;
	margin-right: auto;
	display: block;
}

a {
	text-decoration: none;
}
</style>
</head>

<body class="homepage is-preload">
<%MemberDTO info = (MemberDTO) session.getAttribute("info");%>
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<div class="logo container">
				<div>
					<h1>
						<a href="./Main.jsp" id="logo">금연 여행</a>
					</h1>
					<p>로그인</p>
				</div>
			</div>
		</header>

		<!-- Nav -->
		<!-- Q1.메뉴 -->
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
		<!-- Q2. 로그인 기능 -->
		<!-- Main -->
		<section id="main">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="content">

							<!-- Content -->
							<form action="LoginService" method="post">
								<div class="form-group">
									<label for="email">이메일</label> <input type="text" id="email"
										name="email" placeholder="이메일을 입력하세요">
								</div>
								<div class="form-group">
									<label for="pw">비밀번호</label> <input type="password" id="pw"
										name="pw" placeholder="비밀번호를 입력하세요">
								</div>
								<input type="submit" value="로그인">
							</form>
							<a href="./Join.jsp"><button name="btn2">회원가입</button></a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Q3.하단부 공통 -->
		<!-- Footer -->
		<footer id="footer">
			<div class="container">
				<div class="row gtr-200">
					<div class="col-12">

						<!-- About -->
						<section>
							<h3 class="major">
								<span>About Us</span>
							</h3>
							<p>
								인공지능 융합서비스 개발자과정(NCS) 15회차 TEAM 돌아와조<br> 광주광역시 남구 송암로 60
								스마트인재개발원
							</p>
						</section>

					</div>
					<div class="col-12"></div>
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

		<!--Q4. 클릭 시 페이지 이동-->
		<script>
			let btn1 = document.getElementByName("btn1")
			btn1.addEventListener("click", function() {
				location.href = "./calendar.jsp";
			})
			let btn2 = document.getElementByName("btn2")
			btn2.addEventListener("click", function() {
				location.href = "./Join.jsp";
			})
		</script>
</body>

</html>