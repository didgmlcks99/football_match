<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>

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

	<h1>축구 경기 항목 수정</h1>
	<form:form commandName="matchVO" method="POST" action="../editok">
		<form:hidden path="seq" />
		<table id="edit">
			<tr>
				<td>team_one</td>
				<td><form:input path="team_one" /></td>
			</tr>
			<tr>
				<td>team_one_score</td>
				<td><form:input path="team_one_score" /></td>
			</tr>
			<tr>
				<td>team_two</td>
				<td><form:input path="team_two" /></td>
			</tr>
			<tr>
				<td>team_two_score</td>
				<td><form:input path="team_two_score" /></td>
			</tr>
			<tr>
				<td>league</td>
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
				</td>
			</tr>
			<tr>
				<td>date</td>
				<td><form:input type="date" path="date" value="date"/></td>
			</tr>
			<tr>
				<td>time</td>
				<td><form:input path="time" /></td>
			</tr>
		</table>
		<input type="submit" value="수정하기" />
		<input type="button" value="취소하기" onclick="history.back()" />
	</form:form>

</body>
</html>