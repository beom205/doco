<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드</title>
<%-- <script src="<c:url value="/js/jquery-3.1.0.min.js"/>"></script> --%>
<script type="text/javascript" src="/resources/js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.form.min.js"></script>
<%-- <script src="<c:url value="/js/jquery.form.min.js"/>"></script> --%>
<script type="text/javascript">
//<![CDATA[
$(function() {
	$("#btn-upload").on("click", function(){
		if(($("#file1").val() == "" || $("#file1").val() == null)) {
		    alert("파일 첫 번째가 없습니다.");
		} else if(($("#file2").val() == "" || $("#file2").val() == null)) {
		    alert("파일 두 번째가 없습니다.");
		} else {

		   var form = new FormData(document.getElementById('uploadForm'));
		    $.ajax({
			      url: "/request/upload", //컨트롤러 URL
			      data: form,
			      dataType: 'json',
			      processData: false,
			      contentType: false,
			      type: 'POST',
			      success: function (response) {
			    	  alert("success");
			    	  console.log(response);
			      },error: function (jqXHR) {
				       alert(jqXHR.responseText);
			      }
		   });
/*

		    $('#uploadForm').ajaxSubmit({
			      url: "/pentode/upload.do", //컨트롤러 URL
			      dataType: 'json',
			      processData: false,
			      contentType: false,
			      type: 'POST',
			      success: function (response) {
			    	  alert("success");
			    	  console.log(response);
			      },error: function (jqXHR) {
				      alert(jqXHR.responseText);
			      }
		   });
*/
		}
	});
});
//]]>
</script>
</head>

<body>

<div>
<form id="uploadForm" enctype="multipart/form-data" method="POST" action="/pentode/upload.do">
	<label for="file1">파일 첫 번째</label>
	<div><input type="file" id="file1" name="file" required="required" /></div>
	<label for="file2">파일 두 번째</label>
	<div><input type="file" id="file2" name="file" required="required" /></div>
</form>
</div>

<div><button id="btn-upload">파일 업로드</button></div>

</body>
</html>