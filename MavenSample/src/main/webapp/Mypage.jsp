<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.smhrd.model.MemberDTO"%>
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
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
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
						<li><a href="./Snews.jsp">금연 뉴스</a></li>
						<li><a href="./Schatbot.jsp">가이드와의 대화</a></li></li>

			</ul>
			</li>
			<li><a href="./Shospital.jsp">금연 도움 기관</a></li>
			<li><a href="./Mypage.jsp">나의 건강정보</a></li>
			<li><a href="./Login.jsp">로그인</a></li>


			</ul>
		</nav>
		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="current"><a href="./Main.jsp">홈</a></li>
				<li><a href="./Sguide.jsp">금연 정보</a>
					<ul>
						<li><a href="./Sguide.jsp">금연 가이드</a></li>
						<li><a href="./Snews.jsp">금연 뉴스</a></li>
						<li><a href="./Schatbot.jsp">가이드와의 대화</a></li></li>

			</ul>
			</li>
			<li><a href="./Shospital.jsp">금연 도움 기관</a>
				<ul>
					<li><a href="./Shospital.jsp">금연 관련기관</a></li></li>

			</ul>
			</li>


			<%
			if (info != null) {
			%>
			<li><a href="./Mypage.jsp">나의 건강정보</a>
				<ul>
					<li><a href="./Mypage.jsp">마이페이지</a></li>
					<li><a href="./Scalendar.jsp">금연일정관리</a></li>
					<li><a href="./BodyChange.jsp">나의 신체변화</a></li>
					<%
					} else {
					%>
					<li><a href="./Login.jsp">나의 건강정보</a>

						<ul>
							<li><a href="./Login.jsp">마이페이지</a></li>
							<li><a href="./Login.jsp">금연일정관리</a></li>
							<li><a href="./BodyChange.jsp">나의 신체변화</a></li>
							<%
							}
							%>
						</ul></li>

					<li>
						<%
						if (info != null) {
						%> <a href="LogoutService">로그아웃</a> <%
 } else {
 %>
						<a href="./Login.jsp">로그인</a> <%
 }
 %>
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
										<strong>${info.nick}</strong>님 환영합니다 <b>${info1.p_day}</b>일째입니다!
										목표까지 <b>${40-info1.p_day}</b>일 남았습니다. <br>파이팅!
									</p>
									<h3>
										<!--그동안 핀 담배 nn개
										s_daily * (오늘 날짜 - s_date) -->
									</h3>
									<form name="frm" id="frm" action="" method="post">
										<input type="hidden" name="csSignature"
											value="iOkbEin8G+INaPL2QcMUwA==" /> <input type="hidden"
											name="_csrf" value="f08b0ce0-8bc0-4141-9f17-924b685fd251" />
										<input type="hidden" name="step" id="step" value="0" /> <input
											type="hidden" name="stopDay" id="stopDay" value="" />
									</form>
									<div class="clock_infor">
										<div class="clock1">
										
											<p>
												<span>금연시작일 : <b id="demo">todayDateOnly</b></span>
											</p>
										</div>
										<div class="clock2">
											<p>
												<b id="pday"></b>일 <b id="phour"></b>시간의 수명이 <span>연장되었습니다.</span>
											</p>
										</div>
										<div class="clock3">
											<p>
												금연저금통에 <b id="money"></b>원이 <span>저금되었습니다.</span>
											</p>
										</div>
										<div class="clock4">
											<p>
											 	<b id="ciga"></b>대의 담배를<span> 피우지 않았습니다.</span>
											</p>
										</div>
									</div>
								</header>

								<div class="div">
									<section>
										<h3>등산</h3>
										<span class="#"><img
											src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcvXfz6bnv0MBCR51nhZ0w3qOn9mZj6WpKMg&usqp=CAU"
											alt=""></span>
									</section>
								</div>
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
	<script>
	
		var today = new Date('${info1.p_start}');
		var todayDateOnly = today.toISOString().substring(0, 10);
		document.getElementById("demo").innerHTML = todayDateOnly;
		
		var totalHours = ('${info.s_daily}' * '${info1.p_day}' * 11) / 60;
		var pday = Math.floor(totalHours / 24);
		var phour = Math.floor(totalHours % 24);
		document.getElementById("pday").innerHTML = pday;
		document.getElementById("phour").innerHTML = phour;
		
		var money = '${info1.p_day}'*'${info.s_daily}'*'${info.price}'/20;
		document.getElementById("money").innerHTML = money;
		
		var ciga = '${info1.p_day}'*'${info.s_daily}'; // 당일 흡연량들의 총합 빼야함
		document.getElementById("ciga").innerHTML = ciga;
		
	</script>
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