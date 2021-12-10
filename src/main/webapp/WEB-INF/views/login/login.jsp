<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footballmatch login</title>

<style>
	img, label{
		display:inlineblock;
	}
	
	label{
		width: 130px;
	}
	
	button{
		backgroud-color: blue;
		color: black;
		font-size: 15px;
	}
</style>

</head>
<body>

	<div style="width:100%; text-align:center; padding-top:100px;">
		<img src="../img/loginPhoto.png" height="250">
		
		<form method="post" action="loginok">
			<div>
				<label>User ID:</label>
				<input type="text" name="userid"/>
			</div>	
			<div>
				<label>Password:</label>
				<input type="password" name="password"/>
			</div>
			<button type="submit">login</button>
		</form>
		
	</div>
	
	
</body>
</html>