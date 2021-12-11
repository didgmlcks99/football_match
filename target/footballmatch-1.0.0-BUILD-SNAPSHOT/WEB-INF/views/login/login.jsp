<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footballmatch login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
img, label {
	display: inlineblock;
}

label {
	width: 130px;
}

button {
	backgroud-color: blue;
	color: black;
	font-size: 15px;
}
</style>

</head>
<body>

	<div style="width: 100%; text-align: center; padding-top: 100px;">
		<img src="../img/loginPhoto.png" class="img-rounded"
			alt="Cinque Terre" height="250" style="margin-bottom: 30px;">
		<form method="post" action="loginok">
			<div class="container" style="width: 20%;">
				<div class="form-group" style="text-align: left;">
					<label for="usr">User ID:</label> <input type="text"
						class="form-control" id="usr" name="userid">
				</div>
				<div class="form-group" style="text-align: left;">
					<label for="usr">Password:</label> <input type="password"
						class="form-control" id="usr" name="password" />
				</div>
			</div>
			<button type="submit" class="btn btn-info">login</button>
		</form>
	</div>


</body>
</html>