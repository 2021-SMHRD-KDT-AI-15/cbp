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
		<title>금연여행 :: 금연뉴스</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<div class="logo container">
						<div>
							<h1><a href="./Main.jsp" id="logo">금연여행</a></h1>
							<p>금연 가이드</p>
						</div>
					</div>
				</header>

			<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="current"><a href="./Main.jsp">홈</a></li>
				<li>
					<a href="./Sguide.jsp">금연 정보</a>
					<ul>
						<li><a href="./Sguide.jsp">금연 가이드</a></li>
						<li><a href="./Snews.jsp">금연 뉴스</a></li>
					</ul>
				</li>
				<li><a href="./Shospital.jsp">금연 도움 기관</a></li>
				<li>
					<a href="./Mypage.jsp">나의 건강정보</a>
					<ul>
						<li><a href="./Mypage.jsp">마이페이지</a></li>
						<li><a href="./Scalendar.jsp">금연일정관리</a></li>
						<li><a href="./BodyChange.jsp">나의신체변화</a></li>
					</ul>
				</li>

				<li>
							<%
						MemberDTO info = (MemberDTO) session.getAttribute("info");
						%>
         <% if(info != null) { %>
            <a href="LogoutService">로그아웃</a>
         <% } else { %>
            <a href="./Login.jsp">로그인</a>
         <% } %>
				</li>


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
												<h2 class="major"><span>금연정보</span></h2>
												<ul class="divided">
													<li>
														<article class="box post-summary">
															<h3><a href="./Sguide.jsp">금연가이드</a></h3>
															
														</article>
													</li>
													<li>
														<article class="box post-summary">
															<h3><a href="./Snews.jsp">금연뉴스</a></h3>
															
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
												<h2>뉴스 제목</h2>
												<p>뉴스 소제목</p>
												<ul class="meta">
													<li class="icon fa-clock">뉴스 날짜</li>
													<li class="icon fa-comments"><a href="#">1,024</a></li>
												</ul>
											</header>

											<section>
												<span class="image featured"><img src="images/pic05.jpg" alt="" /></span>
												<p>
													뉴스 내용
												</p>
											</section>

											

											

										</article>

								</div>
							</div>
							<div class="col-12">

								<!-- Features -->
									<section class="box features">
										<h2 class="major"><span>담배 관련 뉴스</span></h2>
										<div>
											<div class="row">
												<div class="col-3 col-6-medium col-12-small">

													<!-- Feature -->
														<section class="box feature">
															<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
															<h3><a href="#">뉴스 제목 1</a></h3>
															<p>
																간단한내용
															</p>
														</section>

												</div>
												<div class="col-3 col-6-medium col-12-small">

													<!-- Feature -->
														<section class="box feature">
															<a href="#" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
															<h3><a href="#">뉴스제목2</a></h3>
															<p>
																간단한 내용
															</p>
														</section>

												</div>
												<div class="col-3 col-6-medium col-12-small">

													<!-- Feature -->
														<section class="box feature">
															<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" /></a>
															<h3><a href="#">뉴스제목3</a></h3>
															<p>
																간단한 내용
															</p>
														</section>

												</div>
												<div class="col-3 col-6-medium col-12-small">

													<!-- Feature -->
														<section class="box feature">
															<a href="#" class="image featured"><img src="images/pic04.jpg" alt="" /></a>
															<h3><a href="#">뉴스제목4</a></h3>
															<p>
																간단한내용
															</p>
														</section>

												</div>
												
											</div>
										</div>
									</section>

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