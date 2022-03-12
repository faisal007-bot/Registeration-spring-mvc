<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Register</title>
</head>
<body style="background-color: black; color: white;">
	<div class="container m-5 p-3">
		<form action="process" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter ID</label>
				<input type="number" name="id" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Name</label> <input type="text" name="name" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Email</label> <input type="email" name="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter
					Password</label> <input type="password" name="password"
					class="form-control" id="exampleInputPassword1">
			</div>
			<div class="form-check">
				<input class="form-check-input" value="Male" type="radio" name="gender"
					id="flexRadioDefault1"> <label class="form-check-label"
					for="flexRadioDefault1">Male</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" value="Female" type="radio" name="gender"
					id="flexRadioDefault2"> <label
					class="form-check-label" for="flexRadioDefault2">Female</label>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-success">Register</button>
			</div>
		</form>
	</div>
</body>
</html>