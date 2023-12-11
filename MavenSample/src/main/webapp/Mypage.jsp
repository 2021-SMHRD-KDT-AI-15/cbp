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

#ttable {
	font-size: 23px;
}

#myBtn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	color: #090808;
	background-color: #aaeba9;
	border: none;
	border-radius: 5px;
	text-decoration: none;
	position: fixed; /* 버튼을 스크롤과 독립적으로 위치시킵니다. */
	bottom: 60px; /* 버튼을 페이지 하단에서 20px 떨어진 위치에 둡니다. */
	right: 30px; /* 버튼을 페이지 오른쪽에서 30px 떨어진 위치에 둡니다. */
	z-index: 99; /* z-index를 높여 다른 요소 위에 버튼이 나타나도록 합니다. */
	font-size: 18px; /* 버튼의 텍스트 크기를 지정합니다. */
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
 %> <a href="./Login.jsp">로그인</a> <%
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
									<h2 align="center">마이페이지</h2>
									<p align="center">
										<strong>${info.nick}</strong>님 환영합니다. <b>오늘</b>로<b>
											${info1.p_day}</b>일째입니다! <br> <b>목표</b>까지 <b>${40-info1.p_day}</b>일
										남았습니다. <strong>파이팅!</strong> <br> <br> <br>
									<hr>
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
									<table border="10" id="ttable">

										<tr align="center">
											<td>
												<div class="clock_infor">
													<div class="clock1">
														<p>
															<span>금연시작일 : <b id="demo">todayDateOnly</b></span>
														</p>
													</div>
												</div>
											</td>
											<td>
												<div class="clock_infor">
													<div class="clock2">
														<p>
															<b id="pday"></b>일 <b id="phour"></b>시간의 수명이 <span>연장되었습니다.</span>
														</p>
													</div>
												</div>
											</td>
										</tr>
										<tr align="center">
											<td>
												<div class="clock_infor">
													<div class="clock3">
														<p>
															저금통에 <b id="money"></b>원이 <span>저금되었습니다.</span>
														<hr>
														</p>
													</div>
												</div>
											</td>
											<td>
												<div class="clock_infor">
													<div class="clock4">
														<p>
															<b id="ciga"></b>대의 담배를<span> 피우지 않았습니다.</span>
														<hr>
														</p>
													</div>
												</div>
											</td>
										</tr>
									</table>
								</header>
								<div class="div">
									<section>
										<div id="background"
											style="position: relative; height: 592px; width: 887px; background-image: url('./assets/css/images/mountain.jpg'); background-size: cover;">
											<img id="hiker" src="./assets/css/images/male.png"
												style="position: absolute; bottom: 20px; left: 50%; transform: translateX(-50%); height: 40px; width: 40px;">
										</div>
										<br>
										<p align="center">
											<button id="start">시작</button>
											<button id="stop">멈춤</button>
											<button id="reset">리셋</button>
										</p>

										<script>
										var hiker = document.getElementById('hiker');
										var background = document.getElementById('background');
										var startButton = document.getElementById('start');
										var stopButton = document.getElementById('stop');
										var resetButton = document.getElementById('reset');
										var days = 40;
										var distanceToTravel = background.offsetHeight * 0.812; // 배경 이미지의 높이의 80%
										var distancePerDay = distanceToTravel / days;
										var animateHiker;
										var moveCount = 0; // 이동 횟수를 추적하는 변수

										var moveHiker = function() {
										    var currentTop = parseInt(hiker.style.bottom) || 0;
										    var nextTop = currentTop + distancePerDay;
										    if (moveCount < days) { // 캐릭터가 아직 40번 이동하지 않았다면
										        if (nextTop < distanceToTravel) { // 캐릭터가 아직 최대 높이에 도달하지 않았다면
										            hiker.style.bottom = nextTop + "px";
										        } else { // 캐릭터가 최대 높이에 도달하거나 초과했다면
										            hiker.style.bottom = distanceToTravel + "px"; // 캐릭터의 위치를 목표 높이로 설정합니다.
										        }
										        moveCount++; // 이동 횟수를 1 증가시킵니다.
										    } else { // 캐릭터가 40번 이동했다면
										        clearInterval(animateHiker); // 캐릭터의 움직임을 멈춥니다.
										        alert("축하합니다! 40일의 완주를 마치셨습니다!");
										    }
										}

											startButton
													.addEventListener(
															'click',
															function() {
																if (!animateHiker) {
																	animateHiker = setInterval(
																			moveHiker,
																			24*60*60*1000); // 1000 : 10초 24*60*60*1000 : 하루
																}
															});

											stopButton
													.addEventListener(
															'click',
															function() {
																if (animateHiker) {
																	alert("잠시 멈추시겠습니까? 언제든지 시작을 누르시면 다시 움직입니다!");
																	clearInterval(animateHiker);
																	animateHiker = null;
																}
															});

											resetButton
													.addEventListener(
															'click',
															function() {
																hiker.style.bottom = '20px';
																if (animateHiker) {
																	alert("리셋하시겠어요? 처음부터 다시 시작됩니다!");
																	clearInterval(animateHiker);
																	animateHiker = null;
																}
															});
										</script>

									</section>
								</div>
							</article>
						</div>
					</div>
				</div>
			</div>
		</section>
		<button onclick="topFunction()" id="myBtn" title="Go to top">TOP</button>
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
			<button onclick="topFunction()" id="myBtn" title="Go to top">TOP</button>
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

		var money = '${info1.p_day}' * '${info.s_daily}' * '${info.price}' / 20;
		document.getElementById("money").innerHTML = money;

		var ciga = '${info1.p_day}' * ('${info.s_daily}'-'${info1.p_count}') ; // 당일 흡연량들의 총합 빼야함
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
	<script>
		function topFunction() {
			document.body.scrollTop = 0; // Safari를 위한 코드
			document.documentElement.scrollTop = 0; // Chrome, Firefox, IE, Opera를 위한 코드
		}
	</script>
</body>

</html>