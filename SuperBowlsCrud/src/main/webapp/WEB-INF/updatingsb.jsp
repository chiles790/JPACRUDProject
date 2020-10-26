<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updating</title>
</head>
<body>
<form action="updatingsb.do" method="POST">
<input type="hidden" value="${superbowl.id}" name="id">
Update Winner: <input type="text" name="winner"/>
Update Loser: <input type="text" name="loser"/> <br>
Update Winner Score: <input type="text" name="winnerScore"/>
Update Loser Score:<input type="text" name="loserScore"/><br>
Update MVP: <input type="text" name="mvp"/>
Update Stadium: <input type="text" name="stadium"/><br>
<input type="submit" name="Update SuperBowl"/>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</html>