<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-bordered">
		<tr>
			<th>no</th>
			<th>title</th>
			<th>content</th>
			<th>address</th>
		</tr>
	<c:forEach items = "${list}" var = "Request">
		<tr>
			<td>${Request.no}</td>
			<td><a href="/request/read?no=${request.no}">${Request.title}</a></td>
			<td>${Request.content}</td>
			<td>${Request.address}</td>
			
		</tr>
	</c:forEach>	
		
	</table>

</body>
</html>