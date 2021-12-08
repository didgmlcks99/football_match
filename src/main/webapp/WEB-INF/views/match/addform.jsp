<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축구 경기 항목 추가</title>

<style>
#edit {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 30%;
}

#edit td, #edit th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#edit td:nth-child(odd) {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}

#edit tr:hover {
	background-color: #ddd;
}
</style>

</head>
<body>
<h1>새 축구 경기 항목 추가</h1>
	<form action="addok" method="post">
		<table id="edit">
			<tr>
				<td>team_one:</td>
				<td><input type="text" name="team_one" /></td>
			</tr>
			<tr>
				<td>team_two:</td>
				<td><input type="text" name="team_two" /></td>
			</tr>
			<tr>
				<td>league/cup:</td>
				<td>
					<input type="radio" name="league" value="Premiere Laegue" checked>Premiere Laegue 
					<input type="radio" name="league" value="La Liga">La Liga
					<input type="radio" name="league" value="Bundesliga">Bundesliga 
					<input type="radio" name="league" value="Seria A">Seria A
					<input type="radio" name="league" value="Ligue 1">Ligue 1
					<input type="radio" name="league" value="Champions League">Champions League
					<input type="radio" name="league" value="Europa League ">Europa League 
					<input type="radio" name="league" value="World Cup">World Cup
					<input type="radio" name="league" value="Asian Cup">Asian Cup
					<!-- <input type="text" name="league" value = "직접 입력"/> -->
				</td>
			</tr>
			<tr>
				<td>date:</td>
				<td><input type="date" name="date"></input></td>
			</tr>
		</table>
		<button type="button" onclick="location.href='list'">목록보기</button>
		<button type="submit">등록하기</button>
	</form>
</body>
</html>