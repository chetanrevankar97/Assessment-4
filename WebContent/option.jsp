<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h3 style="margin-top: 25px;">Ad Categories</h3>
	<br>
	<form method="post" action="OptionServlet">
  <input type="radio" name="opt" value="JO" checked> Job Offerred<br>
  <input type="radio" name="opt" value="GO"> Gig Offerred<br>
  <input type="radio" name="opt" value="JW"> Resume/Job Wanted<br><br>
  <input type="radio" name="opt" value="HO"> Housing Offered<br> 
  <input type="radio" name="opt" value="HW" > Housing Wanted<br><br>
  <input type="radio" name="opt" value="SO"> Sale by Owner<br>
  <input type="radio" name="opt" value="SD"> Sale by Dealer<br>
  <input type="radio" name="opt" value="WBO"> Wanted by Owner<br>
  <input type="radio" name="opt" value="WBD"> Wanted by Dealer<br><br>
  <input type="radio" name="opt" value="SVO"> Service Offerred<br><br>
  <input type="radio" name="opt" value="CMT"> Community<br>
  <input type="radio" name="opt" value="ET"> Event<br>
  
  <br><br>
  <input type="submit" name="sub" value="Submit"/>  
</form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>	
</body>
</html>