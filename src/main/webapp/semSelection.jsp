<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.fm {
background:#72f7bb;
border-radius: 15px;
}
.btn{
width:200px;		
}
</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid col ">
			<a class="navbar-brand align-self-start"
				href="https://sites.google.com/mite.ac.in/ise/activities?authuser=0">
				<img src="resources/islogo.png" style="height: 100px; width: 100px"
				alt="ISE">
			</a>
			<!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
      			<span class="navbar-toggler-icon"></span>
    		</button> -->
			<h2 class="col text-info text-center text-uppercase mb-2">DEPT.
				OF INFORMATION SCIENCE AND ENGINEERING, MITE</h2>
			<!-- <div class="collapse navbar-collapse" id="navbar">
      			<ul class="navbar-nav ms-auto">
        			<li class="nav-item pe-2">
        				<a class="btn btn-outline-info w-100 pe-2" href="#">Home</a>
        			</li>
        			<li class="nav-item pe-2">
          				<a class="btn btn-outline-info w-100" href="#">Logout</a>
        			</li>
      			</ul>
    		</div> -->
		</div>
	</nav>

	<div class="container mt-3 mb-3">
		<h1 class="display-1 text-info text-center text-uppercase mb-2">Select
			Semester</h1>
		<br>
		<form class="col-lg-8 col-md-10 col-sm-12 shadow-lg p-3 mx-auto fm"
			name="frm" action="semServlet" method="post">
			<div class="form-checked pt-2 pb-2">
				<div class="form-inline">
					<label for="q1" class="col display-6 pb-1" id="Q1"><b>Provide
						feedback for each attended semester individually.</b></label>
					<!-- <ol class="list-group">
                    <li class="list-group-item"><input type="radio" name="type" value="3">  3 - Third semester</li>
                    <li class="list-group-item"><input type="radio" name="type" value="4">  4 - Fourth semester</li>
                    <li class="list-group-item"><input type="radio" name="type" value="5">  5 - Fifth semester</li>
                    <li class="list-group-item"><input type="radio" name="type" value="6">  6 - Sixth semester</li>
                    <li class="list-group-item"><input type="radio" name="type" value="7">  7 - Seventh semester</li>
                    <li class="list-group-item"><input type="radio" name="type" value="8">  8 - Eighth semester</li>
                </ol>
                <small id="subNameHelp" class="form-text text-muted">Ignore semesters that you have not attended/yet to attend.</small>
                <br>
                <button type="submit" class="btn btn-primary m-2">Submit</button>
            <button type="reset" class="btn btn-danger m-2">Reset</button>-->
					<div class="container row">


						<input type="hidden" name="type" />
						<!--<input type="button" class="btn btn-info mt-3" name="bt" value="Third semester" onclick='{document.frm.hdnbt.value="3";document.frm.submit();}'/>
			<input type="button" class="btn btn-info mt-3" name="bt" value="4" onclick='{document.frm.type.value=this.value;document.frm.submit();}'/>
			<input type="button" class="btn btn-info mt-3" name="bt" value="5" onclick='{document.frm.type.value=this.value;document.frm.submit();}'/>
			<input type="button" class="btn btn-info mt-3" name="bt" value="6" onclick='{document.frm.type.value=this.value;document.frm.submit();}'/>
			<input type="button" class="btn btn-info mt-3" name="bt" value="7" onclick='{document.frm.type.value=this.value;document.frm.submit();}'/>
			<input type="button" class="btn btn-info mt-3" name="bt" value="8" onclick='{document.frm.type.value=this.value;document.frm.submit();}'/>-->
					</div>
				</div>
			</div>

			<div class="container">
				<div class="row row-cols-2 row-cols-lg-3 g-2 g-lg-3">
					<div class="col fw-bold">
						<input type="button"
							class="btn btn-info btn-lg mt-2 btn-block shadow-sm" name="bt"
							value="Third Semester"
							onclick='{document.frm.type.value="3";document.frm.submit();}'>
					</div>
					<div class="col">
						<input type="button"
							class="btn btn-info btn-lg mt-2 btn-block shadow-sm" name="bt"
							value="Fourth Semester"
							onclick='{document.frm.type.value="4";document.frm.submit();}'>
					</div>
					<div class="col">
						<input type="button"
							class="btn btn-info btn-lg mt-2 btn-block shadow-sm" name="bt"
							value="Fifth Semester"
							onclick='{document.frm.type.value="5";document.frm.submit();}'>
					</div>
					<div class="col">
						<input type="button" class="btn btn-info btn-lg mt-2 btn-block shadow-sm"
							name="bt" value="Sixth Semester"
							onclick='{document.frm.type.value="6";document.frm.submit();}'>
					</div>
					<div class="col">
						<input type="button" class="btn btn-info btn-lg mt-2 btn-block shadow-sm"
							name="bt" value="Seventh Semester"
							onclick='{document.frm.type.value="7";document.frm.submit();}'>
					</div>
					<div class="col">
						<input type="button" class="btn btn-info btn-lg mt-2 btn-block shadow-sm"
							name="bt" value="Eighth Semester"
							onclick='{document.frm.type.value="8";document.frm.submit();}'>
					</div>
				</div>
				<br> <small id="subNameHelp" class="form-text text-muted"><p class=" text-danger">Ignore semesters
					that you have not attended/yet to attend</p></small>
			</div>

		</form>
		<br>

	</div>
</body>
</html>