<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Football Match List</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a) location.href = 'deleteok/' + id;
	}
</script>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">축구 경기 일정 목록</a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"
					onclick="window.open('https://github.com/didgmlcks99/football_match')">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-github" viewBox="0 0 16 16">
      					<path
								d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path>
   					</svg> 깃허브
				</a></li>
				<li><a href="../login/logout"> <span
						class="glyphicon glyphicon-log-in" style="margin-right: 5px;"></span>
						로그아웃
				</a></li>
			</ul>
		</div>
	</nav>

	<div class="container" style="margin-top: 100px">
		<div class="well well-lg">
			<table class="table table-bordered">
				<thead style="background-color: #8FBC8F;">
					<tr>
						<th>id</th>
						<th>team_one</th>
						<th>team_one_score</th>
						<th>team_two_score</th>
						<th>team_two</th>
						<th>league</th>
						<th>date</th>
						<th>time</th>
						<th>edit</th>
						<th>delete</th>
					</tr>
				</thead>
				<tbody style="background-color: #FFFAF0">
					<c:forEach items="${list}" var="u">
						<tr>
							<td>${u.seq}</td>
							<td>${u.team_one}</td>
							<td>${u.team_one_score}</td>
							<td>${u.team_two_score}</td>
							<td>${u.team_two}</td>
							<td>${u.league}</td>
							<td>${u.date}</td>
							<td>${u.time}</td>
							<td><a href="editform/${u.seq}">
									<button type="button" class="btn btn-info">경기 항목 수정</button>
							</a></td>
							<td><a href="javascript:delete_ok('${u.seq}')">
									<button type="button" class="btn btn-danger">경기 항목 삭제</button>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button type="button" class="btn btn-success"
				onclick="location.href='add'">새 경기 항목 추가</button>
		</div>
	</div>

</body>
</html>