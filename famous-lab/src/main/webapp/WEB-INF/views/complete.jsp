<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Complete Hall Of Fame</title>

</head>
<body>
<div class="jumbotron"> 
	<h1 class="display-4">Computer Science Hall of Fame</h1>
</div>	
	<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Year</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Achievement</th>
    </tr>
  </thead>
  
		<c:forEach items="${complete}" var="current">
			<tbody>
			<tr>
				<th scope = "row">${current.year}</th>
				<td>${current.firstName}</td>
				<td>${current.lastName}</td>
				<td>${current.innovation}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<a href="/" class="btn btn-dark">Tiny Hall of Fame</a>
</body>
</html>