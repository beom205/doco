<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<%@include file="../../views/include/header.jsp"%>



<!--Main Layout-->
<main class="text-center py-5"> <!--Carousel Wrapper-->
<div id="carousel-example-1z" class="carousel slide carousel-fade"
	data-ride="carousel" style="margin-top:-96px;">
	<!--Indicators-->
	<ol class="carousel-indicators">
		<li data-target="#carousel-example-1z" data-slide-to="0"
			class="active"></li>
		<li data-target="#carousel-example-1z" data-slide-to="1"></li>
		<li data-target="#carousel-example-1z" data-slide-to="2"></li>
	</ol>
	<!--/.Indicators-->
	<!--Slides-->
	<div class="carousel-inner" role="listbox" style="max-height:500px; overflow:hidden;">
		<!--First slide-->
		<div class="carousel-item active">
			<img class="d-block w-100"
				src="https://mdbootstrap.com/img/Photos/Slides/img%20(130).jpg"
				alt="First slide">
		</div>
		<!--/First slide-->
		<!--Second slide-->
		<div class="carousel-item">
			<img class="d-block w-100"
				src="https://mdbootstrap.com/img/Photos/Slides/img%20(129).jpg"
				alt="Second slide">
		</div>
		<!--/Second slide-->
		<!--Third slide-->
		<div class="carousel-item">
			<img class="d-block w-100"
				src="https://mdbootstrap.com/img/Photos/Slides/img%20(70).jpg"
				alt="Third slide">
		</div>
		<!--/Third slide-->
	</div>
	<!--/.Slides-->
	<!--Controls-->
	<a class="carousel-control-prev" href="#carousel-example-1z"
		role="button" data-slide="prev"> <span
		class="carousel-control-prev-icon" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="carousel-control-next" href="#carousel-example-1z"
		role="button" data-slide="next"> <span
		class="carousel-control-next-icon" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
	<!--/.Controls-->
</div>
<!--/.Carousel Wrapper--> <br>
<br>
</main>
<div class="container">
	<div class="row">

		<c:forEach items="${list}" var="campaign"> 
			<div class="col-md-4  d-none d-md-block">
			
				<div class="card">
					<c:forEach items="${campaign.fullName}" var="cp">
						<img class="img-fluid" src="displayFile?fileName=${cp}"
							alt="Card image cap">
					</c:forEach> 

					<div class="card-body">
						<h4 class="card-title">${campaign.title}</h4>
						<p class="card-text">${campaign.writer}
							&nbsp; &nbsp;
							<fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${campaign.regdate}" />
						</p>
						<a class="btn btn-primary" href='/campaign/readPage${pageMaker.makeQuery(pageMaker.cri.page) }&bno=${campaign.bno}'>자세히 보기</a>
					</div>
				</div>
			</div>
		</c:forEach>
		
	</div>
</div>


<!--End Main Layout-->

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="/resources/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="/resources/js/mdb.min.js"></script>

<script>
	/* $('.carousel').carousel({
	 interval: 2000
	 }) */
</script>
</body>

</html>