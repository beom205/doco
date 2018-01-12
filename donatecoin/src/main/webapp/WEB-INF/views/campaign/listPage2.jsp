<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../../../webapp/resources/css/bootstrap.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../../../webapp/resources/css/mdb.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="../../../webapp/resources/css/style.css" rel="stylesheet">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">


        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">


    <style rel="stylesheet">
        main {
            margin-top: 3rem;
        }

        body{
            font-family: "돋움",dotum,"Helvetica Neue",sans-serif;
        }

        .doco{
            color: #777;
        }

        .nav-top{
            margin-top: 25px;
            margin-bottom: 20px;
        }

        .nav-component-margin{
            margin-right: 30px;
        }

        .login-padding{
            padding-top: 13px;
        }

        main .card {
            margin-bottom: 2rem;
        }

        @media only screen and (max-width: 768px) {
            .read-more {
                text-align: center;
            }
        }
        .pull-right {
            float: right;
        }
        .navbar {
            background-color: #0f6256;
        }

        footer.page-footer {
            background-color: #0f6256;
            margin-top: 2rem;
        }
        .navbar .btn-group .dropdown-menu a:hover {
            color: #000 !important;
        }

        .navbar .btn-group .dropdown-menu a:active {
            color: #fff !important;
        }
        .icheckbox_flat-blue {
            background-position: 0 0;
            display: inline-block;
            vertical-align: middle;
            margin: 0;
            padding: 0;
            width: 20px;
            height: 20px;
            background: url(blue.png) no-repeat;
            border: none;
            cursor: pointer;
        }
        .iCheck-helper {
            line-height: 1.42857143;
        }
        .text-yellow {
            color: #f39c12 !important;
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            box-sizing: border-box;
            cursor: pointer;
            content: "\f005";
        }
        .mailbox-name {
            border-top: 1px solid #f4f4f4;
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            box-sizing: border-box;
            border-collapse: collapse;
            font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;
            font-size: 14px;
            color: #333;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .mailbox-subject {
            border-top: 1px solid #f4f4f4;
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            box-sizing: border-box;
            border-collapse: collapse;
            font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;    font-size: 14px;
            color: #333;    -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .mailbox-attachment {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;    border-top: 1px solid #f4f4f4;box-sizing: border-box;    border-collapse: collapse;    font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;    font-size: 14px;
        }
        .mailbox-date {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;    border-top: 1px solid #f4f4f4;box-sizing: border-box;    border-collapse: collapse;    font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;    font-size: 14px;
        }
        * {     box-sizing: border-box;}
        .box-footer {
            padding: 0 !important;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
            border-top: 1px solid #f4f4f4;
            background-color: #fff;
            font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;
            font-size: 14px;
            line-height: 1.42857143;
            color: #333;
            content: " ";
            display: table;
            clear: both;
        }
        html {
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        body {
            font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;
            font-size: 14px;
            line-height: 1.42857143;
            color: #333; !important;
        }
        .mailbox-controls {
            padding: 5px;
            display: block;
        }
        .btn {
            display: inline-block !important;
            margin:0 !important;
            margin-bottom: 0 !important;
            font-weight: 400 !important;
            text-align: center !important;
            white-space: nowrap !important;
            vertical-align: middle !important;
            touch-action: manipulation !important;
            cursor: pointer !important;
            user-select: none !important;
            background-image: none !important;
            -webkit-appearance: button !important;
            text-transform: none;
            overflow: visible;
        }
        .fa {
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
        }
        .btn-group {
            position: relative;
            display: inline-block;
            vertical-align: middle;
        }
        .btn-default{
            background-color: #f4f4f4;
            color: #444 !important;
            border-color: #ddd;
        }
        .btn-sm{
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
        }
        tbody>tr:nth-of-type(odd) {
            background-color: #f9f9f9;
        }
    </style>
</head>

<body>

    <!-- Start your project here-->
    <header>

        <div class="container nav-top">
            <div class="row">

                <div class="col doco">
                    <h2 style="color: #48cfad"><B style="color: #777777">D</B>oco</h2>
                </div>

                <div class="col">

                </div>
                <div class="col">

                </div>
                <div class="col login-padding ">
                    <h5><a href="#"><i class="fa fa-user" aria-hidden="true"><span class="doco">&nbsp;Login</span></i></a></h5>

                </div>

            </div>
        </div>

       <nav class="navbar navbar-expand-lg navbar-inverse navbar-dark cyan ">
            <div class="container">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item nav-component-margin" >
                            <a class="nav-link waves-effect waves-light" href="#"><B>홈으로 </B><span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item btn-group nav-component-margin">
                            <a class="nav-link dropdown-toggle waves-effect waves-light" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">캠페인
                            </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#"><B>캠페인 보기</B></a>
                                <a class="dropdown-item" href="#"><B>캠페인 요청하기</B></a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item nav-component-margin">
                            <a class="nav-link waves-effect waves-light" href="#">캠페인</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

    </header>
    <!--Main Navigation-->
<br>
<!-- Carousel-->

    <div class="container" style="min-width:105%" >
        <div id="myCarousel" class="carousel slide" style="min-width:100%; margin-top:-40px; margin-left: -30px; ">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li class="item1 active"></li>
                <li class="item2"></li>
                <li class="item3"></li>
                <li class="item4"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">

                <div class="item active">
                    <img src="sample.jpg" alt="Chania" style="width:100%; max-height: 350px;">
                    <div class="carousel-caption">
                        <h3>Chania</h3>
                        <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="sample.jpg" alt="Chania" style="width:100%; max-height: 350px;">
                    <div class="carousel-caption">
                        <h3>Chania</h3>
                        <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="sample.jpg" alt="Flower" style="width:100%; max-height: 350px;">
                    <div class="carousel-caption">
                        <h3>Flowers</h3>
                        <p>Beautiful flowers in Kolymbari, Crete.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="sample.jpg" alt="Flower" style="width:100%; max-height: 350px;">
                    <div class="carousel-caption">
                        <h3>Flowers</h3>
                        <p>Beautiful flowers in Kolymbari, Crete.</p>
                    </div>
                </div>

            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!-- end Carousel -->

    <!--Main Layout-->
        <div class ="container" style="min-width:80%;  min-height: 1px;   padding-right: 15px;   padding-left: 100px;    font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;   font-weight: 400; font-size: 14px;   line-height: 1.42857143;
        color: #333; box-sizing:; ">

						<c:forEach items="${list}" var="campaign">
            <!-- 반복출력할 부분 -->
            <div style="min-width:300px; max-width:300px; min-height:300px; background-color: #e6e6e6; border: 1px solid #d8d8d8; border-radius: 7px; float:left; margin:15px;">
                <p style="margin-left:15px; margin-bottom:0px; margin-top:3px; font-size: 15px; font-weight: bold">No. ${campaign.bno}</p>
                <!-- sample image-->
                <c:forEach items="${campaign.fullName}" var="cp">
					<img src="displayFile?fileName=${cp}" style="width:264px; height:200px; border: 3px solid white; margin:15px; margin-top:0px;"/>
				</c:forEach>
                <div style=" margin:15px; margin-top:1px;">
                <h3 style="margin-bottom:3px; font-weight: bold">
                	<a	href='/campaign/readPage${pageMaker.makeQuery(pageMaker.cri.page) }&bno=${campaign.bno}'>${campaign.title}</a>
				</h3>
                	<font style="margin-bottom:15px; font-weight: bold; float:left;">${campaign.writer}</font>
                	<font style="margin-bottom:15px; float:right;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${campaign.regdate}" /></font>
                </div>
            </div>
            <!-- 반복출력할 부분 끝-->
            						</c:forEach>
        </div>
    <!--Main Layout-->

    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>



    <script>
    $(document).ready(function(){
        // Activate Carousel
        $("#myCarousel").carousel();

        // Enable Carousel Indicators
        $(".item1").click(function(){
            $("#myCarousel").carousel(0);
        });
        $(".item2").click(function(){
            $("#myCarousel").carousel(1);
        });
        $(".item3").click(function(){
            $("#myCarousel").carousel(2);
        });
        $(".item4").click(function(){
            $("#myCarousel").carousel(3);
        });

        // Enable Carousel Controls
        $(".left").click(function(){
            $("#myCarousel").carousel("prev");
        });
        $(".right").click(function(){
            $("#myCarousel").carousel("next");
        });
    });
</script>


</body>
</html>