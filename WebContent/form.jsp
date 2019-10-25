<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
		<div class="row">
		<div class="col-6">
		<form action="FormServlet" method="post">
		
			<br> <h3>Add ad details</h3><br>
			<input type="hidden" value="${sessionScope.id}" name="lol"/>
			Posting Title:<br><input type="text" name="posting"/><br>
			
			
			City:<br><input type="text" name="city"/><br>
			
			
			Postal Code:<br><input type="text" name="postal"/><br>
			Description:<br>
			<textarea name="desc" rows="10" cols="30"></textarea><br><br>
			<h4>Contact Information</h4><br>
			Phone Number:&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="phone"/><br>
			<br>
			
			Email:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="email"/><br><br>
			<input type="submit" name="abcd" value="continue"/>
			
		</form>
		</div>
		<div  class="col-6"><br>
			<h3>Available Ads</h3>
			<br>
			
	<table class="table">
	
	<thead class="thead-dark">
		<tr>
			<th>POSTING TITLE</th><th>CITY</th><th>POSTAL CODE</th>
			<th>DESCRIPTION</th><th>PHONE NUMBER</th><th>EMAIL</th>
		</tr>
	</thead>
	
		<c:forEach var="ad" items="${list}">
			<tr>
				<td>${ad.posting}</td>
				<td>${ad.city}</td>
				<td>${ad.postal}</td>
				<td>${ad.desc}</td>
				<td>${ad.phone}</td>
				<td>${ad.email}</td>
				
				<td><form action="UserServlet" method="post"><input type="submit" value="reply"/></form></td>
				
			</tr>
			
		</c:forEach>
		
	</table>
	
		
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>	
</body>
</html>