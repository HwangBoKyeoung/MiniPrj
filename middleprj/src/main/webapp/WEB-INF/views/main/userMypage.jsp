<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script>
    	var location = document.querySelector('#tabs-content').offsetTop;
    
    	window.scrollTo({top:location, left:0, behavior:'auto'});
        function scroll_follow(id) {
            $(window).scroll(function () //스크롤이 움직일때마다 이벤트 발생
                {
                    var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
                    $(id).stop().animate({
                        top: position + "px"
                    }, 1); //해당 오브젝트 위치값 재설정
                });
        }
        scroll_follow("#tabs");
    </script>
    <style>
        * {
            box-sizing: border-box;
        }

        HTML, body {
            height: 100%;
            overflow: auto;
        }

        #tabs {
            position: absolute;
        }

        #tabs li>a:link {
            text-decoration: none;
            color: yellow;
        }

        #tabs li>a:visited {
            text-decoration: none;
            color: yellow;
        }

        #tabs li:hover {
            text-decoration: none;
            background-color: green;
            color: yellow;
        }

        #tabs>ul>li {
            display: inline-block;
            list-style: none;
            font-size: 15px;
            line-height: 50px;
            border: 0.5px solid grey;
            width: 80%;
            text-align: center;
            background-color: grey;
        }

        #tabs {
            float: left;
            width: 25%;
            /* background-color: yellow; */
        }

        #tabs-content {
            float: right;
            width: 75%;
            /* background-color: indigo; */
        }
    </style>

</head>

<body id="bdy">
    <div id='tabs'>
        <ul>
            <li><a href='#tabs-1'>나의정보</a></li>
        </ul>
        <ul>
            <li><a href='#tabs-2'>주문목록</a></li>
        </ul>
        <ul>
            <li><a href='#tabs-3'>상담문의조회</a></li>
        </ul>
        <ul>
            <li><a href='#tabs-3'>체험신청조회</a></li>
        </ul>
        <ul>
            <li><a href='#tabs-3'>회원정보수정</a></li>
        </ul>
        <ul>
            <li><a href='#tabs-3'>회원탈퇴</a></li>
        </ul>
    </div>

    <div id="tabs-content" class='tabs-content'>
        <article id='tabs-1'>
            <div class="row">
                <div class="col-md-6">
                    <img src="assets/images/choose-us-image-01.png" alt="">
                </div>
                <div class="col-md-6">
                    <h4>Best Education</h4>
                    <p>
                        Grad School is free educational HTML template with Bootstrap
                        4.5.2 CSS layout. Feel free to use it for educational or
                        commercial purposes. You may want to make <a href="https://paypal.me/templatemo"
                            target="_parent" rel="sponsored">a little donation</a> to TemplateMo. Please tell
                        your friends about us. Thank you.
                    </p>
                </div>
            </div>
        </article>
        <article id='tabs-2'>
            <div class="row">
                <div class="col-md-6">
                    <img src="assets/images/choose-us-image-02.png" alt="">
                </div>
                <div class="col-md-6">
                    <h4>Top Level</h4>
                    <p>You can modify this HTML layout by editing contents and
                        adding more pages as you needed. Since this template has options
                        to add dropdown menus, you can put many HTML pages.</p>
                    <p>Suspendisse tincidunt, magna ut finibus rutrum, libero
                        dolor euismod odio, nec interdum quam felis non ante.</p>
                </div>
            </div>
        </article>
        <article id='tabs-3'>
            <div class="row">
                <div class="col-md-6">
                    <img src="assets/images/choose-us-image-03.png" alt="">
                </div>
                <div class="col-md-6">
                    <h4>Quality Meeting</h4>
                    <p>
                        You are NOT allowed to redistribute this template ZIP file on any
                        template collection website. However, you can use this template
                        to convert into a specific theme for any kind of CMS platform
                        such as WordPress. For more information, you shall <a rel="nofollow"
                            href="https://templatemo.com/contact" target="_parent">contact TemplateMo</a> now.
                    </p>
                </div>
            </div>
        </article>
    </div>
</body>

</html>