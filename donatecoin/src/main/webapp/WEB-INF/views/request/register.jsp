<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../js/jquery-3.2.1.js"></script>
<title>등록</title>
</head>
<body>

<form name="form" method="post" action="${path}/request/register">
	<label>제목</label>
		<input type="text" name="title" id="title">
	<label>내용</label>
		<input type="text" name="content" id="content">
	<label>주소</label>
		<input type="text" name="address" id="address">
		
	<div class="form-group">
		<label for="exampleInputEmail1">FileDrop</label>
		<div class="filedrop"></div>
	</div>
	<div class="box-footer">
		<div>
			<hr>
		</div>
	<ul class="mailbox-attachments clearfix uploadList"></ul>	
	</div>	
		
	  <button type="submit" class="btn btn-default">확인</button>
       <button type="reset" class="btn btn-default">취소</button>	
       
</form>

	<style>
		.filedrop {
		  width: 80%;
		  height: 100px;
		  background-color: green;
		  margin: auto;
		  border: 1px dotted gray;
		}
	</style>
	<scrip src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.js"></scrip>
	<script type="text/javascript" src="/WEB-INF/views/request/upload.js"></script>
	
	<script id="template" type="text/x/handlebars-template">
	
		<li>
			<span class="mailbox-attachment-icon "><img src="{{imgsrc}}" alt="attachment"></span>
			<div class="mailbox-attachment-info">
				<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
				<a href="{{fullName}}" 
						class="btn btn-default btn-xs pull-right delbtn">
					<i class="fa fa-fw fa-removes"></i>	</a>
				
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
		 
		 formData.append("file",file);
		 
		 $.ajax({
			
			 url:'/uploadAjax',
			 data: formData,
			 dataType:'text'
			 processData: flase,
			 contentType: flase,
			 type: 'POST',
			 success: function(data) {
				 
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
		
	$(".uploadList.delbtn").each(function (index) {
		str+="<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href")+"'>";
	});
		that.append(str);
		that.get(0).submit();
	})	
	</script>
</body>
</html>