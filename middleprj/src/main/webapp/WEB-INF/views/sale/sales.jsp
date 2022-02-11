<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<!-- <!-- 
<link rel="stylesheet" type="text/css" href="my/css/visualize.css">
<link rel="stylesheet" type="text/css" href="my/css/visualize-light.css">
<script src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script src="my/js/visualize.jQuery"></script> --> -->
<script>
	/* $(function(){
		$('#dataTable').visualize({type:'bar'});
		$('#dataTable').visualize({type:'area', width:'400px'});
		$('#dataTable').visualize({type:'pie', pieLabelPos:'inside'});
		$('#dataTable').visualize({type:'line',lineWeight:2});
	}) */
</script>

</head>
<body>
	
	<div class="container-fluid">
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">매출현황</h1>
		<a target="_blank" href="mainM.do">홈으로</a>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">매출</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>순번</th>
								<th>서비스명</th>
								<th>가격</th>
								<th>구매날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${lists}" var="order">
								<tr>
									<td>${order.orderId}</td>
									<td>${order.orderName}</td>
									<td>${order.orderPrice}</td>
									<td>${order.orderDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table><br>
					<div>
						<canvas id="myChart"></canvas>
					</div>
				</div>
			</div>
		</div>

	</div>
	${orders}
	
	<script type="text/javascript">
	 
	 /* 
	 const orderAry = ${orders};
	 for(let ary of orderAry){
		 console.log(ary.orderPrice);
	 }

     console.log(orderAry); */
	
            var context = document
                .getElementById('myChart')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'bar', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
                        //x 축
                        'SILVER','GOLD','PREMIUM'
                    ],
                    datasets: [
                        { //데이터
                            label: '서비스별 매출', //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data:
                            	[10000,20000,30000], //x축 label에 대응되는 데이터 값
                            backgroundColor: [
                                //색상
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                            ],
                            borderColor: [
                                //경계선 색상
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            borderWidth: 1 //경계선 굵기
                        }/* ,
                        {
                            label: 'test2',
                            fill: false,
                            data: [
                                8, 34, 12, 24
                            ],
                            backgroundColor: 'rgb(157, 109, 12)',
                            borderColor: 'rgb(157, 109, 12)'
                        } */
                    ]
                },
                options: {
                    scales: {
                        yAxes: [
                            {
                                ticks: {
                                    beginAtZero: true
                                }
                            }
                        ]
                    }
                }
            });
        </script>
	
</body>
</html>