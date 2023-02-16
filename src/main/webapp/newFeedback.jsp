<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Feedback</title>
</head>
<body>
<form action="subjectServlet" method="post">
<label>Subject Name</label>
<input type="text" name="subName">
<label>Subject code</label>
<input type="text" name="subCode">
<label>Semester</label>
<input type="text" name="sem">
<label>Lecturer Name</label>
<input type="text" name="lecName">
<input type="radio" name="type" value="lab">lab
<input type="radio" name="type" value="theory">theory
<button type="submit">Submit</button>
<button type="reset">Reset</button>
</form>
</body>
</html>