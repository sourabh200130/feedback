<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Add Lab Questions</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    	<div class="container-fluid col ">
    		<a class="navbar-brand align-self-start" href="https://sites.google.com/mite.ac.in/ise/activities?authuser=0">
    			<img src="resources/islogo.png" style="height:100px;width:100px" alt="ISE">
    		</a>
    		<!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
      			<span class="navbar-toggler-icon"></span>
    		</button> -->
    		<h2 class="col text-info text-center text-uppercase mb-2">DEPT. OF INFORMATION SCIENCE AND ENGINEERING, MITE</h2>
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
<div class="container mt-3">
<h1 class="display-1 text-info text-center text-uppercase mb-2">Enter Lab Subject Questions</h1>
<div class="row justify-content-center h5">
    <div class="form-checked mt-3">
        <form action="lServlet" method="post">
        	<%String subCode = (String)request.getAttribute("subCode"); %>
        	<%String subName = (String)request.getAttribute("subName"); %>
            <div class="form-group mt-4 mb-4">
              <label for="subCode">Subject code</label>
              <input type="text" class="form-control form-control-lg mt-2" name="subCode" id="subCode" aria-describedby="ariaSubCode" value=<%= subCode%> readonly>
              <small id="subCodeHelp" class="form-text text-muted">This displays the current subject code.</small>
            </div>
            <div class="form-group mt-4 mb-4">
              <label for="subCode">Subject name</label>
              <input type="text" class="form-control form-control-lg mt-2" name="subName" id="subName" aria-describedby="ariaSubName" value=<%= subName%> readonly>
              <small id="subNameHelp" class="form-text text-muted">This displays the current subject name.</small>
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Question no.1</label>
                <input type="text" class="form-control form-control-lg mt-2" name="one" id="one" aria-describedby="ariaOne" value="Enter Q.no.1">
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Question no.2</label>
                <input type="text" class="form-control form-control-lg mt-2" name="two" id="two" aria-describedby="ariaTwo" value="Enter Q.no.2">
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Question no.3</label>
                <input type="text" class="form-control form-control-lg mt-2" name="three" id="three" aria-describedby="ariaThree" value="Enter Q.no.3">
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Question no.4</label>
                <input type="text" class="form-control form-control-lg mt-2" name="four" id="four" aria-describedby="ariaFour" value="Enter Q.no.4">
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Question no.5</label>
                <input type="text" class="form-control form-control-lg mt-2" name="five" id="five" aria-describedby="ariaFive" value="Enter Q.no.5">
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Question no.6</label>
                <input type="text" class="form-control form-control-lg mt-2" name="six" id="six" aria-describedby="ariaSix" value="Enter Q.no.6">
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Question no.7</label>
                <input type="text" class="form-control form-control-lg mt-2" name="seven" id="seven" aria-describedby="ariaSeven" value="Enter Q.no.7">
            </div>
            <div class="form-group mt-4 mb-4">
                <label for="subCode">Question no.8</label>
                <input type="text" class="form-control form-control-lg mt-2" name="eight" id="eight" aria-describedby="ariaEight" value="Enter Q.no.8">
            </div>
         	<button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-danger">Reset</button>
          </form>
    </div>
</div>
</div>
</body>
</html>