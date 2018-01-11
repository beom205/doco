<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="include/header.jsp" %>

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

	<!--Main Layout-->
	<main class="text-center py-5"> <!--Carousel Wrapper-->
	<div id="carousel-example-1z" class="carousel slide carousel-fade"
		data-ride="carousel">
		<!--Indicators-->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-1z" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-1z" data-slide-to="1"></li>
			<li data-target="#carousel-example-1z" data-slide-to="2"></li>
		</ol>
		<!--/.Indicators-->
		<!--Slides-->
		<div class="carousel-inner" role="listbox">
			<!--First slide-->
			<div class="carousel-item active">
				<img class="d-block w-100"
					src="https://mdbootstrap.com/img/Photos/Slides/img%20(130).jpg"
					alt="First slide">
			</div>
			<!--/First slide-->
			<!--Second slide-->
			<div class="carousel-item">
				<img class="d-block w-100"
					src="https://mdbootstrap.com/img/Photos/Slides/img%20(129).jpg"
					alt="Second slide">
			</div>
			<!--/Second slide-->
			<!--Third slide-->
			<div class="carousel-item">
				<img class="d-block w-100"
					src="https://mdbootstrap.com/img/Photos/Slides/img%20(70).jpg"
					alt="Third slide">
			</div>
			<!--/Third slide-->
		</div>
		<!--/.Slides-->
		<!--Controls-->
		<a class="carousel-control-prev" href="#carousel-example-1z"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carousel-example-1z"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
		<!--/.Controls-->
	</div>
	<!--/.Carousel Wrapper--> <br>
	<br>
	</main>
	<div class="container">
		<div class="row">

			<div class="col-md-4">
				<div class="card">
					<img class="img-fluid"
						src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(34).jpg"
						alt="Card image cap">
					<div class="card-body">
						<h4 class="card-title">Card title</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a class="btn btn-primary">Button</a>
					</div>
				</div>
			</div>

			<div class="col-md-4  d-none d-md-block">
				<div class="card">
					<img class="img-fluid"
						src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(18).jpg"
						alt="Card image cap">
					<div class="card-body">
						<h4 class="card-title">Card title</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a class="btn btn-primary">Button</a>
					</div>
				</div>
			</div>

			<div class="col-md-4  d-none d-md-block">
				<div class="card">
					<img class="img-fluid"
						src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(35).jpg"
						alt="Card image cap">
					<div class="card-body">
						<h4 class="card-title">Card title</h4>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a class="btn btn-primary">Button</a>
					</div>
				</div>
			</div>
			
		</div>
	</div>


	<!--End Main Layout-->

	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/resources/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/resources/js/mdb.min.js"></script>

	<script>
		/* $('.carousel').carousel({
		 interval: 2000
		 }) */
	</script>
</body>

</html>