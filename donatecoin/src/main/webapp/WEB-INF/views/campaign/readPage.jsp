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
	z-index: 100;
}
</style>

<div class='popup back' style="display: none;"></div>
<div id="popup_front" class='popup front' style="display: none;">
	<img id="popup_img">
</div>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">캠페인 정보</h3>
				</div>
				<!-- /.box-header -->


				<form role="form" method="post">

					<input type='hidden' name='bno' value="${bno}">

				</form>
				<div class="flowplayer">
					<video>
						<c:forEach items="${campaign3}" var="cp">
							<source src="displayMoive?fileName=${cp}" />
						</c:forEach>
					</video>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">제목</label> <input type="text"
							name='title' class="form-control" value="${campaign1.title}"
							readonly="readonly">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">내용</label>
						<textarea class="form-control" name="content" rows="3"
							readonly="readonly">${campaign1.content}</textarea>
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">작성자</label> <input type="text"
							name="writer" class="form-control" value="${campaign1.writer}"
							readonly="readonly">
					</div>
				</div>
				<!-- /.box-body -->
				<label>캠페인 사진</label>
				<ul class="mail	box-attachments clearfix uploadList">
					<c:forEach items="${campaign2}" var="cp">
						<img src="displayFile?fileName=${cp}" />
					</c:forEach>
				</ul>

				<div class="box-footer">
					<button type="submit" class="btn btn-warning">Modify</button>
					<button type="submit" class="btn btn-danger">REMOVE</button>
					<button type="submit" class="btn btn-primary">LIST ALL</button>
				</div>
			</div>
		</div>
	</div>

</section>
<!-- /.content -->

<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		formObj.attr("action", "/campaign/modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$(".btn-danger").on("click", function(){
		formObj.attr("action", "/campaign/removePage");
		formObj.submit();
	});
	
	$(".btn-primary").on("click", function(){
		self.location = "/campaign/listPage";
	});
	
});


var bno = ${campaign1.bno};
var template = Handlebars.compile($("#templateAttach").html());

$.getJSON("/campaign/getAttach/"+bno,function(list){
	$(list).each(function(){
		
		var fileInfo = getFileInfo(this);
		
		var html = template(fileInfo);
		
		 $(".uploadedList").append(html);
		
	});
});

$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
	
	var fileLink = $(this).attr("href");
	
	if(checkImageType(fileLink)){
		
		event.preventDefault();
				
		var imgTag = $("#popup_img");
		imgTag.attr("src", fileLink);
		
		console.log(imgTag.attr("src"));
				
		$(".popup").show('slow');
		imgTag.addClass("show");		
	}	
});

$("#popup_img").on("click", function(){
	
	$(".popup").hide('slow');
	
});
</script>
