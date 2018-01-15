<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="/resources/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="/resources/css/style.css" rel="stylesheet">
<!-- Join CSS link -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">

<!-- Join CSS link -->

<style rel="stylesheet">
main {
	margin-top: 3rem;
	flex: 1 0 auto;
}

body {
	background-color: cyan;
	min-height: 100vh;
	flex-direction: column;
}

.doco {
	color: #777;
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

.pw-form-style {
	display: block;
}

footer.page-footer {
	background-color: #0f6256;
	margin-top: 2rem;
}

.input-field input[type=date]:focus+label, .input-field input[type=text]:focus+label,
	.input-field input[type=email]:focus+label, .input-field input[type=password]:focus+label
	{
	color: #77b6e3;
}

.input-field input[type=date]:focus, .input-field input[type=text]:focus,
	.input-field input[type=email]:focus, .input-field input[type=password]:focus
	{
	border-bottom: 2px solid #e91e63;
	box-shadow: none;
}
</style>

</head>
<body>
	<div class="section"></div>
	<main>
	<center>
		<h2 style="color: #48cfad">
			<a href="/"><B style="color: #777777;">D</B><span class="grey-text text-light-1">oco</span></a>
		</h2>
		<div class="section"></div>
		<div class="container" style="width: 530px;">
			<div class="z-depth-1 grey lighten-4 row"
				style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">
				<h4 class="grey-text text-darken-1">로그인</h4>
				<form class="col s12" method="post">
					<div class='row '>
						<div class='col s12'></div>
					</div>

					<div class='row'>
						<div class='input-field col s12'>
							<input class='validate' type="text" name='id' id='id' /> <label
								for='email'>아이디</label>
						</div>
					</div>
					<div class='row'>
						<div class='input-field col s12'>
							<input class='validate' type='password' name='password'
								id='password' /> <label for='password'>비밀번호</label>
						</div>
					</div>

					<center>
						<div class='row'>
							<button type='submit' name='btn_login'
								class='col s12 btn btn-large waves-effect indigo'>로그인</button>
						</div>
						<div class="row">
							아직 회원이 아니신가요?&nbsp;&nbsp; <a class="" href="/member/join">
								회원가입 </a>
						</div>
					</center>
					<input type="hidden" name="level" value="2">
				</form>
			</div>
		</div>
	</center>
	</div>
	</main>

	<!-- <script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script> -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

	<script>
		
	</script>
</body>
</html>