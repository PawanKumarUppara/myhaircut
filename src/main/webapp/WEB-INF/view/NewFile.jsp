<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<table>
		<thead>
			<tr>
				<th>Product Name</th>
				<th>Category</th>
				<th>Condition</th>
				<th>Price</th>
			</tr>
		</thead>
		<tr>
			<td>${product.productName}</td>
			<td>${product.productCategory}</td>
			<td>${product.productCondition}</td>
			<td>${product.productPrice}</td>
		</tr>
	</table>

</body>
</html>