<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../include/header.jsp" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">  -->
  <title>캠페인 문의하기/DOCO</title>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>  
 <style>
 
 </style> 
</head>
<body>
<section class="py-3">
	<!--Section heading-->
	<div class="container">
		<h2 class="font-bold text-center h1 py-5">등록</h2>

		<form id='registerForm' role="form" method="post" enctype="multipart/form-data">
			<div class="card-body">
				<!--Body-->
				<div class="md-form">
					<i class="fa fa-user prefix grey-text"></i> <input name="id"
						type="text" id="form-name" class="form-control"
						placeholder="캠페인 글쓴이">
				</div>

				<div class="md-form">
					<i class="fa fa-paper-plane prefix grey-text"></i> <input name="title"
						type="text" id="form-email" class="form-control"
						placeholder="캠페인 제목">
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
					<label>시작일<input type="date" name="periodStart" id="periodStart"/></label>
					<label>종료일<input type="date" name="periodStop" id="periodStop"/></label>
					
		 		<br><br>
		 		
				<div class="md-form">
					<i class="fa fa-video-camera prefix grey-text"></i>
					<input type='file' name='f1'>
				</div>
				
				
					<br>
				<div class="box-footer">

					<ul class="mailbox-attachments clearfix uploadedList">
					</ul>
					
					<button type="submit" class="btn btn-primary">등록</button>
					<button type="submit" class="btn btn-danger">취소</button>
				</div>
			</div>
		</form>
	</div>
</section>

 <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>  
  <!-- JQuery -->
	<script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/resources/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/resources/js/mdb.min.js"></script>  
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script> 
	<!--Section: Contact v.1-->

	<script type="text/javascript" src="/resources/js/upload.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	
	<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</span>
  </div>
</li>
	</script>

<script>

	
	
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
	
	 $(function(){
		  $("#registerForm").submit(function(){
		         var startDate = $('#start').val();
		         var endDate = $('#stop').val();
		         //-을 구분자로 연,월,일로 잘라내어 배열로 반환
		         var startArray = startDate.split('-');
		         var endArray = endDate.split('-');   
		         //배열에 담겨있는 연,월,일을 사용해서 Date 객체 생성
		         var start_date = new Date(startArray[0], startArray[1], startArray[2]);
		         var end_date = new Date(endArray[0], endArray[1], endArray[2]);
		              //날짜를 숫자형태의 날짜 정보로 변환하여 비교한다.
		         if(start_date.getTime() > end_date.getTime()) {
		             alert("종료날짜보다 시작날짜가 작아야합니다.");
		             return false;
		         }
		      });
		 });
	
</script>
</body>
</html>













