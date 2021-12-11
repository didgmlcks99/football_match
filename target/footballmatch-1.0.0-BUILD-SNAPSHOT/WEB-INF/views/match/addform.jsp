<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축구 경기 항목 추가</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
td {
	background-color: #FFFAF0;
}

#label {
	background-color: #8FBC8F;
}
</style>

</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">새 축구 경기 항목 추가</a>
			</div>
		</div>
	</nav>

	<div class="container" style="margin-top: 100px; width: 30%;">
		<div class="well well-lg">
			<form action="addok" method="post">
				<table class="table table-bordered">
					<tr>
						<td id='label'>team_one:</td>
						<td><input type="text" name="team_one" /></td>
					</tr>
					<tr>
						<td id='label'>team_two:</td>
						<td><input type="text" name="team_two" /></td>
					</tr>
					<tr>
						<td id='label'>league/cup:</td>
						<td><input type="radio" name="league" value="Premiere Laegue"
							checked>Premiere Laegue <input type="radio" name="league"
							value="La Liga">La Liga <input type="radio" name="league"
							value="Bundesliga">Bundesliga <input type="radio"
							name="league" value="Seria A">Seria A <input type="radio"
							name="league" value="Ligue 1">Ligue 1 <input type="radio"
							name="league" value="Champions League">Champions League <input
							type="radio" name="league" value="Europa League ">Europa
							League <input type="radio" name="league" value="World Cup">World
							Cup <input type="radio" name="league" value="Asian Cup">Asian
							Cup <!-- <input type="text" name="league" value = "직접 입력"/> --></td>
					</tr>
					<tr>
						<td id='label'>date:</td>
						<td><input type="date" name="date"></input></td>
					</tr>
					<tr>
						<td id='label'>time:</td>
						<td><input type="text" name="time" /></td>
					</tr>
				</table>
				<button type="button" class="btn btn-info"
					onclick="location.href='list'">목록보기</button>
				<button type="submit" class="btn btn-success">등록하기</button>
				<button type="reset" class="btn btn-warning">취소</button>
			</form>
		</div>
	</div>
</body>
</html>