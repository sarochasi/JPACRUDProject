<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mountain result</title>
</head>
<a href="home.do">Back to Home</a>
<body>

	<c:choose>
	<c:when test="${! empty mountain}">
	<div>
	<p><strong>${mountain.name }</strong></p>
	<p>${mountain.country }</p>
	<p>${mountain.height }</p>
	<p>${mountain.yearFound }</p>
	<p>${mountain.description }</p>
	<p><img src="${mountain.imageUrl}"/></p>
	
	</div>
	
	</c:when>
	<c:otherwise>
	<p>${errorMsg }</p>
	</c:otherwise>
	</c:choose>
</body>
</html>