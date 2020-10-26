<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted SuperBowl</title>
</head>
<body>
<c:choose>
<c:when test="${! empty superbowl}">
SuperBowl has been deleted
</c:when>
<c:otherwise>
<p>SuperBowl failed to be deleted</p>
</c:otherwise>
</c:choose>
</body>
</html>