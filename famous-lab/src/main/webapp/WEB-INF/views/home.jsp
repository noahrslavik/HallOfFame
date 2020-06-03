<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Tiny Hall Of Fame</title>
</head>
<body>
<div class="jumbotron"> 
	<h1 class="display-4">Tiny Computer Science Hall of Fame</h1>
</div>	
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Year</th>
      <th scope="col">Name</th>
      <th scope="col">Invented</th>
    </tr>
  </thead>
		<c:forEach items="${tiny}" var="current">
			<tr>
				<td>${current.year}</td>
				<td>${current.name}</td>
				<td>${current.invented}</td>

			</tr>
		</c:forEach>
	</table>

</body>
<a href="/complete" class="btn btn-dark">Completed Hall of Fame</a>


</html>