<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<form role="form" method="post">
		
   				<div class="box-body">
   				
   				 						<div class="form-group">
								            <label for="exampleInputEmail1">no</label>
								            <input type='text' name='no' class="form-control" value='${request.no}' readonly="readonly">
								        </div>  
								       <div class="form-group">
								            <label for="exampleInputEmail1">title</label>
								            <input type='text' name='title' class="form-control" value='${request.title}' readonly="readonly">
								        </div>  
							
								          <div class="form-group">
								            <label for="exampleInputPassword1">content</label>
								            <textarea name="content" rows="3" class="form-control" readonly="readonly">${request.content}</textarea>
								        </div>
								        
								        <div class="form-group">
								            <label for="exampleInputEmail1">address</label>
								            <input type='text' name='address' class="form-control" value='${request.address}' readonly="readonly">
								        </div>
			
                                        <!-- 이벤트로 처리해도 상관없다  -->
                                        <div class="box-footer">
                                        <button type="submit" class="btn btn-priBtn">Save</button>
                                        <button type="submit" class="btn btn-modBtn">Cancel</button>
                                        </div>
                                        <!--
			                            <form id = "actionForm" action = "/request/list" method="get">
											<input type="hidden" name="bno" value="${request.no}">
										</form>-->
								</form>		
					</div>	
<script>

$(document).ready(function() {
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-modBtn").on("click",function(){
		 self.location = "/request/list"
	});
	
	$(".btn-priBtn").on("click",function(){
		formObj.submit();
	});	
	
});

</script>

</body>
</html>