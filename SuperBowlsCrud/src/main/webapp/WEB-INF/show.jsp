<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Game</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<div>
		<h5>Winner: ${superbowl.winner}, Loser: ${superbowl.loser}</h5>
		<p>Score: ${superbowl.winnerScore}, - ${superbowl.loserScore}</p>
		<p>MVP: ${superbowl.mvp}</p>
		<p>Stadium: ${superbowl.stadium}</p>
	</div>
	<div>
		<form action="update.do"method "POST">
			<input type="hidden" value="${superbowl.id}" name="id"> <input
				type="submit" value="Update SuperBowl">
		</form>
	</div>
	<div>
		<form action="delete.do"method "POST">
			<input type="hidden" value="${superbowl.id}" name="id"> <input
				type="submit" value="Delete SuperBowl">
		</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>