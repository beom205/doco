<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Material Design Bootstrap</title>
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
						<B style="color: #777777">D</B>oco
					</h2>
				</div>
				<div class="col"></div>
				<div class="col"></div>
				<div class="col login-padding ">
					<span> <a href="#"><i class="fa fa-sign-in mr-1"><span
								class="doco">&nbsp;Login</span></i></a> &nbsp; <a href="#"><i
							class="fa fa-user" aria-hidden="true"><span class="doco">&nbsp;Join</span></i></a>
					</span>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-inverse navbar-dark cyan ">
			<div class="container">
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
						<li class="nav-item nav-component-margin col"><a
							class="nav-link waves-effect waves-light" href="#"><h5>
									<B>캠페인</B>
								</h5></a></li>
						<li class="nav-item nav-component-margin col"><a
							class="nav-link waves-effect waves-light" href="#"><h5>
									<B>지난 캠페인</B>
								</h5></a></li>
						<li class="nav-item nav-component-margin col"><a
							class="nav-link waves-effect waves-light" href="#"><h5>
									<B>캠페인 문의</B>
								</h5></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!--End Main Navigation-->
