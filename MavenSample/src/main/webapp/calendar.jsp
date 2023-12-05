<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset='utf-8' />
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
	overflow: hidden;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

/* 캘린더 위의 해더 스타일(날짜가 있는 부분) */
.fc-header-toolbar {
	padding-top: 1em;
	padding-left: 1em;
	padding-right: 1em;
}
</style>
</head>

<body style="padding: 30px;">
	<c:if"${!empty info}">
		<!-- info가 null값이 아니라면 -->
		<h1>${info.nick}님환영합니다.</h1>
	</c:if>
	<!-- calendar 태그 -->
	<div id='calendar-container'>
		<div id='calendar'></div>
	</div>
	<script>
	var today = new Date('${info.q_date}'); 
	var time = today.getTime(); 
	var diff = (24 * 60 * 60 * 1000)*40; 
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
                    height: '700px', // calendar 높이 설정
                    expandRows: true, // 화면에 맞게 높이 재설정
                    customButtons: {
                        mySaveButton: {
                            text: "저장하기",
                            click: async function () {
                            	if (confirm("저장하시겠습니까?")) {
                                    var allEvents = calendar.getEvents();
                                    allEvents.forEach(async function (event) {
                                        const saveEvent = await axios({
                                            method: "post",
                                            url: "/calendar",
                                            data: {
                                                title: event.title,
                                                start: event.start,
                                                end: event.end,
                                                allDay: event.allDay
                                            }
                                        });
                                    });
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
</body>

</html>