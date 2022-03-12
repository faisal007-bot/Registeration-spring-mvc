<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page isELIgnored="false" %>
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
		<h1>User saved successfully......</h1><br/><br/>
		<h1>ID of the user = ${user.id}</h1>
		<h1>Name of the user = ${user.name}</h1>
		<h1>Email of the user = ${user.email}</h1>
		<h1>Password of the user = ${user.password}</h1>
		<h1>Gender of the user = ${user.gender}</h1><br/><br/>
	</div>
</body>
</html>