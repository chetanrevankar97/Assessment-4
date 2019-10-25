<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>User Contact</h2>
	Name:<br><input type="text" name="name"/><br><br>
		Email:<br><input type="text" name="email"/><br><br>
			Phone:<br><input type="text" name="phone"/><br><br>
			<input type="submit" onclick="myFunction()"value="Confirm Details"/>
			
<script>
function myFunction() {
  document.getElementById("demo").innerHTML = "Hello World";
}
</script>
</body>
</html>