<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping ${title}</title>

<script type="text/javascript">
	window.menu = "${title}";
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- Bootstrap Theme CSS -->
 <link href="${css}/bootstrap-spacelab.css" rel="stylesheet"> 

<!-- Add custom CSS here -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Load Header Here -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Load Content Here  -->
		<div class="content">
			<!-- Load Only When user Click Home -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load Only When user Click About -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load Only When user Click Contact Us -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>
			<!-- Load Only When user Click Contact Us -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
			
		</div>
		<!-- Load Footer Here -->
		<%@ include file="./shared/footer.jsp"%>

		<!-- JavaScript -->
		<!-- JQuerry -->
		<script src="${js}/jquery-1.10.2.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.js"></script>

		<!-- Self Coded JavaScript  -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>