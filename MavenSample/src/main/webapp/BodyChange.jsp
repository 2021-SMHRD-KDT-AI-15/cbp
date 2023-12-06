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
	<title>금연 여행 :: 나의 신체변화</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<style>
        /* 게이지 스타일링 */
        .progress-container {
            margin-bottom: 20px;
        }

        progress {
            width: 100%;
            height: 30px;
            background-color: #f0f0f0;
            /* 게이지 바의 배경색 */
            border-radius: 25px;
        }

        progress::-webkit-progress-bar {
            background-color: #ebe6e6;
            /*게이지 바의 배경색 (WebKit 브라우저용) */
            border-radius: 25px;
        }

        progress::-webkit-progress-value {
            background-color:rgb(102, 204, 102);
            /* 게이지 바의 전체 색상 (WebKit 브라우저용) */
            border-radius: 25px;
        }
		.border-line{
			padding: 20px 20px;
			border-radius: 10px;
			background-color: #f0f0f0;
			
		}


       


       
    </style>
</head>

<body class="is-preload">
<%MemberDTO info = (MemberDTO) session.getAttribute("info");%>
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
			<div class="logo container">
				<div>
					<h1><a href="./Main.jsp" id="logo">금연여행</a></h1>
					<p>나의 신체변화</p>
				</div>
			</div>
		</header>
		<!-- 여기 바꾸기 -->
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
						         <% if(info != null) { %>
            <li><a href="./Mypage.jsp">마이페이지</a></li>
                  <li><a href="./Scalendar.jsp">금연일정관리</a></li>
            <li><a href="./BodyChange.jsp">나의 신체변화</a></li>
         <% } else { %>
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
								<h2 class="major"><span>메뉴</span></h2>
								<ul class="divided">
									<li>
										<article class="box post-summary">
											<h3><a href="./Mypage.jsp">마이페이지</a></h3>

										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3><a href="./Scalendar.jsp">금연일정관리</a></h3>

										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3><a href="./BodyChange.jsp">나의신체변화</a></h3>

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
									<h2>나의 신체변화</h2>
									<p>금연 20분 후부터 15년 뒤까지 일어나는 변화</p>

								</header>

								<section>
									<span class="image featured"><img
											src="https://cdn.kormedi.com/wp-content/uploads/2020/10/gettyimages-a10648891-459x580.jpg"
											alt="" /></span>
									<p>
										연간 전 세계 700만 명이 흡연으로 사망하고 있다. 흡연은 신체 거의 모든 기관에 나쁜 영향을 미친다.
										하지만 니코틴의 중독성으로 금연을 실천하기란 쉽지 않다. 영구적인 금연을 실천하면 가장 좋겠지만, 반복적으로 실패하더라도 스스로를 탓하거나
										포기하지 말고 반복적으로 계속 시도하는 것이 좋다. 금연은 실천한 이후 단시간 내에 긍정적인 변화가 나타나기 때문에 반복적으로 짧게라도 시도하는
										것이 바람직하다.

										미국 건강 심리학자인 레이첼 B. 헤이스 박사는 미국 언론매체 인사이더를 통해 “그동안 얼마나 오랫동안 흡연해왔는지는 중요하지 않다”며 “한 번
										담배를 끊고 나면 여러 건강상 이점들이 나타나기 시작한다”고 말했다. 이미 지나간 시간들을 후회하는 것은 의미가 없고, 지금이라도 지속적인
										시도를 해보라는 것.
									</p>
								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								    <h3>20분 후: '${info.nick}'님의 혈압과 심박동수가 정상화 되었습니다.</h3>
         									<% } else { %>
           									 <h3>20분 후: 회원님님의 혈압과 심박동수가 정상화 되었습니다.</h3>
         									<% } %>

									<!-- 첫 번째 게이지 바 -->
									<div class="progress-container">
										<progress id="gauge1" value="0" max="120"></progress>
										<span id="percentDisplay1">0%</span>
									</div>

								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								   <h3>2시간 후: '${info.nick}'님의 혈액 순환, 특히 말초 신경계통의 혈액 순환이 개선되기 시작했습니다.</h3>
         									<% } else { %>
           									 <h3>2시간 후: 회원님의 혈액 순환, 특히 말초 신경계통의 혈액 순환이 개선되기 시작했습니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge2" value="0" max="720"></progress>
										<span id="percentDisplay2">0%</span>
									</div>

								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								  <h3>12시간 후: '${info.nick}'님 체내 일산화탄소의 수치가 정상 범위로 떨어지고, 혈액 속 산소량이 정상화 되었습니다.</h3>
         									<% } else { %>
           									 <h3>12시간 후: 회원님 체내 일산화탄소의 수치가 정상 범위로 떨어지고, 혈액 속 산소량이 정상화 되었습니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge3" value="0" max="4320"></progress>
										<span id="percentDisplay3">0%</span>
									</div>

								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>24시간 후: '${info.nick}'님의 혈액순환, 맥박, 혈압 등의 개선되어 심장마비 위험률이 감소했습니다. 다만, 우리 몸이 폐에 남은 가래를 청소하는
										과정에서 발작적인 기침이 증가할 수 있습니다.</h3>
         									<% } else { %>
           									 <h3>24시간 후: 회원님의 혈액순환, 맥박, 혈압 등의 개선되어 심장마비 위험률이 감소했습니다. 다만, 우리 몸이 폐에 남은 가래를 청소하는
										과정에서 발작적인 기침이 증가할 수 있습니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge4" value="0" max="8640"></progress>
										<span id="percentDisplay4">0%</span>
									</div>

								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>48시간 후: '${info.nick}'님의 코와 입에 있는 신경말단의 기능이 회복되면서 미각과 후각 등의 감각이 되살아 났습니다. 하지만 체내에 니코틴 수치가
										떨어지면서, 담배에 대한 욕구와 금단현상은 더 심해질수
										있으니! 가족에 대한 사랑과 강한 의지로 이겨 내시길 바랍니다.!</h3>
         									<% } else { %>
           									 <h3>48시간 후: 회원님의 코와 입에 있는 신경말단의 기능이 회복되면서 미각과 후각 등의 감각이 되살아 났습니다. 하지만 체내에 니코틴 수치가
										떨어지면서, 담배에 대한 욕구와 금단현상은 더 심해질수
										있으니! 가족에 대한 사랑과 강한 의지로 이겨 내시길 바랍니다.!</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge5" value="0" max="17280"></progress>
										<span id="percentDisplay5">0%</span>
									</div>

								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>72시간 후: '${info.nick}'님의 염증이 줄어들면서 폐 기능이 개선되고 기관지도 좀 더 편안해 질것입니다.</h3>
         									<% } else { %>
           									 <h3>72시간 후: 회원님의 염증이 줄어들면서 폐 기능이 개선되고 기관지도 좀 더 편안해 질것입니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge6" value="0" max="25920"></progress>
										<span id="percentDisplay6">0%</span>
									</div>

								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>일주일 후: '${info.nick}'님의 가래 생성이 줄고 폐 섬모도 점점 회복하면서 기침도 줄어들고, 니코틴에 대한 갈망이 다소 줄어들게 되었습니다.</h3>
         									<% } else { %>
           									 <h3>일주일 후: 회원님의 가래 생성이 줄고 폐 섬모도 점점 회복하면서 기침도 줄어들고, 니코틴에 대한 갈망이 다소 줄어들게 되었습니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge7" value="0" max="60480"></progress>
										<span id="percentDisplay7">0%</span>
									</div>

								</section>
								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>한 달 후: '${info.nick}'님의 폐의 기능이 30% 이상 향상되었습니다. 운동을 하거나 장시간 걷는 과정이 좀 더 수월해진다는 것을 느낄 수 있을것이고,
										니코틴에 대한 갈망과 발작적인 기침이 상당 부분
										사라질 것입니다.</h3>
         									<% } else { %>
           									 <h3>한 달 후: 회원님의 폐의 기능이 30% 이상 향상되었습니다. 운동을 하거나 장시간 걷는 과정이 좀 더 수월해진다는 것을 느낄 수 있을것이고,
										니코틴에 대한 갈망과 발작적인 기침이 상당 부분
										사라질 것입니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge8" value="0" max="259200"></progress>
										<span id="percentDisplay8">0%</span>
									</div>

								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>6개월 후: '${info.nick}'님의 폐활량이 지속적으로 개선되면서 숨이 가쁘다는 느낌이 확연히 줄어들고, 일상생활에서 보다 에너지가 넘친다는 것을 느끼게
										된다.</h3>
         									<% } else { %>
           									 <h3>6개월 후: 회원님의 폐활량이 지속적으로 개선되면서 숨이 가쁘다는 느낌이 확연히 줄어들고, 일상생활에서 보다 에너지가 넘친다는 것을 느끼게
										된다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge9" value="0" max="1555200"></progress>
										<span id="percentDisplay9">0%</span>
									</div>
								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>12개월 후: '${info.nick}'님의 관상 동맥성 심장질환이 발생할 위험이 흡연자보다 50% 정도 줄어듭니다. 일상에서 사소하게 아픈 일이 줄어들고, 감기에
										걸릴 가능성도 줄며, 감기에 걸려도 이전보다
										호흡기관의 불편이 덜하다는 것을 느낄 수 있을것입니다.</h3>
         									<% } else { %>
           									 <h3>12개월 후: 회원님의 관상 동맥성 심장질환이 발생할 위험이 흡연자보다 50% 정도 줄어듭니다. 일상에서 사소하게 아픈 일이 줄어들고, 감기에
										걸릴 가능성도 줄며, 감기에 걸려도 이전보다
										호흡기관의 불편이 덜하다는 것을 느낄 수 있을것입니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge10" value="0" max="3110400"></progress>
										<span id="percentDisplay10">0%</span>
									</div>
								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>10년 후: '${info.nick}'님의 폐 질환 위험률이 절반으로 줄어들었습니다.. 흡연은 혈액을 끈적거리게 만들고 동맥이 좁아지게 해 혈전이 생길 가능성을
										높이는데, 10년간 니코틴으로부터 자유로워지면 반대로
										동맥이 넓어지고 혈전이 생길 가능성도 줄어들어 뇌졸중 등의 위험이 감소할 것입니다.</h3>
         									<% } else { %>
           									 <h3>10년 후: 회원님의 폐 질환 위험률이 절반으로 줄어들었습니다.. 흡연은 혈액을 끈적거리게 만들고 동맥이 좁아지게 해 혈전이 생길 가능성을
										높이는데, 10년간 니코틴으로부터 자유로워지면 반대로
										동맥이 넓어지고 혈전이 생길 가능성도 줄어들어 뇌졸중 등의 위험이 감소할 것입니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge11" value="0" max="31104000"></progress>
										<span id="percentDisplay11">0%</span>
									</div>
								</section>

								<section class="border-line">
									<% if(info != null) { %>
        								 <h3>15년 후: '${info.nick}'님의 심장질환이나 심장마비로 사망할 위험률이 흡연 경험이 전혀 없는 사람과 비슷한 수준으로 떨어지게 되었습니다.</h3>
         									<% } else { %>
           									 <h3>15년 후: 회원님의 심장질환이나 심장마비로 사망할 위험률이 흡연 경험이 전혀 없는 사람과 비슷한 수준으로 떨어지게 되었습니다.</h3>
         									<% } %>
									<div class="progress-container">
										<progress id="gauge12" value="0" max="46656000"></progress>
										<span id="percentDisplay12">0%</span>
									</div>
								</section>


							</article>

						</div>
					</div>
					<div class="col-12">

						<!-- Features -->
						<section class="box features">
							<h2 class="major"><span>금연을 시작하는 당신의 선택</span></h2>


							<div class="col-12">
								<ul class="actions">
									
									<li><a id="start" class="button large" onclick="startGauges()">금연시작</a></li>
									<li><a id="reset" class="button alt large" onclick="resetGauges()">초기화</a></li>
								</ul>
							</div>


						</section>

					</div>
				</div>
			</div>
		</section>

		<script>
    var isGaugeStarted = false;
    var gaugeIntervals = [];
    var quitDate = new Date('${info.q_date}'); // 금연 시작 날짜
    var userId = '${info.nick}'; // 사용자 ID

    window.onload = function() {
        // 로그인 되어있지 않을 때 게이지 값을 초기화
        if (!userId) {
            localStorage.removeItem('gauge1');
            localStorage.removeItem('gauge2');
            localStorage.removeItem('gauge3');
            localStorage.removeItem('gauge4');
            localStorage.removeItem('gauge5');
            localStorage.removeItem('gauge6');
            localStorage.removeItem('gauge7');
            localStorage.removeItem('gauge8');
            localStorage.removeItem('gauge9');
            localStorage.removeItem('gauge10');
            localStorage.removeItem('gauge11');
            localStorage.removeItem('gauge12');
        }

        initializeGauges();
        startGauges();
    }

    function initializeGauges() {
        updateGauges('gauge1', 'percentDisplay1', 20); // 20분
        updateGauges('gauge2', 'percentDisplay2', 120); // 2시간
        updateGauges('gauge3', 'percentDisplay3', 720); // 12시간
        updateGauges('gauge4', 'percentDisplay4', 720); // 12시간
        updateGauges('gauge5', 'percentDisplay5', 720); // 12시간
        updateGauges('gauge6', 'percentDisplay6', 720); // 12시간
        updateGauges('gauge7', 'percentDisplay7', 720); // 12시간
        updateGauges('gauge8', 'percentDisplay8', 720); // 12시간
        updateGauges('gauge9', 'percentDisplay9', 720); // 12시간
        updateGauges('gauge10', 'percentDisplay10', 720); // 12시간
        updateGauges('gauge11', 'percentDisplay11', 720); // 12시간
        updateGauges('gauge12', 'percentDisplay12', 720); // 12시간
    }

    function startGauges() {
        if (!isGaugeStarted) {
            isGaugeStarted = true;

            gaugeIntervals.push(setInterval(function() {
                updateGauges('gauge1', 'percentDisplay1', 20, true); // 20분
            }, 1000));

            gaugeIntervals.push(setInterval(function() {
                updateGauges('gauge2', 'percentDisplay2', 120, true); // 2시간
            }, 1000));

            gaugeIntervals.push(setInterval(function() {
                updateGauges('gauge3', 'percentDisplay3', 720, true); // 12시간
            }, 1000));
        }
    }

    function updateGauges(gaugeId, percentDisplayId, minutesAfterQuit, incrementValue = false) {
        var gauge = document.getElementById(gaugeId);
        var storedValue = Number(localStorage.getItem(userId + gaugeId));
        var minutesAfterQuit = diffMinutes(quitDate, new Date());
        var maxProgress = Math.min(gauge.max, minutesAfterQuit);

        if(storedValue !== null) {
            gauge.value = storedValue;
        } else {
            gauge.value = maxProgress;
            localStorage.setItem(userId + gaugeId, gauge.value);
        }

        if (incrementValue && gauge.value < gauge.max) {
            gauge.value++;
            localStorage.setItem(userId + gaugeId, gauge.value);
        }

        updatePercentDisplay(percentDisplayId, gauge);
    }

    function updatePercentDisplay(percentDisplayId, gauge) {
        var percentDisplay = document.getElementById(percentDisplayId);
        var percent = Math.round((gauge.value / gauge.max) * 100);
        percentDisplay.textContent = percent + '%';
    }

    function diffMinutes(dt1, dt2) {
        var diff =(dt2.getTime() - dt1.getTime()) / 1000;
        diff /= 60;
        return Math.abs(Math.round(diff));
    }
</script>


		<!-- Footer -->
		<footer id="footer">
			<div class="container">
				<div class="row gtr-200">
					<div class="col-12">

						<!-- About -->
						<section>
							<h2 class="major"><span>About Us</span></h2>
							<p>
								인공지능 융합서비스 개발자과정(NCS) 15회차 TEAM 돌아와조<br>
								광주광역시 남구 송암로 60 스마트인재개발원
							</p>

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