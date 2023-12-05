<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    if (session.getAttribute("user") == null) { // 세션에 사용자 정보가 없다면
        response.sendRedirect("./Login.jsp"); // 로그인 페이지로 리다이렉트
        return; // 리다이렉트 후 현재 페이지 처리 중단
    }else{
    	response.sendRedirect("./Mypage.jsp");
    }
%>


<!DOCTYPE HTML>
<!--
	TXT by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
<title>금연여행 :: 마이페이지</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style>
.div {
	display: flex;
	float: left;
	margin-right: 195px;
}
</style>

</head>

<body class="is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<div class="logo container">
				<div>
					<h1>
						<a href="./Main.jsp" id="logo">금연여행</a>
					</h1>
					<p>마이페이지</p>
				</div>
			</div>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="current"><a href="./Main.jsp">홈</a></li>
				<li><a href="./Sguide.jsp">금연 정보</a>
					<ul>
						<li><a href="./Sguide.jsp">금연 가이드</a></li>
						<li><a href="./Snews.jsp">금연 뉴스</a></li></li>

			</ul>
			</li>
			<li><a href="./Shospital.jsp">금연 도움 기관</a></li>
			<li><a href="./Mypage.jsp">나의 건강정보</a></li>
			<li><a href="./Login.jsp">로그인</a></li>


			</ul>
		</nav>

		<!-- Main -->
		<section id="main">
			<div class="container">
				<div class="row">
					<div class="col-3 col-12-medium">
						<div class="sidebar">

							<!-- Sidebar -->

							<!-- Recent Posts -->
							<section>
								<h2 class="major">
									<span>목록</span>
								</h2>
								<ul class="divided">
									<li>
										<article class="box post-summary">
											<h3>
												<a href="./Mypage.jsp">마이페이지</a>
											</h3>

										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3>
												<a href="./Scalendar.jsp">금연일정관리</a>
											</h3>

										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3>
												<a href="./BodyChange.jsp">나의신체변화</a>
											</h3>

										</article>
									</li>
								</ul>

							</section>



						</div>
					</div>
					<div class="col-9 col-12-medium imp-medium">
						<div class="content">

							<!-- Content -->

							<article class="box page-content">

								<header>
									<h2>마이페이지</h2>
									<p>
										<strong>${info.nick}</strong>님 환영합니다 22일째입니다! 목표까지 18일 남았습니다.
										화이팅!
									</p>
								</header>

								<div class="div">
									<section>
										<h3>등산</h3>
										<span class="#"><img
											src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcvXfz6bnv0MBCR51nhZ0w3qOn9mZj6WpKMg&usqp=CAU"
											alt=""></span>
									</section>
								</div>
								<section>
									<h3>그동안 핀 담배</h3>

									<span class="#"><img
										src="https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/47bq/image/fdbRiA7cIAIbw7SV1B0QYpmkEHk.jpeg"
										width="400px" height="600px"></span>

								</section>


							</article>

						</div>
					</div>

				</div>
			</div>
		</section>

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

