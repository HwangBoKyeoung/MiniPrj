<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	function deleteFnc(id){
		document.forms.frm.del.value = id;
		document.forms.frm.submit();
	}
</script>

<form action="${pageContext.request.contextPath}/scheduleDelete.do" id="frm" name="frm">
	<input type="hidden" id="del" name="del">
</form>

<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">일정목록</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Schedule List</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            	
	                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                                    <thead>
	                                        <tr>
	                                            <th>일정제목</th>
	                                            <th>시작일자</th>
	                                            <th>종료일자</th>
	                                            <th>수정</th>
	                                            <th>삭제</th>
	                                        </tr>
	                                    </thead>
	                                    
	                                    <tbody>
	                                    	<c:forEach items="${lists}" var="list">
		                                        <tr>
		                                            <td>
		                                            	${list.title}
		                                            	<div id="shows" style="display: none;"><input type="text" id="title" name="title" value="${list.title}"></div>
		                                            </td>
		                                            <td>${list.start}</td>
		                                            <td>${list.end}</td>
		                                            <td><input type="submit" value="수정" onclick="updateFnc(${list.id})"></td>
		                                            <td><input type="button" value="삭제" onclick="deleteFnc(${list.id})"></td>
		                                        </tr>
	                                        </c:forEach>
	                                    </tbody>
	                                </table>
                               
                            </div>
                        </div>
                    </div>

                </div>
                
<script>
	function updateFnc(id){
		document.getElementById('shows').style.display = '';
	}
</script>


</body>
</html>