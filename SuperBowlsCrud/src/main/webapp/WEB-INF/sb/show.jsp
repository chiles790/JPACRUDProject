<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Game</title>
</head>
<body>
<div>
<h5>Winner: ${super.winner} Loser: (${super.loser})</h5>
<p>Score: ${super.winnerScore} - (${super.loserScore})</p>
<p>MVP: ${super.mvp}</p>
<p>Stadium: ${super.stadium}</p>
</div>
</body>
</html>