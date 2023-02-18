<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>New Feedback</title>
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
    		<h2 class="text-info text-center text-uppercase mb-2">DEPT. OF INFORMATION SCIENCE AND ENGINEERING, MITE</h2>
    		<div class="collapse navbar-collapse" id="navbar">
      			<ul class="navbar-nav ms-auto">
        			<li class="nav-item pe-2">
        				<a class="btn btn-outline-info w-100 pe-2" href="#">Home</a>
        			</li>
        			<li class="nav-item pe-2">
          				<a class="btn btn-outline-info w-100" href="#">Logout</a>
        			</li>
      			</ul>
    		</div>
  		</div>
	</nav>
<div class="container mt-3">
<h1 class="display-1 text-info text-center text-uppercase mb-2">Enter Subject Details</h1>
<div class="row justify-content-center h5">
    <div class="form-checked mt-3">
        <form action="subjectServlet" method="post">
            <div class="form-group mt-4 mb-4">
              <label for="subName">Subject name</label>
              <input type="text" class="form-control form-control-lg mt-2" name="subName" id="subName" aria-describedby="ariaSubName" placeholder="Enter subject name">
              <small id="subNameHelp" class="form-text text-muted">Please enter the full subject name.</small>
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Subject code</label>
                <input type="text" class="form-control form-control-lg mt-2" name="subCode" id="subCode" aria-describedby="ariaSubCode" placeholder="Enter subject code">
                <small id="subCodeHelp" class="form-text text-muted">Please enter the subject code in all caps.</small>
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="sem">Semester</label>
                <input type="text" class="form-control form-control-lg mt-2" name="sem" id="sem" aria-describedby="ariaSem" placeholder="Enter semester">
                <small id="semHelp" class="form-text text-muted">Please enter the semester associated with the subject</small>
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="lecName">Lecturer name</label>
                <input type="text" class="form-control form-control-lg mt-2" name="lecName" id="lecName" aria-describedby="ariaLecName" placeholder="Enter lecturer name">
                <small id="lecNameHelp" class="form-text text-muted">Please enter the name of the lecturer handling the subject</small>
            </div>
            <div class="form-group mt-4 mb-4">
            	<label for="lecName">Subject type</label>
            	<div class="form-check">
  					<input class="form-check-input mt-2" type="radio" name="type" id="type1" value="theory" checked>
  					<label class="form-check-label mt-1" for="type1">Theory</label>
				</div>
				<div class="form-check">
  					<input class="form-check-input mt-2" type="radio" name="type" id="type2" value="lab">
  					<label class="form-check-label mt-1" for="type2">Lab</label>
				</div>
            </div>
            <button type="submit" class="btn btn-primary m-2">Submit</button>
            <button type="reset" class="btn btn-danger m-2">Reset</button>
            <br>
          </form>
    </div>
</div>
</div>
</body>
</html>