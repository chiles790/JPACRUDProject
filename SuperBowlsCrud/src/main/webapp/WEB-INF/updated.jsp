<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updated SuperBowl</title>
</head>
<body>
<c:choose>
<c:when test="${! empty superbowl}">
SuperBowl was updated
</c:when>
<c:otherwise>
<p>SuperBowl failed to update</p>
</c:otherwise>
</c:choose>

</body>
</html>