<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Football Match List</title>

<style>
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a) location.href = 'deleteok/' + id;
	}
</script>
</head>

<body>

<h1>축구 경기 목록</h1>
	<table id="list" width="90%">
		<tr>
			<th>id</th>
			<th>team_one</th>
			<th>team_two</th>
			<th>league</th>
			<th>date</th>
			<th>edit</th>
			<th>delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.seq}</td>
				<td>${u.team_one}</td>
				<td>${u.team_two}</td>
				<td>${u.league}</td>
				<td>${u.date}</td>
				<td><a href="editform/${u.seq}">경기 항목 수정</a></td>
				<td><a href="javascript:delete_ok('${u.seq}')">경기 항목 삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<button type="button" onclick="location.href='add'">새 경기 항목 추가</button>

</body>
</html>