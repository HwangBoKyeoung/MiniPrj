<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link href='lib/main.css' rel='stylesheet' />
<script src='lib/main.js'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>


$(function(){
	
	var request = $.ajax({
	  url: "scheduleView.do",
	  method: "GET",
	  dataType: "json"
	});
	 
	request.done(function( data ) {
		console.log(data);
			
			var calendarEl = document.getElementById('calendar');
			
		    var calendar = new FullCalendar.Calendar(calendarEl, {
		      initialView: 'dayGridMonth',
		      headerToolbar: {
		        left: 'prev,next today',
		        center: 'title',
		        right: 'dayGridMonth,timeGridWeek,timeGridDay'
		      },
		      events: data
		    });
		    
		    console.log(calendar);
	
		    calendar.render();								
	});
	 
	request.fail(function( jqXHR, textStatus ) {
	  alert( "Request failed: " + textStatus );
	});
});

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