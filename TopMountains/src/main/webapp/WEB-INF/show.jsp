<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<style>
h2{text-align: center;}
</style>
<head>
<meta charset="UTF-8">
<title>Mountain result</title>
</head>
<a href="home.do">Back to Home</a>
<body>

	<c:choose>
	<c:when test="${! empty mountain}">
	<div>
	<h2><strong>${mountain.name }</strong></h2>
	<p><strong>Country: </strong>${mountain.country }</p>
	<p><strong>Height: </strong>${mountain.height }</p>
	<p><strong>First ascent: </strong>${mountain.yearFound }</p>
	<p><strong>Coordinate: </strong>${mountain.latitude }, ${mountain.longitude }</p>
	<p><strong>Description: </strong>${mountain.description }</p>
	<center><img src="${mountain.imageUrl}" height="500" width="700"  /></center>
	
	</div>
	
	</c:when>
	<c:otherwise>
	<p>${errorMsg }</p>
	</c:otherwise>
	</c:choose>
</body>
</html>