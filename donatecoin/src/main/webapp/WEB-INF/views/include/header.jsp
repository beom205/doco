<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="/resources/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="/resources/css/style.css" rel="stylesheet">

<style rel="stylesheet">
main {
	margin-top: 3rem;
}

.doco {
	color: #777;
}

.nav-top {
	margin-top: 25px;
	margin-bottom: 20px;
}

.nav-component-margin {
	margin-right: 30px;
	padding-top: 7px;
}

.login-padding {
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
</style>
</head>
<body>
	<!--Main Navigation-->
	<header>
	<div class="container nav-top">
		<div class="row">

			<div class="col doco">
				<h2 style="color: #48cfad">
					<!-- <B style="color: #777777">D</B>oco -->
					<a href="/"><B style="color: #777777;">D</B><span
						class="grey-text text-light-1">oco</span></a>
				</h2>
			</div>
			<div class="col"></div>
			<div class="col"></div>
			<div class="topnav">
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-inverse navbar-dark cyan ">
	<div class="container" style="padding-left: 0px;">
		<div class="container" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item nav-component-margin col"><a
					class="nav-link waves-effect waves-light" href="#"><h5>
							<B>홈으로 </B>
						</h5> <span class="sr-only">(current)</span></a></li>
				<li class="nav-item nav-component-margin col"><a
					class="nav-link waves-effect waves-light" href="#"><h5>
							<B>Doco란</B>
						</h5></a></li>
				
				<li class="nav-item nav-component-margin dropdown col">
					<h5>
					<a class="nav-link dropdown-toggle " id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<B>캠페인</B></a>
					 <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
	                    <a class="dropdown-item" href="/campaign/recent">진행 중인 캠페인</a>
	                    <a class="dropdown-item" href="/campaign/listPage">지난 캠페인</a>
               		 </div>
               		 </h5>		
				</li>
				<li class="nav-item nav-component-margin dropdown col">
					<h5>
					<a class="nav-link dropdown-toggle " id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<B>캠페인 문의</B></a>
					 <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
	                    <a class="dropdown-item" href="/request/register">문의하기</a>
	                    <a class="dropdown-item" href="/request/listAll">문의 내역</a>
               		 </div>
               		 </h5>		
				</li>
				<!-- <li class="nav-item nav-component-margin col"><a
					class="nav-link waves-effect waves-light"
					href="/campaign/recent"><h5>
							<span class="new badge red">new</span><B>캠페인</B>
						</h5></a></li> -->
				<!-- <li class="nav-item nav-component-margin col"><a
					class="nav-link waves-effect waves-light" href="/campaign/listPage"><h5>
							<B>지난 캠페인</B>
						</h5></a></li> -->
<!-- 				<li class="nav-item nav-component-margin col"><a
					class="nav-link waves-effect waves-light" href="/request/register"><h5>
							<B>캠페인 문의</B>
						</h5></a></li> -->
				<li class="nav-item nav-component-margin col"><a
					class="nav-link waves-effect waves-light" href="/campaign/register"><h5>
							<B>캠페인 등록</B>
						</h5></a></li>
			</ul>
		</div>
	</div>
	</nav> </header>
	<!--End Main Navigation-->

<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	var $html = $(".topnav").html();
	var $topnav = $(".topnav");
	console.log("세션값" + '${login}');
	
	if(document.cookie.indexOf("login=") != -1 || '${login}'){
		$topnav.html($html + '<a href="/member/logout" class="right"><i class="fa fa-sign-out mr-1"><span class="doco">&nbsp; 로그아웃 </span></i></a>');

	}else{
		$topnav.html($html + '<a href="/member/login"><i class="fa fa-sign-in mr-1"><span class="doco">&nbsp;로그인</span></i></a> <a href="/member/join"><i class="fa fa-user" aria-hidden="true"><span class="doco">&nbsp;회원가입</span></i></a>');
	}
	
	 /* if(session.getAttribute("sessionID")!=null && session.getAttribute("sessionID").equals("admin")){
		$topnav.html($html + '<a href="/member/logout" class="right"><i class="fa fa-sign-out mr-1"><span class="doco">&nbsp; 로그아웃(관리자) </span></i></a>'
    } */
		
});	
</script>