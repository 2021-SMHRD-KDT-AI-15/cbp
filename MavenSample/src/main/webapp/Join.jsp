<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	TXT by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
<title>금연 여행 :: 회원가입</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

</head>

<body class="homepage is-preload">
	<div id="page-wrapper">
		<!-- Header -->
		<header id="header">
			<div class="logo container">
				<div>
					<h1>
						<a href="/Main.jsp" id="logo">금연 여행</a>
					</h1>
					<p>회원 가입</p>
				</div>
			</div>
		</header>
		<!-- Q1.메뉴창 -->
		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="current"><a href="/Main.jsp">홈</a></li>
				<li><a href="/금연가이드.html">금연 정보</a>
					<ul>
						<li><a href="/금연가이드.html">금연 가이드</a></li>
						<li><a href="/금연뉴스.html">금연 뉴스</a></li></li>

			</ul>
				<li><a href="금연도움기관.html">금연 도움 기관</a></li>
				<li><a href="/마이페이지.html">나의 건강정보</a></li>
				<ul>
					<li><a href="/마이페이지.html">마이페이지</a></li>
					<li><a href="/금연일정관리.html">금연일정관리</a></li>
					<li><a href="/신체변화.html">나의 신체변화</a></li>
				</ul>

			<li><a herf="/Login.html">로그인</a></li>


			</ul>
		</nav>

		<!-- Q2. 회원가입창 -->
		<!-- Main -->
		<section id="main">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="content">
							<!-- Content -->

							<table align="center" border="1">
								<tr>
									<td size="500px" bgcolor="#b1ddab" ; color="#fff"
										; align="center" colspan="2">Step 1 기본 정보</td>
									<form action="#" id="join" method="post">
										<tr size="500px" align="center">
											<td>E-mail</td>
											<td><input type="text" id="email"
												placeholder="E-mail을 입력해주세요"></td>
										<tr size="500px" align="center">
											<td>Password</td>
											<td><input type="password" id="pw"
												placeholder="비밀번호 입력해주세요"></td>
										<tr size="500px" align="center">
											<td>Nickname</td>
											<td><input type="text" id="nick"
												placeholder="닉네임을 입력해주세요"></td>
											</td>
										</tr>
									</form>
								<tr>
									<td size="500px" bgcolor="#b1ddab" color="#fff" align="center"
										colspan="2">Step 2 흡연/금연 정보</td>
									<form action="#" id="join" method="post">
										<tr size="500px" align="center">
											<td>금연 시작일</td>
											<td colspan="2" align="center">금연 시작일을 입력해주세요!<br>
												<input type="date" id="q_date"></td>
										<tr size="500px" align="center">
											<td>흡연 시작일</td>
											<td colspan="2" align="center">흡연 시작일을 입력해주세요!<br>
												<input type="date" id="s_date"></td>
										<tr size="500px" align="center">
											<td>담배 가격</td>
											<td colspan="2" align="center">피우고 있는 담배의 가격을 입력해주세요!<br>
												<input type="text" id="price">원
											</td>
										<tr size="500px" align="center">
											<td>하루 흡연 횟수</td>
											<td colspan="2" align="center">하루에 몇 회 흡연을 하는지 입력해주세요!<br>
												<input type="text" id="s_daily" align="center"
												placeholder="숫자를 입력해주세요"></td>
											</td>
										</tr>
									</form>
								<tr>
									<td align="center" colspan="2"><br>
										<button type="submit" id="submit">회원가입</button>
										<button type="reset" id="reset">초기화</button></td>
								</tr>
							</table>

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

		<!-- Q4. js(가입 성공/실패, 초기화 시) 안 먹히면 삭제해도 될 것 같아용...  -->
		<script>
			$("submit").on("click", function() {
						if (!join.value == null || join.value == ""
								|| join.value == undefined) {
							alert("회원 가입에 성공하였습니다!");
							location.replace("/Main.jsp");

						} else {
							alert("회원 가입에 실패하였습니다!");
							location.reload();
						}
					})
			$("reset").on("click", function() {
				alert("초기화 되었습니다!");
			})
		</script>
</body>

</html>