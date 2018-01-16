<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../include/header.jsp" %>     
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

	<form role="form" method="post">
		<input type="hidden" name="no" value="${Request.no}"/>
	</form> 
	
		
		
		
		
<!-- Main content -->
<section class="content">
	

	<!-- general form elements -->
	<div class="container">
	<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail">title</label>
				<input type="text" name="title" class="form-control" value="${read.title}" readonly="readonly"/>
			</div>
		
			<div class="form-group">
				<label for="exampleInputEmail">content</label>
				<textarea name="content" class="form-control" readonly="readonly">${read.content}</textarea>
			</div>
			
			<div class="box-footer">
				<button type="button" class="btn btn-modBtn btn-warning">수정</button>
				<button type="button" class="btn btn-delBtn btn-danger">삭제 </button>
				<button type="button" class="btn btn-listBtn btn-primary">목록</button>
			</div>
			
		</div>
<br><br>
	
	
		<div>
			<h2 class="font-bold text-center h1 py-5">${read.title}</h2>
			<h6 class="text-right">${read.periodStart} ${read.periodStop}</h6>
			<h5 class="text-right">${read.id}</h5>
			<br> <br>
		</div> 
		<div class="md-form">
			<h5 style="line-height: 35px;">${read.content}</h5>
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

<!-- JQuery -->
    <script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="/resources/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="/resources/js/mdb.min.js"></script>


<script>
	 
		$(document).ready(function() {
			
			var formObj = $("form[role='form']");
		
			console.log(formObj);
			
			$(".btn-modBtn").on("click",function(){
				formObj.attr("action","/request/modify");
				formObj.attr("method","get");
				
				formObj.submit();
			});
			
			$(".btn-delBtn").on("click",function(){
				formObj.attr("action","/request/remove");
				formObj.submit();
				});	
			
			$(".btn-listBtn").on("click",function(){
			 self.location = "/request/listAll";
			 
			});	
			
		});
		
		
		// 사진
		function showAttach(data) {
			console.log('들어오냐?');
		var uploadList =  $(".uploadList");
		var before = uploadList.html();
		
		var str = "";
		if(data.isImage){
			str ="<div><img src ='/display?name=s_"+data.uploadName+"'/><span data-src='"+data.uploadName+"'>x</span></div>" 	
		}else{
			str = "<div><img class = 'att' src ='/resouces/file.png'><span data-src='"+data.uploadName+"'>x</span></div>";
		}
		
		before += "<li>"+str+"</li>";
		uploadList.html(before);
		
	   }
	   // 정규식 표현 
	   function checkImageType(fileName){
			
			var pattern = /jpg|gif|png|jpeg/i;
			
			return fileName.match(pattern);

	}
   
		
		
		
	</script>

</body>
</html>