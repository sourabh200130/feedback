<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<style>
.container {
	height: 150px;
	background: grey;
	border-radius: 15px;
	align-self: center;
}
.button {
	hight: 80px;
	width: 250px;
	
}
.wel {
	font-size: 50px;
	text-align: center;
}

</style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">FEEDBACK</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse d-flex bd-highlight mb-3 justify-content-end" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
        <li class="nav-item p-2 bd-highlight">
          <a class="nav-link active btn" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item p-2 bd-highlight">
          <a class="nav-link btn" href="#">Features</a>
        </li>
        <li class="nav-item p-2 bd-highlight">
          <a class="nav-link btn" href="#">Pricing</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="wel">WELCOME</div>

<div class="container">
<div class="container row d-flex">

<a href=newFeedback.jsp>
<div class="button col d-flex justify-content-around shadow">
<button class="btn btn-outline-info">Create new feedback</button></a>
<a>
<button class="btn btn-outline-info">View progress</button></a>
<a>
<button class="btn btn-outline-info">Export feedback</button></a>
</div>

</div>
</div>

</body>
</html>