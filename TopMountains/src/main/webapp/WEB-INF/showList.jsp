<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Peaks List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>

<a href="home.do">Back to Home</a>
<body>
<br>
<br>
<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Mountain name</th>
      <th scope="col">Height (m)</th>
      <th scope="col">Latitude</th>
      <th scope="col">Longitude</th>
      <th scope="col">First ascent</th>
      <th scope="col">Country</th>
      <th scope="col">Photo</th>
      <th scope="col">Description</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach var="mountain" items="${mountains}">
    <tr>
    
      <td>${mountain.id }</td>
      <td>${mountain.name }</td>
      <td>${mountain.height }</td>
      <td>${mountain.latitude }</td>
      <td>${mountain.longitude }</td>
      <td>${mountain.yearFound }</td>
      <td>${mountain.country }</td>
      <td><img src="${mountain.imageUrl }"  width="70" height="70"></td>
      <td>${mountain.description }</td>
    </tr>
    </c:forEach>
  </tbody>
</table>

<a href="home.do">Back to Home</a>
<br><br>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>