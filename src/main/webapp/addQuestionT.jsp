<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="lServlet" method="post">
Please Enter the Questions
.<%String subCode = (String)request.getAttribute("subCode"); %>
<label>Subject Code: </label>
<input type="text" value=<%= subCode%>>
<label>1.</label>
<input type="text" name="one" value="first question"> 
<label>2.</label>
<input type="text" name="two" value="second question"> 
<label>3.</label>
<input type="text" name="three" value="third question"> 
<label>4.</label>
<input type="text" name="four" value="fourth question"> 
<label>5.</label>
<input type="text" name="five" value="fifth question"> 
<label>6.</label>
<input type="text" name="six" value="sixth question"> 
<label>7.</label>
<input type="text" name="seven" value="seveth question"> 
<label>8.</label>
<input type="text" name="eight" value="eighth question"> 
<label>9.</label>
<input type="text" name="nine" value="nineth question"> 
<label>10.</label>
<input type="text" name="ten" value="tenth question"> 
<button type="submit">Submit</button>
</form>
</body>
</html>