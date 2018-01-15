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

.row {
	margin-bottom: 0px;
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
				<h4 class="grey-text text-darken-1">회원가입</h4>
				<form class="col s12" method="post">
					<div class='row '>
						<div class='col s12'></div>
					</div>

					<div class='row pw-form-style'>
						<div class='input-field col s12'>
							<input class='validate' type="text" name='id' id='id' /> <label
								for='email'>아이디</label>
						</div>
						<label style='float: right;'> <a class='pink-text'
							href='#!'><b>이 아이디는 사용가능합니다.</b></a>
						</label>
					</div>
					<div class='row'>
						<div class='input-field col s12'>
							<input class='validate' type='password' name='password'
								id='password' /> <label for='password'>비밀번호</label>
						</div>
					</div>
					<br>
					<div class='row pw-form-style'>
						<div class='input-field col s12'>
							<input class='validate' type='password' name='passwordCheck'
								id='passwordCheck' onkeyup="passwordCh();" /> <label
								for='passwordCheck'>비밀번호 재확인</label>
						</div>
						<label id="pwCheckResult" style='float: right;'> <br>
							<!-- <b class='text-danger'>동일한 비밀번호를 입력하세요.</b></a> -->
						</label>
					</div>
					<div class='row'>
						<div class='input-field col s12'>
							<input class='validate' type='text' name='name' id='name' /> <label
								for='name'>이름</label>
						</div>
					</div>
					<br>
					<div class='row'>
						<div class='input-field col s12'>
							<input class='validate' type='email' name='email' id='email' />
							<label for='email'>이메일</label>
						</div>
					</div>
					<br>
					<div class='row'>
						<div class='input-field col s12'>
							<input class='validate' type='text' name='tel' id='tel' /> <label
								for='tel'>휴대폰번호</label>
						</div>
					</div>
					<br>
					<!-- <div class='row'>
						<div class='input-field col s12'>
							<input class='validate' type='email' name='email' id='email' />
							<label for='email'>Enter your email</label>
						</div>
					</div> -->

					<br> <input type="checkbox" class="filled-in"
						id="filled-in-box" value="agree this condition"> <label
						for="filled-in-box"><b class="grey-text text-darken-2">본인은
							이용약관과 개인정보 처리 방침에 동의 합니다.</b> </label>
					<center>
						<div class='row'>
							<button type='submit' name='btn_login'
								class='col s12 btn btn-large waves-effect indigo'>회원가입</button>
						</div>
					</center>
					<input type="hidden" name="level" value="2">
				</form>
			</div>
		</div>
	</center>

	<div class="section"></div>
	<div class="section"></div>
	<div class="container">
		<div id="login-page" class="row">
			<div class="col s12 z-depth-4 card-panel">
				<form class="login-form">
					<div class="row">
						<div class="input-field col s12 center">
							<h4>Register</h4>
							<p class="center">Join to our community now !</p>
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<i class="mdi-social-person-outline prefix"></i> <input
								id="username" type="text"> <label for="username"
								class="center-align">Username</label>
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<i class="mdi-communication-email prefix"></i> <input id="email"
								type="email"> <label for="email" class="center-align">Email</label>
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<i class="mdi-action-lock-outline prefix"></i> <input
								id="password" type="password"> <label for="password"
								class="">Password</label>
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<i class="mdi-action-lock-outline prefix"></i> <input
								id="password-again" type="password"> <label
								for="password-again" class="">Password again</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<a href="index.html" class="btn waves-effect waves-light col s12">Register
								Now</a>
						</div>
						<div class="input-field col s12">
							<p class="margin center medium-small sign-up">
								Already have an account? <a href="page-login.html">Login</a>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>
		
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
		$(document).ready(function() {
			var $userID = $("#userID");
			var $idCheckResult = $("#idCheckResult");

			$userID.blur(function() {
				$.ajax({
					type : "POST",
					url : "/member/idCheck",
					data : {
						id : $userID.val()
					},
					success : function(result, status, xhr) {
						console.log("result : ");
						console.log(result);
					}
				})
			});
		});

		function passwordCh() {
			var $pw1 = $("#password");
			var $pw2 = $("#passwordCheck");
			var $pwCheckResult = $("#pwCheckResult");
			if ($pw1.val() != $pw2.val()) {
				$pwCheckResult
						.html("<b class='red-text'> 비밀번호가 일치하지 않습니다. </b>");
			} else {
				$pwCheckResult
						.html("<b class='blue-text text-darken-1'> 비밀번호가 일치합니다. </b>");
			}
		}
	</script>
</body>
</html>