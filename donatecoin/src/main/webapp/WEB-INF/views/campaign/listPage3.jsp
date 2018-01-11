<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../../../webapp/resources/css/bootstrap.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../../../webapp/resources/css/mdb.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="../../../webapp/resources/css/style.css" rel="stylesheet">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">


        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        
</head>

<style rel="stylesheet">
        main {
            margin-top: 3rem;
        }

        body{
            font-family: "돋움",dotum,"Helvetica Neue",sans-serif;
        }

        .doco{
            color: #777;
        }

        .nav-top{
            margin-top: 25px;
            margin-bottom: 20px;
        }

        .nav-component-margin{
            margin-right: 30px;
        }

        .login-padding{
            padding-top: 13px;
        }

        main .card {
            margin-bottom: 2rem;
        }

        @media only screen and (max-width: 768px) {
            .read-more {
                text-align: center;
            }
        }
        .pull-right {
            float: right;
        }
        .navbar {
            background-color: #0f6256;
        }

        footer.page-footer {
            background-color: #0f6256;
            margin-top: 2rem;
        }
        .navbar .btn-group .dropdown-menu a:hover {
            color: #000 !important;
        }

        .navbar .btn-group .dropdown-menu a:active {
            color: #fff !important;
        }
        .icheckbox_flat-blue {
            background-position: 0 0;
            display: inline-block;
            vertical-align: middle;
            margin: 0;
            padding: 0;
            width: 20px;
            height: 20px;
            background: url(blue.png) no-repeat;
            border: none;
            cursor: pointer;
        }
        .iCheck-helper {
            line-height: 1.42857143;
        }
        .text-yellow {
            color: #f39c12 !important;
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            box-sizing: border-box;
            cursor: pointer;
            content: "\f005";
        }
        .mailbox-name {
            border-top: 1px solid #f4f4f4;
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            box-sizing: border-box;
            border-collapse: collapse;
            font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;
            font-size: 14px;
            color: #333;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .mailbox-subject {
            border-top: 1px solid #f4f4f4;
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            box-sizing: border-box;
            border-collapse: collapse;
            font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;    font-size: 14px;
            color: #333;    -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .mailbox-attachment {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;    border-top: 1px solid #f4f4f4;box-sizing: border-box;    border-collapse: collapse;    font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;    font-size: 14px;
        }
        .mailbox-date {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;    border-top: 1px solid #f4f4f4;box-sizing: border-box;    border-collapse: collapse;    font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;    font-size: 14px;
        }
        * {     box-sizing: border-box;}
        .box-footer {
            padding: 0 !important;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
            border-top: 1px solid #f4f4f4;
            background-color: #fff;
            font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;
            font-size: 14px;
            line-height: 1.42857143;
            color: #333;
            content: " ";
            display: table;
            clear: both;
        }
        html {
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        body {
            font-family: 'Source Sans Pro','Helvetica Neue',Helvetica,Arial,sans-serif;
            font-weight: 400;
            font-size: 14px;
            line-height: 1.42857143;
            color: #333; !important;
        }
        .mailbox-controls {
            padding: 5px;
            display: block;
        }
        .btn {
            display: inline-block !important;
            margin:0 !important;
            margin-bottom: 0 !important;
            font-weight: 400 !important;
            text-align: center !important;
            white-space: nowrap !important;
            vertical-align: middle !important;
            touch-action: manipulation !important;
            cursor: pointer !important;
            user-select: none !important;
            background-image: none !important;
            -webkit-appearance: button !important;
            text-transform: none;
            overflow: visible;
        }
        .fa {
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
        }
        .btn-group {
            position: relative;
            display: inline-block;
            vertical-align: middle;
        }
        .btn-default{
            background-color: #f4f4f4;
            color: #444 !important;
            border-color: #ddd;
        }
        .btn-sm{
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
        }
        tbody>tr:nth-of-type(odd) {
            background-color: #f9f9f9;
        }
    </style>
    
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class='box'></div>
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">캠페인 등록 페이지</h3>
				</div>
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">NO</th>
							<th>사진</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>등록일</th> 
						</tr>

						<c:forEach items="${list}" var="campaign">
							<tr>
								<td>${campaign.bno}</td>
								<td> 
								<c:forEach items="${campaign.fullName}" var="cp">
									<img src="displayFile?fileName=${cp}" />
								</c:forEach>
								</td>
								<td><a
									href='/campaign/readPage${pageMaker.makeQuery(pageMaker.cri.page) }&bno=${campaign.bno}'>
										${campaign.title}</a></td>
								<td>${campaign.writer}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${campaign.regdate}" /></td>
							</tr>
						</c:forEach>

					</table>
				</div>
				<!-- /.box-body -->


				<%-- <div class="box-footer">

					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="listPage${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div> --%>


				<div class="text-center">
					<ul class="pagination">

						<c:if test="${pageMaker.prev}">
							<li><a href="${pageMaker.startPage - 1}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
								<a href="${idx}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a href="${pageMaker.endPage +1}">&raquo;</a></li>
						</c:if>

					</ul>
				</div>
			</div>
			<!-- /.box-footer-->
		</div>
	</div>
	<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

<form id="jobForm">
	<input type='hidden' name="page" value=${pageMaker.cri.perPageNum}>
	<input type='hidden' name="perPageNum" value=${pageMaker.cri.perPageNum}>
</form>

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}

	$(".pagination li a").on("click", function(event) {

		event.preventDefault();

		var targetPage = $(this).attr("href");

		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "/campaign/listPage").attr("method", "get");
		jobForm.submit();
	});
</script>

