<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://releases.flowplayer.org/7.2.1/skin/skin.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://releases.flowplayer.org/7.2.1/flowplayer.min.js"></script>

<style type="text/css">
.popup {
	position: absolute;
}

.back {
	background-color: gray;
	opacity: 0.5;
	width: 100%;
	height: 300%;
	overflow: hidden;
	z-index: 1101;
}

.front {
	z-index: 1110;
	opacity: 1;
	boarder: 1px;
	margin: auto;
}

.show {
	position: relative;
	max-width: 1200px;
	max-height: 800px;
	overflow: auto;
}

flowplayer {
	position: absolute;
	top: 80px;
	left: 60px;
	width: 300px;
	border: 2px solid red;
}
</style>

<div class='popup back' style="display: none;"></div>
<div id="popup_front" class='popup front' style="display: none;">
	<img id="popup_img">
</div>

<!-- Main content -->
<section class="content">
	<!-- general form elements -->
	<div class="container">
		<div>
			<h2 class="font-bold text-center h1 py-5">${campaign1.title}</h2>
			<h5 class="text-right">${campaign1.writer}</h5>
			<br> <br>
		</div>
		<div class="md-form">
			<h5 style="line-height: 35px;">${campaign1.content}</h5>
		</div>
		<!-- /.box-body -->
		<%-- <ul class="mail	box-attachments clearfix uploadList">
					<c:forEach items="${campaign2}" var="cp">
						<img src="displayFile?fileName=${cp}" />
					</c:forEach>
				</ul> --%>
		<div id="carousel-example-1z" class="carousel slide carousel-fade"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-1z" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-1z" data-slide-to="1"></li>
				<li data-target="#carousel-example-1z" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img class="d-block w-100" src="/resources/img/1.jpg"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="/resources/img/2.jpg"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="/resources/img/3.jpg"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carousel-example-1z"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carousel-example-1z"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<br> <br>
		<div class="flowplayer">
			<c:forEach items="${campaign3}" var="cp">
				<video>
					<source src="displayMovie?fileName=${cp}" type="video/mp4" />
				</video>
			</c:forEach>
		</div>
		<form role="form" method="post">
			<input type='hidden' name='bno' value="${campaign1.bno}">
		</form>
		<div class="box-footer">
			<button type="submit" class="btn btn-warning">수정</button>
			<button type="submit" class="btn btn-danger">삭제</button>
			<button type="submit" class="btn btn-primary">전체목록</button>
		</div>
	</div>
</section>
<!-- /.content -->

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.jtemplateAttachs"></script> -->
<!-- JQuery -->
<script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/resources/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/resources/js/mdb.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script id="templateAttach" type="text/x-handlebars-template">
<li data-src='{{fullName}}'>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</span>
  </div>
</li>                
</script>

<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");

		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/campaign/modifyPage");
			formObj.attr("method", "POST");
			formObj.submit();
		});

		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/campaign/removePage")
				.attr("method", "POST");
			formObj.submit();
			alert("삭제 되었습니다.");
		});

		$(".btn-primary").on("click", function() {
			self.location = "/campaign/listPage";
		});

	});

	/* var template = Handlebars.compile($("#templateAttach").html()); */

	/* $.getJSON("/campaign/getAttach/"+bno,function(list){
		$(list).each(function(){
			
			var fileInfo = getFileInfo(this);
			
			var html = template(fileInfo);
			
			 $(".uploadedList").append(html);
			
		});
	}); */

	/* $(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
		
		var fileLink = $(this).attr("href");
		
		if(checkImageType(fileLink)){
			
			event.preventDefault();
					
			var imgTag = $("#popup_img");
			imgTag.attr("src", fileLink);
			
			console.log(imgTag.attr("src"));
					
			$(".popup").show('slow');
			imgTag.addClass("show");		
		}	
	}); */

	$("#popup_img").on("click", function() {

		$(".popup").hide('slow');

	});
</script>
