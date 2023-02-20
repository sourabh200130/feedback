	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="feedback.theory"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>studentHome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="https://sites.google.com/mite.ac.in/ise/activities?authuser=0">
    	<img src="resources/islogo.png" style="height:100px;width:100px" alt="ISE">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbar">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info active w-100 pe-2" href="#">Home</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container mt-3">
<h1 class="display-1 text-info text-center text-uppercase mb-2">Provide Feedback on these subjects</h1>
<div class="row justify-content-center h5">
	<%
	List<theory> hey = (List<theory>) request.getAttribute("data");
	%>
	<%
				for (theory obj : hey) {
	%>
	
	<form class="col-lg-8 col-md-10 col-sm-12 shadow-lg p-3" action="insertingT" method="post">
		<div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q1" class="col display-6 pb-1" id="Q1"><%=obj.getOne()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q1" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q1" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q1" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q1" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q2" class="col display-6 pb-1" id="Q2"><%=obj.getTwo()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q2" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q2" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q2" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q2" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q1" class="col display-6 pb-1" id="Q3"><%=obj.getThree()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q3" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q3" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q3" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q3" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q4" class="col display-6 pb-1 " id="Q4"><%=obj.getFour()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q4" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q4" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q4" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q4" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q5" class="col display-6 pb-1" id="Q5"><%=obj.getFive()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q5" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q5" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q5" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q5" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q6" class="col display-6 pb-1" id="Q6"><%=obj.getSix()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q6" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q6" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q6" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q6" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q7" class="col display-6 pb-1" id="Q7"><%=obj.getSeven()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q7" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q7" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q7" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q7" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q8" class="col display-6 pb-1"id="Q8"><%=obj.getEight()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q8" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q8" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q8" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q8" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q9" class="col display-6 pb-1" id="Q9"><%=obj.getNine()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q9" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q9" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q9" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q9" value="4">  Good</li>
                </ol>
			</div>
		</div>
        <div class="form-checked pt-2 pb-2">
			<div class="form-inline">
			<label for="q10" class="col display-6 pb-1" id="Q10"><%=obj.getTen()%></label>
                <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="q10" value="1">  Poor</li>
                    <li class="list-group-item"><input type="radio" name="q10" value="2">  Average</li>
                    <li class="list-group-item"><input type="radio" name="q10" value="3">  Fair</li>
                    <li class="list-group-item"><input type="radio" name="q10" value="4">  Good</li>
                </ol>
			</div>
		</div>
        
        <%} %>
        
		<div class="mt-3 row justify-content-center">
			<button class="col-4 btn btn-outline-primary" type="submit">Submit</button>
			<button class="col-4 btn btn-outline-dark" type="reset">Clear</button>
		</div>
	</form>
</div>
</div>
<script src="studentHome.js"></script>
</body>
</html>