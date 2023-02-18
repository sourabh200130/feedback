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
</head>
<body>
	<form method="post" action="semServlet">
		<div class="form-group mt-4 mb-4">
			<label for="sem">Select semister</label>
			<div class="form-check">
				<input class="form-check-input mt-2" type="radio" name="type"
					id="type1" value="3" > <label
					class="form-check-label mt-1" for="type1">3</label>
			</div>
			<div class="form-check">
				<input class="form-check-input mt-2" type="radio" name="type"
					id="type2" value="4"> <label
					class="form-check-label mt-1" for="type2">4</label>
			</div>
			<div class="form-check">
				<input class="form-check-input mt-2" type="radio" name="type"
					id="type1" value="5"> <label
					class="form-check-label mt-1" for="type1">5</label>
			</div>
			<div class="form-check">
				<input class="form-check-input mt-2" type="radio" name="type"
					id="type2" value="6"> <label
					class="form-check-label mt-1" for="type2">6</label>
			</div>
			<div class="form-check">
				<input class="form-check-input mt-2" type="radio" name="type"
					id="type1" value="7"> <label
					class="form-check-label mt-1" for="type1">7</label>
			</div>
			<div class="form-check">
				<input class="form-check-input mt-2" type="radio" name="type"
					id="type2" value="8"> <label
					class="form-check-label mt-1" for="type2">8</label>
			</div>
			<button type="submit">Submit</button>
		</div>
	</form>
</body>
</html>