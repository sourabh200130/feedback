<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>

<style>
.container {
	height: 150px;
	border-radius: 15px;
	align-self: center;
	border-radius: 15px;
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

			<div
				class="collapse navbar-collapse d-flex bd-highlight mb-3 justify-content-end"
				id="navbarText">
				<div class="btn btn-danger">Logout</div>
			</div>
		</div>
	</nav>
	<div class="wel">WELCOME</div>

	<div class="container shadow-sl">
		<div class="container row d-flex border border-3 border-info">

			<a href=newFeedback.jsp>
				<div class="col d-flex justify-content-around">
					<button class="btn btn-outline-info">Create new feedback</button>
			</a> <a href=staffSubSelect.jsp>
				<button class="btn btn-outline-info">View progress</button>
			</a> <a>
				<button class="btn btn-outline-info">Export feedback</button>
			</a>
		</div>

	</div>
	</div>

</body>
</html>