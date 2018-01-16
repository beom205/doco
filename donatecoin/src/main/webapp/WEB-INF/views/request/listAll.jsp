<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <%@ include file="../include/header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<body>

  
<div class="container" style="margin-top: 40px; ">
<table class="table table-sm">
  <thead>
    <tr>
      <th>글번호</th>
      <th>글쓴이 </th>
      <th>제목</th>
      <th>등록일</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="Request"> 
    <tr class="table-warning">
      <td style="text-align: center;">${Request.no}</td>
      <td>${Request.id}</td>
      <td><a href="/request/read?no=${Request.no}">${Request.title}</a></td>
      <td>${Request.reg_date}</td>

    </tr>
   </c:forEach> 
  </tbody>
</table>
</div>  
           
    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="/resources/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="/resources/js/mdb.min.js"></script>
</body>



</html>
