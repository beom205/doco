<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>DOCO ${read.title}</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

</head>
<body>
	<input type="hidden" name="hiddenNo" id="hiddenNo" value="${read.no}" />




	<!-- Main content -->
	<br>
	<br>
	<section class="content"> <br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col  d-none d-md-block" style="height: 1000px; margin-bottom: 6 0px;">
				<div class="card">
					<div class="card-body">
						<span class="d-inline-block" >
							<h1 class="card-title blue-grey-text text-darken-4">
							<b>${read.title}</b>
							</h1>
						</span>
						<br>
						<p class="card-text" style="margin-top: 10px;"><i class="fa fa-user prefix grey-text"></i>&nbsp;&nbsp;${read.id}</p>
						<br>
						<h6 class="text-right">${read.periodStart}&nbsp;&nbsp; ~&nbsp;&nbsp;${read.periodStop}</h6>
						<br><br>
						<div class="md-form">
							<h5 style="line-height: 35px;">${read.content}</h5>
						</div>
						<br>
						<!-- 파일 다운로드 -->
						<a id="fileDown" value="${photo.filename}"><i
							class="fa fa-folder" aria-hidden="true"></i>&nbsp;&nbsp;<label>${photo.filename}</label></a>
						<br>
						<!-- 파일 다운로드 -->
						<div class="box-footer" style="margin-top: 30px;">
							<button type="submit" class="btn btn-warning">수정</button>
							<button type="submit" class="btn btn-danger">삭제</button>
							<button type="button" class="btn btn-primary">전체목록</button>
						</div>
						<!-- 다운로드 부르는 폼 -->
						<form id="oper"></form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /.content -->

	<!-- JQuery -->
	<script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/resources/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/resources/js/mdb.min.js"></script>


	<script>
		$(document)
				.ready(
						function() {

							$('#fileDown')
									.on(
											"click",
											function(e) {
												//안전하게 짜기위해 추가
												e.stopPropagation();
												//find: 하위 태그 찾기
												var no = $("#hiddenNo").val()
												alert("image click: " + no);
												$("#oper")
														.attr("action",
																"/request/download")
														.html(
																"<input type='hidden' name='no' value='"+no+"'>")
														.submit();

											});

							var formObj = $("form[role='form']");

							console.log(formObj);

							$(".btn-modBtn").on("click", function() {
								formObj.attr("action", "/request/modify");
								formObj.attr("method", "get");

								formObj.submit();
							});

							$(".btn-delBtn").on("click", function() {
								formObj.attr("action", "/request/remove");
								formObj.submit();
							});

							$(".btn-listBtn").on("click", function() {
								self.location = "/request/listAll";

							});

						});

		// 사진
		function showAttach(data) {
			console.log('들어오냐?');
			var uploadList = $(".uploadList");
			var before = uploadList.html();

			var str = "";
			if (data.isImage) {
				str = "<div><img src ='/display?name=s_"
						+ data.uploadName
						+ "'/><span data-src='"+data.uploadName+"'>x</span></div>"
			} else {
				str = "<div><img class = 'att' src ='/resouces/file.png'><span data-src='"+data.uploadName+"'>x</span></div>";
			}

			before += "<li>" + str + "</li>";
			uploadList.html(before);

		}
		// 정규식 표현 
		function checkImageType(fileName) {

			var pattern = /jpg|gif|png|jpeg/i;

			return fileName.match(pattern);

		}
	</script>

</body>
</html>