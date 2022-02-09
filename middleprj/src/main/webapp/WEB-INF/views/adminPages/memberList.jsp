<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">회원 리스트</h1>
                    <a target="_blank"
                            href="main.do">홈으로</a>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">회원 리스트</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>memberId</th>
                                            <th>name</th>
                                            <th>tel</th>
                                            <th>address</th>
                                            <th>age</th>
                                            <th>weight(kg)</th>
                                            <th>height(cm)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>testId</td>
                                            <td>tester</td>
                                            <td>010-1234-1234</td>
                                            <td>대구 중구 중앙대로</td>
                                            <td>27</td>
                                            <td>52</td>
                                            <td>175</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
</body>
</html>