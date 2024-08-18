<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<style>
h2 {
	text-align: center;
}
</style>

<head>
<meta charset="UTF-8">
<title>Mountain result</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<style>
.action-buttons {
	display: flex;
	gap: 10px; /* Adjust spacing between buttons if needed */
}
</style>
</head>

<div class="action-buttons mb-3">

	<form action="home.do" method="GET">
		<input type="hidden" />
		<button type="submit" class="btn btn-link">Back to home</button>
	</form>
	<form action="updateForm.do" method="GET">
		<input type="hidden" name="mountainId" value="${mountain.id}" />
		<button type="submit" class="btn btn-link">Edit mountain</button>
	</form>
	<form action="DeleteMountain.do" method="POST">
		<input type="hidden" name="mountainId" value="${mountain.id}" />
		<button type="submit" class="btn btn-link">Delete mountain</button>
	</form>
</div>


<body>

	<c:choose>
		<c:when test="${! empty mountain}">
			<div>
				<h2>
					<strong>${mountain.name }</strong>
				</h2>
				<p>
					<strong>Country: </strong>${mountain.country }</p>
				<p>
					<strong>Height: </strong>${mountain.height }</p>
				<p>
					<strong>First ascent: </strong>${mountain.yearFound }</p>
				<p>
					<strong>Coordinate: </strong>${mountain.latitude },
					${mountain.longitude }
				</p>
				<p>
					<strong>Description: </strong>${mountain.description }</p>
				<center>
					<img src="${mountain.imageUrl}" height="500" width="700" />
				</center>
				<br> <br>
			</div>

		</c:when>
		<c:otherwise>
			<p>${errorMsg }</p>
		</c:otherwise>
	</c:choose>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>