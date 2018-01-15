<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<%@include file="../include/header.jsp"%>



<!--Main Layout-->
<main class="text-center py-5"> <!--Carousel Wrapper-->

<!--/.Carousel Wrapper--> <br>
<br>
</main>
<div class="container">
	<div class="row">

		<c:forEach items="${list}" var="campaign"> 
			<div class="col-md-4  d-none d-md-block" style="height: 450px; margin-bottom: 6   0px;">
			
				<div class="card">
					<c:forEach items="${campaign.fullName}" var="cp">
						<img class="img-fluid" src="displayFile?fileName=${cp}"
							alt="Card image cap" style="height: 250px;">
					</c:forEach> 

					<div class="card-body">
						<span class="d-inline-block text-truncate" style="max-width: 300px;">
  							<h4 class="card-title blue-grey-text text-darken-4"><b>${campaign.title}</b></h4>
						</span>
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