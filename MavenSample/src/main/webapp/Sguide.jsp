<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.smhrd.model.MemberDTO"%>


<!DOCTYPE HTML>
<!--
	TXT by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
<title>금연여행 :: 금연가이드</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<style>
.div {
	display: flex;
	float: left;
	margin-right: 200px;
}

.div1 {
	display: flex;
	float: left;
	margin-right: 70px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	padding: 15px;
	text-align: left;
/* 	font-weight : bold;
	font-size: 20px; */
}

th {
	background-color: #f2f2f2;
	font-weight : bold;
	font-size: 30px;
}

.center {
	text-align: center;
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
					<p>금연 가이드</p>
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
									<span>금연정보</span>
								</h2>
								<ul class="divided">
									<li>
										<article class="box post-summary">
											<h3>
												<a href="./Sguide.jsp">금연가이드</a>
											</h3>

										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3>
												<a href="./Snews.jsp">금연뉴스</a>
											</h3>

										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3>
												<a href="./Schatbot.jsp">가이드와의 대화</a>
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
									<h2 align="center">금연가이드</h2>

								</header>
								<table>
									<tr>
										<th class="center">순번</th>
										<th class="center">제목</th>
									</tr>
									<%
									try {
										Class.forName("oracle.jdbc.driver.OracleDriver");
										Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@project-db-cgi.smhrd.com:1524:XE",
										"cgi_21K_AI15_hacksim_1", "smhrd1");
										Statement stmt = conn.createStatement();
										ResultSet rs = stmt.executeQuery("SELECT * FROM Q_INFO");

										while (rs.next()) {
											String know = rs.getString("know");
											String q_url = rs.getString("q_url");
									%>
									<tr>
										<td class="center"><%=rs.getRow()%></td>
										<td><a href="<%=q_url%>"><%=know%></a></td>
									</tr>
									<%
									}
									conn.close();
									} catch (Exception e) {
									e.printStackTrace();
									}
									%>
								</table>


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
			<button onclick="topFunction()" id="myBtn" title="Go to top">TOP</button>
			
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
<script>
function topFunction() {
	  document.body.scrollTop = 0; // Safari를 위한 코드
	  document.documentElement.scrollTop = 0; // Chrome, Firefox, IE, Opera를 위한 코드
	}
</script>
</body>

</html>