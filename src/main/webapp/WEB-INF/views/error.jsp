<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Home</title>
</head>
<body style="background-color: black;color: white;">
	<div class="container m-5 text-center">
		<h1>Error occured while Saving data</h1>
		<h2>
			<form:errors path="user.*"/>
		</h2>
	</div>
</body>
</html>