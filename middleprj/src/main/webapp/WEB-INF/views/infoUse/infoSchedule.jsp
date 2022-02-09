<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<link href='lib/main.css' rel='stylesheet' />
<script src='lib/main.js'></script>
<script>
	var eventData = ''; // 값을 넣어주기
	// 아래 부분을 실행
	document.addEventListener('DOMContentLoaded', function() {

		// Azax 호출
		var xhtp = new XMLHttpRequest();
		xhtp.open('get', 'scheduleView.do');
		xhtp.send();
		xhtp.onload = function(obj) {
			console.log(JSON.parse(xhtp.responseText));
			eventData = JSON.parse(xhtp.responseText);
			showCalendar();
		}
	});

	function showCalendar() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next, today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay'
			},
			initialDate : '2022-02-09',
			navLinks : true, // can click day/week names to navigate views
			selectable : true,
			selectMirror : true,
			editable : true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : eventData
		});
		
		calendar.render();
	}
</script>


<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 1100px;
	margin: 0 auto;
}
</style>

<!-- 페이지를 그려넣기 시작하는 부분 -->

<section class="contact-section">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div id='calendar'></div>
			</div>
		</div>
	</div>
</section>