<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		function checkImagType(fullName) {
			var pattern = /jpg|gif|png|jpeg/i;
			
			return fullName.match(pattern);
		}
		
		function getFileInfo(fileName) {
			var fullName,imgsrc,getLink;
			var fullLink;
			
			if(checkImagType(fullName)){
				imgsrc = "/displayFile?fileName="+fullName;
				fullLink = fileName.substr(14);
				
				var front = fileName.substr(0,12);
				var end = fileName.substr(14);
				
				getLink = "/displayFile?fullName="+front+end;
			}else{
				imgsrc = "resources/dist/img/file.png";
				fullLink = fileName.substr(12);
				getLink = "/displayFile?fullName="+fileName;
			}
			
			fullName = fullLink.substr(fileLink.indexOF("_")1);
			
			return{fullName:fullName,imgsrc:imgsrc,getLink:getLink,fileName:fileName}
		}
	</script>
</body>
</html>