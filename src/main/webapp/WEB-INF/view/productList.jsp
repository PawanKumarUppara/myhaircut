<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/view/templates/header.jsp" %>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>All Products</h1>

				<p class="lead">Checkout all the products avaailable awesome
					products</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>


					<tr class="bg-success">
						<th>photo thumb</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>condition</th>
						<th>price</th>
						<th></th>
					</tr>
				</thead>
				
				<c:forEach items="${products}" var="product">
					<tr>

						<td><img alt="image" src="#"></td>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productCondition}</td>
						<td>${product.productPrice}USD</td>
						<td><a href="<spring:url value="/productList/viewProduct/${product.productId}"></spring:url>"><span class="glyphicon glyphicon-info-sign"></span></a></td>
					</tr>
				</c:forEach>
				
				
			</table>
			<%@include file="/WEB-INF/view/templates/footer.jsp" %>