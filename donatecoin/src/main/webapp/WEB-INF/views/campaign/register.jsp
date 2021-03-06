<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<style>
.fileDrop {
	width: 80%;
	height: 100px;
	border: 1px dotted gray;
	background-color: lightslategrey;
	margin: auto;
}

</style>
<!--Section: Contact v.1-->
<section class="py-3">

	<!--Section heading-->
	<div class="container">
		<h2 class="font-bold text-center h1 py-5">캠페인 등록</h2>

		<form id='registerForm' role="form" method="post" enctype="multipart/form-data">
			<div class="card-body">
				<!--Body-->
				<div class="md-form">
					<i class="fa fa-paper-plane prefix grey-text"></i> <input name="title"
						type="text" id="form-email" class="form-control"
						placeholder="캠페인 제목">
				</div>
				 
				<div class="md-form">
					<i class="fa fa-user prefix grey-text"></i> <input name="writer"
						type="text" id="form-name" class="form-control"
						placeholder="캠페인 요청 단체">
				</div>

				<div class="md-form">
					<i class="fa fa-tag prefix grey-text"></i>
					<textarea name="content" type="text" id="form-text"
						class="md-textarea" placeholder="캠페인 내용"></textarea>
				</div>
				
				<div class="md-form">
				<i class="fa fa-calendar-o prefix grey-text"></i>
				<label>캠페인등록기간</label>
				</div>
				
				<br><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>시작일<input name="periodStart" type="date" id="periodStart"/></label>
					<label>종료일<input name="periodStop" type="date" id="periodStop"/></label>
		 		<br><br>
				
				<div class="md-form">
					<i class="fa fa-image prefix grey-text"></i> 
					<div class="fileDrop"></div>
				</div>

				<div class="md-form">
					<i class="fa fa-video-camera prefix grey-text"></i>
					<input type='file' name='video'>
				</div>

				<div class="box-footer">

					<ul class="mailbox-attachments clearfix uploadedList">
					</ul>

					<button type="submit" class="btn btn-primary">Register</button>
				</div>
			</div>
		</form> 
	</div>
</section>

<!--Section: Contact v.1-->

<script type="text/javascript" src="/resources/js/upload.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<!-- JQuery -->
    <script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="/resources/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="/resources/js/mdb.min.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>
</script>

<script>
$(document).ready(function() {

	var formObj = $("form[role='form']");

	$(".btn-primary").on("click", function() {
		alert("등록되었습니다.");
		self.location = "/campaign/listPage";
	});

});


	var template = Handlebars.compile($("#template").html());

	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});

	$(".fileDrop").on("drop", function(event) {
		event.preventDefault();

		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];
		var formData = new FormData();

		formData.append("file", file);


		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {

				var fileInfo = getFileInfo(data);

				var html = template(fileInfo);

				$(".uploadedList").append(html);
			}
		});
	});
	$("#registerForm").submit(function(event) {
		event.preventDefault();

		var that = $(this);

		var str = "";
		$(".uploadedList .delbtn").each(function(index) {
			str += "<input type='hidden' name='files[" + index + "]' value='" + $(this).attr("href") + "'> ";
		});

		that.append(str);
		that.get(0).submit();
	});

	function addFilePath(msg) {
		alert(msg);
		document.getElementById("form1").reset();
	}
</script>
</body>
</html>
