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
<title>금연여행 :: 금연일정관리</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<!-- ------------------------시작 ------------------->



<!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<!-- jquery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- fullcalendar CDN -->
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css'
	rel='stylesheet' />
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<style>
/* body 스타일 */
html, body {
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
}

#calendar {
	overflow: hidden;
}

 /* 아이콘 스타일 */
    #wise button {
    	background-color:red;
        font-size: 2em; /* 원하는 크기로 조절하세요 */
        text-decoration: none; /* 링크에 있는 밑줄 제거 */
    }

#calendar-container {
	width: 1200px;
	max-height: 100vh;
	overflow-x: hidden;
	overflow-y: hidden;
	box-shadow: 2px 2px 7px rgba(0, 0, 0, 0.2);
	border-radius: 8px;
	text-align: center;
	font-size: 100%;
	margin-bottom: 20px;
}

/* 캘린더 위의 해더 스타일(날짜가 있는 부분) */
.fc-header-toolbar {
	padding-top: 1em;
	padding-left: 1em;
	padding-right: 1em;
}

#footer.container {
	margin-top: 0;
	margin-bottom: 0;
}
</style>


<!-- -----------------------끝---------------- -->
</head>


<body class="is-preload">
<%MemberDTO info = (MemberDTO) session.getAttribute("info");%>
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<div class="logo container">
				<div>
					<h1>
						<a href="./Main.jsp" id="logo">금연여행</a>
					</h1>
					<p>금연일정관리</p>
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
									<span>메뉴</span>
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
							 <script>
$(document).ready(function(){
    $.ajax({
        url: 'WiseService',
        dataType: 'json',
        type: 'GET',
        success: function(data) {
            var i = 0;
            setInterval(function(){
                if(i >= data.length) i = 0;
                $("#wise").text(data[i].WISE); // 수정: 'WISE' 필드를 text로 설정합니다.
                i++;
            }, 60000);
        }
    });

    // 담배 아이콘 클릭 이벤트 핸들러
    $("#cigarette-icon").click(function() {
        // 서버로 클릭 이벤트 전송
        $.ajax({
            url: 'CigaretteCounter', // 서버에서 처리할 URL을 지정
            type: 'POST', // 클릭 이벤트를 서버로 전송할 때는 POST 메서드 사용
            success: function(response) {
                console.log("Cigarette count increased");
            },
            error: function(error) {
                console.error("Error increasing cigarette count", error);
            }
        });
    });
});
</script>

<div id="wise">
<!-- 추가: 담배 모양 아이콘 -->
<% if(info != null) { %>
            <button><a href="smoking_button"> 🚬 </a></button>
         <% } else { %>
            <button><a href="#"> 🚬 </a></button>
         <% } %>

  
</div>

						</div>
					</div>
					<!-- ----------------------------------------------------------------------------여기서부터---------------------------------------------------------------------- -->
					<div class="col-9 col-12-medium imp-medium" style="padding: 30px;">
						<div class="content">

							<!-- Content -->

							<article class="box page-content">

								<header>
									<h2>금연 일정관리</h2>
									<c:if ${!empty info}>
										<!-- info가 null값이 아니라면 -->
										<p>
											<strong>${info.nick}</strong>님 환영합니다.
										</p>
									</c:if>
								</header>
								<!-- calendar 태그 -->
								<div id='calendar-container'>
									<div id='calendar'></div>
								</div>

								<script>

									var today = new Date('${info.q_date}');
									var time = today.getTime();
									var diff = (24 * 60 * 60 * 1000) * 40;
									var tomo = new Date(time + diff);
									// 날짜만 추출하기
									var todayDateOnly = today.toISOString().substring(0, 10);
									var tomoDateOnly = tomo.toISOString().substring(0, 10);
								</script>

								<script>
									(function () {
										$(function () {
											// calendar element 취득
											var calendarEl = $('#calendar')[0];
											// full-calendar 생성하기
											var calendar = new FullCalendar.Calendar(calendarEl, {
												height: 'auto', // calendar 높이 설정
												expandRows: true, // 화면에 맞게 높이 재설정
												customButtons: {
													mySaveButton: {
														text: "저장하기",
														click: async function () {
															if (confirm("저장하시겠습니까?")) {
																var allEvent = calendar.getEvents();
																const saveEvent = await axios({
																	metohd: "post",
																	url: "/calendar",
																	data: allEvent,
																})
															}
														}
													}
												},
												headerToolbar: {
													left: 'prev,next today,mySaveButton',
													center: 'title',
													right: 'dayGridMonth,timeGridWeek,timeGridDay'
												},
												initialView: 'dayGridMonth',
												navLinks: true,
												editable: true,
												selectable: true,
												dayMaxEvents: true,
												locale: 'ko',
												select: function (arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
													var title = prompt('Event Title:');
													if (title) {
														calendar.addEvent({
															title: title,
															start: arg.start,
															end: arg.end,
															allDay: arg.allDay
														})
													}
													calendar.unselect()
												},
												// 이벤트 
												events: [

													{
														title: '금연프로젝트',
														start: todayDateOnly, // 날짜만 사용
														end: tomoDateOnly // 날짜만 사용
													}

												]
											});
											calendar.render();
										});
									})();
								</script>



								<!-- ---------------------------------------------------------------------------여기까지------------------------------------------------------------------------ -->
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

</html>